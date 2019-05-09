vect=load("DataMahalanobis.txt");%Data points 1 
vect1=load("sample.txt");%Data points 2
z=size(vect);%Size of first matrix vect
z1=size(vect1);%Size of second matrix vect1
sum1=zeros(z(2)); 
cov=zeros(z(2),z(2));
for i=1:z(2) %For calculating the mean
   sum1(i)=sum(vect(:,i))/z(1);
   end
disp("Mean:\n");
disp(sum1(:,1)');
sum1=sum1(:,1)'; 
for i=1:z(2)
   vect(:,i)-=sum1(i);
   end
 for i=1:z(2)
    for j=1:z(2)
       cov(i,j)=sum((vect(:,i))'*vect(:,j))/(z(1)-1);
    endfor
 endfor
 disp("Covariance Matrix\n");
 disp(cov);
 A=(1/(z(1)-1))*vect'*vect;
 inverse=inv(A);
 sum2=0;
 for i=1:z1(1)
    sum2=sum1-vect1(i,:);
    sum2=sum2*inverse*sum2';
    sum2=sqrt(sum2);
    sum2
    end
 
 