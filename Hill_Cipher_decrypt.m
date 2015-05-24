function [result]=Hill_Cipher_decrypt(key,m)
%希尔密码加解密 Hill Cipher Text
%KEY (3*3) 
        the_key = key;
        key_det = det(the_key);
        
        minverse = Ext_Euclid(mod(key_det,26),26);
        %the multiplicative inverse of the determinant modulo 26
  
        Adjoint_Matrix = det(the_key)*inv(the_key);
        %Adjoin_Matrix is used for encrypt
        
        Adjoint_Matrix_moded = mod(Adjoint_Matrix,26);
        dekey = mod(minverse(:,1) * Adjoint_Matrix_moded,26);
        %dekey is used for decrypt
        
        message = [abs(m(1))-65;abs(m(2))-65;abs(m(3))-65];
        disp('解密后的明文');
        
        demessage=mod(int32(dekey*message),26);
        disp(char(int8(rot90(demessage+65))));
        result = demessage+65;
end