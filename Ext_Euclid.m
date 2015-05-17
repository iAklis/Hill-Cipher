function [ x ] = Ext_Euclid( a,b )
%扩展欧几里德
    if b==0
        x(1)=1;
        x(2)=0;
    else
        s = Ext_Euclid(b,mod(a,b));
        x(1) = s(2);
        x(2) = s(1)-floor(a/b)*s(2);
    end
end