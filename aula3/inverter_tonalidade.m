function img_out = inverter_tonalidade(nome_imagem)

img = imread(nome_imagem);
img = im2double(img);

hsi = rgb2hsv(img);

H = hsi(:,:,1);
S = hsi(:,:,2);
I = hsi(:,:,3);

H_novo = mod(H + 0.5, 1);

hsi_novo = cat(3, H_novo, S, I);

img_out = hsv2rgb(hsi_novo);

figure

subplot(1,2,1)
imshow(img)
title('Original')

subplot(1,2,2)
imshow(img_out)
title('Tonalidade invertida')

end