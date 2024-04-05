# CONSTANTS

LEFT = 0
RIGHT = 1

# FUNCTIONS:

def findBiggestRowLessThanN(pixelArt, colour, n):
    val = 0
    rows = []

    # finding max value
    for row in pixelArt:
        count = row.count(colour)
        if count > val:
            val = count

    # finding rows with max value
    for i in range(len(pixelArt)):
        count = pixelArt[i].count(colour)
        if count == val:
            rows.append(i)

    return rows

def colourAfter(pattern, row1Index, row2Index, colour):

    # check all rows after row 2
    if row1Index < row2Index:
        for i in range(len(pattern)):
            if i > row2Index:
                if pattern[i].count(colour) != 0:
                    return True
    # check all rows before row 1
    else:
        for i in range(len(pattern)):
            if i < row1Index:
                if pattern[i].count(colour) != 0:
                    return True
                
    return False


def connectRows(pattern, row1Index, row2Index, colour):

    row1 = pattern[row1Index]
    row2 = pattern[row2Index]

    # make empty connection array for row1:
    connections = []
    for knot in row1:
        connections.append([0, 0])

    # if row2 has more coloured knots than row1:
    if row2.count(colour) > row1.count(colour):                     
        backwardsConnections = connectRows(pattern, row2Index, row1Index, colour)

        # reformat connections
        if len(row1) > len(row2):                                   # reformat [[0,0], [0,0]] to [[0,0], [0,0], [0,0]]
            for i in range(len(connections)):
                if i != 0:
                    connections[i][LEFT] = backwardsConnections[i-1][RIGHT]
                if i != len(connections-1):
                    connections[i][RIGHT] = backwardsConnections[i][LEFT]

        else:                                                       # reformat [[0,0], [0,0], [0,0]] to [[0,0], [0,0]]
            for i in range(len(connections)):
                connections[i][LEFT] = backwardsConnections[i][RIGHT]
                connections[i][RIGHT] = backwardsConnections[i+1][LEFT]

    # if row1 has more coloured knots than row2:    
    else:                  

        # bigger row to smaller row connection:                                         
        if len(row1) > len(row2):                                   

            for i in range(len(row1)):
                if row1[i] == colour:

                    if i == 0:
                        connections[i][RIGHT] = colour
                        if row2[i] == colour:
                            row2[i] = -1

                    elif i == len(row1)-1:
                        connections[i][LEFT] = colour
                        if row2[i-1] == colour:
                            row2[i-1] = -1

                    else:
                        if row2[i-1] == colour:
                            connections[i][LEFT] = colour
                            row2[i-1] = -1

                        elif row2[i] == colour:
                            connections[i][RIGHT] = colour
                            row2[i] = -1

                        elif colourAfter(pattern, row1Index, row2Index, colour):       # if there exists a row after that has coloured knots:
                            connections[i][LEFT] = colour

        # smaller row to bigger row connection
        else:                                                       
            for i in range(len(row1)):
                if row1[i] == colour:
                    if row2[i] == colour:
                        connections[i][LEFT] = colour
                        row2[i] = -1

                    elif row2[i+1] == colour:
                        connections[i][RIGHT] = colour
                        row2[i+1] = -1

                    elif colourAfter(pattern, row1Index, row2Index, colour):        # if there exists a row after that has coloured knots:
                        connections[i][LEFT] = colour

    return connections

def completeStringPaths(row1, row2, colour): 

    # assume row1 has more colours

    for knotIndex in range(len(row1)):      # for each knot in row1
        row1knot = row1[knotIndex]

        if len(row1) > len(row2):       # row1 is 4, row2 is 3
            if knotIndex != 0 and row1knot[LEFT] == colour:
                if row2[knotIndex-1][RIGHT] != colour:
                    row2[knotIndex-1][RIGHT] = colour

            if knotIndex != len(row1)-1 and row1knot[RIGHT] == colour:
                if row2[knotIndex][LEFT] != colour:
                    row2[knotIndex][LEFT] = colour

        else:                           # row1 is 3, row2 is 4
            if row1knot[LEFT] == colour:
                if row2[knotIndex][RIGHT] != colour:
                    row2[knotIndex][RIGHT] = colour

            if row1knot[RIGHT] == colour:
                if row2[knotIndex+1][LEFT] != colour:
                    row2[knotIndex+1][LEFT] = colour


    return row1, row2

