%数值分析课程设计
%Runge现象的分析
%切比雪夫插值点
clear;
a=-5;
b=5;
x=-5:0.01:5;%画图节点步长选择为0.01
y1=atand(x);%对应原函数值
plot(x,y1,'LineWidth',5);%原函数
hold on
%gtext('原函数');
title('y=arctan(x)使用切比雪夫插值点后Runge现象(n=10,12...,20)','fontsize',24);
xlabel('x轴','fontsize',24);
ylabel('y轴 （单位：度数）','fontsize',24);
 z=1;%计算次数
for n=10:2:20
   for k=1:n+1%插值节点
       x0(k)=(a+b)/2+((b-a)/2)*cos(((2*k-1)*pi)/(2*(n+1)))
   end
y0=atand(x0);%对应函数值
k=length(x0)%计算构造的插值多项式次数

Ln=0;%初始化插值多项式

for i=1:k
    L=1;
    for j=1:k
        if i~=j
            L=L.*((x-x0(j))./(x0(i)-x0(j)));%分别计算lk(x)
        end
    end
    Ln=Ln+L.*y0(i);%拉格朗日插值多项式
end
result=Ln;
length(y1);

X=Ln-y1;%插值多项式值与原函数值差向量
R(z,1)=n;%插值区间等分份数
R(z,2)=norm(X,inf);%计算每个拉格朗日多项式函数与原函数代入画图节点后得到向量差对应无穷范数
plot(x,Ln,'LineWidth',5);
hold on
%gtext(['n = ' num2str(n)]);
z=z+1;
end
legend('原函数','n=10','n=12','n=14','n=16','n=18','n=20');
R
grid on