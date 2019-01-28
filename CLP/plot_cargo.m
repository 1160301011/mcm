function  plot_cargo(Co_dir,co,S)
%myFun - Description
%
% Syntax:  plot(Co_dir,co%)
%
% Long description
    %»­µÚÒ»¸ö
    L=5867.4;
    W=2.3368e+03;
    H=2.3876e+03;
    C=[];
    R=[];
    G=[];
    B=[];
    %color=zeros(11,3);
    color=...%RGB
        [0,0,1;
         0,1,0;
         1,0,0;
         0,1,1;
         1,0,1;
         1,1,0;
         1,1,1;
         0.5,0.5,0;
         0.5,0,0.5;
         0.7,0.5,0;
         0,0.5,0.5];
     i=1;
    %       x                       y                   z
    node=[  co(1,1),                co(1,2),            co(1,3);
            co(1,1)+Co_dir(1,1),    co(1,2),            co(1,3);
            co(1,1)+Co_dir(1,1),    co(1,2)+Co_dir(1,2),co(1,3);
            co(1,1),                co(1,2)+Co_dir(1,2),co(1,3);
            co(1,1),                co(1,2),            co(1,3)+Co_dir(1,3);
            co(1,1)+Co_dir(1,1),    co(1,2),            co(1,3)+Co_dir(1,3);
            co(1,1)+Co_dir(1,1),    co(1,2)+Co_dir(1,2),co(1,3)+Co_dir(1,3);
            co(1,1),                co(1,2)+Co_dir(1,2),co(1,3)+Co_dir(1,3)];
    X(:,1)=node([1:4],1);
    Y(:,1)=node([1:4],2);
    Z(:,1)=node([1:4],3);
    %C(1,:)=color(mod(S(i),11)+1,:);
    R(1,1)=color(S(i),1);
    G(1,1)=color(S(i),2);
    B(1,1)=color(S(i),3);

    X(:,2)=node([1,5,6,2],1);
    Y(:,2)=node([1,5,6,2],2);
    Z(:,2)=node([1,5,6,2],3);
    %C(2,:)=color(S(i),:);
    R(2,1)=color(S(i),1);
    G(2,1)=color(S(i),2);
    B(2,1)=color(S(i),3);

    X(:,3)=node([2,3,7,6],1);
    Y(:,3)=node([2,3,7,6],2);
    Z(:,3)=node([2,3,7,6],3);
    %C(3,:)=color(mod(S(i),11)+1,:);
    R(3,1)=color(S(i),1);
    G(3,1)=color(S(i),2);
    B(3,1)=color(S(i),3);

    X(:,4)=node([3,4,8,7],1);
    Y(:,4)=node([3,4,8,7],2);
    Z(:,4)=node([3,4,8,7],3);
    %C(4,:)=color(mod(S(i),11)+1,:);
    R(4,1)=color(S(i),1);
    G(4,1)=color(S(i),2);
    B(4,1)=color(S(i),3);

    X(:,5)=node([1,4,8,5],1);
    Y(:,5)=node([1,4,8,5],2);
    Z(:,5)=node([1,4,8,5],3);
    %C(5,:)=color(mod(S(i),11)+1,:);
    R(5,1)=color(S(i),1);
    G(5,1)=color(S(i),2);
    B(5,1)=color(S(i),3);

    X(:,6)=node([5:8],1);
    Y(:,6)=node([5:8],2);
    Z(:,6)=node([5:8],3);
    C(6,:)=color(S(i),:);
    R(6,1)=color(S(i),1);
    G(6,1)=color(S(i),2);
    B(6,1)=color(S(i),3);


    %p=patch(X,Y,Z,'red');
    %view(3);
    %hold on
    for i=2:size(co,1)
        if ~(co(i,1)==0&&co(i,2)==0&&co(i,3)==0)
            node=[  co(i,1),                co(i,2),            co(i,3);
                    co(i,1)+Co_dir(i,1),    co(i,2),            co(i,3);
                    co(i,1)+Co_dir(i,1),    co(i,2)+Co_dir(i,2),co(i,3);
                    co(i,1),                co(i,2)+Co_dir(i,2),co(i,3);
                    co(i,1),                co(i,2),            co(i,3)+Co_dir(i,3);
                    co(i,1)+Co_dir(i,1),    co(i,2),            co(i,3)+Co_dir(i,3);
                    co(i,1)+Co_dir(i,1),    co(i,2)+Co_dir(i,2),co(i,3)+Co_dir(i,3);
                    co(i,1),                co(i,2)+Co_dir(i,2),co(i,3)+Co_dir(i,3)];
                
                X(:,1+6*(i-1))=node([1:4],1);
                Y(:,1+6*(i-1))=node([1:4],2);
                Z(:,1+6*(i-1))=node([1:4],3);
                %C(1+6*(i-1),:)=color(mod(S(i),11)+1,:);
                    
                X(:,2+6*(i-1))=node([1,5,6,2],1);
                Y(:,2+6*(i-1))=node([1,5,6,2],2);
                Z(:,2+6*(i-1))=node([1,5,6,2],3);
                %C(2+6*(i-1),:)=color(mod(S(i),11)+1,:);
                
                X(:,3+6*(i-1))=node([2,3,7,6],1);
                Y(:,3+6*(i-1))=node([2,3,7,6],2);
                Z(:,3+6*(i-1))=node([2,3,7,6],3);
                %C(3+6*(i-1),:)=color(mod(S(i),11)+1,:);
                    
                X(:,4+6*(i-1))=node([3,4,8,7],1);
                Y(:,4+6*(i-1))=node([3,4,8,7],2);
                Z(:,4+6*(i-1))=node([3,4,8,7],3);
                %C(4+6*(i-1),:)=color(mod(S(i),11)+1,:);
                
                X(:,5+6*(i-1))=node([1,4,8,5],1);
                Y(:,5+6*(i-1))=node([1,4,8,5],2);
                Z(:,5+6*(i-1))=node([1,4,8,5],3);
                %C(5+6*(i-1),:)=color(mod(S(i),11)+1,:);
                
                X(:,6+6*(i-1))=node([5:8],1);
                Y(:,6+6*(i-1))=node([5:8],2);
                Z(:,6+6*(i-1))=node([5:8],3);
                %C(6+6*(i-1),:)=color(mod(S(i),11)+1,:);
                for j=1:6
                    R(j+6*(i-1),1)=color(S(i),1);
                    G(j+6*(i-1),1)=color(S(i),2);
                    B(j+6*(i-1),1)=color(S(i),3);
                end
        end
    end
    C=cat(3,R,G,B);
    p=patch(X,Y,Z,C);
    view(3);
    hold on
    NODE=...
    [   0,  0,  0;
        L,  0,  0;
        L,  W,  0;
        0,  W,  0;
        0,  0,  H;
        L,  0,  H;
        L,  W,  H;
        0,  W,  H;
    ];
    X1(:,1)=NODE(1:4,1);
    Y1(:,1)=NODE(1:4,2);
    Z1(:,1)=NODE(1:4,3);
    R1(1,1)=0.5;
    G1(1,1)=0.5;
    B1(1,1)=0.5;

    X1(:,2)=NODE([1,5,6,2],1);
    Y1(:,2)=NODE([1,5,6,2],2);
    Z1(:,2)=NODE([1,5,6,2],3);
    R1(2,1)=NaN;
    G1(2,1)=NaN;
    B1(2,1)=NaN;

    X1(:,3)=NODE([1,4,8,5],1);
    Y1(:,3)=NODE([1,4,8,5],2);
    Z1(:,3)=NODE([1,4,8,5],3);
    R1(3,1)=NaN;
    G1(3,1)=NaN;
    B1(3,1)=NaN;

    X1(:,4)=NODE([2,3,7,6],1);
    Y1(:,4)=NODE([2,3,7,6],2);
    Z1(:,4)=NODE([2,3,7,6],3);
    R1(4,1)=0.5;
    G1(4,1)=0.5;
    B1(4,1)=0.5;

    X1(:,5)=NODE([3,4,8,7],1);
    Y1(:,5)=NODE([3,4,8,7],2);
    Z1(:,5)=NODE([3,4,8,7],3);
    R1(5,1)=0.5;
    G1(5,1)=0.5;
    B1(5,1)=0.5;

    X1(:,6)=NODE([5,6,7,8],1);
    Y1(:,6)=NODE([5,6,7,8],2);
    Z1(:,6)=NODE([5,6,7,8],3);
    R1(6,1)=NaN;
    G1(6,1)=NaN;
    B1(6,1)=NaN;

    C1=cat(3,R1,G1,B1);
    p=patch(X1,Y1,Z1,C1);
    hold on
    colorbar

end