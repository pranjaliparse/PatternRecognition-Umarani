samp11=(iris_c([41:50],[1:5])-sum_feat1(1,:));
samp12=(iris_c([41:50],[1:5])-sum_feat1(2,:));
samp13=(iris_c([41:50],[1:5])-sum_feat1(3,:));

for i=1:10
likelihood11(i)=denom1*e^(-0.5*(samp11(i,[1:4])*sigma_inverse1*(samp11(i,[1:4]))'));
likelihood12(i)=denom2*e^(-0.5*(samp12(i,[1:4])*sigma_inverse2*(samp12(i,[1:4]))'));
likelihood13(i)=denom3*e^(-0.5*(samp13(i,[1:4])*sigma_inverse3*(samp13(i,[1:4]))'));
endfor

posterior_p11=(likelihood11*apriori_1)';
posterior_p12=(likelihood12*apriori_2)';
posterior_p13=(likelihood13*apriori_3)';

p1=[posterior_p11 posterior_p12 posterior_p13]

for i=1:10
   if(max(p1(i,:))==posterior_p11(i))
      iris_c((i+40),6)=1;
      elseif(max(p1(i,:))==posterior_p12(i))
      iris_c((i+40),6)=2;
      else
      iris_c((i+40),6)=3;
   endif
endfor

samp21=(iris_c([91:100],[1:5])-sum_feat1(1,:));
samp22=(iris_c([91:100],[1:5])-sum_feat1(2,:));
samp23=(iris_c([91:100],[1:5])-sum_feat1(3,:));

for i=1:10
likelihood21(i)=denom1*e^(-0.5*(samp21(i,[1:4])*sigma_inverse1*(samp21(i,[1:4]))'));
likelihood22(i)=denom2*e^(-0.5*(samp22(i,[1:4])*sigma_inverse2*(samp22(i,[1:4]))'));
likelihood23(i)=denom3*e^(-0.5*(samp23(i,[1:4])*sigma_inverse3*(samp23(i,[1:4]))'));
endfor

posterior_p21=(likelihood21*apriori_1)';
posterior_p22=(likelihood22*apriori_2)';
posterior_p23=(likelihood23*apriori_3)';

p2=[posterior_p21 posterior_p22 posterior_p23]

for i=1:10
   if(max(p2(i,:))==posterior_p21(i))
      iris_c((i+90),6)=1;
      elseif(max(p2(i,:))==posterior_p22(i))
      iris_c((i+90),6)=2;
      else
      iris_c((i+90),6)=3;
   endif
endfor

samp31=(iris_c([141:150],[1:5])-sum_feat1(1,:));
samp32=(iris_c([141:150],[1:5])-sum_feat1(2,:));
samp33=(iris_c([141:150],[1:5])-sum_feat1(3,:));

for i=1:10
likelihood31(i)=denom1*e^(-0.5*(samp31(i,[1:4])*sigma_inverse1*(samp31(i,[1:4]))'));
likelihood32(i)=denom2*e^(-0.5*(samp32(i,[1:4])*sigma_inverse2*(samp32(i,[1:4]))'));
likelihood33(i)=denom3*e^(-0.5*(samp33(i,[1:4])*sigma_inverse3*(samp33(i,[1:4]))'));
endfor

posterior_p31=(likelihood31*apriori_1)';
posterior_p32=(likelihood32*apriori_2)';
posterior_p33=(likelihood33*apriori_3)';

p3=[posterior_p31 posterior_p32 posterior_p33]

for i=1:10
   if(max(p3(i,:))==posterior_p31(i))
      iris_c((i+140),6)=1;
      elseif(max(p3(i,:))==posterior_p32(i))
      iris_c((i+140),6)=2;
      else
      iris_c((i+140),6)=3;
   endif
endfor

accuracy_class1=sum(abs(iris_c([41:50],5)-iris_c([41:50],6)))
accuracy_class2=sum(abs(iris_c([91:100],5)-iris_c([91:100],6)))
accuracy_class3=sum(abs(iris_c([141:150],5)-iris_c([141:150],6)))

