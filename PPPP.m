function [y1,y2,y3,k2,k4,k6,W1,W2,W3] = PPPP(bledna,ile,wz1,wz2,wz3,wz4,wz5,wz6)
P(:,1) = wz1(:);
P(:,2) = wz2(:);
P(:,3) = wz3(:);
P(:,4) = wz4(:);
P(:,5) = wz5(:);
P(:,6)= wz6(:);
[n,~] = size(P);
[wymiar,~] = size(bledna);

W1 = [P(:,1),P(:,2)]*([P(:,1)';P(:,2)']*[P(:,1),P(:,2)])^(-1)*[P(:,1)';P(:,2)'];
for i=1:n
    W1(i,i) = 0;
end

y1(1,:) = bledna(:);
for t=1:ile
    y1(t+1,:) = sign(W1*y1(t,:)');
end

k2 = reshape(y1(ile+1,:),wymiar,wymiar);
figure
imshow(k2)

W2 = [P(:,1),P(:,2),P(:,3),P(:,4)]*pinv([P(:,1)';P(:,2)';P(:,3)';P(:,4)']*[P(:,1),P(:,2),P(:,4),P(:,4)])*[P(:,1)';P(:,2)';P(:,3)';P(:,4)'];

for i=1:n
    W2(i,i) = 0;
end

y2(1,:) = bledna(:);
for t=1:ile
    y2(t+1,:) = sign(W2*y2(t,:)');
end

k4 = reshape(y2(ile+1,:),wymiar,wymiar);
figure
imshow(k4)

W3 = P * pinv(P' * P) * P';

for i=1:n
    W3(i,i) = 0;
end

y3(1,:) = bledna(:);
for t=1:ile
    y3(t+1,:) = sign(W3*y3(t,:)');
end

k6 = reshape(y3(ile+1,:),wymiar,wymiar);
figure
imshow(k6)
end



