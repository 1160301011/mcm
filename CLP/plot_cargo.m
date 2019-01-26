function  plot_cargo(Co_dir,co)
%myFun - Description
%
% Syntax:  plot(Co_dir,co%)
%
% Long description
    %»­µÚÒ»¸ö
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
    
    X(:,2)=node([1,5,6,2],1);
    Y(:,2)=node([1,5,6,2],2);
    Z(:,2)=node([1,5,6,2],3);

    X(:,3)=node([2,3,7,6],1);
    Y(:,3)=node([2,3,7,6],2);
    Z(:,3)=node([2,3,7,6],3);
    
    X(:,4)=node([3,4,8,7],1);
    Y(:,4)=node([3,4,8,7],2);
    Z(:,4)=node([3,4,8,7],3);

    X(:,5)=node([1,4,8,5],1);
    Y(:,5)=node([1,4,8,5],2);
    Z(:,5)=node([1,4,8,5],3);

    X(:,6)=node([5:8],1);
    Y(:,6)=node([5:8],2);
    Z(:,6)=node([5:8],3);


    p=patch(X,Y,Z,'red');
    view(3);
    hold on
    for i=2:size(co)
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
                    
                X(:,2+6*(i-1))=node([1,5,6,2],1);
                Y(:,2+6*(i-1))=node([1,5,6,2],2);
                Z(:,2+6*(i-1))=node([1,5,6,2],3);
                
                X(:,3+6*(i-1))=node([2,3,7,6],1);
                Y(:,3+6*(i-1))=node([2,3,7,6],2);
                Z(:,3+6*(i-1))=node([2,3,7,6],3);
                    
                X(:,4+6*(i-1))=node([3,4,8,7],1);
                Y(:,4+6*(i-1))=node([3,4,8,7],2);
                Z(:,4+6*(i-1))=node([3,4,8,7],3);
                
                X(:,5+6*(i-1))=node([1,4,8,5],1);
                Y(:,5+6*(i-1))=node([1,4,8,5],2);
                Z(:,5+6*(i-1))=node([1,4,8,5],3);
                
                X(:,6+6*(i-1))=node([5:8],1);
                Y(:,6+6*(i-1))=node([5:8],2);
                Z(:,6+6*(i-1))=node([5:8],3);
                   
        end
    end
    p=patch(X,Y,Z,[0.5,0.5,0.5]);
    view(3);
    hold on
end