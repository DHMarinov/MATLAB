clc;
close all;
clear;

[x,Fs]=audioread('DireStraits.wav');
N=1024; %FFT window length  
L=1000; % overlap window

specfft(x,N,L); %implemented function

%soundsc(x,Fs)