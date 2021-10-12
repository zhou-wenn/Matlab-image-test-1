info = imfinfo('dog.jpg')
A = imread('dog.jpg');  
I = rgb2gray(A)
I2=I(end:-1:1,:);%上下颠倒
I3=I(end:-1:1,end:-1:1);%上下左右颠倒
I4=I(100:200,150:350);%截取图像
I5=I(1:2:end,1:2:end);%压缩图像
Noise1 = imnoise(A,'gaussian',0,0.007);%增加高斯噪声
Noise2 = imnoise(A,'salt & pepper');%增加椒盐噪声
subplot(331),imshow(A),title('原图')
subplot(332),imshow(I),title('灰度图')
subplot(333),imshow(I2),title('上下颠倒')
subplot(334),imshow(I3),title('上下左右颠倒')
subplot(335),imshow(I4),title('截取图像')
subplot(336),imshow(I5),title('压缩图像')
subplot(337),imshow(Noise1),title('高斯噪声')
subplot(338),imshow(Noise2),title('椒盐噪声')
