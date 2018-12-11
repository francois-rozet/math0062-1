%% Calls

Q1b;
loadMat;

%% Code

P1c = cell(l,1);

for i = 1:l
    P1c{i} = bsxfun(@rdivide, shiftdim(MFC,i), P1b{i}); % Mise en place de la condition
end

clearvars -except P1c;