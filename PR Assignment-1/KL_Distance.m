   h1 = [ 0.24, 0.2, 0.16, 0.12, 0.08, 0.04, 0.12, 0.04]
   h2 = [ 0.22, 0.19, 0.16, 0.13, 0.11, 0.08, 0.05, 0.02]  
   %temp = sum(h1 .* log(h1 ./ h2));
   temp1= (h1 .* (log(h1)-log(h2)));
   temp2= (h2 .* (log(h2)-log(h1)));
   temp1 
   temp2
   sum1=0;
   sum2=0;
   for i=1: size(h1,2)
      sum1=sum1+temp1(i);
      sum2=sum2+temp2(i);
      end
   d1 = sum1+sum2;
   sum1
   sum2
   
  sum3=0;
   for i=1:size(h1,2)
      sum3=sum3+sqrt(h1(i)*h2(i))
      end
  result=-log(sum3)
  
