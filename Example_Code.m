%MECH 892 Markvicka HW2
%Name: April Inamura and Stephanie Vavra


clear all, close all, clc

%% Problem 1
load fisheriris
meas = meas';

[U S V] = svd(meas, 'econ'); % 4D to 2D

% Not sure if we use the following code ---------------------------------------------------------------
idx = zeros(150,1);
for j = 1:150
    alpha(:,j) = meas(:,j)'*U(:,1:3);
    if strcmp(species{j}, 'setosa')
        idx(j) =1;
    elseif strcmp(species{j}, 'versicolor')
        idx(j) =2;
    elseif strcmp(species{j}, 'virginica')
        idx(j) =3;
    else
    end 
end

%%
figure
plot3(alpha(1,idx==1), alpha(2,idx==1), alpha(3,idx==1), 'r.', 'MarkerSize', 30)
hold on 
plot3(alpha(1,idx==2), alpha(2,idx==2), alpha(3,idx==2), 'b.', 'MarkerSize', 30)
plot3(alpha(1,idx==3), alpha(2,idx==3), alpha(3,idx==3), 'g.', 'MarkerSize', 30)

xlabel('PCA 1')
ylabel('PCA 2')
zlabel('PCA 3')
legend('setosa','versicolor','virginica')
legend boxoff
box on

view(90,90)
% -----------------------------------------------------------------------------------------------------




%% Problem 2
% Link to Linear Descriminant Lecture: https://drive.google.com/file/d/1nvK1tTarsyWgzczOh-LNugges_ZN0o8p/view?usp=sharing
