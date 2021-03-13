
load net
load data1
canshu=[1,1,1.5,2,0.6,0.1,0.1,0.1];
M=data1';
xy=M(1:2,1:891);
kk=repmat(canshu,891,1);%复制矩阵
KK=kk';
INdata=[KK;xy];
  % III. 数据归一化
[indata, ps_input] = mapminmax(INdata,0,1);
%[outdata, ps_output] = mapminmax(OUTdata,0,1);
%仿真测试
tt_sim = sim(net,indata);
% 5. 数据反归一化
T_sim = mapminmax('reverse',tt_sim,ps_output);
x=xy(1,:)*1000 ;
y=xy(2,:)*1000 ;
stress=T_sim(1,1:891)/10000;
X1=50:0.01:58;
Y1=-0.6:0.01:0.4;
[U,V,W]=griddata(y,x,stress,X1',Y1,'v4');
contourf(U,V,W,20,'LineStyle','none');
shading interp;

 colormap(jet);
 colorbar;
% hold on;
% flow();








    
