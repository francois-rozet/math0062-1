%% Parameters

nbrPos = 9;
nbrNail = 10;
gain = [1 -3 5 -5 8 -7 7 -2 1];
nbrTry = 4;

%% Code

nbrSim = zeros(1, nbrTry);
esperance = zeros(1, nbrTry);

tic
for i = 1:nbrTry %Pour chaque taille
    
    nbrSim(i) = 10^i; %Calcule le nombre de simulations
    in = randi([1, nbrPos], 1, nbrSim(i)); %Genere des entrees aleatoires
    esperance(i) = mean(getGain(doSim(in, nbrPos, nbrNail), gain));
    
end
toc

%% Display

disp(table(nbrSim', esperance', 'VariableNames', {'Simulations', 'Esperance'}));

clearvars -except nbrSim esperance;