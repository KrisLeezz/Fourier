imf=eemd(rh,0.4,200);
n_imf=length(imf(1,:));
%IMF��ͼ
origin =imf(:,1);%ԭʼ����
t = 1:length(origin); 
figure; 
plot(origin,'k','LineWIdth',1); 
title('input Signal');
tic;
imfs=transpose(imf(:,2:n_imf-1));%��һ����ԭʼ���ݣ����һ����res
toc;
figure;  
nimf = size(imfs,1); 
for (m=1:nimf)
  subplot(nimf,1,m); 
  plot(t,imfs(m,:),'k','LineWIdth',1.5);
end
subplot(nimf,1,1); 
title('IMFs');

saveplotvalue = significanceIMF(imfs);
signiplotIMF(imfs,saveplotvalue)
