function [Xn,sigma,theta,r,d,alpha,l]=choix_robot(numero)
%les variables sont initailisées à 0
switch numero
    case 1 %double bras
        l=[3,5];
        sigma=[0,0];
        theta=[0,0];
        r=[0,0];
        d=[0,l(1)];
        alpha=[0,0];
        Xn=[l(2),0,0,1];
        
    case 2 %scara
        l=[3,5];
        sigma=[0,0,0,1];
        theta=[0,0,0,0];
        r=[0,0,0,0];
        d=[0,l(1),l(2),0];
        alpha=[0,0,0,0];
        Xn=[l(2),0,0,1];
        
    case 3 %rx 90
        l=[3,5];
        sigma=[0,0,0,0,0,0];
        theta=[0,0,0,0,0,0];
        r=[0,0,0,l(2),0,0];
        d=[0,0,l(1),0,0,0];
        alpha=[0,pi/2,0,-pi/2,pi/2,-pi/2];
        Xn=[l(2),0,0,1];
        
end

        
        