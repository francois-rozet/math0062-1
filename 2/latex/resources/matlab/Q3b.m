%% Calls

loadMat;

%% Code

K = cell(l,1);
for i = 1:l
    order = circshift((1:l)', i-1, 1);
    K{i} = permute(cost{i}, order); % Permutation des incides 1 et i
end

Phi = bsxfun(@plus, K{1}, bsxfun(@plus, K{2}, K{3})); % Calcul de la fonction cout

EspPhi3b = getEsp(Phi, MFC);
VarPhi3b = getEsp(Phi.^2, MFC) - EspPhi3b^2;

clearvars -except EspPhi3b VarPhi3b Phi;