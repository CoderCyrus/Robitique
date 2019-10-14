function qdot=ikm(xdot,sigma,alpha,r,theta,d)
J=jacobien(sigma,alpha,r,theta,d);

J2=inv(J'*J)*J';
qdot=J2*xdot';
