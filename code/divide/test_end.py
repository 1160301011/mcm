results = []
cal=[]
dal=[]
eal=[]
for a in range(3):
    for b in range(2):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) != 5 ):
                cal.append([a, b, c])
for a in range(3):
    for b in range(2):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) <=3 ):
                dal.append([a, b, c])
for a in range(3):
    for b in range(2):
        for c in range(3):
            if ((a + b + c) != 0 and (a + b + c) <=2 ):
                eal.append([a, b, c])
for i in range(5):
    if(i==0):
        result=[]
        result.append([2,1,2])
        results.append(result)
    if(i==1):
        for a in range(len(cal)):
            x = cal[a][0]
            y = cal[a][1]
            z = cal[a][2]
            if ((x <= 2 and y <= 1 and z <= 2)):
                if (not (x == 2 and y == 1 and z == 2)):
                    result = []
                    result.append(cal[a])
                    result.append([2 - x, 1 - y, 2 - z])
                    results.append(result)
    if(i==2):
         for a in range(len(dal)):
             for b in range(len(dal)):
                 x = dal[a][0] + dal[b][0]
                 y = dal[a][1] + dal[b][1]
                 z = dal[a][2] + dal[b][2]
                 if ((x <= 2 and y <= 1 and z <= 2)):
                     if (not (x == 2 and y == 1 and z == 2)):
                         result = []
                         result.append(dal[a])
                         result.append(dal[b])
                         result.append([2 - x, 1 - y, 2 - z])
                         results.append(result)
    if(i==3):
        for a in range(len(eal)):
            for b in range(len(eal)):
                for c in range(len(eal)):
                    x = eal[a][0] + eal[b][0] + eal[c][0]
                    y = eal[a][1] + eal[b][1] + eal[c][1]
                    z = eal[a][2] + eal[b][2] + eal[c][2]
                    if ((x <= 2 and y <= 1 and z <= 2)):
                        if (not (x == 2 and y == 1 and z == 2)):
                            result = []
                            result.append(eal[a])
                            result.append(eal[b])
                            result.append(eal[c])
                            result.append([2 - x, 1 - y, 2 - z])
                            results.append(result)
    if(i==4):
        result=[]
        result.append([1,0,0])
        result.append([1,0,0])
        result.append([0,1,0])
        result.append([0,0,1])
        result.append([0,0,1])
        results.append(result)
file_write_obj = open("result2.txt", 'w')
for result in results:
    print(result)
    file_write_obj.writelines(str(result))
    file_write_obj.write('\n')
file_write_obj.close()
