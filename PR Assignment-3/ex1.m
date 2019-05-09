data_class1=[ 0,0; 0,1; 2,2; 3,1; 3,2; 3,3];
data_class2=[ 6,9; 8,9; 9,8; 9,9; 9,10; 8,11];

[m n]=size(data_class1);

mean_class1=sum(data_class1)/6
mean_class2=sum(data_class2)/6

zero1=data_class1-mean_class1
zero2=data_class2-mean_class2

cov1=1/(m-1)*zero1'*zero1
cov2=1/(m-1)*zero2'*zero2

A1=-0.5*inv(cov1);
A2=-0.5*inv(cov2);

B1=inv(cov1)*mean_class1';
B2=inv(cov2)*mean_class2';

C10=-0.5*mean_class1*inv(cov1)*mean_class1'-0.5*log(det(cov1));
C20=-0.5*mean_class2*inv(cov2)*mean_class2'-0.5*log(det(cov2));
           
A=A1-A2;
B=B1-B2;
C=C10-C20;

syms x1 x2
x=[x1;x2];
g1=(x'*A1*x)+(B1'*x)+C10;
A2=-0.5*inv(c2);
g2=(x'*A2*x)+(B2'*x)+C20;
g=g1-g2;
ezplot(g,[-10 10]);
x1=5;
x2=8;
if subs(g)<0
    fprintf('5,8 is class 2 ;')
else
    fprintf('5,8 is class 1 ;')
end
x1=7;
x2=3;
if subs(g)<0
    fprintf('7,3 is class 2 ;')
else
    fprintf('7,3 is class 1 ;')
end


%x=zeros(1000,2);
%f=zeros(1000,1);
%for i=1:1000
%   x(i,1)=-10+rand*20;
%   x(i,2)=-10+rand*20;
%   f(i,1)=x(i,:)*A*x(i,:)'+B'*x(i,:)'+C;
%   endfor

%for i=1:6
%   f1(i,1)=data_class1(i,:)*A*data_class1(i,:)'+B'*data_class1(i,:)'+C;
%   f2(i,1)=data_class2(i,:)*A*data_class2(i,:)'+B'*data_class2(i,:)'+C;
%   endfor

%size(x(:,1))
%size(x(:,2))
%size(f(:,1))

%x1=linspace(-2,12,1000);
%y1=linspace(-2,12,1000);
%plot3(x(:,1),x(:,2),f(:,1),'.');

%ezplot( X*A*X'+B'*X'+C);
%hold on;
%plot3(data_class1(:,1),data_class1(:,2),f1(:,1),'rx','MarkerSize',10);
%hold on;
%plot3(data_class2(:,1),data_class2(:,2),f2(:,1),'ro','MarkerSize',10);
%hold on;
%axis([-2 12 -2 12 -70 70])