%中值滤波实验
A = imread('dog.jpg');  %原图A
I = rgb2gray(A)%灰度图I
Noise1 = imnoise(I,'gaussian',0,0.01);%增加高斯噪声
Noise2 = imnoise(I,'salt & pepper');%增加椒盐噪声
result1 = medfilt2(Noise1,[3 3]);%对高斯噪声均值滤波
result2 = medfilt2(Noise1,[15 30]);
result3 = medfilt2(Noise1,[100 100]);
result4 = medfilt2(Noise2,[3 3]);%对椒盐噪声均值滤波
result5 = medfilt2(Noise2,[15 30]);
result6 = medfilt2(Noise2,[100 100]);
subplot(241),imshow(Noise1),title('高斯噪声');
subplot(245),imshow(Noise2),title('椒盐噪声');
subplot(242),imshow(result1),title('均值滤波3x3');
subplot(243),imshow(result2),title('均值滤波15x30');
subplot(244),imshow(result3),title('均值滤波100x100');
subplot(246),imshow(result4),title('均值滤波3x3');
subplot(247),imshow(result5),title('均值滤波15x30');
subplot(248),imshow(result6),title('均值滤波100x100');
