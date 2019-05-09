bankd=load('bank_forgery.txt')
[m n]=size(bankd);
class1b=zeros(1,n);
class2b=zeros(1,n);
for i=1:m
    if(bankd(i,5)==0)
        class1b=[class1b; bankd(i,:)];
    else
        class2b=[class2b; bankd(i,:)];
    end
end
class1b=class1b([2:100],[1:4]);%762 to 700
class2b=class2b([2:100],[1:4]);%610 to 600


