import keyboard

while True:
    print("Waiting")
    if keyboard.is_pressed("q"):
        print("You pressed a A Key")
        break
