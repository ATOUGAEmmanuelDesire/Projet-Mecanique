clear()
//mouvement de chute avec frottements 
g = 9.81;
//valeur de k/m pour cx=0.04
h = 0.000245;
//conditions initiales
xo=0;yo=0;vox=5.14;voy=0;
//equation differentielle
function f=Xprime(t,X)
f(1)=X(3)
f(2)=X(4)
f(3)=-h*sqrt(X(3)^2+X(4)^2)*X(3)
f(4)=-h*sqrt(X(3)^2+X(4)^2)*X(4)-g
endfunction
//valeur initiales de X et de t
Xo=[xo;yo;vox;voy];
to=0;
//intervalle d'etude et nombre de points de calculs
t=linspace(0,0.200,200);
//Resolution du systeme d'equations differentielles
X=ode(Xo,to,t,Xprime);
//creation d'une fenetre graphique et effacement de son contenu eventuel
scf(1)
clf(1)
//equation de la trajectoire parabolique correspondant aux meme conditions initiales en ebsence de frottement
y=linspace(0,-0.1,200)
x=sqrt((-2*y*vox^2)/g);
//Traces des deux courbes dans la fenetre
plot(X(1,:),X(2,:),x,y,'thickness',2)
xgrid()
xlabel('x en mètre','fontsize',3)
ylabel('y en mètre','fontsize',3)
title('Déplacement','fontsize',4)
legend('Avec frottements','Sans frottements')
