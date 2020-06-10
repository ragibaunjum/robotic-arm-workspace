clc
clear
a1 = 0; 
a2 = 620;
a3 = 410;
a4 = 190;
a5 = 0;
alph1 = pi/2;
alph2 = 0;
alph3 = 0;
alph4 = pi/2;
alph5 = 0;
alpha1_min = 55*pi/180;
alpha1_max = -55*pi/180;
alpha2_min = 60*pi/180;
alpha2_max = 19*pi/180;
alpha3_min = 72*pi/180;
alpha3_max = 19*pi/180;
alpha4_min = pi/2;
alpha4_max = 40 + pi/2;
alpha5_min = -2*pi;
alpha5_max = 2*pi;
d1 = 200;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 170;
N = 20000;
t1 = alpha1_max + (alpha1_max - alpha1_min)*rand(N,1);
t2 = alpha2_max + (alpha2_max - alpha2_min)*rand(N,1);
t3 = alpha3_max + (alpha3_max - alpha3_min)*rand(N,1);
t4 = alpha4_max + (alpha4_max - alpha4_min)*rand(N,1);
t5 = alpha5_max + (alpha5_max - alpha5_min)*rand(N,1);
for i = 1:N
    A1 = TransMat(a1,alph1,d1,t1(i));
    A2 = TransMat(a2,alph2,d2,t2(i));
    A3 = TransMat(a3,alph3,d3,t3(i));
    A4 = TransMat(a4,alph4,d4,t4(i));
    A5 = TransMat(a5,alph5,d5,t5(i));
    T = A1 *  A2 * A3 * A4 * A5;
    X=T(1,4);
    Y=T(2,4);
    Z=T(3,4);
    plot3(X,Y,Z,'.')
    hold on;
end
view(3);
title('Isometric view');
xlabel('x (mm)');
ylabel('y (mm)');
zlabel('z (mm) ');
% view(2); % top view
% title(' Top view');
% xlabel('x (mm)');
% ylabel('y (mm)');
% view([0 0 1]); % y-z plane
% title('Side view, Y-Z');
% ylabel('y (mm)');
% zlabel('z (mm)');
