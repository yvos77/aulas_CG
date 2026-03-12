function [img_max, img_min] = alterar_saturacao(nome_imagem)

img = imread(nome_imagem);
img = im2double(img);

hsi = rgb2hsv(img);

H = hsi(:,:,1);
S = hsi(:,:,2);
I = hsi(:,:,3);

S_max = ones(size(S));
S_min = zeros(size(S));

hsi_max = cat(3, H, S_max, I);
img_max = hsv2rgb(hsi_max);

hsi_min = cat(3, H, S_min, I);
img_min = hsv2rgb(hsi_min);

figure

subplot(1,3,1)
imshow(img)
title('Original')

subplot(1,3,2)
imshow(img_max)
title('Saturacao maxima')

subplot(1,3,3)
imshow(img_min)
title('Saturacao minima')

end