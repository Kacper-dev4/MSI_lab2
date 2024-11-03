function [] = wyrysuj(in)

[~,~,z] = size(in);

figure
for i=1:z
    subplot(1,z,i)
    imshow(in(:,:,i),'InitialMagnification', 'fit');
    title(sprintf('Wzorzec %.d', i))
end

