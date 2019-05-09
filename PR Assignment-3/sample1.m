mu = [0 0];
Sigma = [1 0; 0 1];
x1 = -5:.2:5; x2 = -5:.2:5;
[X1,X2] = meshgrid(x1,x2);
F = mvnpdf([X1(:) X2(:)],mu,Sigma);
F = reshape(F,length(x2),length(x1));

mvncdf([0 0],[1 1],mu,Sigma);
contour(x1,x2,F)
%plot3(x1,x2,F)
hold on
xlabel('x'); ylabel('y');
line([0 0 1 1 0],[1 0 0 1 1],'linestyle','--','color','k');

mu1 = [5 0];
Sigma1 = [4 0; 0 4];
x3 = -5:.2:15; x4 = -10:.2:10;
[X3,X4] = meshgrid(x3,x4);
F1 = mvnpdf([X3(:) X4(:)],mu1,Sigma1);
F1 = reshape(F1,length(x4),length(x3));

mvncdf([0 0],[1 1],mu1,Sigma1);
contour(x3,x4,F1,'--')
%plot3(x3,x4,F1,'--')

c1=Sigma;
c2=Sigma1;
mu1=mu;
mu2=mu1;
A1=-0.5*inv(c1);
B1=inv(c1)*mu1';
d1=det(c1);
C1=-.5*mu1*inv(c1)*mu1'-.5*log(d1)+log(.25);
B2=inv(c2)*mu2';
d2=det(c2);
C2=-.5*mu2*inv(c2)*mu2'-.5*log(d2)+log(.75);

syms x1 x2
x=[x1;x2];
g1=(x'*A1*x)+(B1'*x)+C1;
A2=-0.5*inv(c2);
g2=(x'*A2*x)+(B2'*x)+C2;
g=g1-g2;
ezplot(g,[-10 10]);
