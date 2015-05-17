function [result]=Hill_Cipher(m1,m2,m3)
%希尔密码加解密 Hill Cipher Text
%KEY (3*3) 
    key = [1,2,3;4,5,6;7,8,10];
        key_det = det(key);
        
        minverse = Ext_Euclid(mod(key_det,26),26);
        %the multiplicative inverse of the determinant modulo 26
  
        Adjoint_Matrix = det(key)*inv(key);
        %Adjoin_Matrix is used for encrypt
        
        Adjoint_Matrix_moded = mod(Adjoint_Matrix,26);
        dekey = mod(minverse(:,1) * Adjoint_Matrix_moded,26);
        %dekey is used for decrypt
        
        message = [abs(m1)-65;abs(m2)-65;abs(m3)-65];
        disp('明文');
        %将传入的字符进行加密处理
        disp(char(rot90(message+65)));
        
        disp('密文');
        enmessage=mod(key*message,26);
        disp(char(int8(rot90(enmessage+65))));
        
        disp('解密后的明文');
        demessage=mod(dekey*enmessage,26);
        disp(char(int8(rot90(demessage+65))));
        
        
end