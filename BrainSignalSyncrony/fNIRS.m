
% asign the wanted time here is or 6 minutes=360 seconds with time intervals of 0.1 second
t1=0:0.1:360; 
% input the fnirs data from excel file for person one
a= xlsread('C:\Users\sarina\Desktop\fnirs3.xlsx','J409:J4009');
t= 0:1:3600;
% detrending detrent_s ^^ trend() 
mean(a)
detrend_a = detrend(a);
trend1 = a - detrend_a;
mean(detrend_a)
% smothing order=3 frame =41 sgf()^^ detrens_s
order = 3;
framelen = 41;
sgf1 = sgolayfilt(detrend_a,order,framelen);
% fou filter Fs
Fs1 = FouFilter(sgf1',10,2,3,1,0);
% input the fnirs data from excel file for person two
b= xlsread('C:\Users\sarina\Desktop\fnirs3.xlsx','K409:K4009');
t= 0:1:3600;
mean(b)
detrend_b = detrend(b);
order = 3;
framelen = 41;
sgf2 = sgolayfilt(detrend_b,order,framelen);
trend2 = b - detrend_b;
mean(detrend_b)
% using fou filter
Fh1 = FouFilter(sgf2',10,2,3,1,0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%calculate the IBS suing WTC package
[Rsq1,period1,scale1,coi1,sig951] = wtc([t1;Fs1]',[t1;Fh1]','S0',8,'ms',80);
title('right - section 1 part 1 ') 
%wanted colormap
colormap('jet')
figure;
