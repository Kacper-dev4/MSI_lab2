function [y1,y2,y3,k2,k4,k6,W1,W2,W3] = Hcos(bledna,ile,wz1,wz2,wz3,wz4,wz5,wz6)
D(:,1) = wz1(:);
D(:,2) = wz2(:);
D(:,3) = wz3(:);
D(:,4) = wz4(:);
D(:,5) = wz5(:);
D(:,6)= wz6(:);
[n,~] = size(D);
[wymiar,~] = size(bledna);

W1 = (1/n)*([D(:,1),D(:,3)] * [D(:,1)';D(:,3)']);

for i=1:n
    W1(i,i) = 0;
end

y1(1,:) = bledna(:);
for t=1:ile
    y1(t+1,:) = sign(W1*y1(t,:)');
end

k2 = reshape(y1(ile+1,:),wymiar,wymiar);
% figure
% imshow(k2)

W2 = (1/n)*([D(:,1),D(:,2),D(:,3),D(:,4)] * [D(:,1)';D(:,2)';D(:,3)';D(:,4)']);

for i=1:n
    W2(i,i) = 0;
end

y2(1,:) = bledna(:);
for t=1:ile
    y2(t+1,:) = sign(W2*y2(t,:)');
end

k4 = reshape(y2(ile+1,:),wymiar,wymiar);
% figure
% imshow(k4)

W3 = (1/n)*([D(:,1),D(:,2),D(:,3),D(:,4),D(:,5),D(:,6)] * [D(:,1)';D(:,2)';D(:,3)';D(:,4)';D(:,5)';D(:,6)']);

for i=1:n
    W3(i,i) = 0;
end

y3(1,:) = bledna(:);
for t=1:ile
    y3(t+1,:) = sign(W3*y3(t,:)');
end

k6 = reshape(y3(ile+1,:),wymiar,wymiar);
% figure
% imshow(k6)
end

