import random
import time

# List of every letter in the alphabet
choice_list = [
    "A",  # 0
    "B",  # 1
    "C",  # 2
    "D",  # 3
    "E",  # 4
    "F",  # 5
    "G",  # 6
    "H",  # 7
    "I",  # 8
    "J",  # 9
    "K",  # 10
    "L",  # 11
    "M",  # 12
    "N",  # 13
    "O",  # 14
    "P",  # 15
    "Q",  # 16
    "R",  # 17
    "S",  # 18
    "T",  # 19
    "U",  # 20
    "V",  # 21
    "W",  # 22
    "X",  # 23
    "Y",  # 24
    "Z",  # 25
]
word_list = [
    "Abuse",
    "Adult",
    "Agent",
    "Anger",
    "Apple",
    "Award",
    "Basis",
    "Beach",
    "Birth",
    "Block",
    "Blood",
    "Board",
    "Brain",
    "Bread",
    "Break",
    "Brown",
    "Buyer",
    "Butts",
    "Cause",
    "Chain",
    "Chair",
    "Chest",
    "Chief",
    "Child",
    "China",
    "Claim",
    "Class",
    "Clock",
    "Coach",
    "Coast",
    "Court",
    "Cover",
    "Cream",
    "Crime",
    "Cross",
    "Crowd",
    "Crown",
    "Cycle",
    "Dance",
    "Death",
    "Depth",
    "Doubt",
    "Draft",
    "Drama",
    "Dream",
    "Dress",
    "Drink",
    "Drive",
    "Earth",
    "Enemy",
    "Entry",
    "Error",
    "Event",
    "Faith",
    "Fault",
    "Field",
    "Fight",
    "Final",
    "Floor",
    "Focus",
    "Force",
    "Frame",
    "Frank",
    "Front",
    "Fruit",
    "Glass",
    "Grant",
    "Grass",
    "Green",
    "Group",
    "Guide",
    "Heart",
    "Henry",
    "Horse",
    "Hotel",
    "House",
    "Image",
    "Index",
    "Input",
    "Issue",
    "Japan",
    "Jones",
    "Judge",
    "Knife",
    "Layer",
    "Level",
    "Lewis",
    "Light",
    "Limit",
    "Lunch",
    "Major",
    "March",
    "Match",
    "Metal",
    "Model",
    "Money",
    "Month",
    "Motor",
    "Mouth",
    "Music",
    "Night",
    "Noise",
    "North",
    "Novel",
    "Nurse",
    "Offer",
    "Order",
    "Other",
    "Owner",
    "Panel",
    "Paper",
    "Party",
    "Peace",
    "Peter",
    "Phase",
    "Phone",
    "Piece",
    "Pilot",
    "Pitch",
    "Place",
    "Plane",
    "Plant",
    "Plate",
    "Point",
    "Pound",
    "Power",
    "Press",
    "Price",
    "Pride",
    "Prize",
    "Proof",
    "Queen",
    "Radio",
    "Range",
    "Ratio",
    "Reply",
    "Right",
    "River",
    "Round",
    "Route",
    "Rugby",
    "Scale",
    "Scene",
    "Scope",
    "Score",
    "Sense",
    "Shape",
    "Share",
    "Sheep",
    "Sheet",
    "Shift",
    "Shirt",
    "Shock",
    "Sight",
    "Simon",
    "Skill",
    "Sleep",
    "Smile",
    "Smith",
    "Smoke",
    "Sound",
    "South",
    "Space",
    "Speed",
    "Spite",
    "Sport",
    "Squad",
    "Staff",
    "Stage",
    "Start",
    "State",
    "Steam",
    "Steel",
    "Stock",
    "Stone",
    "Store",
    "Study",
    "Stuff",
    "Style",
    "Sugar",
    "Table",
    "Taste",
    "Terry",
    "Theme",
    "Thing",
    "Title",
    "Total",
    "Touch",
    "Tower",
    "Track",
    "Trade",
    "Train",
    "Trend",
    "Trial",
    "Trust",
    "Truth",
    "Uncle",
    "Union",
    "Unity",
    "Value",
    "Video",
    "Visit",
    "Voice",
    "Waste",
    "Watch",
    "Water",
    "While",
    "White",
    "Whole",
    "Woman",
    "World",
    "Youth",
    "Admit",
    "Adopt",
    "Agree",
    "Allow",
    "Alter",
    "Apply",
    "Argue",
    "Arise",
    "Avoid",
    "Begin",
    "Blame",
    "Break",
    "Bring",
    "Build",
    "Burst",
    "Carry",
    "Catch",
    "Cause",
    "Check",
    "Claim",
    "Clean",
    "Clear",
    "Climb",
    "Close",
    "Count",
    "Cover",
    "Cross",
    "Dance",
    "Doubt",
    "Drink",
    "Drive",
    "Enjoy",
    "Enter",
    "Exist",
    "Fight",
    "Focus",
    "Force",
    "Guess",
    "Imply",
    "Issue",
    "Judge",
    "Laugh",
    "Learn",
    "Leave",
    "Limit",
    "Marry",
    "Match",
    "Occur",
    "Offer",
    "Order",
    "Phone",
    "Place",
    "Point",
    "Press",
    "Prove",
    "Raise",
    "Reach",
    "Refer",
    "Relax",
    "Serve",
    "Shall",
    "Share",
    "Shift",
    "Shoot",
    "Sleep",
    "Solve",
    "Sound",
    "Speak",
    "Spend",
    "Split",
    "Stand",
    "Start",
    "State",
    "Stick",
    "Study",
    "Teach",
    "Thank",
    "Think",
    "Throw",
    "Touch",
    "Train",
    "Treat",
    "Trust",
    "Visit",
    "Voice",
    "Waste",
    "Watch",
    "Worry",
    "Would",
    "Write",
]

