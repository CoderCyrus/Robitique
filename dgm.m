function X=dgm(q,sigma,alpha,r,Xn,d)

n=length(sigma);
thetai=1:n;
ri=1:n;
for i=1:n
    if alpha(i)==0
        thetai(i)=q(i);
        ri(i)=r(i);
    else
        thetai(i)=theta(i);
        ri(i)=q(i);
    end     
end

T0_n=mat_hom(thetai,alpha,ri,d,n);
X=T0_n*Xn';