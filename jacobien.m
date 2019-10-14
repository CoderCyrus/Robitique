function J=jacobien(sigma,alpha,r,theta,d)

n=length(sigma);
T0_n=mat_hom(theta,alpha,r,d,n);
J=[];
for k=1:n
    T0_k=mat_hom(theta,alpha,r,d,k);
    ak=T0_k*[0;0;1;0];
    Lkn=T0_n*[0;0;0;1]-T0_k*[0;0;0;1];
    Jk=[sigma(k)*ak(1:3)+(1-sigma(k))*cross(ak(1:3),Lkn(1:3));
        (1-sigma(k))*ak(1:3)];
    J=[J Jk];
end

