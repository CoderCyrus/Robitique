function Xdot=dkm(qdot,sigma,alpha,r,theta,d)

J=jacobien(sigma,alpha,r,theta,d);
Xdot=J*qdot';