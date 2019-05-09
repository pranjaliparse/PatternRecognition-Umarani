vect=[70,90,80; 40,6,6; 10,20,30; 32,43,55; 70,60,40];
vect1=[25,20,40];
z=size(vect);
min=10000;
minpos=1;
ed=zeros(z(1));
for i=1: z(1)
   ed(i)= sqrt(sum((vect(i,:)-vect1).^2));
   if min>=ed(i)
   min=ed(i);
   minpos=i;
   end
end
fprintf("Euclidean Distances \n\n");
for i=1: z(1)
   printf("%d. %f",i,ed(i));
   printf("\n");
   end
printf("Point %d is closest to the vector X[25,20,40]\n\n", minpos);
plot3(vect(:,1),vect(:,2),vect(:,3));