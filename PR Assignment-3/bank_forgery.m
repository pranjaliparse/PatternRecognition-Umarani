%class2=[ 0.5, 3; 1, 3; 0.5, 2.5; 1, 2.5; 1.5, 2.5]
%class1=[4.5, 1; 5, 1; 4.5, 0.5; 5.5 0.5]

%class2=[ 0.5, 3; 1, 3; 0.5, 2.5; 1, 2.5; 1.5, 2.5;]
%class1=[4.5, 1; 5, 1; 4.5, 0.5; 5.5 0.5; 2 3.4; 1 6.5; 2 1; 0.5 0.5]

class1=class1b;
class2=class2b;

weights= zeros(1,size(class2,2)+1)';
alpha=1000;%learning parameter

class1=[class1 ones(size(class1,1),1)]%append 1's
class2=[class2 ones(size(class2,1),1)]

class2t=class2;
class2=-class2;%negation of class 2 features

class=[class2; class1]

count=0;
i=1;

while(~(count==(size(class,1))))
    cost=weights'*class(i,:)';
    if(cost<=0)
        weights=weights+alpha*class(i,:)';
        count=0;
        if(i==size(class,1))
            i=1;
        else
            i=i+1;
        end
    else
        if(i==size(class,1))
            i=1;
        else
            i=i+1;
        end
        count=count+1;
    end
    cost;
    count
end

syms x1 x2 x3 x4
x=[x1,x2,x3,x4,1];
g=x*weights;
%ezplot(g,[-10,10]);
%hold on;
%plot(class1(:,1),class1(:,2),'rx','MarkerSize',10);
%hold on;
%plot(class2t(:,1),class2t(:,2),'bo','MarkerSize',10);
y=zeros(1371,1);
for i=100:762
    sample=bankd(i,:);
    x1=sample(1,1);
    x2=sample(1,2);
    x3=sample(1,3);
    x4=sample(1,4);
    z=subs(g);
    if(z>=0)
        y(i)=0;
    else
        y(i)=1;
    end
end
for i=763:861
    y(i)=1;
end
for i=862:1372
    sample=bankd(i,:);
    x1=sample(1,1);
    x2=sample(1,2);
    x3=sample(1,3);
    x4=sample(1,4);
    z=subs(g);
    if(z>=0)
        y(i)=0;
    else
        y(i)=1;
    end
end

accuracy=(size(bankd,1)-sum(abs(bankd(:,5)-y)))/size(bankd,1)*100;

