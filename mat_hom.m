function T0_n=mat_hom(theta,alpha,r,d,k)

%matrice homogène
n=length(theta);
T0_n=eye(4);%= future matrice homogène

for i=1:k
    
    T=[cos(theta(i))               , -sin(theta(i))             ,0              ,d(i);
        cos(alpha(i))*sin(theta(i)), cos(alpha(i))*cos(theta(i)), -sin(alpha(i)), -r(i)*sin(alpha(i));
        sin(alpha(i))*sin(theta(i)), sin(alpha(i))*cos(theta(i)), cos(alpha(i)) ,r(i)*cos(alpha(i));
       0,0,0,1];
    
      
    T0_n=T0_n*T;
    
end

