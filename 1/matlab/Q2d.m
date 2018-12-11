%% Parameters

nbrPos = 9;
nbrNail = 10;
gain = [1 -3 5 -5 8 -7 7 -2 1];
nbrSim = 10^7;

%% Code

esperance = zeros(1, nbrPos);

tic
parfor i = 1:nbrPos %Pour chaque position initiale
    
    in = ones(1, nbrSim) * i; %Genere des entrees constantes
    esperance(i) = mean(getGain(doSim(in, nbrPos, nbrNail), gain));
    
end
toc

[value, index] = max(esperance); %Cherche le maximum

%% Display

disp(table((1:nbrPos)', esperance', 'VariableNames', {'Position', 'Esperance'}));

disp(table(index, value, 'VariableNames', {'Optimale', 'Esperance'}));

clearvars -except esperance index value;
