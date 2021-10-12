%均值滤波实验
A = imread('dog.jpg');  %原图
I = rgb2gray(A)%灰度图
Noise1 = imnoise(I,'gaussian',0,0.007);%增加高斯噪声
Noise2 = imnoise(I,'salt & pepper');%增加椒盐噪声
subplot(341),imshow(A),title('原图')
subplot(342),imshow(I),title('灰度图')
subplot(345),imshow(Noise1),title('高斯噪声')
subplot(349),imshow(Noise2),title('椒盐噪声')
result1 = filter2(fspecial('average',3),Noise1) %3x3均值滤波-高斯
result2 = filter2(fspecial('average',15),Noise1) %15x15均值滤波-高斯
result3 = filter2(fspecial('average',100),Noise1) %100x100均值滤波-高斯
subplot(346),imshow(uint8(result1)),title('3x3均值滤波-高斯')
subplot(347),imshow(uint8(result2)),title('15x15均值滤波-高斯')
subplot(348),imshow(uint8(result3)),title('100x100均值滤波-高斯')
result4 = filter2(fspecial('average',3),Noise2) %3x3均值滤波-椒盐
result5 = filter2(fspecial('average',15),Noise2) %15x15均值滤波-椒盐
result6 = filter2(fspecial('average',100),Noise2) %100x100均值滤波-椒盐
subplot(3,4,10),imshow(uint8(result4)),title('3x3均值滤波-椒盐')
subplot(3,4,11),imshow(uint8(result5)),title('15x15均值滤波-椒盐')
subplot(3,4,12),imshow(uint8(result6)),title('100x100均值滤波-椒盐')