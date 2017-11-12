clear all, clc
Dim=0.2         %Dimension der Stahltrager  - zurzeitn Quadrate
l=20         %L�nge
b=14             %Breite zwischen den St�tzen
h=3             %H�he
a=1.5          %Binderabstand


%set axis and figure
clf;
figure(1)
format compact
myaxes =axes('xlim', [0, b], 'ylim', [0, l], 'zlim', [0, h]);
axis equal
view(3)  %Erzeugung der 3D darstellung
grid on
xlabel('x - Breite')
ylabel('y - L�nge')
zlabel('z - H�he')

%Laengstraeger 1
vert1= [0 0 (h-Dim); Dim 0 (h-Dim); Dim 0 h; 0 0 h; Dim l h; 0 l h; 0 l (h-Dim); Dim l (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
fac= [1 2 3 4; 4 3 5 6; 6 7 8 5; 1 2 8 7; 6 7 1 4; 2 3 5 8];    % Welche Eckpunkte werden als eine Polygonfl�che eingef�rbt
patch('Faces', fac,'Vertices',vert1,'FaceColor','b');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Laengstraeger 2
vert2= [(b-Dim) 0 (h-Dim); b 0 (h-Dim); b 0 h; (b-Dim) 0 h; b l h; (b-Dim) l h; (b-Dim) l (h-Dim); b l (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert2,'FaceColor','b');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze 1
vert3= [0 0 0; 0 Dim 0; Dim Dim 0; Dim 0 0; Dim Dim (h-Dim); Dim 0 (h-Dim); 0 0 (h-Dim); 0 Dim (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert3,'FaceColor','r');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze 2
vert4= [b 0 0; b Dim 0; (b-Dim) Dim 0; (b-Dim) 0 0; (b-Dim) Dim (h-Dim); (b-Dim) 0 (h-Dim); b 0 (h-Dim); b Dim (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert4,'FaceColor','r');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze 3
vert5= [0 (l-Dim) 0; 0 l 0; Dim l 0; Dim (l-Dim) 0; Dim l (h-Dim); Dim (l-Dim) (h-Dim); 0 (l-Dim) (h-Dim); 0 l (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert5,'FaceColor','r');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze 4
vert6= [b (l-Dim) 0; b l 0; (b-Dim) l 0; (b-Dim) (l-Dim) 0; (b-Dim) l (h-Dim); (b-Dim) (l-Dim) (h-Dim); b (l-Dim) (h-Dim); b l (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert6,'FaceColor','r');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Querbalken Anfang
vert7= [Dim 0 (h-Dim); Dim 0 h; Dim Dim h; Dim Dim (h-Dim); (b-Dim) Dim h; (b-Dim) Dim (h-Dim); (b-Dim) 0 (h-Dim); (b-Dim) 0 h]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert7,'FaceColor','g');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Querbalken Ende
vert8= [Dim (l-Dim) (h-Dim); Dim (l-Dim) h; Dim l h; Dim l (h-Dim); (b-Dim) l h; (b-Dim) l (h-Dim); (b-Dim) (l-Dim) (h-Dim); (b-Dim) (l-Dim) h]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert8,'FaceColor','g');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Binderi i St�tzen und Querbalken
i=0;
while i <= l-a;         %alternatieve auch m�glich i<= l-(2*a) um den letzten binder nicht darzustellen
      i= i + a;
%Querbalken 
vert9= [Dim i (h-Dim); Dim i h; Dim (i+Dim) h; Dim (i+Dim) (h-Dim); (b-Dim) (i+Dim) h; (b-Dim) (i+Dim) (h-Dim); (b-Dim) i (h-Dim); (b-Dim) i h]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert9,'FaceColor','y');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze A
vert10= [0 i 0; 0 (i+Dim) 0; Dim (i+Dim) 0; Dim i 0; Dim (i+Dim) (h-Dim); Dim i (h-Dim); 0 i (h-Dim); 0 (i+Dim) (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert10,'FaceColor','y');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)

%Stuetze B
vert11= [b i 0; b (i+Dim) 0; (b-Dim) (i+Dim) 0; (b-Dim) i 0; (b-Dim) (i+Dim) (h-Dim); (b-Dim) i (h-Dim); b i (h-Dim); b (i+Dim) (h-Dim)]; % [x y z] Eckpunkte der Tr�ger in Vektorschreibweise
patch('Faces', fac,'Vertices',vert11,'FaceColor','y');            % Erzeugen der Gef�rbten Fl�chen (Polygonen)
end




%Aussteifungen Kreuzverband Dach

%Aussteifungen Kreuzverband Wand Y=0

%Aussteifungen Kreuzverband Wand Y=l

