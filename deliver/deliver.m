%��ȡ���˻�����
drone_state=[
    1143	1143	635	3.50000000000000	40	35	1	1	1;
762	762	558.800000000000	8	79	40	1	1	1;
1524	1270	762	14	64	35	1	1	2;
635	508	635	11	60	18	1	1	1;
635	508	685.800000000000	15	60	15	1	1	2;
1016	1016	635	22	79	24	0	1	2;
812.800000000000	812.800000000000	431.800000000000	20	64	16	1	1	2;
1651	1905	1041.40000000000	0	0	0	0	0	0
];
%m0=(drone_state(:,1)./1000).*(drone_state(:,2)./1000).*(drone_state(:,3)./1000).*...
%    [2.2,8.3,5.3,7.3,7.3,7.3,7.3,7.3]';
m_max=drone_state(:,4);m_max(1)=3;m_max(2)=3;m_max(4)=3;
m0=drone_state(:,4)./2;
H=150;%���и߶�
v_up=5;%�����ٶ�
T0=drone_state(:,6);
v_t=drone_state(:,5)./60;
t_up=(H/v_up)./60;%����/�½�ʱ�䣬��λ�Ƿ���
distance=8;%��ҽԺ�ľ��룬ǧ��
S_max=v_t.*(T0.*0.70-2.*t_up);%����ʱ����о���

%������н�
data=readdata();
cell_data={};
c_m=size(data,1);
c_n=size(data,2);
c_n3=floor(c_n/3);
for i=1:c_m
    temp_mat=[];
    for j=1:c_n3
        if ~(data(i,3*(j-1)+1)==0&&data(i,3*(j-1)+2)==0&&data(i,3*(j-1)+3)==0)
            temp_mat=[temp_mat;data(i,3*j-2:3*j)];
            temp_m=size(temp_mat,1);
        end
    end
    cell_data(1,i)=mat2cell(temp_mat,[temp_m],[3]);
end
n=size(cell_data,2);
seq=[];%Ŀ��
num=0;%���ܷ�����
%��ÿһ�ַ�����һ������
drone_sum=1000000000;
for i=1:n
    %time_temp=0;
    time_deliver_temp=0;
    s_temp=0;
    temp=cell2mat(cell_data(1,i));
    m1=temp*[2,2,3]';
    s=zeros(7,1);
    p=size(temp,1);%���������������˻��ĸ���
    seq_temp=zeros(1,p);%���˻���ѡ��
    T1=zeros(1,p);%����ʱ��
    T1(:)=100000000;
    flag = 1;
    %����ÿ�����˻��������о���
    %for k = 1:7
    %    s(k)=v_t(k)*(T0(k)*m0(k)/(2*m0(k)+m1(k))-2*t_up);
    %end
    %����������Ž�
    %��ÿ���������м���
    for j=1:p
        for k=1:7 %��ÿ�����˻������Ŀ
            if S_max(k)>=distance && m1(j)<=m_max(k)
                time_deliver_temp=distance*2/v_t(k);
                if time_deliver_temp<T1(j)
                    T1(j)=time_deliver_temp;
                    seq_temp(j)=k;
                end
            end
        end
    end
    for j = 1:p
        if seq_temp(j)=0
            flag=0;
            break;
        end
    end
    if flag
        time_temp=sum(T1);
        if time_temp<drone_sum
            num=i;
            seq=seq_temp;
            drone_sum=time_temp;
        end
    end
    

end