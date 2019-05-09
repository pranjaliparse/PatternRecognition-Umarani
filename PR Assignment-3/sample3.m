meani1=mean(sp1);
meani2=mean(sp2);

meana1=mean(a);
meana2=mean(b);

%meank1=mean(spk1);
%meank2=mean(spk2);

mean1=[meani1 meana1]';
mean2=[meani2 meana2]';

si12=[sp1;sp2]';
sk12=[a;b]';

cov1=cov(si12);
cov2=cov(sk12);

inverse1=inv(cov1);
inverse2=inv(cov2);

A1=-0.5*inverse1;
A2=-0.5*inverse2;

B1=inverse1*mean1;
B2=inverse2*mean2;

C10=-0.5*mean1'*inverse1*mean1-0.5*log(det(cov1));
C20=-0.5*mean2'*inverse2*mean2-0.5*log(det(cov2));
%subplot(1,2,1);
syms x1 x2
x=[x1;x2];
g1=(x'*A1*x)+(B1'*x)+C10;
%A2=-0.5*inv(c2);
g2=(x'*A2*x)+(B2'*x)+C20;
g=g1-g2;
ezplot(g);
hold on;
