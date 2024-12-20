

% wz41 = [-1,-1,-1,-1;
%          1, 1, 1, 1;
%          1, 1, 1, 1;
%         -1,-1,-1,-1];
% 
% bl41 = [-1,1,-1,-1;
%          1, 1, 1,-1;
%          1, 1, 1, 1;
%         -1,-1,1,-1];
% 
% wz42 = [ 1,-1,-1, 1;
%          1,-1,-1, 1;
%          1,-1,-1, 1;
%          1,-1,-1, 1];
% 
% wz43 = [ 1,-1,-1, 1;
%         -1, 1, 1,-1;
%         -1, 1, 1,-1;
%          1,-1,-1, 1];
% 
% wz44 = [ 1, 1, 1, 1;
%         -1,-1,-1,-1;
%         -1,-1,-1,-1;
%          1, 1, 1, 1];
% 
% wz45 = [-1,-1,-1,-1;
%         1,1,-1,1;
%         1,-1,1,1;
%         -1,-1,-1,-1;
%                 ];
% 
% wz46 = [1,-1,-1,1;
%        -1,-1,-1,-1;
%        -1,-1,-1,-1;
%         1,-1,-1,1;
%                 ];

%wz61 = [ 1, -1, -1, -1, -1,  1;
%            -1,  1, -1, -1,  1, -1;
%            -1, -1,  1,  1, -1, -1;
%            -1, -1,  1,  1, -1, -1;
%            -1,  1, -1, -1,  1, -1;
%             1, -1, -1, -1, -1,  1];
% 
% bl61 = [ 1, -1, -1, -1, -1,  1;
%            -1,  1, 1, -1,  1, -1;
%            -1, -1,  1,  -1, -1, -1;
%            -1, -1,  1,  1, 1, -1;
%            1,  1, -1, -1,  1, -1;
%             1, -1, -1, -1, -1,  1];
% 
% 
% wz62 = [ 1,-1,-1,-1,-1, 1;
%          1,-1,-1,-1,-1, 1;
%          1,-1,-1,-1,-1, 1;
%          1,-1,-1,-1,-1, 1;
%          1,-1,-1,-1,-1, 1;
%          1,-1,-1,-1,-1, 1];
% 
% wz63 =[ 1, -1,  1, -1,  1, -1;
%            -1,  1, -1,  1, -1,  1;
%             1, -1,  1, -1,  1, -1;
%            -1,  1, -1,  1, -1,  1;
%             1, -1,  1, -1,  1, -1;
%            -1,  1, -1,  1, -1,  1];
% 
% wz64 = [ 1, 1, 1, 1, 1, 1;
%         -1,-1,-1,-1,-1,-1;
%         -1,-1,-1,-1,-1,-1;
%         -1,-1,-1,-1,-1,-1;
%         -1,-1,-1,-1,-1,-1;
%          1, 1, 1, 1, 1, 1];
% 
% wz65 = [-1,-1,-1,-1,-1,-1;
%          1, 1, 1, 1, 1, 1;
%          1, 1, 1, 1, 1, 1;
%          1, 1, 1, 1, 1, 1;
%          1, 1, 1, 1, 1, 1;
%         -1,-1,-1,-1,-1,-1];
% 
% wz66 = [-1, -1,  1,  1, -1, -1;
%            -1, -1,  1,  1, -1, -1;
%             1,  1,  1,  1,  1,  1;
%             1,  1,  1,  1,  1,  1;
%            -1, -1,  1,  1, -1, -1;
%            -1, -1,  1,  1, -1, -1];

clear all
close all
clc

wz28 = load('mnist_012.mat');
test28 = wz28.test_images;
train28 = wz28.train_images;

wz41 = [1, -1, 1, -1; -1, 1, -1, 1; 1, 1, -1, -1; -1, 1, 1, -1];

bl41 = [1, -1, 1, -1; -1, 1, -1, 1; 1, -1, -1, -1; -1, -1, 1, -1];

figure
subplot(1,2,1)
imshow(wz41)
title('Wzorzec oryginalny')
subplot(1,2,2)
imshow(bl41)
title('Wzorzec zmodyfikowany')

