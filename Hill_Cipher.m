function [result] = Hill_Cipher()
    key = [1,2,3;4,5,6;7,8,10];
    message = 'AAV';
    enmessage = Hill_Cipher_encrypt(key,message);
    demessage = Hill_Cipher_decrypt(key,enmessage);
end