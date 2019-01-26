function [L,R,M] = divide(Cg,Box)
%myFun - Description
%
% Syntax: [L,R,M] = divide(input)
% Cg�����ӵ���ά���ݣ�Box�Ǳ��ָ�ռ��λ�ú���ά���ݣ�L,R,M�Ƿָ�Ľ��
% Long description ���Ӳ��õ���ռ������½ŵķ�ʽ���зָ�
    if Box(4)-Cg(1)>0
    L=[Box(1)+Cg(1),    Box(2),     Box(3),...
        Box(4)-Cg(1),   Box(5),     Box(6)];
    else L=[];
    end
    if Box(5)-Cg(2)>0
    R=[Box(1),      Box(2)+Cg(2),   Box(3),...
        Cg(1),      Box(5)-Cg(2),   Box(6)];
    else R=[];
    end
    if Box(6)-Cg(3)>0
    M=[Box(1),      Box(2),         Box(3)+Cg(3),...
        Cg(1),      Cg(2),          Box(6)-Cg(3)];
    else M=[];
    end
end