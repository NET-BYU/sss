from demos.hangman.trace import Trace
from demos.hangman.guess import Guess
from demos.utils import get_all_from_queue
from loguru import logger

class Hangman:
    
    demo_time = None
    
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        self.start = False
        self.gameover = False
        self.restart = False                      

    def get_input_buff(self):
        # Get all input off the queue
        return list(self.input_queue.queue)


    def run(self):
        # Initialize variables for choice, the number of correct guesses, the number of incorrect guesses and the random generator seed number
        repeat_left = False
        repeat_right = False
        select = False
        choice = 0
        num_errors = 0
        num_correct = 0
        seed_num = 0
        trace = Trace(self.screen)
        guess = Guess()




        # Start the game by first drawing the instructions on the screen.
        trace.draw_instruct()

        # Wait for the player to press the START button before going on
        while not self.start:
            if not self.input_queue.empty():
                input_ = get_all_from_queue(self.input_queue)
            else:
                input_ = ""
            if "START_P" in input_:
                    self.start = True
            yield

        # Erase the instructions on the screen right now
        trace.erase_instruct()

        # Create generator here
        while True:

            trace.draw_init()
            trace.draw_choice(guess.letter_select(choice), True)
            word = guess.pick_word(seed_num)
            word = word.upper()
            logger.info(word)
            self.restart = False

            # Keep running until the game is over
            while not self.gameover:
                if not self.input_queue.empty():
                    input_ = get_all_from_queue(self.input_queue)

                    # Check to see if there is any keypresses
                    for press in input_:

                        if press == "LEFT_P":
                            repeat_left = True
                        if press == "LEFT_R":
                            repeat_left = False
                        if press == "RIGHT_P":
                            repeat_right = True
                        if press == "RIGHT_R":
                            repeat_right = False
                        if press == "START_P":
                            select = True
                        if press == "START_R":
                            select = False
                        
                    # Check to see if the player has guessed too many incorrect letters and the game is over
                    if(num_errors == 7):
                        self.gameover = True
                        trace.draw_endgame(False)
                        for i in range(len(word)):
                            trace.draw_letter(i, word[i], True)
                    
                    # Check to see if the player has guessed all the letters in the word and the game is over
                    if(num_correct == 5):
                        self.gameover = True
                        self.win = True
                        trace.draw_endgame(True)

                    # If the player presses the LEFT key then the game will scroll through the alphabet backwards
                    if(repeat_left):
                        trace.draw_choice(guess.letter_select(choice), False)
                        if(choice == 0):
                            choice = 25
                            trace.draw_choice(guess.letter_select(choice), True)
                        else:
                            choice = choice -1
                            trace.draw_choice(guess.letter_select(choice), True)
                    
                    # If the player pressed the RIGHT key then the game will scroll through the alphabet forwards 
                    if(repeat_right):
                        trace.draw_choice(guess.letter_select(choice), False)
                        if(choice == 25):
                            choice = 0
                            trace.draw_choice(guess.letter_select(choice), True)
                        else:
                            choice = choice + 1
                            trace.draw_choice(guess.letter_select(choice), True)
                    
                    # If the player pressed the START key then the game will check to see if that letter is in the word
                    # If the letter is in the word then the num_correct will increment
                    # If the letter is not in the word then the num_errors will increment
                    # This will also call the check_guess_list and see if the letter has been guessed yet
                    if(select):
                        correct = False
                        guessed = guess.check_guess_list(guess.letter_select(choice))
                        for i in range(len(word)):
                            if (word[i] == guess.letter_select(choice) and guessed == False):
                                trace.draw_letter(i, guess.letter_select(choice), True)
                                correct = True
                                num_correct += 1
                                guess.add_guess_list(guess.letter_select(choice))
                        if(correct == False and guessed == False):
                            num_errors = num_errors + 1
                            trace.draw_person(num_errors, True)
                            guess.add_guess_list(guess.letter_select(choice))
                            self.screen.draw_text(26 +(num_errors * 2), 46, guess.letter_select(choice), True, True)
                yield

            # This will wait until the player has pressed the START button again before restarting a new game
            while not self.restart:
                if not self.input_queue.empty():
                    input_ = get_all_from_queue(self.input_queue)
                else:
                    input_ = ""
                if "START_P" in input_:
                    self.restart= True
                yield

            # Erase the hangman, the guessed letters, and the word from the screen
            trace.erase_person()
            trace.erase_letters()
            trace.erase_endgame()
            trace.draw_choice("A", True)

            # Reinitialize all the variables and start again.
            choice = 0
            seed_num += 1
            num_errors = 0
            num_correct = 0
            self.gameover = False
            self.win = False
            guess.clear_guess_list()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
