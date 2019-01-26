start = [20, 30, 30]
a1 = start[0]
b1 = start[1]
c1 = start[2]


def sum1(lists):
    resultx = 0
    resulty = 0
    resultz = 0
    result = []
    for listx in lists:
        resultx = resultx + listx[0]
        resulty = resulty + listx[1]
        resultz = resultz + listx[2]
    result.append(resultx)
    result.append(resulty)
    result.append(resultz)
    return result


a = [0, 0, 0]
tests = []
for x in range(11):
    for y in range(11):
        for z in range(11):
            if ((2 * x + 2 * y + 3 * z) < 22):
                test = [x, y, z]
                tests.append(test)
end = []
for list1 in tests:
    list = []
    list.append(list1)
    for x in range(a1 + 1):
        for y in range(b1 + 1):
            for z in range(c1 + 1):
                if ((2 * x + 2 * y + 3 * z) <= 22):
                    a = sum1(list)
                    if ((a[0] + x) <= start[0] and (a[1] + y) <= start[1] and (a[2] + z) <= start[2]):
                        tuple1 = [x, y, z]
                        list.append(tuple1)
                        a = sum1(list)
    print(list)
    end.append(list)
file_write_obj = open("result.txt", 'w')
for var in end:
    file_write_obj.writelines(str(var))
    file_write_obj.write('\n')
file_write_obj.close()
