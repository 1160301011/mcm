function result = readdata()
%myFun - Description
%
% Syntax: data = readdata()
%
% Long description
%% ��ʼ��������
filename = 'D:\Documents\2019mcm\mcm\deliver\result_3.txt';
delimiter = {',',' ','[',']'};

%% ÿ���ı��еĸ�ʽ�ַ���:
%   ��1: ˫����ֵ (%f)
%	��2: ˫����ֵ (%f)
%   ��3: ˫����ֵ (%f)
%	��4: ˫����ֵ (%f)
%   ��5: ˫����ֵ (%f)
%	��6: ˫����ֵ (%f)
%   ��7: ˫����ֵ (%f)
%	��8: ˫����ֵ (%f)
%   ��9: ˫����ֵ (%f)
%	��10: ˫����ֵ (%f)
%   ��11: ˫����ֵ (%f)
%	��12: ˫����ֵ (%f)
%   ��13: ˫����ֵ (%f)
%	��14: ˫����ֵ (%f)
%   ��15: ˫����ֵ (%f)
% �й���ϸ��Ϣ������� TEXTSCAN �ĵ���
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% ���ı��ļ���
fileID = fopen(filename,'r');

%% ���ݸ�ʽ�ַ�����ȡ�����С�
% �õ��û������ɴ˴������õ��ļ��Ľṹ����������ļ����ִ����볢��ͨ�����빤���������ɴ��롣
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'EmptyValue' ,0.0, 'ReturnOnError', false);

%% �ر��ı��ļ���
fclose(fileID);

%% ���޷���������ݽ��еĺ���
% �ڵ��������δӦ���޷���������ݵĹ�����˲�����������롣Ҫ�����������޷���������ݵĴ��룬�����ļ���ѡ���޷������Ԫ����Ȼ���������ɽű���

%% �����������
result4 = [dataArray{1:end-1}];
%% �����ʱ����
clearvars filename delimiter formatSpec fileID dataArray ans;
result=result4;


end