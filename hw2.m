lena = imread("lena.gif");
lena = im2double(lena);
a = ones(3,3)/9;
b = ones(5,5)/25;

c1 = imfilter(lena,a,"replicate");
c2 = imfilter(lena,b,"replicate");

imshow(c1);
imshow(c2);

mse1 = immse(lena,c1)
%test = sum((lena-c1).^2,"all")/256^2
mse2 = immse(lena,c2);

psnr1 = 10*log10(1/mse1)
psnr2 = 10*log10(1/mse2)

