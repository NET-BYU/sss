class Definition:
    def __init__(self, term, text):
        self.term = term
        self.text = text

    def __str__(self) -> str:
        returnString = self.term
        returnString += " "
        returnString += self.text
        returnString = str.upper(returnString)
        return returnString


class WordDictionary:
    def __init__(self):
        self.terms = [
            Definition("Hello", "world"),
            Definition("TIM", "Traveler Information Message"),
            Definition("RSU", "Road-Side Unit"),
            Definition("OBU", "On-Board Unit"),
        ]
        self.iterator = 0

    def getNext(self):
        i = self.iterator % len(self.terms)
        self.iterator += 1
        return self.terms[i].__str__()
