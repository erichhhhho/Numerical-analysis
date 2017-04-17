%��ֵ�����γ����
%Runge����ķ���
clear;
x=-5:0.01:5;%��ͼ�ڵ㲽��ѡ��Ϊ0.01
y1=atand(x);%��Ӧԭ����ֵ
plot(x,y1,'LineWidth',5);%ԭ����
hold on
%gtext('ԭ����');
title('y=1./1+x.^2��Runge����(n=2,4...,10)','fontsize',24);
xlabel('x��','fontsize',24);
ylabel('y��','fontsize',24);
 z=1;%�������
for n=1:1:20
   
x0=-5:10/n:5;%��ֵ�ڵ�
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
%legend('ԭ����','n=2','n=4','n=6','n=8','n=10');
R
grid on