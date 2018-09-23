%In this program we want to graph potential voltage for monopole and
%dipole
x=[-3:0.04:3];
y=[-3:0.04:3];
[X,Y]=meshgrid(x,y);
k=8.99e9;
q=1.6e-19;

   
Z1 = k*q./sqrt(X.^2 + Y.^2 + .01);%Z1 is potential voltage for monopole

subplot(2,2,1)
surfc(X,Y,Z1)
colormap (spring)
%zlim([-0.7e-8 0.7e-8])%limit the z axes 
rotate3d
title('Plot of Voltage for Monopole')
xlabel('x  [m]'); ylabel('y  [m]'); zlabel('V  [ V ]');
box on

E1= k*q./(X.^2 + Y.^2 + .01);
subplot(2,2,2)
surf(X,Y,E1)
colormap (spring)
title('Plot of Electric field for Monopole')
xlabel('x  [m]'); ylabel('y  [m]'); zlabel('E');
box on

Z2=k*q*(1./sqrt((X+0.5).^2 + Y.^2+0.01 )-1./sqrt((X-0.5).^2 + Y.^2+0.01 ));%Z2 is potential voltage for Dipole
a=subplot(2,2,3);
[X,Y]=meshgrid(x,y);
surf(X,Y,Z2)
colormap (spring)
%zlim([-0.7e-8 0.7e-8])%limit the z axes 
rotate3d
title('Plot of Voltage for Dipole')
xlabel('x  [m]'); ylabel('y  [m]'); zlabel('V  [ V ]');
box on

E2=k*q*(1./((X+0.5).^2 + Y.^2+0.01 )-1./((X-0.5).^2 + Y.^2+0.01 ));
subplot(2,2,4)
surf(X,Y,E2)
colormap (spring)
title('Plot of Electric field for Dipole')
xlabel('x  [m]'); ylabel('y  [m]'); zlabel('E');
box on

  
