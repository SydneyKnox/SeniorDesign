%read points from text file to visualize our output
num = xlsread('C:\Users\ajzhang\Desktop\points.csv');

ind0 = num(:,1) == 0;
ind1 = num(:,1) == 1;
ind2 = num(:,1) == 2;

cam0 = num(ind0,:,:);
[m,n] = size(cam0);
col0 = zeros(m,1);
cam0 = [cam0 col0]

cam1 = num(ind1,:,:);
[m,n] = size(cam1);
col1 = zeros(m,1) + 10;
cam1 = [cam1 col1];

cam2 = num(ind2,:,:);
[m,n] = size(cam2);
col2 = zeros(m,1) + 20;
cam2 = [cam2 col2];

figure
xlabel('x') % x-axis label
ylabel('y') % y-axis label

grid on
hold on
scatter(cam0(:,2),cam0(:,3),15,'red','filled');
scatter(cam1(:,2),cam1(:,3),15,'blue','filled');
scatter(cam2(:,2),cam2(:,3),15,'black','filled');
legend('cam0','cam1','cam2')
