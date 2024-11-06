clc
clear all
close all
%% Zad1 - generowanie wzorców
load('mnist_012.mat'); %zaladowanie wzorcow 28x28
%wzorce
% wzorzec_4x4_1 = [1,1,1,1;-1,1,-1,1;1,-1,1,1;-1,-1,-1,1];
% wzorzec_4x4_2 = [1,1,1,1;-1,1,-1,1;1,1,1,1;-1,-1,1,-1];
% wzorzec_4x4_3 = [1,-1,1,1;-1,1,1,1;1,-1,-1,1;-1,1,-1,1];
% wzorzec_4x4_4 = [1,1,-1,1;-1,1,-1,1;1,1,1,1;-1,-1,-1,-1];
% wzorzec_4x4_5 = [1,1,-1,1;-1,1,-1,1;1,-1,1,1;1,-1,-1,1];
% wzorzec_4x4_6 = [-1,1,1,1;-1,1,1,1;1,-1,1,1;-1,-1,-1,-1];

wzorzec_4x4_1 = [1, -1, 1, -1; -1, 1, -1, 1; 1, 1, -1, -1; -1, 1, 1, -1];
wzorzec_4x4_2 = [1, 1, -1, 1; -1, -1, 1, -1; 1, -1, 1, 1; -1, 1, -1, -1];
wzorzec_4x4_3 = [-1, 1, -1, 1; 1, -1, 1, -1; 1, 1, -1, -1; -1, -1, 1, 1];
wzorzec_4x4_4 = [-1, -1, 1, -1; 1, -1, 1, 1; -1, 1, 1, -1; 1, -1, -1, 1];
wzorzec_4x4_5 = [1, -1, -1, 1; -1, 1, 1, -1; 1, -1, 1, -1; -1, 1, -1, 1];
wzorzec_4x4_6 = [-1, 1, 1, -1; 1, -1, -1, 1; -1, 1, 1, -1; 1, -1, 1, 1];

wzorzec_6x6_1 = [1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, 1, -1, -1, 1, -1; -1, 1, 1, -1, 1, 1];
wzorzec_6x6_2 = [-1, -1, 1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, 1, -1, -1, 1; 1, 1, -1, 1, -1, -1];
wzorzec_6x6_3 = [1, 1, -1, 1, -1, 1; -1, -1, 1, -1, 1, -1; 1, -1, 1, 1, -1, -1; -1, 1, -1, -1, 1, 1; 1, 1, -1, 1, -1, -1; -1, 1, 1, -1, 1, 1];
wzorzec_6x6_4 = [-1, 1, -1, -1, 1, -1; 1, -1, 1, 1, -1, 1; -1, 1, -1, 1, 1, -1; 1, -1, 1, -1, -1, 1; -1, -1, 1, 1, -1, 1; 1, 1, -1, -1, 1, -1];
wzorzec_6x6_5 = [1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1];
wzorzec_6x6_6 = [-1, -1, 1, 1, -1, -1; 1, 1, -1, -1, 1, 1; -1, -1, 1, 1, -1, -1; 1, 1, -1, -1, 1, 1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1];

