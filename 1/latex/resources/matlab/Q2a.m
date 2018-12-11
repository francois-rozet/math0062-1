%% Parameters

nbrPos = 4;
nbrNail = 3;
nbrOut = nbrPos - mod(nbrNail, 2);
nbrSim = 10^4;

%% Code

tic
in = randi([1, nbrPos], 1, nbrSim); %Genere des entrees aleatoires
probHazard = getProb(doSim(in, nbrPos, nbrNail), nbrOut);

in = ones(1, nbrSim); %Genere des entrees constantes
probOne = getProb(doSim(in, nbrPos, nbrNail), nbrOut);
toc

%% Display

disp(table((1:nbrOut)', probHazard', probOne', 'VariableNames', {'Position', 'probHazard', 'probOne'}));

clearvars -except probHazard probOne;