%��ֵ�����γ����
%Runge����ķ���
%�б�ѩ���ֵ��
clear;
a=-5;
b=5;
x=-5:0.01:5;%��ͼ�ڵ㲽��ѡ��Ϊ0.01
y1=atand(x);%��Ӧԭ����ֵ
plot(x,y1,'LineWidth',5);%ԭ����
hold on
%gtext('ԭ����');
title('y=arctan(x)ʹ���б�ѩ���ֵ���Runge����(n=10,12...,20)','fontsize',24);
xlabel('x��','fontsize',24);
ylabel('y�� ����λ��������','fontsize',24);
 z=1;%�������
for n=10:2:20
   for k=1:n+1%��ֵ�ڵ�
       x0(k)=(a+b)/2+((b-a)/2)*cos(((2*k-1)*pi)/(2*(n+1)))
   end
y0=atand(x0);%��Ӧ����ֵ
k=length(x0)%���㹹��Ĳ�ֵ����ʽ����

Ln=0;%��ʼ����ֵ����ʽ

for i=1:k
    L=1;
    for j=1:k
        if i~=j
            L=L.*((x-x0(j))./(x0(i)-x0(j)));%�ֱ����lk(x)
        end
    end
    Ln=Ln+L.*y0(i);%�������ղ�ֵ����ʽ
end
result=Ln;
length(y1);

X=Ln-y1;%��ֵ����ʽֵ��ԭ����ֵ������
R(z,1)=n;%��ֵ����ȷַ���
R(z,2)=norm(X,inf);%����ÿ���������ն���ʽ������ԭ�������뻭ͼ�ڵ��õ��������Ӧ�����
plot(x,Ln,'LineWidth',5);
hold on
%gtext(['n = ' num2str(n)]);
z=z+1;
end
legend('ԭ����','n=10','n=12','n=14','n=16','n=18','n=20');
R
grid on