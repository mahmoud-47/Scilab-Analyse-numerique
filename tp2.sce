/*x = sqrt(4)
x = abs(-5)
x = floor(2.5)//partie entiere
x = modulo(6,2)
x = round(2.3) //entier le plus proche => 2
x = round(2.6) //entier le plus proche => 3
x = round(2.5) //entier le plus proche => 3
*/
x = 1:0.1:5
y = x^2
//motif = '*r' 'dr' ':r'
plot(x,y,'-r',"markerSize",10,"lineWidth",3)
title("ma Courbe","fontsize",5)
q = gca() // get current axe
q.thickness = 3 //epaisseur
d.font_size = 10
//q.x_location = "middle" //"top" / "bottom"
//q.y_location = "middle"
xlabel("abscisse","fontsize",5)

ylabel("ordonnees","fontsize",5)

