function prob = getProb(mat, nbrPos)
%% getProb

%   Calcule et renvoie #prob, le vecteur des frequences d'occurence des sorties contenues dans la matrice #mat.

%% Parameters

%   #nbrPos est le nombre de positions que la bille peut prendre.

%% Code

    totalLength = numel(mat);
    
    prob = zeros(1, nbrPos);
    
    for i = 1:totalLength
        prob(mat(i)) = prob(mat(i)) + 1; %Compte les occurences
    end
    
    prob = prob / totalLength; %Pondere sur la taille de l'echantillon
    
end

