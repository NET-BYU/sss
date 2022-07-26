import random
import time

from loguru import logger

from demos.hangman_ai.guess import Guess
from demos.hangman_ai.trace import Trace


# Maybe I will have it guess the vowels first
# Then I will try and get it to guess the most common constants
# Then it will try and fill in the rest
# Is there an algorithim for something like that?
class HangmanAi:

    demo_time = 120

    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        self.start = False
        self.gameover = False
        self.restart = False
        self.errors = 0
        self.correct = 0
        self.position = 0
        self.word = "     "

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)

    def run(self):
        # Initialize variables for choice, the number of correct guesses, the number of incorrect guesses and the random generator seed number
        choice = 0
        seed_num = 0
        trace = Trace(self.screen)
        guess = Guess()
        letter_list = []
        prob_list = [
            4,  # E
            17,  # R
            19,  # T
            0,  # A
            14,  # O
            8,  # I
            13,  # N
            7,  # H
            11,  # L
            18,  # S
            20,  # U
            2,  # C
            3,  # D
            15,  # P
            12,  # M
            24,  # Y
            6,  # G
            10,  # K
            5,  # F
            21,  # V
            22,  # W
            1,  # B
            23,  # X
            9,  # J
            25,  # Z
            16,  # Q
        ]

        # Check to see if the guess was correct.
        # If yes then it will draw the letter
        # If no then it will draw a part of the hangman
        def check_for_correct(choice):
            correct = False
            guessed = guess.check_guess_list(guess.letter_select(choice))
            for i in range(len(word)):
                if word[i] == guess.letter_select(choice) and guessed == False:
                    trace.draw_letter(i, guess.letter_select(choice), True)
                    correct = True
                    guess.add_guess_list(guess.letter_select(choice))
                    self.correct = self.correct + 1
            if correct == False and guessed == False:
                self.errors = self.errors + 1
                trace.draw_person(self.errors, True)
                guess.add_guess_list(guess.letter_select(choice))
                self.screen.draw_text(
                    26 + (self.errors * 2), 46, guess.letter_select(choice), True, True
                )

        def pick_choice(num_guessed):
            choice = prob_list[num_guessed - 1]
            if self.correct == 4:
                num = random.choice(range(5))
                letter = letter_list[num]
                choice = guess.letter_number(letter)
            if self.errors >= 5:
                choice = prob_list[random.choice(range(26))]
            return choice

        # Create generator here
        while True:
            trace.draw_init()
            trace.draw_choice(guess.letter_select(choice), True)
            word = guess.pick_word(seed_num)
            word = word.upper()
            self.word = word
            for letter in range(len(self.word)):
                letter_list.append(self.word[letter])
            logger.info(word)
            num_guessed = 0
            self.restart = False

            # Keep running until the game is over
            while not self.gameover:
                num_guessed += 1
                choice = pick_choice(num_guessed)
                trace.draw_choice(guess.letter_select(choice), True)
                check_for_correct(choice)

                # Check to see if the player has guessed too many incorrect letters and the game is over
                if self.errors == 7:
                    self.gameover = True
                    trace.draw_endgame(False)
                    for i in range(len(word)):
                        trace.draw_letter(i, word[i], True)

                # Check to see if the player has guessed all the letters in the word and the game is over
                if self.correct == 5:
                    self.gameover = True
                    self.win = True
                    trace.draw_endgame(True)
                x = 0
                while x is not 15:
                    x += 1
                    yield
                yield

            x = 0
            while x is not 25:
                x += 1
                yield
            # Erase the hangman, the guessed letters, and the word from the screen
            trace.erase_person()
            trace.erase_letters()
            trace.erase_endgame()
            trace.draw_choice("A", True)

            # Reinitialize all the variables and start again.
            choice = 0
            seed_num += 1
            self.errors = 0
            self.correct = 0
            self.gameover = False
            self.win = False
            self.position = 0
            guess.clear_guess_list()
            letter_list.clear()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