wz42 = [1, 1, -1, 1; -1, -1, 1, -1; 1, -1, 1, 1; -1, 1, -1, -1];
wz43 = [-1, 1, -1, 1; 1, -1, 1, -1; 1, 1, -1, -1; -1, -1, 1, 1];
wz44 = [-1, -1, 1, -1; 1, -1, 1, 1; -1, 1, 1, -1; 1, -1, -1, 1];
wz45 = [1, -1, -1, 1; -1, 1, 1, -1; 1, -1, 1, -1; -1, 1, -1, 1];
wz46 = [-1, 1, 1, -1; 1, -1, -1, 1; -1, 1, 1, -1; 1, -1, 1, 1];

wz4(:,:,1) = wz41;
wz4(:,:,2) = wz42;
wz4(:,:,3) = wz43;
wz4(:,:,4) = wz44;
wz4(:,:,5) = wz45;
wz4(:,:,6) = wz46;
wyrysuj(wz4);

wz61 = [1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, 1, -1, -1, 1, -1; -1, 1, 1, -1, 1, 1];

bl61 =  [-1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; -1, -1, -1, -1, 1, -1; -1, 1, 1, -1, 1, 1];

figure
subplot(1,2,1)
imshow(wz61)
title('Wzorzec oryginalny')
subplot(1,2,2)
imshow(bl61)
title('Wzorzec zmodyfikowany')

wz62 = [-1, -1, 1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, 1, -1, -1, 1; 1, 1, -1, 1, -1, -1];
wz63 = [1, 1, -1, 1, -1, 1; -1, -1, 1, -1, 1, -1; 1, -1, 1, 1, -1, -1; -1, 1, -1, -1, 1, 1; 1, 1, -1, 1, -1, -1; -1, 1, 1, -1, 1, 1];
wz64 = [-1, 1, -1, -1, 1, -1; 1, -1, 1, 1, -1, 1; -1, 1, -1, 1, 1, -1; 1, -1, 1, -1, -1, 1; -1, -1, 1, 1, -1, 1; 1, 1, -1, -1, 1, -1];
wz65 = [1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1; -1, 1, -1, 1, -1, 1];
wz66 = [-1, -1, 1, 1, -1, -1; 1, 1, -1, -1, 1, 1; -1, -1, 1, 1, -1, -1; 1, 1, -1, -1, 1, 1; -1, 1, -1, 1, -1, 1; 1, -1, 1, -1, 1, -1];

wz6(:,:,1) = wz61;
wz6(:,:,2) = wz62;
wz6(:,:,3) = wz63;
wz6(:,:,4) = wz64;
wz6(:,:,5) = wz65;
wz6(:,:,6) = wz66;
wyrysuj(wz6);


% figure
% imshow([wz41,wz42,wz43,wz44,wz45,wz46],'InitialMagnification', 'fit')
% 
% figure
% imshow([wz61,wz62,wz63,wz64,wz65,wz66],'InitialMagnification', 'fit')
% 
wz281 = double(train28(:,:,123));
wz282 = double(train28(:,:,5));
wz283 = double(train28(:,:,56));
wz284 = double(train28(:,:,2));
wz285 = double(train28(:,:,32));
wz286 = double(train28(:,:,176));

wz281(wz281==0) = -1;
wz282(wz282==0) = -1;
wz283(wz283==0) = -1;
wz284(wz284==0) = -1;
wz285(wz285==0) = -1;
wz286(wz286==0) = -1;
% 
% figure
% imshow([wz281,wz282,wz283,wz284,wz285,wz286],'InitialMagnification', 'fit');

w28(:,:,1) = wz281;
w28(:,:,2) = wz282;
w28(:,:,3) = wz283;
w28(:,:,4) = wz284;
w28(:,:,5) = wz285;
w28(:,:,6) = wz286;
wyrysuj(w28);


szum10 = imnoise(wz281,'salt & pepper',0.1);
szum10(szum10==0) = -1;
szum40 = imnoise(wz281,'salt & pepper',0.4);
szum40(szum40==0) = -1;
szum80 = imnoise(wz281,'salt & pepper',0.8);
szum80(szum80==0) = -1;

obrazySzum(:,:,1) = szum10; 
obrazySzum(:,:,2) = szum40; 
obrazySzum(:,:,3) = szum80;

tekstSzum = [sprintf("Szum 10%%");sprintf("Szum 40%%");sprintf("Szum 80%%")];
wyrysujTekst(obrazySzum,tekstSzum)

% Dla reguły Hebba

%%%%%%%    4x4  %%%%%%%%%%%%%%%%%%%%%

[y41,y42,y43,k41,k42,k43,W41,W42,W43] = Hcos(bl41,10,wz41,wz42,wz43,wz44,wz45,wz46);

