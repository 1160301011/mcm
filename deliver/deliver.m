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
m0=drone_state(:,4)./2;