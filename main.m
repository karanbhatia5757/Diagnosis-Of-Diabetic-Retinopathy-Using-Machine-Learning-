%% Initialization
clear ; close all; clc

a=load('retinopathy.csv');
% display(size(a));

%% Feature Scaling
a(:,3)=a(:,3)./151;
a(:,4)=a(:,4)./132;
a(:,5)=a(:,5)./120;
a(:,6)=a(:,6)./105;
a(:,7)=a(:,7)./97;
a(:,8)=a(:,8)./89;
a(:,9)=a(:,9)./403.9391;
a(:,10)=a(:,10)./167.1314;
a(:,11)=a(:,11)./106.0701;
a(:,12)=a(:,12)./59.76612;
a(:,13)=a(:,13)./51.42321;
a(:,14)=a(:,14)./20.09861;


%%Dividing Dataset
X_train=a(1:690,[1:19]);
Y_train=a(1:690,20);
X_validate=a(691:920,[1:19]);
Y_validate=a(691:920,20);
X_test=a(921:1151,[1:19]);
Y_test=a(921:1151,20);
