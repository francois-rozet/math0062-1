function out = doSim(in, nbrPos, nbrNail)
%% doSim

%   Simule une partie pour chaque position initiale contenue dans la matrice #in et renvoie les positions finales dans la matric #out.

%% Parameters

%   #nbrPos est le nombre de positions que la bille peut prendre.
%   #nbrNail est le nombre de bifurcations effectuees par la bille.

%% Code
    
    out = in;
    totalLength = numel(in);
    
    add = randi([0 1], totalLength, nbrNail); %Matrice des chemins
    
    for i = 1:totalLength %Pour chaque element de #in
        for j = 1:nbrNail
            if (out(i) == 1) %Condition a la bordure gauche
                add(i, j) = 1;
            elseif (out(i) == nbrPos) %Condition a la bordure droite
                add(i, j) = 0;
            end
            out(i) = out(i) + add(i, j) - 1 / 2;
        end
    end
    
    out = floor(out);
    
end

