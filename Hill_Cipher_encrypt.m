function [result]=Hill_Cipher_encrypt(key,m)
%ϣ������ӽ��� Hill Cipher Text
%KEY (3*3) 
        the_key = key;
        
        message = [abs(m(1))-65;abs(m(2))-65;abs(m(3))-65];
        disp('����');
        enmessage=mod(the_key*message,26);
        disp(char(int8(rot90(enmessage+65))));
        result=rot90(enmessage+65);
end