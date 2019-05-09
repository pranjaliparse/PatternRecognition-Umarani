mean1=[0 0]';
mean2=[5 0]';

mean=[mean1 mean2];
d=2;
cov1=eye(2);
cov2=4*eye(2);
inverse1=inv(cov1);
inverse2=inv(cov2);

X=mvnrnd(mean1,cov1,1000);
%subplot(1,2,1);
%plot(X(:,1),X(:,2),'.');
%title('Figure 1');
%hold on;
Y=mvnrnd(mean2,cov2,1000);
%subplot(1,2,2);
%plot(Y(:,1),Y(:,2),'.');
%title('Figure 2');

A1=-0.5*inverse1;
A2=-0.5*inverse2;

B1=inverse1*mean1;
B2=inverse2*mean2;

C10=-0.5*mean1'*inverse1*mean1-0.5*log(det(cov1));
C20=-0.5*mean2'*inverse2*mean2-0.5*log(det(cov2));
subplot(1,2,1);
syms x1 x2
x=[x1;x2];
g1=(x'*A1*x)+(B1'*x)+C10;
%A2=-0.5*inv(c2);
g2=(x'*A2*x)+(B2'*x)+C20;
g=g1-g2;
ezplot(g);
hold on;
plot(X(:,1),X(:,2),'rx','MarkerSize',10);
hold on;
plot(Y(:,1),Y(:,2),'bo','MarkerSize',5);
hold on;

subplot(1,2,2);
for i=-20:20
    p1(i+21)=i;
    p2(i+21)=3;
end
plot(p2,p1);
hold on;
plot(X(:,1),X(:,2),'rx','MarkerSize',10);
hold on;
plot(Y(:,1),Y(:,2),'bo','MarkerSize',5);
hold on;

%for i=1:1000
%   x1(i)=-100+rand*200;
%   x2(i)=-100+rand*200;
%   x=[x1(i) x2(i)];
%   mean1;
%   mean2;
%   p1(i)=1/((2*pi)^(d/2)*(abs(det(cov1))^0.5))*e^(-0.5*((x-mean1)*inverse1*(x-mean1)'))
%   p2(i)=1/((2*pi)^(d/2)*(abs(det(cov2))^0.5))*e^(-0.5*((x-mean2)*inverse2*(x-mean2)'))
%   endfor
%size(x1(:,1))
%size(x2(:,2))
%size(p1(:,1))
%plot3(x1(1,:)',x2(1,:)',p2(:,1)','.');

%X=mvnrnd(m,S,n)';% mvnrnd Function program attached with other files in the zip folder
%subplot(2,4,1);
%plot(X(1,:),X(2,:),'.');
%title('Figure 1');
%axis equal
%axis([-5 5 -5 5])