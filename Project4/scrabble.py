def file():
    dic = {}
    words = []
    points = []
    my_dict = {1: ['A', 'E', 'I', 'L', 'N', 'O', 'R', 'S', 'T', 'U'],
               2: ['D', 'G'],
               3: ['B', 'C', 'M', 'P'],
               4: ['F', 'H', 'V', 'W', 'Y'],
               5: ['K'],
               8: ['J', 'X'],
               10: ['Q', 'Z']
               }

    file_name = '1030 Project 04 01 Words.txt'
    with open(file_name) as file_object:
        lines = file_object.readlines()
        letter = lines
        for line in lines:
            letter = line.upper()
            if len(letter) <= 0 or len(letter) >= 10:
                dic[line] = 0
            else:
                for key,values in my_dict.items():
                    if letter in values:


    values = dic.values()
    total = sum(values)
    print(total)
    print(dic)
    fil = open('JoseGarciaMartinez 04 01 Output.txt', 'w')
    fil.write("points             words\n\n")
    for key, value in dic.items():
        fil.write(str(value) + "           " + key)
        # fil.write(key + " " + str(value))

    fil.write("Total is: " + "  " + str(total))

    fil.close()


if __name__ == '__main__':
    file()
