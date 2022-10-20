h = int(input("Hypotenuse: "))
trigger = False
for i in range(1, h+1):
    for j in range(1, h+1):
        if h**2 == i**2 + j**2:
            print(f"{h}^2 = {i}^2 + {j}^2")
            print(f"{h**2} = {i**2} + {j**2} = {i**2 + j**2}")
            print("Base is "+ i + " or" + j)
            print("Perpendicular is "+ i + " or" + j)
            trigger = True
            break
    if trigger is True:
        break
