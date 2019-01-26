function Co_Dir = s_decode(S,Size)
    n=800;
    for i = 1:n
        if S(1,n+i)==1
            Co_Dir(i,:)=[Size(S(i),2),Size(S(i),3),Size(S(i),4)];
        elseif S(1,n+i)==2
            Co_Dir(i,:)=[Size(S(i),3),Size(S(i),2),Size(S(i),4)];
        elseif S(1,n+i)==3
            Co_Dir(i,:)=[Size(S(i),4),Size(S(i),2),Size(S(i),3)];
        elseif S(1,n+i)==4
            Co_Dir(i,:)=[Size(S(i),2),Size(S(i),4),Size(S(i),3)];
        elseif S(1,n+i)==5
            Co_Dir(i,:)=[Size(S(i),3),Size(S(i),4),Size(S(i),2)];
        elseif S(1,n+i)==6
            Co_Dir(i,:)=[Size(S(i),4),Size(S(i),3),Size(S(i),2)];
        end
    end
end