guess_list = []


class Guess:
    """This class will be used to keep track of the guesses that have been made by the user. It will also be used to keep track of the word that has been chosen by the user"""

    # This will add to our list of letters that have been guessed
    def add_guess_list(self, letter):
        """
        Add the letter to the list of guessed letters

        Args:
            letter (str): The letter that the user has guessed

        """
        guess_list.append(letter)

    def letter_number(self, letter):
        """
        This function will return the index of the letter in the list of choices

        Args:
            letter (str): The letter that the user has guessed

        Returns:
            int: The index of the letter in the list of choices
        """
        for i in range(len(choice_list)):
            if choice_list[i] == letter:
                return i

    # This function will check to see if the current choice of letter has been guessed or not.
    # If no then it will return a false. If yes then it will return a true
    def check_guess_list(self, letter):
        """
        This function will check to see if the current choice of letter has been guessed or not.

        Args:
            letter (str): The letter that the user has guessed

        Returns:
            bool: True if the letter has been guessed, False if the letter has not been guessed
        """
        for i in range(len(guess_list)):
            if guess_list[i] == letter:
                return True
        return False

    # This will randomly select a word from the list of words based on what time it is.
    def pick_word(self, seed):
        """
        This function will randomly select a word from the list of words based on what time it is.

        Args:
            seed (str): The seed that will be used to generate the random number

        Returns:
            str: The word that has been selected

        """
        current_time = time.localtime()
        random.seed(current_time[4] + current_time[3] + seed)
        word = random.choice(word_list)
        # word = word_list[0]
        return word

    # Clears the letters off of the guessed list
    def clear_guess_list(self):
        """Clears the letters off of the guessed list"""
        guess_list.clear()

    # Returns a letter from the list of letters
    def letter_select(self, choice):
        """
        Returns a letter from the list of letters

        Args:
            choice (int): The index of the letter that the user has chosen

        Returns:
            str: The letter that the user has chosen
        """
        return choice_list[choice]
