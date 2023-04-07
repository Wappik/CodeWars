def check_right(field, field_checked, i, j):
    count = 0
    for index in range(1, 10):
        if j + index > 11:
            break
        else:
            if field[i][j + index] == 1:
                count += 1
                field_checked[i][j + index] = True
            else:
                break
    return count


def check_bottom(field, field_checked, i, j):
    count = 0
    for index in range(1, 10):
        if i + index > 11:
            break
        else:
            if field[i + index][j] == 1:
                count += 1
                field_checked[i + index][j] = True
            else:
                break
    return count


def check_ships(ships, field):
    result = []
    for ship in ships:
        temp = 0
        if ship[1] == "r":
            for i in range(ship[0][0], ship[0][0] + 3):
                for j in range(ship[0][1], ship[0][1] + ship[2] + 2):
                    temp += field[i - 1][j - 1]
        elif ship[1] == "b":
            for j in range(ship[0][1], ship[0][1] + 3):
                for i in range(ship[0][0], ship[0][0] + ship[2] + 2):
                    temp += field[i - 1][j - 1]
        result.append(True if temp == ship[2] else False)
    return all(result)


def validate_battlefield(field):
    if sum([sum(i) for i in field]) == 20:
        n = 12
        field_checking_cell_passage = [[False for _ in range(n)] for _ in range(n)]

        new_field = [[0 for _ in range(n)] for _ in range(n)]

        for i in range(10):
            for j in range(10):
                new_field[i + 1][j + 1] = field[i][j]

        numbers_ships = [0, 0, 0, 0]
        correct_numbers_ships = [4, 3, 2, 1]
        ships = []
        for i in range(n):
            for j in range(n):
                if not field_checking_cell_passage[i][j]:
                    if new_field[i][j] == 1:
                        field_checking_cell_passage[i][j] = True
                        right = check_right(new_field, field_checking_cell_passage, i, j)
                        bottom = check_bottom(new_field, field_checking_cell_passage, i, j)
                        # if right > 4 or bottom > 4:
                        #     return False
                        try:
                            l = max(right, bottom)
                            numbers_ships[l] += 1
                        except IndexError:
                            # print(f"[{i}][{j}]: l = {max(right, bottom)}")
                            return False
                        ships.append([[i, j], "r" if right > bottom else "b", l + 1])

        isShipField = check_ships(ships, new_field)
        return numbers_ships == correct_numbers_ships and isShipField
    else:
        return False