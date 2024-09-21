clear()
//Definition de la fonction qui represente f(t,y)
function dydt =f(t,y)
    A= -0.000489;
    B = 9.81;
    dydt(1) = A*y(1)^2 + B;
endfunction
// Definition des condition initiales
y0 = [0];
// Definition du vecteur des instants t où on veut évaluer la solution
ti=0;
tf=60;
t1 =ti:1:tf;
// Appel à la fonction ode pour approcher la solution numérique
y = ode(y0,ti,t1,f);
//Affichage des résultats
plot(t1,y);
xlabel('Temps (en s)');
ylabel('Vitesse (en m/s)');
legend('Variation de la vitesse');
