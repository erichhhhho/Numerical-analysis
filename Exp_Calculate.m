%��ֵ�����γ����   By ��Ψ
%����Ӱ��
function [c,result]=Exp_Calculate(x)
eps=0.00001;
MAXN=20;
c=-1;
format
for n=1:MAXN-1   %n��1ȡ��20
    sum=0;
    temp=1;
    result=zeros(n+1,1);
    for i=0:n   %ÿ��n��Ӧ��̩��չ��ʽ�������ֵ
        if i==0  
           sum=1;
           result(1,1)=1;
        else  
            temp=temp*i;
            result(i+1,1)=(x/2)^(i)/temp;  %����result���鱣��������ֹ�ʽ��ÿһ��
            sum=sum+((x/2)^(i)/temp);
        end
       if(abs((sum^2)-exp(x))<eps)%���㾫�����˳�
           c=sum^2;
           return ;
       end
    end
end

end