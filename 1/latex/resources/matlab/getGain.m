function matGain = getGain(mat, gain)
%% getGain

%   Calcule et renvoie #matGain, la matrice des gains assosciee a la matrice des sorties #mat.

%% Parameters

%   #gain contient les gains associes respectivement aux sorties possibles.

%% Code

    matGain = mat;
    totalLength = numel(mat);
    
    for i = 1:totalLength
        matGain(i) = gain(mat(i)); %Associe un gain a chaque sortie
    end
   
end


