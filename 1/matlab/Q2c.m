%% Parameters

nbrPos = 9;
nbrNail = 10;
gain = [1 -3 5 -5 8 -7 7 -2 1];
nbrTry = 4;
nbrRepeat = 10^3;

%% Code

nbrSim = zeros(1, nbrTry);
moyenne = zeros(1, nbrTry);
variance = zeros(1, nbrTry);

esperance = zeros(1,nbrRepeat);

tic
for i = 1:nbrTry %Pour chaque taille
    
    nbrSim(i) = 10^i; %Calcule le nombre de simulations
    in = randi([1, nbrPos], nbrRepeat, nbrSim(i)); %Genere des entrees aleatoires
    
    parfor j = 1:nbrRepeat %Calcule #nbrRepeat fois l'esperance
        esperance(j) = mean(getGain(doSim(in(j,:), nbrPos, nbrNail), gain), 2)';
    end
        
    moyenne(i) = mean(esperance); %Calcule la moyenne des esperances
    variance(i) = var(esperance, 1); %Calcule la variance des esperances
       
end
toc

%% Display

disp(table(nbrSim', moyenne', variance', 'VariableNames', {'Simulations', 'Moyenne', 'Variance'}));

clearvars -except nbrSim moyenne variance;