clc;
clear;
global n;

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
%Size=sortrows(Size,-5);%�������С��������

n=10000;
S=zeros(1,2*n);%�����ı���

S(1,1:2*n)=1;%�����ʼ��
%S(1,1:n)=randi(11,[1,n]);
S(1,1:5)=8;
S(1,6:7)=3;
S(1,8:10)=2;
S(1,11:n)=randi(3,[1,n-10])+8;
S(1,n+1:2*n)=randi(6,[1,n]);

%����,����ÿ�����Ӷ�Ӧ�ķ���
Co_Dir=s_decode(S,Size);
%�Ż��㷨
%���ؿ��巽����ýϺõĳ�ʼ��
v0=0;
s0(1,:)=1;
rand('state',sum(clock));
for j=1:10000
    s_temp=cat(2,S(1,1:n),randi(6,[1,n]));%������
    Co_Dir=s_decode(s_temp,Size);
    [co,Ls,Rs,Ms]=Range_cargo(Container_size,Co_Dir,n);
    v_temp=compute_v(Co_Dir,co);
    if v_temp>v0
        v0=v_temp;
        s0=s_temp;
    end
end

%�˻����
e=0.1^10;
L=5000;
at=0.9;
T=1;
for k=1:L
    %c=1+n+floor(n*rand(1,2));
    d=n+1+floor(n*rand(1,2));
    x=mode(s0(1+n:2*n));
    %c=sort(c);d=sort(d);
    s_1=s0;
    %����
    %s_1(c(1))=s0(c(2));
    %s_1(c(2))=s0(c(1));
    %s_1(c(1))=x;
    s_1(d(1))=s0(d(2));
    s_1(d(2))=s0(d(1));
    %�����½�
    Co_Dir_1=s_decode(s_1,Size);
    [co_1,~,~,~]=Range_cargo(Container_size,Co_Dir_1,n);
    v_1=compute_v(Co_Dir_1,co_1);
    %����׼��
    df=v0-v_1;
    if df<0
        s0=s_1;
        Co_Dir=Co_Dir_1;
        co=co_1;
        v0=v_1;
    elseif exp(-df/T)>=rand
        s0=s_1;
        Co_Dir=Co_Dir_1;
        co=co_1;
        v0=v_1;
    end
    T=T*at;
    if T<e
        break;
    end

end

plot_cargo(Co_Dir,co,s0)
%���ݴ���
for p = 1:size(co,1)
    num_med1(p)=((~(co(p,1)==0&&co(p,2)==0&&co(p,3)==0))&&s0(1,p)==9);
    num_med2(p)=((~(co(p,1)==0&&co(p,2)==0&&co(p,3)==0))&&s0(1,p)==10);
    num_med3(p)=((~(co(p,1)==0&&co(p,2)==0&&co(p,3)==0))&&s0(1,p)==11);
end
med1sum=sum(num_med1);
med2sum=sum(num_med2);
med3sum=sum(num_med3);
per=v0/(L*W*H);
    