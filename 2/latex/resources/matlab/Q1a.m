%% Calls

loadMat;

%% Code

P1a = cell(l,1);

for i = 1:l
    P1a{i} = doSum(shiftdim(MFC,i-1), 2); % Contraction sur deux indices
end