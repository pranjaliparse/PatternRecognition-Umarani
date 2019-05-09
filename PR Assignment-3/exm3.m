i;
i1=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i1.jpg');%2
i2=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i2.jpg');
i3=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i3.jpg');
i4=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i4.jpg');
i5=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i5.jpg');
i6=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i6.jpg');
i7=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i7.jpg');
i8=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i8.jpg');
i9=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i9.jpg');
i10=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\i10.jpg');

k1=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k1.jpg');%1
k2=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k2.jpg');
k3=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k3.jpg');
k4=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k4.jpg');
k5=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k5.jpg');
k6=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k6.jpg');
k7=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k7.jpg');
k8=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k8.jpg');
k9=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k9.jpg');
k10=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\k10.jpg');

test1=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\shape-dataset\test.jpg');

si1=size(i1)
si2=size(i2)
si3=size(i3)
si4=size(i4)
si5=size(i5)
si6=size(i6)
si7=size(i7)
si8=size(i8)
si9=size(i9)
si10=size(i10)

sk1=size(k1);
sk2=size(k2);
sk3=size(k3);
sk4=size(k4);
sk5=size(k5);
sk6=size(k6);
sk7=size(k7);
sk8=size(k8);
sk9=size(k9);
sk10=size(k10);

test_s=size(test1);

areai1=bwarea(im2bw(i1));
areai2=bwarea(im2bw(i2));
areai3=bwarea(im2bw(i3));
areai4=bwarea(im2bw(i4));
areai5=bwarea(im2bw(i5));
areai6=bwarea(im2bw(i6));
areai7=bwarea(im2bw(i7));
areai8=bwarea(im2bw(i8));
areai9=bwarea(im2bw(i9));
areai10=bwarea(im2bw(i10));

areak1=bwarea(im2bw(k1));
areak2=bwarea(im2bw(k2));
areak3=bwarea(im2bw(k3));
areak4=bwarea(im2bw(k4));
areak5=bwarea(im2bw(k5));
areak6=bwarea(im2bw(k6));
areak7=bwarea(im2bw(k7));
areak8=bwarea(im2bw(k8));
areak9=bwarea(im2bw(k9));
areak10=bwarea(im2bw(k10));

testarea=bwarea(im2bw(test1));

a=[areai1 areai2 areai3 areai4 areai5 areai6 areai7 areai8 areai9 areai10];
b=[areak1 areak2 areak3 areak4 areak5 areak6 areak7 areak8 areak9 areak10];

a=a/10^5;
b=b/10^5;


%zi1=reshape(i1,[1 si1(1)*si1(2)*si1(3)]);i6,i7,i10
%zi2=reshape(i2,[1 si2(1)*si2(2)*si2(3)]);
%zi3=reshape(i3,[1 si3(1)*si3(2)*si3(3)]);
%zi4=reshape(i4,[1 si4(1)*si4(2)*si4(3)]);
%zi5=reshape(i5,[1 si5(1)*si5(2)*si5(3)]);
%zi6=reshape(i6,[1 si6(1)*si6(2)*si6(3)]);
%zi7=reshape(i7,[1 si7(1)*si7(2)*si7(3)]);
%zi8=reshape(i8,[1 si8(1)*si8(2)*si8(3)]);
%zi9=reshape(i9,[1 si9(1)*si9(2)*si9(3)]);
%zi10=reshape(i10,[1 si10(1)*si10(2)*si10(3)]);

%zk1=reshape(k1,[1 si1(1)*si1(2)*si1(3)]);
%zk2=reshape(k2,[1 si2(1)*si2(2)*si2(3)]);
%zi3=reshape(k3,[1 si3(1)*si3(2)*si3(3)]);
%zi4=reshape(k4,[1 si4(1)*si4(2)*si4(3)]);
%zi5=reshape(k5,[1 si5(1)*si5(2)*si5(3)]);
%zi6=reshape(k6,[1 si6(1)*si6(2)*si6(3)]);
%zi7=reshape(k7,[1 si7(1)*si7(2)*si7(3)]);
%zi8=reshape(k8,[1 si8(1)*si8(2)*si8(3)]);
%zi9=reshape(k9,[1 si9(1)*si9(2)*si9(3)]);
%zi10=reshape(k10,[1 si10(1)*si10(2)*si10(3)]);

