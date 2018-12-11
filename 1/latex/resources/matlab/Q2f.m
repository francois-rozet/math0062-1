%% Parameters

mu = 0;
sigma = sqrt(2);
nbrTry = 4;
nbrRepeat = 10^3;

%% Code

nbrSim = zeros(1, nbrTry);
moyenne = zeros(1, nbrTry);
variance = zeros(1, nbrTry);

esperance = zeros(1, nbrRepeat);

tic
for i = 1:nbrTry %Pour chaque taille
    
    nbrSim(i) = 10^(i + 1); %Calcule le nombre de simulations
    
    matmu = ones(nbrSim(i), nbrRepeat) * mu; %Matrice esperance
    matsigma = ones(nbrSim(i), nbrRepeat) * sigma; %Matrice ecart-type
    
    %Genere les valeurs de la v.a. Z
    Z  = normrnd(matmu, matsigma) ./ normrnd(matmu, matsigma);
    
    esperance = mean(Z); %Calcule les esperances
    
    moyenne(i) = mean(esperance); %Calcule la moyenne des esperances
    variance(i) = var(esperance, 1); %Calcule la variance des esperances
end
toc

%% Display

disp(table(nbrSim', moyenne', variance', 'VariableNames', {'Simulations', 'Moyenne', 'Variance'}));

clearvars -except nbrSim moyenne variance;