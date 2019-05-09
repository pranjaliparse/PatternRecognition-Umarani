data1=textread('Doc1.txt','%s');
data2=textread('Doc2.txt','%s');
data1=regexprep(data1, '[-!,.?]','');
data2=regexprep(data2, '[-!,.?]','');
[a1 b1]=size(data1);
[a2 b2]=size(data2);

z=[data1; data2];
z=unique(z);
[a3 b3]=size(z)

count1=zeros(a3,1);
count2=zeros(a3,1);

data1;
data2;
for i=1:a3
   for j=1:a1
     if(strcmp(z(i),data1(j))==1)
     count1(i)=count1(i)+1;
     endif
     endfor
   for j=1:a2
     if(strcmp(z(i),data2(j))==1)
     count2(i)=count2(i)+1;
     endif
     endfor 
endfor
c=[count1 count2];
count1;
count2;
%sqrt(sum(count1.*count2));
sqrt(sum(count1.^2))
sqrt(sum(count2.^2))
c1=sqrt(sum(count1.^2));
c2=sqrt(sum(count2.^2));
result=sum(count1.*count2)/(c1*c2);
result=1-result

      