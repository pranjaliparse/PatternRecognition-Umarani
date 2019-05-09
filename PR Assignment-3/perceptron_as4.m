%class2=[ 0.5, 3; 1, 3; 0.5, 2.5; 1, 2.5; 1.5, 2.5]
%class1=[4.5, 1; 5, 1; 4.5, 0.5; 5.5 0.5]

class2=[ 0.5, 3; 1, 3; 0.5, 2.5; 1, 2.5; 1.5, 2.5;]
class1=[4.5, 1; 5, 1; 4.5, 0.5; 5.5 0.5; 2 3.4; 1 6.5; 2 1; 0.5 0.5]

weights= zeros(1,size(class2,2)+1)';
alpha=1;%learning parameter

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
end

syms x1 x2
x=[x1,x2,1];
g=x*weights;
ezplot(g,[-10,10]);
hold on;
plot(class1(:,1),class1(:,2),'rx','MarkerSize',10);
hold on;
plot(class2t(:,1),class2t(:,2),'bo','MarkerSize',10);




