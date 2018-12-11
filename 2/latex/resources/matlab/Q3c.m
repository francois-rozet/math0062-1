%% Calls

Q3b;
Q1a;
loadMat;

%% Code

%i

[P3c, Esp3ci, Var3ci, Esp3cii, Var3ciii] = deal(cell(l,1));

for i = 1:l
    P3c{i} = bsxfun(@rdivide, shiftdim(MFC,i-1), P1a{i}); % Mise en place de la condition
    [Var3ci{i}, Esp3ci{i}] = deal(zeros(dim(i),1)); 
    for j = 1:dim(i)
        shiftPhi = shiftdim(Phi, i-1); % Permutation des indices
        Esp3ci{i}(j) = getEsp(shiftPhi(j,:,:), P3c{i}(j,:,:));
        Var3ci{i}(j) = getEsp(shiftPhi(j,:,:).^2, P3c{i}(j,:,:)) - Esp3ci{i}(j)^2;
    end
    P3c{i} = shiftdim(P3c{i}, l-i+1); % Permutation inverse des indices
end

%ii & iii

for i = 1:l
    Esp3cii{i} = getEsp(Esp3ci{i},P1a{i});
    Var3ciii{i} = getEsp(Var3ci{i}, P1a{i}) + getEsp(Esp3ci{i}.^2, P1a{i}) - Esp3cii{i}^2;
end

clearvars -except P3c Esp3ci Esp3cii Var3ci Var3ciii;

