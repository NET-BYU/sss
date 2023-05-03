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


myDictionary = [
    Definition("Hello", "world"),
    Definition("TIM", "Traveler Information Message"),
    Definition("RSU", "Road-Side Unit"),
    Definition("OBU", "On-Board Unit"),
]
