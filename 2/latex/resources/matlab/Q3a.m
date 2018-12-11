%% Calls

Q1a;
loadMat;

%% Code

[EspK3a, VarK3a] = deal(zeros(l,1));

for i = 1:l
    EspK3a(i) = getEsp(cost{i}, P1a{i});
    VarK3a(i) = getEsp(cost{i}.^2, P1a{i}) - EspK3a(i)^2;
end

clearvars -except EspK3a VarK3a;
