%数值分析课程设计   By 何唯
%误差的影响
function [c,result]=Exp_Calculate(x)
eps=0.00001;
MAXN=20;
c=-1;
format
for n=1:MAXN-1   %n从1取到20
    sum=0;
    temp=1;
    result=zeros(n+1,1);
    for i=0:n   %每个n对应的泰勒展开式算出来的值
        if i==0  
           sum=1;
           result(1,1)=1;
        else  
            temp=temp*i;
            result(i+1,1)=(x/2)^(i)/temp;  %利用result数组保存麦克劳林公式中每一项
            sum=sum+((x/2)^(i)/temp);
        end
       if(abs((sum^2)-exp(x))<eps)%满足精度则退出
           c=sum^2;
           return ;
       end
    end
end

end