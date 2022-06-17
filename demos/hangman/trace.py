class Trace:
    def __init__(self, screen):
        self.screen = screen

    def draw_init(self):    
        # Draw our gallows
        for i in range(11):
            self.screen.draw_pixel(i+1, 47, 15, True, False)
        for i in range(44):
            self.screen.draw_pixel(6, 47-i, 15, True, False)
        for i in range(11):
            self.screen.draw_pixel(6+i, 3, 15, True, False)
        self.screen.push()
        # Draw the lines underneath the letters
        self.screen.draw_hline(30, 40, 1, True, True, True)
        self.screen.draw_hline(32, 40, 1, True, True, True)
        self.screen.draw_hline(34, 40, 1, True, True, True)
        self.screen.draw_hline(36, 40, 1, True, True, True)
        self.screen.draw_hline(38, 40, 1, True, True, True)

    # Draws a hangman based on how  many errors someone has made
    def draw_person(self, num_errors, draw):
        if(draw):
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        
        # Draws the little noose part
        if(num_errors == 1):
            for i in range(5):
                self.screen.draw_pixel(17, 3+i, value, combine, False)
            self.screen.push()
        # Draws the head
        if(num_errors == 2):
            for i in range(3):
                self.screen.draw_pixel(16+i, 8, value, combine, False)
            for i in range(2):
                self.screen.draw_pixel(14+i,9, value, combine, False)
            for i in range(2):
                self.screen.draw_pixel(19+i, 9, value, combine, False)
            self.screen.draw_pixel(14, 10, value, combine, False)
            self.screen.draw_pixel(20, 10, value, combine, False)
            for i in range(3):
                self.screen.draw_pixel(13, 11+i, value, combine, False)
            for i in range(3):
                self.screen.draw_pixel(21, 11+i, value, combine, False)
            self.screen.draw_pixel(14, 14, value, combine, False)
            self.screen.draw_pixel(20, 14, value, combine, False)
            for i in range(2):
                self.screen.draw_pixel(14+i, 15, value, combine, False)
            for i in range(2):
                self.screen.draw_pixel(20-i, 15, value, combine, False)
            for i in range(3):
                self.screen.draw_pixel(16+i, 16, value, combine, False)
            self.screen.push()
        
        # Draws the body
        if(num_errors == 3):
            for i in range(15):
                self.screen.draw_pixel(17, 17+i, value, combine, False)
            self.screen.push()
        # Draws leg 1
        if(num_errors == 4):
            self.screen.draw_shape_line(17, 32, 22, 40, value, combine, False)
            self.screen.push()
        # Draws leg 2
        if(num_errors == 5):
            self.screen.draw_shape_line(17, 32, 12, 40, value, combine, False)
            self.screen.push() 
        # Draws arm 1
        if(num_errors == 6):
            self.screen.draw_shape_line(17, 25, 22, 20, value, combine, False)
            self.screen.push() 
        # Draws arm 2
        if(num_errors == 7):
            self.screen.draw_shape_line(17, 25, 12, 20, value, combine, False)
            self.screen.push() 
    
    # This will draw a letter if it is guessed correctly in the word
    def draw_letter(self, position, character, draw):
        if(draw == True):
            character = character
        else:
            character = " "
        if(position == 0):
            self.screen.draw_text(30, 38, character, True, True)
        if(position == 1):
            self.screen.draw_text(32, 38, character, True, True)
        if(position == 2):
            self.screen.draw_text(34, 38, character, True, True)
        if(position == 3):
            self.screen.draw_text(36, 38, character, True, True)
        if(position == 4):
            self.screen.draw_text(38, 38, character, True, True)

    # This will draw the letter that the player can choose to guess
    def draw_choice(self, character, draw):
        if(draw == True):
            character = character
        else:
            character = " "
        self.screen.draw_text(34, 20, character, True, True)

    # This will erase the entire body of the hangman
    def erase_person(self):
        self.draw_person(1, False)
        self.draw_person(2, False)
        self.draw_person(3, False)
        self.draw_person(4, False)
        self.draw_person(5, False)
        self.draw_person(6, False)
        self.draw_person(7, False)

    # This will erase all the letters that have been guessed
    def erase_letters(self):
        self.draw_letter(0, "A", False)
        self.draw_letter(1, "A", False)
        self.draw_letter(2, "A", False)
        self.draw_letter(3, "A", False)
        self.draw_letter(4, "A", False)

    # This will draw some instructions for the player at the beginning of the game.
    def draw_instruct(self):
        self.screen.draw_text(20, 4, "HANGMAN", True, True)
        self.screen.draw_text(10, 14, "USE LEFT AND RIGHT TO SCROLL", True, True)
        self.screen.draw_text(17, 18, "THROUGH LETTERS", True, True)
        self.screen.draw_text(11, 22, "USE START TO SELECT LETTER", True, True)

    # This will erase all the instructions at the beginning of the game
    def erase_instruct(self):
        self.screen.draw_text(20, 4, "       ", True, True)
        self.screen.draw_text(10, 14, "                            ", True, True)
        self.screen.draw_text(17, 18, "               ", True, True)
        self.screen.draw_text(11, 22, "                          ", True, True)

    # This will draw an endgame message based on whether or not the player guessed the word correctly or not
    def draw_endgame(self, win):
        if(win == True):
            self.screen.draw_text(30, 4, "GOOD JOB", True, True)
            self.screen.draw_text(22, 6, "PRESS START TO PLAY AGAIN", True, True)
        if(win == False):
            self.screen.draw_text(30, 4, "YOU LOSE", True, True)
            self.screen.draw_text(22, 6, "PRESS START TO PLAY AGAIN", True, True)

    # This will erase the endgame message that was drawn
    def erase_endgame(self):
        self.screen.draw_text(30, 4, "          ", True, True)
        self.screen.draw_text(22, 6, "                          ", True, True)
        self.screen.draw_text(26, 46, "               ", True, True)
