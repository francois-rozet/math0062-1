%% Calls

loadMat;

%% Code

P1b = cell(l,1);

for i = 1:l
    P1b{i} = doSum(shiftdim(MFC,i), 1); % Contraction sur un indices
end