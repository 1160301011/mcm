clc;
clear;

%¼�����ӵĲ���
L=5867.4;
W=2.3368e+03;
H=2.3876e+03;
Container_size=[L,W,H];
%¼�����ߴ�
drone=[1143	1143	635;
762	762	558.800000000000;
1524	1270	762;
635	508	635;
635	508	685.800000000000;
1016	1016	635;
812.800000000000	812.800000000000	431.800000000000;
1651	1905	1041.40000000000];
med=[355.600000000000	177.800000000000	127;
127	203.200000000000	127;
304.800000000000	177.800000000000	101.600000000000];
Size=[drone;med];
Size=[(1:11)',Size];
Size(:,5)=Size(:,2).*Size(:,3).*Size(:,4);
sortrows(Size,-5);%�������С��������
S=zeros(1,1000);%�����ı���
n=size(S)/2;
S(1,1:2*n)=1;%�����ʼ��
S(1,1:n)=randi(11,[1,n]);
S(1,501:1000)=randi(6,[1,n]);

%����,����ÿ�����Ӷ�Ӧ�ķ���
Co_Dir=s_decode(S,Size);
%�Ż��㷨
%���ؿ��巽����ýϺõĳ�ʼ��
v0=0;
s0(1,:)=1;
rand('state',sum(clock));
for j=1:1000
    s_temp=cat(2,randi(11,[1,n]),randi(6,[1,n]));%������
    [co,Ls,Rs,Ms]=Range_cargo(Container_size,Co_Dir,n);
    v_temp=compute_v(Co_Dir,co);
    if v_temp>v0
        v0=v_temp;
        s0=s_temp;
    end
end



[co,Ls,Rs,Ms]=Range_cargo(Container_size,Co_Dir,500);
plot_cargo(Co_Dir,co)
