% @author        PashalisTsirts
% @create        7/18/‎2021, ‏‎‏‎‏‎8:23:49 
% @name          AND_Gate.m  
% @description   AND Gate Perceptron Network

clear all; clc; close all;

P = [0 0 1 1; 0 1 0 1];     % Ιnput data
T = [0 0 0 1];              % Τargets
net = newp([0 1; 0 1],1);   % Create a new perceptron (ranges [0 1] and [0 1]) and one neuron
weight_init = net.IW{1,1}   % Show the initialized weights
bias_init = net.b{1}        % Show the initialized bias
simulation1 = sim(net,P)    % First simulation
net.trainParam.epochs = 10; % Τrain for a maximum of 10 epochs
net = train(net,P,T);       % Τrain the perceptron
weight_final = net.IW{1,1}  % Show the final weights
bias_final = net.b{1}       % Show the final bias
simulation2 = sim(net,P)    % Final simulation