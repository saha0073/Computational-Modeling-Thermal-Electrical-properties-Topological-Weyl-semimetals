clear
%clc


syms C1 C2 v Q h;
syms kx1 ky1 kz1 kx2 ky2 kz2;
%C1=0;
%C2=-C1;

so=[1 0;0 1];
sx=[0 1;1 0];
sy=[0 -1i;1i 0];
sz=[1 0;0 -1];

H1=h*C1*(kz1-Q)*so+h*v*Q*sz-h*v*kx1*sx-h*v*ky1*sy-h*v*kz1*sz;
H2=h*C2*(kz2+Q)*so+h*v*Q*sz+h*v*kx2*sx+h*v*ky2*sy+h*v*kz2*sz;
[V1,D1]=eig(H1);
[V2,D2]=eig(H2);
dd1=eig(H1);
dd2=eig(H2);

delHkx1=diff(H1,kx1);
delHkx2=diff(H2,kx2);

delHky1=diff(H1,ky1);
delHky2=diff(H2,ky2);