% wzorzec_6x6_1 = [1,-1,-1,-1,1,-1; -1,1,-1,1,-1,-1; -1,-1,-1,1,-1,-1;
% -1,1,-1,1,1,-1; 1,-1,1,1,-1,-1; -1,1,1,-1,1,-1];
% wzorzec_6x6_2 = [-1,-1,1,1,-1,1; -1,-1,1,-1,1,-1; 1,-1,1,-1,-1,-1;
% -1,1,-1,1,1,-1; -1,1,-1,1,1,1; -1,-1,-1,1,1,1];
% wzorzec_6x6_3 = [-1,1,-1,1,1,-1; -1,-1,1,-1,-1,1; -1,-1,1,-1,1,-1;
% -1,1,-1,-1,-1,-1; -1,1,-1,-1,1,-1; 1,-1,1,-1,-1,-1];
% wzorzec_6x6_4 = [-1,1,-1,1,1,-1; 1,-1,1,-1,-1,1; 1,-1,-1,-1,1,1;
% -1,-1,-1,1,-1,-1; 1,-1,-1,1,-1,1; 1,-1,1,-1,1,-1];
% wzorzec_6x6_5 = [1,1,-1,1,-1,1; -1,1,-1,-1,-1,-1; -1,-1,1,-1,-1,-1;
% 1,-1,-1,1,-1,1; -1,1,-1,-1,1,-1; -1,1,-1,-1,-1,1];
% wzorzec_6x6_6 = [-1,1,-1,1,-1,1; -1,1,-1,-1,1,1; -1,-1,1,-1,-1,1;
% -1,1,1,-1,1,-1; -1,1,1,1,1,-1; -1,1,1,-1,-1,1];
wzorzec_28x28_1 = double(train_images(:,:,1));
wzorzec_28x28_2 = double(train_images(:,:,20));
wzorzec_28x28_3 = double(train_images(:,:,50));
wzorzec_28x28_4 = double(train_images(:,:,180));
wzorzec_28x28_5 = double(train_images(:,:,290));
wzorzec_28x28_6 = double(train_images(:,:,428));
wzorce_4x4 = cat(3, wzorzec_4x4_1, wzorzec_4x4_2, wzorzec_4x4_3,wzorzec_4x4_4, wzorzec_4x4_5, wzorzec_4x4_6);
wzorce_6x6 = cat(3, wzorzec_6x6_1, wzorzec_6x6_2, wzorzec_6x6_3,wzorzec_6x6_4, wzorzec_6x6_5, wzorzec_6x6_6);
wzorce_28x28 = cat(3, wzorzec_28x28_1, wzorzec_28x28_2, wzorzec_28x28_3,wzorzec_28x28_4, wzorzec_28x28_5, wzorzec_28x28_6);
%ploty
figure
subplot(2,3,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,3,2)
imshow(wzorzec_4x4_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,3,3)
imshow(wzorzec_4x4_3, 'InitialMagnification', 'fit');
title('wzorzec 3');
subplot(2,3,4)
imshow(wzorzec_4x4_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
subplot(2,3,5)
imshow(wzorzec_4x4_5, 'InitialMagnification', 'fit');
title('wzorzec 5');
subplot(2,3,6)
imshow(wzorzec_4x4_6, 'InitialMagnification', 'fit');
title('wzorzec 6');
figure
subplot(2,3,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,3,2)
imshow(wzorzec_6x6_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,3,3)
imshow(wzorzec_6x6_3, 'InitialMagnification', 'fit');
title('wzorzec 3');
subplot(2,3,4)
imshow(wzorzec_6x6_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
subplot(2,3,5)
imshow(wzorzec_6x6_5, 'InitialMagnification', 'fit');
title('wzorzec 5');
subplot(2,3,6)
imshow(wzorzec_6x6_6, 'InitialMagnification', 'fit');
title('wzorzec 6');

figure
subplot(2,3,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,3,2)
imshow(wzorzec_28x28_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,3,3)
imshow(wzorzec_28x28_3, 'InitialMagnification', 'fit');
title('wzorzec 3');
subplot(2,3,4)
imshow(wzorzec_28x28_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
subplot(2,3,5)
imshow(wzorzec_28x28_5, 'InitialMagnification', 'fit');
title('wzorzec 5');
subplot(2,3,6)
imshow(wzorzec_28x28_6, 'InitialMagnification', 'fit');
title('wzorzec 6');
%% zad2 - wyznaczanie macierzy wag
%===================== obraz 4x4 ==============================
W2 = cat(3, wzorzec_4x4_1, wzorzec_4x4_2);
W4 = cat(3, wzorzec_4x4_1, wzorzec_4x4_2, wzorzec_4x4_3, wzorzec_4x4_4);
W6 = cat(3, wzorzec_4x4_1, wzorzec_4x4_2, wzorzec_4x4_3, wzorzec_4x4_4,wzorzec_4x4_5, wzorzec_4x4_6);
%mod_test_wzorzec_4x4_1 = [1,1,1,1;-1,1,-1,-1;1,-1,1,1;-1,-1,-1,1];
mod_test_wzorzec_4x4_1 = [1, -1, 1, -1; -1, 1, -1, 1; 1, -1, -1, -1; -1, -1, 1, -1];

W_Hebb_4x4_2_hebb = train_hopfield(W2, 'Hebb');
W_Hebb_4x4_4_hebb = train_hopfield(W4, 'Hebb');
W_Hebb_4x4_6_hebb = train_hopfield(W6, 'Hebb');
wynik_2_hebb = test_hopfield(W_Hebb_4x4_2_hebb, mod_test_wzorzec_4x4_1);
wynik_4_hebb = test_hopfield(W_Hebb_4x4_4_hebb, mod_test_wzorzec_4x4_1);
wynik_6_hebb = test_hopfield(W_Hebb_4x4_6_hebb, mod_test_wzorzec_4x4_1);
W_Hebb_4x4_2_PsIn = train_hopfield(W2, 'PseudoInverse');
wynik_2_PsIn = test_hopfield(W_Hebb_4x4_2_PsIn, mod_test_wzorzec_4x4_1);
W_Hebb_4x4_4_PsIn = train_hopfield(W4, 'PseudoInverse');
wynik_4_PsIn = test_hopfield(W_Hebb_4x4_4_PsIn, mod_test_wzorzec_4x4_1);
W_Hebb_4x4_6_PsIn = train_hopfield(W6, 'PseudoInverse');
wynik_6_PsIn = test_hopfield(W_Hebb_4x4_6_PsIn, mod_test_wzorzec_4x4_1);
%plot
figure
subplot(1,2,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(1,2,2)
imshow(wzorzec_4x4_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
figure
sgtitle('wynik dla 2 wzorców');
subplot(1,4,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_2_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (Hebb)');
subplot(1,4,4)
imshow(wynik_2_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (PsIn)');
figure
subplot(2,2,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,2,2)
imshow(wzorzec_4x4_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,2,3)
imshow(wzorzec_4x4_3, 'InitialMagnification', 'fit');
title('wzorzec 3');
subplot(2,2,4)
imshow(wzorzec_4x4_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
figure
sgtitle('wynik dla 4 wzorców');
subplot(1,4,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_4_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (Hebb)');
subplot(1,4,4)
imshow(wynik_4_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (PsIn)');
figure
sgtitle('wynik dla 6 wzorców');
subplot(1,4,1)
imshow(wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_4x4_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_6_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (Hebb)');
subplot(1,4,4)
imshow(wynik_6_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 4x4 (PsIn)');
%===================== obraz 6x6 ==============================
W2_6x6 = cat(3, wzorzec_6x6_1, wzorzec_6x6_2);
W4_6x6 = cat(3, wzorzec_6x6_1, wzorzec_6x6_2, wzorzec_6x6_3, wzorzec_6x6_4);
W6_6x6 = cat(3, wzorzec_6x6_1, wzorzec_6x6_2, wzorzec_6x6_3, wzorzec_6x6_4,wzorzec_6x6_5, wzorzec_6x6_6);
% mod_test_wzorzec_6x6_1 = [1,-1,-1,-1,-1,-1; -1,1,-1,1,-1,-1;
% -1,-1,-1,1,-1,-1; -1,1,-1,1,1,1; 1,-1,1,1,-1,-1; -1,1,1,-1,1,-1];

mod_test_wzorzec_6x6_1 = [-1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; -1, -1, -1, -1, 1, -1; -1, 1, 1, -1, 1, 1];

W_Hebb_6x6_2_hebb = train_hopfield(W2_6x6, 'Hebb');
wynik_6x6_2_hebb = test_hopfield(W_Hebb_6x6_2_hebb, mod_test_wzorzec_6x6_1);
W_Hebb_6x6_4_hebb = train_hopfield(W4_6x6, 'Hebb');
wynik_6x6_4_hebb = test_hopfield(W_Hebb_6x6_4_hebb, mod_test_wzorzec_6x6_1);
W_Hebb_6x6_6_hebb = train_hopfield(W6_6x6, 'Hebb');
wynik_6x6_6_hebb = test_hopfield(W_Hebb_6x6_6_hebb, mod_test_wzorzec_6x6_1);
W_Hebb_6x6_2_PsIn = train_hopfield(W2_6x6, 'PseudoInverse');
wynik_6x6_2_PsIn = test_hopfield(W_Hebb_6x6_2_PsIn, mod_test_wzorzec_6x6_1);
W_Hebb_6x6_4_PsIn = train_hopfield(W4_6x6, 'PseudoInverse');
wynik_6x6_4_PsIn = test_hopfield(W_Hebb_6x6_4_PsIn, mod_test_wzorzec_6x6_1);
W_Hebb_6x6_6_PsIn = train_hopfield(W6_6x6, 'PseudoInverse');
wynik_6x6_6_PsIn = test_hopfield(W_Hebb_6x6_6_PsIn, mod_test_wzorzec_6x6_1);
%plot
figure

subplot(1,2,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(1,2,2)
imshow(wzorzec_6x6_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
figure
sgtitle('wynik dla 2 wzorców');
subplot(1,4,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_6x6_2_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (Hebb)');
subplot(1,4,4)
imshow(wynik_6x6_2_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (PsIn)');
figure
subplot(2,2,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,2,2)
imshow(wzorzec_6x6_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,2,3)
imshow(wzorzec_6x6_3, 'InitialMagnification', 'fit');
title('wzorzec 3');
subplot(2,2,4)
imshow(wzorzec_6x6_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
figure
sgtitle('wynik dla 4 wzorców');
subplot(1,4,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_6x6_4_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (Hebb)');
subplot(1,4,4)
imshow(wynik_6x6_4_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (PsIn)');
figure
sgtitle('wynik dla 6 wzorców');
subplot(1,4,1)
imshow(wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_6x6_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_6x6_6_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (Hebb)');
subplot(1,4,4)
imshow(wynik_6x6_6_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 6x6 (PsIn)');

%=================================28x28======================================

%wzorce mają być wektorami a nie macierzami i wszędzie mają być -1 i 1
W2_28x28 = cat(3, wzorzec_28x28_1, wzorzec_28x28_2);
W4_28x28 = cat(3, wzorzec_28x28_1, wzorzec_28x28_2, wzorzec_28x28_3,wzorzec_28x28_4);
W6_28x28 = cat(3, wzorzec_28x28_1, wzorzec_28x28_2, wzorzec_28x28_3,wzorzec_28x28_4, wzorzec_28x28_5, wzorzec_28x28_6);
mod_test_wzorzec_28x28_1 = imnoise(double(train_images(:,:,1)), 'salt & pepper', 0.1);
mod_test_wzorzec_28x28_1(mod_test_wzorzec_28x28_1 == 0) = -1;
W_Hebb_28x28_2_hebb = train_hopfield(W2_28x28, 'Hebb');
wynik_28x28_2_hebb = test_hopfield(W_Hebb_28x28_2_hebb,mod_test_wzorzec_28x28_1);
W_Hebb_28x28_4_hebb = train_hopfield(W4_28x28, 'Hebb');
wynik_28x28_4_hebb = test_hopfield(W_Hebb_28x28_4_hebb,mod_test_wzorzec_28x28_1);
W_Hebb_28x28_6_hebb = train_hopfield(W6_28x28, 'Hebb');
wynik_28x28_6_hebb = test_hopfield(W_Hebb_28x28_6_hebb,mod_test_wzorzec_28x28_1);
W_Hebb_28x28_2_PsIn = train_hopfield(W2_28x28, 'PseudoInverse');
wynik_28x28_2_PsIn = test_hopfield(W_Hebb_28x28_2_PsIn,mod_test_wzorzec_28x28_1);
W_Hebb_28x28_4_PsIn = train_hopfield(W4_28x28, 'PseudoInverse');
wynik_28x28_4_PsIn = test_hopfield(W_Hebb_28x28_4_PsIn,mod_test_wzorzec_28x28_1);
W_Hebb_28x28_6_PsIn = train_hopfield(W6_28x28, 'PseudoInverse');
wynik_28x28_6_PsIn = test_hopfield(W_Hebb_28x28_6_PsIn,mod_test_wzorzec_28x28_1);
%plot
figure
subplot(1,2,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(1,2,2)
imshow(wzorzec_28x28_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
figure
sgtitle('wynik dla 2 wzorców');
subplot(1,4,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_28x28_2_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (Hebb)');
subplot(1,4,4)
imshow(wynik_28x28_2_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (PsIn)');
figure
subplot(2,2,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('wzorzec 1');
subplot(2,2,2)
imshow(wzorzec_28x28_2, 'InitialMagnification', 'fit');
title('wzorzec 2');
subplot(2,2,3)
imshow(wzorzec_28x28_3, 'InitialMagnification', 'fit');
title('wzorzec 3');

subplot(2,2,4)
imshow(wzorzec_28x28_4, 'InitialMagnification', 'fit');
title('wzorzec 4');
figure
sgtitle('wynik dla 4 wzorców');
subplot(1,4,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_28x28_4_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (Hebb)');
subplot(1,4,4)
imshow(wynik_28x28_4_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (PsIn)');
figure
sgtitle('wynik dla 6 wzorców');
subplot(1,4,1)
imshow(wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('orginany wzorzec');
subplot(1,4,2)
imshow(mod_test_wzorzec_28x28_1, 'InitialMagnification', 'fit');
title('zmodyfikowany wzorzec');
subplot(1,4,3)
imshow(wynik_28x28_6_hebb, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (Hebb)');
subplot(1,4,4)
imshow(wynik_28x28_6_PsIn, 'InitialMagnification', 'fit');
title('Odtworzony wzorzec 28x28 (PsIn)');
%% funkcje
% Funkcja trenująca sieć Hopfielda z wybraną metodą
function W = train_hopfield(patterns, method)
[rows, cols, num_patterns] = size(patterns);
W = zeros(rows * cols);
if strcmp(method, 'Hebb')
for p = 1:num_patterns
x = patterns(:,:,p);
x = x(:);
W = W + x * x'; % Reguła Hebb'a
end
elseif strcmp(method, 'PseudoInverse')
X = reshape(patterns, [rows*cols, num_patterns]);
Xplus = pinv(X); % Pseudoinwersja
W = X * Xplus;
end
W = W - diag(diag(W)); % Ustawienie przekątnej macierzy na zero
end
function recalled = test_hopfield(W, pattern)
x = pattern(:);
y = sign(W * x);
recalled = reshape(y, size(pattern));
end
