a = 5
b = 3
c = 2
results = []
cal = []
dal = []
eal = []
fal=[]
gal=[]
for a in range(6):
    for b in range(4):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) != 10 and (a + b + c) != 9):
                cal.append([a, b, c])
for a in range(6):
    for b in range(4):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) != 10 and (a + b + c) != 9 and (a + b + c) != 8):
                dal.append([a, b, c])
for a in range(6):
    for b in range(4):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) != 10 and (a + b + c) != 9 and (a + b + c) != 8 and (a + b + c) != 7):
                eal.append([a, b, c])
for a in range(6):
    for b in range(4):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) <=5):
                fal.append([a, b, c])
for a in range(6):
    for b in range(4):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) <=4):
                gal.append([a, b, c])
print(gal)
for i in range(10):
    if (i == 0):
        result = []
        result.append([5, 3, 2])
        results.append(result)
    if (i == 9):
        result = []
        for j in range(5):
            result.append([1, 0, 0])
        for j in range(3):
            result.append([0, 1, 0])
        for j in range(2):
            result.append([0, 0, 1])
        results.append(result)
    if (i == 1):
        for m in range(6):
            for n in range(4):
                for q in range(3):
                    if ((m + n + q) != 0 and (m + n + q) != 10):
                        result = []
                        result.append([m, n, q])
                        result.append([5 - m, 3 - n, 2 - q])
                        results.append(result)
    if (i == 2):
        for a in range(len(cal)):
            for b in range(len(cal)):
                x = cal[a][0] + cal[b][0]
                y = cal[a][1] + cal[b][1]
                z = cal[a][2] + cal[b][2]
                if ((x <= 5 and y <= 3 and z <= 2)):
                    if (not (x == 5 and y == 3 and z == 2)):
                        result = []
                        result.append(cal[a])
                        result.append(cal[b])
                        result.append([5 - x, 3 - y, 2 - z])
                        results.append(result)
    if (i == 3):
        for a in range(len(dal)):
            for b in range(len(dal)):
                for c in range(len(dal)):
                    x = dal[a][0] + dal[b][0] + dal[c][0]
                    y = dal[a][1] + dal[b][1] + dal[c][1]
                    z = dal[a][2] + dal[b][2] + dal[c][2]
                    if ((x <= 5 and y <= 3 and z <= 2)):
                        if (not (x == 5 and y == 3 and z == 2)):
                            result = []
                            result.append(dal[a])
                            result.append(dal[b])
                            result.append(dal[c])
                            result.append([5 - x, 3 - y, 2 - z])
                            results.append(result)
    if (i == 4):
        for a in range(len(eal)):
            for b in range(len(eal)):
                for c in range(len(eal)):
                    for d in range(len(eal)):
                        x = eal[a][0] + eal[b][0] + eal[c][0] + eal[d][0]
                        y = eal[a][1] + eal[b][1] + eal[c][1] + eal[d][1]
                        z = eal[a][2] + eal[b][2] + eal[c][2] + eal[d][2]
                        if ((x <= 5 and y <= 3 and z <= 2)):
                            if (not (x == 5 and y == 3 and z == 2)):
                                result = []
                                result.append(eal[a])
                                result.append(eal[b])
                                result.append(eal[c])
                                result.append(eal[d])
                                result.append([5 - x, 3 - y, 2 - z])
                                results.append(result)
    if(i==5):
        for a in range(len(fal)):
            for b in range(len(fal)):
                for c in range(len(fal)):
                    for d in range(len(fal)):
                        for e in range(len(fal)):
                            x = fal[a][0] + fal[b][0] + fal[c][0] + fal[d][0]+ fal[e][0]
                            y = fal[a][1] + fal[b][1] + fal[c][1] + fal[d][1]+ fal[e][1]
                            z = fal[a][2] + fal[b][2] + fal[c][2] + fal[d][2]+ fal[e][2]
                            if ((x <= 5 and y <= 3 and z <= 2)):
                                if (not (x == 5 and y == 3 and z == 2)):
                                    result = []
                                    result.append(fal[a])
                                    result.append(fal[b])
                                    result.append(fal[c])
                                    result.append(fal[d])
                                    result.append(fal[e])
                                    result.append([5 - x, 3 - y, 2 - z])
                                    results.append(result)
    if(i==6):
        for a in range(len(gal)):
            for b in range(len(gal)):
                for c in range(len(gal)):
                    for d in range(len(gal)):
                        for e in range(len(gal)):
                            for f in range(len(gal)):
                                x = gal[a][0] + gal[b][0] + gal[c][0] + gal[d][0] + gal[e][0]+gal[f][0]
                                y = gal[a][1] + gal[b][1] + gal[c][1] + gal[d][1] + gal[e][1]+gal[f][1]
                                z = gal[a][2] + gal[b][2] + gal[c][2] + gal[d][2] + gal[e][2]+gal[f][2]
                                if ((x <= 5 and y <= 3 and z <= 2)):
                                    if (not (x == 5 and y == 3 and z == 2)):
                                        result = []
                                        result.append(gal[a])
                                        result.append(gal[b])
                                        result.append(gal[c])
                                        result.append(gal[d])
                                        result.append(gal[e])
                                        result.append(gal[f])
                                        result.append([5 - x, 3 - y, 2 - z])
                                        results.append(result)
file_write_obj = open("result1.txt", 'w')
for var in results:
    #print(var)
    file_write_obj.writelines(str(var))
    file_write_obj.write('\n')
file_write_obj.close()
