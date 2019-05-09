iris_c=csvread('IRIS1.csv');
[m d]=size(iris_c)
iris_c=iris_c([2:151],:);
[m d]=size(iris_c)
apriori_1=50/m;
apriori_2=apriori_3=apriori_1;
count=zeros(1,3);
sum_feat=zeros(3,d-1);

for i=1:(m)
   if (iris_c(i,5)==1 && i<=40 )
   sum_feat(1,:)=sum_feat(1,:)+iris_c(i,[1:4]);
   count(1)=count(1)+1;
   elseif (iris_c(i,5)==2 && i<=90)
   sum_feat(2,:)=sum_feat(2,:)+iris_c(i,[1:4]);
   count(2)=count(2)+1;
   elseif (iris_c(i,5)==3 && i<=140)
   sum_feat(3,:)=sum_feat(3,:)+iris_c(i,[1:4]);
   count(3)=count(3)+1;
   endif
endfor

sum_feat;
sum_feat(1,[1:4])=sum_feat(1,[1:4])./count(1);
sum_feat(2,[1:4])=sum_feat(2,[1:4])./count(2);
sum_feat(3,[1:4])=sum_feat(3,[1:4])./count(3);



sum_feat=[sum_feat [0;0;0]];

zeromean1=iris_c([1:40],:)-sum_feat(1,:);
zeromean2=iris_c([51:90],:)-sum_feat(2,:);
zeromean3=iris_c([101:140],:)-sum_feat(3,:);

zeromean1=zeromean1(:,[1:4]);
zeromean2=zeromean2(:,[1:4]);
zeromean3=zeromean3(:,[1:4]);

covariance1=cov(iris_c([1:40],[1:4]));
covariance2=cov(iris_c([51:90],[1:4]));
covariance3=cov(iris_c([101:140],[1:4]));

sigma_inverse1=inverse(covariance1)
sigma_inverse2=inverse(covariance2)
sigma_inverse3=inverse(covariance3)

denom1=1/((2*pi)^((d-1)/2)*(abs(det(covariance1)))^0.5)
denom2=1/((2*pi)^((d-1)/2)*(abs(det(covariance2)))^0.5)
denom3=1/((2*pi)^((d-1)/2)*(abs(det(covariance3)))^0.5)

for i=1:40
likelihood1(i)=denom1*e^(-0.5*(iris_c(i,[1:4])*sigma_inverse1*(iris_c(i,[1:4]))'));
endfor
z=51;
for i=1:40
likelihood2(i)=denom2*e^(-0.5*(iris_c(z,[1:4])*sigma_inverse2*(iris_c(z,[1:4]))'));
z=z+1;
endfor
z=101;
for i=1:40
likelihood3(i)=denom3*e^(-0.5*(iris_c(z,[1:4])*sigma_inverse3*(iris_c(z,[1:4]))'));
z=z+1;
endfor

likelihood1;
likelihood2;
likelihood3;
posterior_p1=(likelihood1*apriori_1)';
posterior_p2=(likelihood2*apriori_2)';
posterior_p3=(likelihood3*apriori_3)';
p=[posterior_p1; zeros(10,1); posterior_p2; zeros(10,1); posterior_p3; zeros(10,1)]
for i=1:40
   if(max(p(i))==posterior_p1(i))
      iris_c(i,6)=1;
      elseif(max(p(i))==posterior_p2(i))
      iris_c(i,6)=2;
      else
      iris_c(i,6)=3;
   endif
endfor

for i=51:90
   if(max(p(i))==posterior_p1(i-50))
      iris_c(i,6)=1;
      elseif(max(p(i))==posterior_p2(i-50))
      iris_c(i,6)=2;
      else
      iris_c(i,6)=3;
   endif
endfor

for i=101:140
   if(max(p(i))==posterior_p1(i-100))
      iris_c(i,6)=1;
      elseif(max(p(i))==posterior_p2(i-100))
      iris_c(i,6)=2;
      else
      iris_c(i,6)=3;
   endif
endfor
sum_feat1=sum_feat(:,[1:5])