%g component -2
sumi21=sum(sum(i1(:,:,2)))/(si1(1)*si1(2))
sumi22=sum(sum(i2(:,:,2)))/(si2(1)*si2(2))
sumi23=sum(sum(i3(:,:,2)))/(si3(1)*si3(2))
sumi24=sum(sum(i4(:,:,2)))/(si4(1)*si4(2))
sumi25=sum(sum(i5(:,:,2)))/(si5(1)*si5(2))
sumi26=sum(sum(i6(:,:,2)))/(si6(1)*si6(2))
sumi27=sum(sum(i7(:,:,2)))/(si7(1)*si7(2))
sumi28=sum(sum(i8(:,:,2)))/(si8(1)*si8(2))
sumi29=sum(sum(i9(:,:,2)))/(si9(1)*si9(2))
sumi210=sum(sum(i10(:,:,2)))/(si10(1)*si10(2))

%r component -1
sumi11=sum(sum(i1(:,:,1)))/(si1(1)*si1(2))
sumi12=sum(sum(i2(:,:,1)))/(si2(1)*si2(2))
sumi13=sum(sum(i3(:,:,1)))/(si3(1)*si3(2))
sumi14=sum(sum(i4(:,:,1)))/(si4(1)*si4(2))
sumi15=sum(sum(i5(:,:,1)))/(si5(1)*si5(2))
sumi16=sum(sum(i6(:,:,1)))/(si6(1)*si6(2))
sumi17=sum(sum(i7(:,:,1)))/(si7(1)*si7(2))
sumi18=sum(sum(i8(:,:,1)))/(si8(1)*si8(2))
sumi19=sum(sum(i9(:,:,1)))/(si9(1)*si9(2))
sumi110=sum(sum(i10(:,:,1)))/(si10(1)*si10(2))

testcomp=sum(sum(test1(:,:,2)))/(test_s(1)*test_s(2));

%r component -1
sumk11=sum(sum(k1(:,:,1)))/(sk1(1)*sk1(2))
sumk12=sum(sum(k2(:,:,1)))/(sk2(1)*sk2(2))
sumk13=sum(sum(k3(:,:,1)))/(sk3(1)*sk3(2))
sumk14=sum(sum(k4(:,:,1)))/(sk4(1)*sk4(2))
sumk15=sum(sum(k5(:,:,1)))/(sk5(1)*sk5(2))
sumk16=sum(sum(k6(:,:,1)))/(sk6(1)*sk6(2))
sumk17=sum(sum(k7(:,:,1)))/(sk7(1)*sk7(2))
sumk18=sum(sum(k8(:,:,1)))/(sk8(1)*sk8(2))
sumk19=sum(sum(k9(:,:,1)))/(sk9(1)*sk9(2))
sumk110=sum(sum(k10(:,:,1)))/(sk10(1)*sk10(2))

%g component -2
sumk21=sum(sum(k1(:,:,2)))/(sk1(1)*sk1(2))
sumk22=sum(sum(k2(:,:,2)))/(sk2(1)*sk2(2))
sumk23=sum(sum(k3(:,:,2)))/(sk3(1)*sk3(2))
sumk24=sum(sum(k4(:,:,2)))/(sk4(1)*sk4(2))
sumk25=sum(sum(k5(:,:,2)))/(sk5(1)*sk5(2))
sumk26=sum(sum(k6(:,:,2)))/(sk6(1)*sk6(2))
sumk27=sum(sum(k7(:,:,2)))/(sk7(1)*sk7(2))
sumk28=sum(sum(k8(:,:,2)))/(sk8(1)*sk8(2))
sumk29=sum(sum(k9(:,:,2)))/(sk9(1)*sk9(2))
sumk210=sum(sum(k10(:,:,2)))/(sk10(1)*sk10(2))

spi1=[sumi11 sumi12 sumi13 sumi14 sumi15 sumi16 sumi17 sumi18 sumi19 sumi110];
spi2=[sumi21 sumi22 sumi23 sumi24 sumi25 sumi26 sumi27 sumi28 sumi29 sumi210];

spk1=[sumk11 sumk12 sumk13 sumk14 sumk15 sumk16 sumk17 sumk18 sumk19 sumk110];
spk2=[sumk21 sumk22 sumk23 sumk24 sumk25 sumk26 sumk27 sumk28 sumk29 sumk210];

spi1=(spi1+255)/100;
%spi2=(spi2+255)/100;

%spk1=spk1;
spk2=(spk2)/100;

%sp1=(spi1+spk1)/2;
%sp2=(spi2+spk2)/2;

plot(spi1(1,:),a,'rx','MarkerSize',10);
hold on;
plot(spk2(1,:),b,'bo','MarkerSize',10);
%view(0,90);

meani1=mean(spi1);
meani2=mean(spk2);

meana1=mean(a);
meana2=mean(b);

%meank1=mean(spk1);
%meank2=mean(spk2);

mean1=[meani1 meana1]';
mean2=[meani2 meana2]';

si12=[spi1;a]';
sk12=[spk2;b]';

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
hold on;
ezplot(g,[-10 10]);


x1=testcomp;
x2=testarea;

x=[x1;x2];
z=subs(g)