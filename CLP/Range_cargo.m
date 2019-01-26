function [co,Ls,Rs,Ms] = Range_cargo(Container_size,Co_Dir,n)
%myFun - Description
%
% Syntax: [co,Ls,Rs,Ms] = myFun(input)
% S:solution*(Co-Dir), n max number of cargos.
%
% Long description
    Ls=[];%6维度矩阵，前三列是左后下脚坐标，后三项是对应的空间长度
    Rs=[];
    Ms=[];
    L=Container_size(1);
    W=Container_size(2);
    H=Container_size(3);
    co(1,:)=[0,0,0];%放第一个箱子，记录坐标
    box0=[0,0,0,L,W,H];
    [L,R,M]=divide(Co_Dir(1,1:3),box0);%放置第一个箱子，并进行分割
    %Rs(1,:)=[co(1,1),   co(1,2)+Co_Dir(2),  co(1,3),    Co_Dir(1),  W-Co_Dir(2),    H];
    %Ls(1,:)=[co(1,1)+Co_Dir(1), co(1,2),    co(1,3),    L-Co_Dir(1),W,          H];
    %Ms(1,:)=[co(1,1),   co(1,2),    co(1,3)+Co_Dir(3),  Co_Dir(1),  Co_Dir(2),  H-Co_Dir(3)];
    Ls=[Ls;L];
    Rs=[Rs;R];
    Ms=[Ms;M];
    for i = 2:n
        %从R开始搜索是否有空间
        flag=0;
        L=[];
        R=[];
        M=[];
        for j=size(Rs,1):-1:1
            if Rs(j,4)>=Co_Dir(i,1)&&Rs(j,5)>=Co_Dir(i,2)&&Rs(j,6)>=Co_Dir(i,3)
                co(i,:)=[Rs(j,1),Rs(j,2),Rs(j,3)];%放置货物
                [L,R,M]=divide(Co_Dir(i,1:3),Rs(j,:));%分割箱子
                Ls=[Ls;L];
                Rs=[Rs;R];
                Ms=[Ms;M];
                Rs(j,:)=[];%删除原有空间
                flag=1;
                break;
            end
        end
        if flag
            continue;
        end
        %搜索M空间
        for k=size(Ms,1):-1:1
            if Ms(k,4)>=Co_Dir(i,1)&&Ms(k,5)>=Co_Dir(i,2)&&Ms(k,6)>=Co_Dir(i,3)
                co(i,:)=[Ms(k,1),Ms(k,2),Ms(k,3)];
                [L,R,M]=divide(Co_Dir(i,1:3),Ms(k,:));%分割箱子
                Ls=[Ls;L];
                Rs=[Rs;R];
                Ms=[Ms;M];
                Ms(k,:)=[];
                flag=1;
                break;
            end
        end
        if flag
            continue;
        end
        %搜索L空间
        for j=size(Ls,1):-1:1
            if Ls(j,4)>=Co_Dir(i,1)&&Ls(j,5)>=Co_Dir(i,2)&&Ls(j,6)>=Co_Dir(i,3)
                co(i,:)=[Ls(j,1),Ls(j,2),Ls(j,3)];%放置货物
                [L,R,M]=divide(Co_Dir(i,1:3),Ls(j,:));%分割箱子
                Ls=[Ls;L];
                Rs=[Rs;R];
                Ms=[Ms;M];
                Ls(j,:)=[];%删除原有空间
                flag=1;
                break;
            end
        end
        if flag
            continue;
        end
    end
end