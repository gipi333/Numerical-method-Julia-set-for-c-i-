
A = fscanf(fopen('fractale.txt','r'), '%f',[4001,4001]);
X = [-2,2]
Y = [-2,2]
imagesc(X,Y,A)
title('Ensembles de Julia pour c=i')
ylabel('Im(z)')
xlabel('Re(z)')