k4(:,:,1) = wz41;
k4(:,:,2) = k41;
k4(:,:,3) = k42;
k4(:,:,4) = k43;

T4 = [sprintf("Oryginał");sprintf("Dwa 2 wzorców");sprintf("Dla 4 wzorców");sprintf("Dla 6 wzorców")];

wyrysujTekst(k4,T4);

%%%%%%%%%%5 6x6 %%%%%%%%%%%%%%%%%%%55

[y61,y62,y63,k61,k62,k63,W61,W62,W63] = Hcos(bl61,10,wz61,wz62,wz63,wz64,wz65,wz66);

k6(:,:,1) = wz61;
k6(:,:,2) = k61;
k6(:,:,3) = k62;
k6(:,:,4) = k63;

T6 = [sprintf("Oryginał");sprintf("Dwa 2 wzorców");sprintf("Dla 4 wzorców");sprintf("Dla 6 wzorców")];

wyrysujTekst(k6,T6);

%%%%%%%%% 28x28 %%%%%%%%%%%%%%%%


[~,~,yszum10,~,~,kszum10,~,~,Wszum10] = Hcos(szum10,100,wz281,wz282,wz283,wz284,wz285,wz286);

[~,~,yszum40,~,~,kszum40,~,~,Wszum40] = Hcos(szum40,100,wz281,wz282,wz283,wz284,wz285,wz286);

[~,~,yszum80,~,~,kszum80,~,~,Wszum80] = Hcos(szum80,200,wz281,wz282,wz283,wz284,wz285,wz286);

k28(:,:,1) = wz281;
k28(:,:,2) = kszum10;
k28(:,:,3) = kszum40;
k28(:,:,4) = kszum80;

T28 = [sprintf("Oryginał");sprintf("Dwa szumu 10%%");sprintf("Dla szumu 40%%");sprintf("Dla szumu 80%%")];

wyrysujTekst(k28,T28);


% Dla reguły pseudoinwersji

%%%%%%%    4x4  %%%%%%%%%%%%%%%%%%%%%

[ypi41,ypi42,ypi43,kpi41,kpi42,kpi43,Wpi41,Wpi42,Wpi43] = PPPP(bl41,10,wz41,wz42,wz43,wz44,wz45,wz46);

kpi4(:,:,1) = wz41;
kpi4(:,:,2) = kpi41;
kpi4(:,:,3) = kpi42;
kpi4(:,:,4) = kpi43;

Tpi4 = [sprintf("Oryginał");sprintf("Dwa 2 wzorców");sprintf("Dla 4 wzorców");sprintf("Dla 6 wzorców")];

wyrysujTekst(kpi4,Tpi4);

%%%%%%%%%%5 6x6 %%%%%%%%%%%%%%%%%%%55

[ypi61,ypi62,ypi63,kpi61,kpi62,kpi63,Wpi61,Wpi62,Wpi63] = PPPP(bl61,10,wz61,wz62,wz63,wz64,wz65,wz66);

kpi6(:,:,1) = wz61;
kpi6(:,:,2) = kpi61;
kpi6(:,:,3) = kpi62;
kpi6(:,:,4) = kpi63;

Tpi6 = [sprintf("Oryginał");sprintf("Dwa 2 wzorców");sprintf("Dla 4 wzorców");sprintf("Dla 6 wzorców")];

wyrysujTekst(kpi6,Tpi6);


%%%%%%%%% 28x28 %%%%%%%%%%%%%%%%


[~,~,yszumPI10,~,~,kszumPI10,~,~,WszumPI10] = PPPP(szum10,100,wz281,wz282,wz283,wz284,wz285,wz286);

[~,~,yszumPI40,~,~,kszumPI40,~,~,WszumPI40] = PPPP(szum40,100,wz281,wz282,wz283,wz284,wz285,wz286);

[~,~,yszumPI80,~,~,kszumPI80,~,~,WszumPI80] = PPPP(szum80,200,wz281,wz282,wz283,wz284,wz285,wz286);

kpi28(:,:,1) = wz281;
kpi28(:,:,2) = kszum10;
kpi28(:,:,3) = kszum40;
kpi28(:,:,4) = kszum80;

Tpi28 = [sprintf("Oryginał");sprintf("Dwa szumu 10%%");sprintf("Dla szumu 40%%");sprintf("Dla szumu 80%%")];

wyrysujTekst(kpi28,Tpi28);