def determineKnotTypes(pattern, knots, connectionMatrix, colour):

    for rowIndex in range(len(knots)):
        currRow = connectionMatrix[rowIndex]

        for knotIndex in range(len(knots[rowIndex])):
            currKnot = currRow[knotIndex]
            if rowIndex == 0:                           # first row
                if (currKnot[LEFT] == colour and currKnot[RIGHT] == colour) or (currKnot[LEFT] != colour and currKnot[RIGHT] != colour):      # same colour strings
                    knots[rowIndex][knotIndex] = "f"

                elif (currKnot[LEFT] == colour and currKnot[RIGHT] != colour):
                    if pattern[rowIndex][knotIndex] == colour:
                        knots[rowIndex][knotIndex] = "b"
                    else:
                        knots[rowIndex][knotIndex] = "f"

                elif (currKnot[LEFT] != colour and currKnot[RIGHT] == colour):
                    if pattern[rowIndex][knotIndex] == colour:
                        knots[rowIndex][knotIndex] = "f"
                    else:
                        knots[rowIndex][knotIndex] = "b"

            else:                                       # in-between rows and last row
                prevRow = connectionMatrix[rowIndex-1]
                
                if len(knots[rowIndex]) == 3:
                    preLeftColour = prevRow[knotIndex][RIGHT]
                    preRightColour = prevRow[knotIndex+1][LEFT]
                    postLeftColour = currKnot[LEFT]
                    postRightColour = currKnot[RIGHT]
                else:
                    prevPrevRow = connectionMatrix[rowIndex-2]
                    if knotIndex == 0:
                        preLeftColour = prevPrevRow[knotIndex][LEFT]
                        preRightColour = prevRow[knotIndex][LEFT]
                        postLeftColour = currKnot[LEFT]
                        postRightColour = currKnot[RIGHT]
                    elif knotIndex == len(knots[rowIndex])-1:
                        preLeftColour = prevRow[knotIndex-1][RIGHT]
                        preRightColour = prevPrevRow[knotIndex][RIGHT]
                        postLeftColour = currKnot[LEFT]
                        postRightColour = currKnot[RIGHT]
                    else:
                        preLeftColour = prevRow[knotIndex-1][RIGHT]
                        preRightColour = prevRow[knotIndex][LEFT]
                        postLeftColour = currKnot[LEFT]
                        postRightColour = currKnot[RIGHT]

                if pattern[rowIndex][knotIndex] == colour:
                    
                    if preLeftColour == colour and postRightColour == colour:
                        knots[rowIndex][knotIndex] = "f"
                    elif preRightColour == colour and postLeftColour == colour:
                        knots[rowIndex][knotIndex] = "b"
                    elif preLeftColour == colour and postLeftColour == colour:
                        knots[rowIndex][knotIndex] = "fb"
                    elif preRightColour == colour and postRightColour == colour:
                        knots[rowIndex][knotIndex] = "bf"
                else:
                    if preLeftColour != colour and postRightColour != colour:
                        knots[rowIndex][knotIndex] = "f"
                    elif preRightColour != colour and postLeftColour != colour:
                        knots[rowIndex][knotIndex] = "b"
                    elif preLeftColour != colour and postLeftColour != colour:
                        knots[rowIndex][knotIndex] = "fb"
                    elif preRightColour != colour and postRightColour != colour:
                        knots[rowIndex][knotIndex] = "bf"

def finalizeConnectionMatrix(connectionMatrix, startRowIndex, colour):
    #row and up:
    if startRowIndex > 0:
        for rowNum in range(startRowIndex, 0, -1):
            connectionMatrix[rowNum], connectionMatrix[rowNum-1] = completeStringPaths(connectionMatrix[rowNum], connectionMatrix[rowNum-1], colour)

    # row and down:
    if startRowIndex < len(connectionMatrix)-1:
        for rowNum in range(startRowIndex, len(connectionMatrix)-1):
            connectionMatrix[rowNum], connectionMatrix[rowNum+1] = completeStringPaths(connectionMatrix[rowNum], connectionMatrix[rowNum+1], colour)

# MAIN:

def main():

    colour = 1
    pattern = [[0,1,0,0],
               [1,0,0],
               [0,1,1,0],
               [1,1,0],
               [0,0,0,0]]
    answerConnectionMatrix = [[[0,0], [1,0], [1,0]],                # were taking the pattern and trying to make this
                              [[0,1], [0,1]],
                              [[0,0], [1,0], [1,0]],
                              [[0,1], [0,1]],
                              [[0,0], [1,0], [1,0]]]
    connectionMatrix =       [[[0,0], [0,0], [0,0], [0,0]],              # start w/ everything is background colour
                              [[0,0], [0,0], [0,0]],
                              [[0,0], [0,0], [0,0], [0,0]],
                              [[0,0], [0,0], [0,0]],
                              [[0,0], [0,0], [0,0], [0,0]]]
    answerMatrix = ["f","b","f","f",
                    "bf","fb","f",
                    "f","fb","fb","f",
                    "b","b","f",
                    "f","f","f","f",]
    guessMatrix =  [["0","0","0","0"],
                    ["0","0","0"],
                    ["0","0","0","0"],
                    ["0","0","0"],
                    ["0","0","0","0"]]

    pattern_copy = [row[:] for row in pattern]
    startingRows = findBiggestRowLessThanN(pattern_copy, colour, 1)

    for i in range(len(pattern_copy)-1):
        connectionMatrix[i] = connectRows(pattern_copy, i, i+1, colour)

    # for row in connectionMatrix:
    #     print(row)

    finalizeConnectionMatrix(connectionMatrix, startingRows[0]-1, colour)
    # print()
    # for row in connectionMatrix:
    #     print(row)

    determineKnotTypes(pattern, guessMatrix, connectionMatrix, colour)

    for row in guessMatrix:
        print(row)

if __name__ == "__main__":
    main()