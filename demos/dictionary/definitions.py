class Definition:
    def __init__(self, term, text):
        self.term = term
        self.text = text

    def __str__(self) -> str:
        returnString = self.term + " :: " + self.text
        returnString = str.upper(returnString)
        return returnString


class WordDictionary:
    def __init__(self):
        self.terms = [
            Definition("TIM", "Traveler Information Message"),
            Definition("RSU", "Road-Side Unit"),
            Definition("OBU", "On-Board Unit"),
            Definition("SPAT", "Signal Phase and Timing"),
            # Definition("SRM-SSM", "Signal Request Message and Signal Status Message"), # too long
            Definition("PROSE", "Proximity Services"),
        ]
        self.iterator = 0

    def getNext(self):
        i = self.iterator % len(self.terms)
        self.iterator += 1
        return self.terms[i].__str__()
