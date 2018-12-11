%% Calls

loadMat;

%% Parameters

p = 0.05;

%% Code

[boundaryi,boundaryii] = deal(cell(l,1));

%i

for i = 1:l
    boundaryi{i} = dev{i} / sqrt(p) + cost{i}; % Selon Bienayme-tchebyshev
    boundaryi{i}(1) = NaN;
end

%ii

for i = 1:l
    boundaryii{i} = norminv(1-p, cost{i}, dev{i}); % Pour une repartition normale
end

clearvars -except boundaryi boundaryii;