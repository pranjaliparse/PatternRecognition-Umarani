i;
i1=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i1.jpg');
i2=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i2.jpg');
i3=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i3.jpg');
i4=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i4.jpg');
i5=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i5.jpg');
i6=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i6.jpg');
i7=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i7.jpg');
i8=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i8.jpg');
i9=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i9.jpg');
i10=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i10.jpg');
i11=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i11.jpg');
i12=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\i12.jpg');
k1=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k1.jpg');
k2=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k2.jpg');
k3=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k3.jpg');
k4=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k4.jpg');
k5=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k5.jpg');
k6=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k6.jpg');
k7=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k7.jpg');
k8=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k8.jpg');
k9=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k9.jpg');
k10=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k10.jpg');
k11=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k11.jpg');
k12=imread('C:\Users\PRANJALI\Desktop\PR Assignment\PR Assignment-3\faceclass-dataset\k12.jpg');
imshow(i1(:,:,1))
I1 = rgb2gray(i1);
I2 = rgb2gray(i2);
I3 = rgb2gray(i3);
I4 = rgb2gray(i4);
I5 = rgb2gray(i5);
I6 = rgb2gray(i6);
I7 = rgb2gray(i7);
I8 = rgb2gray(i8);
I9 = rgb2gray(i9);
I10 = rgb2gray(i10);
I11 = rgb2gray(i11);
I12 = rgb2gray(i12);
K1 = rgb2gray(k1);
K2 = rgb2gray(k2);
K3 = rgb2gray(k3);
K4 = rgb2gray(k4);
K5 = rgb2gray(k5);
K6 = rgb2gray(k6);
K7 = rgb2gray(k7);
K8 = rgb2gray(k8);
K9 = rgb2gray(k9);
K10 = rgb2gray(k10);
K11 = rgb2gray(k11);
K12 = rgb2gray(k12);

%glcm Matrices
glcm1 = graycomatrix(I1,'Offset',[2 0]);
glcm2 = graycomatrix(I2,'Offset',[2 0]);
glcm3 = graycomatrix(I3,'Offset',[2 0]);
glcm4 = graycomatrix(I4,'Offset',[2 0]);
glcm5 = graycomatrix(I5,'Offset',[2 0]);
glcm6 = graycomatrix(I6,'Offset',[2 0]);
glcm7 = graycomatrix(I7,'Offset',[2 0]);
glcm8 = graycomatrix(I8,'Offset',[2 0]);
glcm9 = graycomatrix(I9,'Offset',[2 0]);
glcm10 = graycomatrix(I10,'Offset',[2 0]);
glcm11 = graycomatrix(I11,'Offset',[2 0]);
glcm12 = graycomatrix(I12,'Offset',[2 0]);
glcm13 = graycomatrix(K1,'Offset',[2 0]);
glcm14 = graycomatrix(K2,'Offset',[2 0]);
glcm15 = graycomatrix(K3,'Offset',[2 0]);
glcm16 = graycomatrix(K4,'Offset',[2 0]);
glcm17 = graycomatrix(K5,'Offset',[2 0]);
glcm18 = graycomatrix(K6,'Offset',[2 0]);
glcm19 = graycomatrix(K7,'Offset',[2 0]);
glcm20 = graycomatrix(K8,'Offset',[2 0]);
glcm21 = graycomatrix(K9,'Offset',[2 0]);
glcm22 = graycomatrix(K10,'Offset',[2 0]);
glcm23 = graycomatrix(K11,'Offset',[2 0]);
glcm24 = graycomatrix(K12,'Offset',[2 0]);
stats=[];
stats = [stats;graycoprops(glcm1)];
stats = [stats;graycoprops(glcm2)];
stats = [stats;graycoprops(glcm3)];
stats = [stats;graycoprops(glcm4)];
stats = [stats;graycoprops(glcm5)];
stats = [stats;graycoprops(glcm6)];
stats = [stats;graycoprops(glcm7)];
stats = [stats;graycoprops(glcm8)];
stats = [stats;graycoprops(glcm9)];
stats = [stats;graycoprops(glcm10)];
stats = [stats;graycoprops(glcm11)];
stats = [stats;graycoprops(glcm12)];
stats = [stats;graycoprops(glcm13)];
stats = [stats;graycoprops(glcm14)];
stats = [stats;graycoprops(glcm15)];
stats = [stats;graycoprops(glcm16)];
stats = [stats;graycoprops(glcm17)];
stats = [stats;graycoprops(glcm18)];
stats = [stats;graycoprops(glcm19)];
stats = [stats;graycoprops(glcm20)];
stats = [stats;graycoprops(glcm21)];
stats = [stats;graycoprops(glcm22)];
stats = [stats;graycoprops(glcm23)];
stats = [stats;graycoprops(glcm24)];

image=[];
for i=1:24
image=[image;struct2array(stats(i))];
end
image
Dataset=[image(:,1) image(:,3)];
%scatter3(Dataset(1:12,1),Dataset(1:12,2),Dataset(1:12,3),'filled')
%hold on
%scatter3(Dataset(13:24,1),Dataset(13:24,2),Dataset(13:24,3))
%xlabel('Contrast');
%ylabel('Energy');
%zlabel('Homogeniety');
%hold on
%mu1=mean(Dataset([1:12],:));
%mu2=mean(Dataset([13:24],:));
sum1=[0 0];
for i=1:12
    sum1=sum1+Dataset(i,:);
end
mu1=sum1/12;
sum1=[0 0];
for i=13:24
    sum1=sum1+Dataset(i,:);
end
mu2=sum1/12;
cov1=cov(Dataset([1:12],:));
cov2=cov(Dataset([13:24],:));

inverse1=inv(cov1);
inverse2=inv(cov2);

A1=-0.5*inverse1;
A2=-0.5*inverse2;

B1=(inverse1*mu1')';
B2=(inverse2*mu2')';

C10=-0.5*mu1*inverse1*mu1'-0.5*log(det(cov1));
C20=-0.5*mu2*inverse2*mu2'-0.5*log(det(cov2));

syms x1 x2
x=[x1;x2];
g1=(x'*A1*x)+(B1*x)+C10;
g2=(x'*A2*x)+(B2*x)+C20;
g=g1-g2
%figure(2);
%syms t
plot(Dataset([1:12],1),Dataset([1:12],2),'rx','MarkerSize',10);
hold on;
plot(Dataset([13:24],1),Dataset([13:24],2),'bo','MarkerSize',6);
hold on;
ezplot(g,[-3 3]);
axis([-1 3 0 3]);
%hold on;
%fimplicit3(g);