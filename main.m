hold off

%choisir le robot: 1=double bras, 2=scara, 3=rx90

disp('choix du robot:')
disp('1=double bras')
disp('2=scara')
disp('3=rx 90')
num_robot=input('choix du robot?');
[Xn,sigma,theta,r,d,alpha,l]=choix_robot(num_robot);
n=length(sigma);
%matrice homogène

T0_n=mat_hom(theta,alpha,r,d,n);

%definition de q:
q=1:n;
for i=1:n
   q(i)=(1-sigma(i))*theta(i)+sigma(i)*r(i);
end

%DGM:

%X=dgm(q,sigma,alpha,r,Xn,d)

%animation


temps=input('temps de simu?: ');



%jacobie

%J=jacobien(sigma,alpha,r,theta,d);

%DKM

%Xdot=dkm(qdot,sigma,alpha,r,theta,d);

%IKM + gestion du temps
Xdot=input('valeur de Xpoint: ');
%Xini=input('valeur de X0: ');
q0=input('valeur de q0: ');
qdotm=[];

qm=[q0'];
for t=1:(temps*10)
    
    thetai=1:n;
    ri=1:n;
    for i=1:n
        if alpha(i)==0
            thetai(i)=qm(i,t);
            ri(i)=r(i);
        else
            thetai(i)=theta(i);
            ri(i)=qm(i,t);
        end     
    end
    qdot=ikm(Xdot,sigma,alpha,ri,thetai,d);
    qdotm= [qdotm qdot];
    q=qm(:,t)+0.1*qdot;
    qm=[qm q];
end
qdotm;
qm;
if num_robot==1 %animation uniquement pour le robot 1 ie celui à deux bras.
    mouv(qm,l,alpha,r,d,Xn,sigma,temps);
end




