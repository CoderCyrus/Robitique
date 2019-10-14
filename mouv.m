function  mouv(qm,l,alpha,r,d,Xn,sigma,temps)



nb_etapes=temps*10; % une étape dure 0.1s
q2=[0 0];
X=[];
for i=1:nb_etapes
   
    q2(1)=qm(1,i);
    q2(2)=qm(2,i);
    
    Xpi=dgm(q2,sigma,alpha,r,Xn,d);
    Xi=[l(1)*cos(q2(1));l(1)*sin(q2(1))];
    X=[X Xpi];
    plot(X(1,:),X(2,:),'-');
    hold on
    plot([0 Xi(1) Xpi(1)],[0 Xi(2) Xpi(2)]);
    ylim([-sum(l) sum(l)])
    xlim([-sum(l) sum(l)])
    pause(0.1)
    hold off
end


