%高斯滤波实验
A = imread('dog.jpg');  %原图
I = rgb2gray(A)%灰度图
Noise1 = imnoise(I,'gaussian',0,0.01);%增加高斯噪声
subplot(241),imshow(Noise1),title('原高斯噪声图像')
filter1 = fspecial('gaussian',[15 15],0.06)%产生滤波模板 fspecial('gaussian', hsize, sigma)
filter2 = fspecial('gaussian',[15 15],0.6)
filter3 = fspecial('gaussian',[15 15],60)
result1 = imfilter(Noise1,filter1,'conv')%使用模板进行高斯滤波
result2 = imfilter(Noise1,filter2,'conv')
result3 = imfilter(Noise1,filter3,'conv')
subplot(242),imshow(result1),title('模板[15 15]标准差0.6')
subplot(243),imshow(result2),title('模板[15 15]标准差6')
subplot(244),imshow(result3),title('模板[15 15]标准差60')
filter4 = fspecial('gaussian',[3 3],0.2)%模板
filter5 = fspecial('gaussian',[15 15],0.2)
filter6 = fspecial('gaussian',[100 100],0.2)
result4 = imfilter(Noise1,filter4,'conv')%使用模板进行高斯滤波
result5 = imfilter(Noise1,filter5,'conv')
result6 = imfilter(Noise1,filter6,'conv')
subplot(246),imshow(result4),title('模板[3 3]标准差0.2')
subplot(247),imshow(result5),title('模板[15 15]标准差0.2')
subplot(248),imshow(result6),title('  模板[100 100]标准差0.2')