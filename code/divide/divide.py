a1=[14,15,20,22]
x=2
y=2
z=3
solutions={}
bestsolutions={}
for a in a1:
    solu=[]
    bestsolu=[]
    while(True):
        if(5*x+3*y+2*z<=a):
            solu1=tuple([5,3,2])
            solu.append(solu1)
            solutions[a]=set(solu)
            bestsolutions[a]=set(solu)
            break
        else:
            for i in range(6):
                for j in range(4):
                    for k in range(3):
                        if(i*x+j*y+k*z<=a):
                            solu1=[]
                            solu1.append(i)
                            solu1.append(j)
                            solu1.append(k)
                            solu1=tuple(solu1)
                            solu.append(solu1)
                            if(i*x+j*y+k*z>a-2 or (((i+j)==8)and (i*x+j*y+k*z>=a-2))):
                                bestsolu.append(solu1)
                                #print(bestsolu)
            solutions[a] = set(solu)
            bestsolutions[a] = set(bestsolu)
            break
for key in solutions:
    print(str(key)+':'+str(solutions[key]))
for key in bestsolutions:
    print(str(key)+':'+str(bestsolutions[key]))
