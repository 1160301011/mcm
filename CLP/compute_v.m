function V = compute_v(Co_dir,co)
%myFun - Description
%
% Syntax: volume = compute_v(Co_dir,co)
%
% Long description
V=Co_dir(1,1).*Co_dir(1,2).*Co_dir(1,3);
    for i = 2:size(co,1)
        if ~(co(i,1)==0&&co(i,2)==0&&co(i,3)==0)
            V=V+Co_dir(i,1).*Co_dir(i,2).*Co_dir(i,3);
        end
    end
end