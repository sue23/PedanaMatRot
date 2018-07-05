clear
close all
FileName = 'TestMatriceRotazione Cal 02.c3d';
c3d=c3d2c3d(FileName);
TRJin=c3dget(c3d,c3d.c3dpar.subjects.names,c3d.c3dpar.point.labels,'a');%trajectory
for u=1:size(TRJin,3)
     for v=1:size(TRJin,1)
         TRJ(v,:,u)=[0 -1 0;1 0 0;0 0 1]*TRJin(v,:,u)';
     end
end
%%R new
gamma1 = linspace(0,5*pi/180,length(2900:3046));%5; %YAW
gamma2= linspace(5*pi/180,0,length(3047:3190));%5; %YAW
gamma = [gamma1 gamma2];
beta1 = linspace(0,5*pi/180,length(2900:3046));%5; %PITCH
beta2 = linspace(5*pi/180,0,length(3047:3190));%5; %PITCH
beta = [beta1 beta2];
alpha1 = linspace(0,0,length(2900:3046));%0; %ROLL
alpha2 = linspace(0,0,length(3047:3190));%0; %ROLL
alpha = [alpha1 alpha2];

TRJf = TRJ;
TRJoldfissa = TRJ;
TRJoldcorrente = TRJ;
 dcm = eul2rotm([alpha',beta',gamma'],'XYZ'); %terna corrente3 corretta
 ind = 2900:3190;
 for k=1:size(TRJ,3)
     for j=1:length(gamma)
         Rold_ternafissa=[cos(gamma(j))*cos(beta(j)) -sin(gamma(j))*cos(alpha(j))+sin(gamma(j))*sin(beta(j))*sin(alpha(j)) sin(gamma(j))*sin(alpha(j))+cos(gamma(j))*sin(beta(j))*cos(alpha(j));...
             sin(gamma(j))*cos(beta(j)) cos(gamma(j))*cos(alpha(j))+sin(gamma(j))*sin(beta(j))*sin(alpha(j)) -cos(gamma(j))*sin(alpha(j))+sin(gamma(j))*sin(beta(j))*cos(alpha(j));...
             -sin(beta(j)) -cos(beta(j))*sin(alpha(j)) cos(beta(j))*cos(alpha(j))];
        Rold_ternacorrente=[cos(beta(j))*cos(gamma(j)) sin(gamma(j))*cos(beta(j)) -sin(beta(j));...
            sin(gamma(j))*sin(beta(j))*sin(gamma(j))-cos(alpha(j))*sin(gamma(j)) sin(alpha(j))*sin(beta(j))*sin(gamma(j))+cos(alpha(j))*cos(gamma(j)) -cos(beta(j))*sin(alpha(j));...
            cos(alpha(j))*sin(beta(j))*cos(gamma(j))+sin(alpha(j))*sin(gamma(j)) cos(alpha(j))*sin(beta(j))*sin(gamma(j))-sin(alpha(j))*cos(gamma(j)) cos(alpha(j))*cos(beta(j))];
                 TRJf(ind(j),:,k) = dcm(:,:,j)*TRJf(ind(1),:,k)';%[TRJ(ind(j),1,k) TRJ(ind(j),2,k) TRJ(ind(j),3,k)]';
                 TRJoldfissa(ind(j),:,k) = Rold_ternafissa*TRJf(ind(1),:,k)';%[TRJ(ind(j),1,k) TRJ(ind(j),2,k) TRJ(ind(j),3,k)]';
                 TRJoldcorrente(ind(j),:,k) = Rold_ternacorrente*TRJf(ind(1),:,k)';%[TRJ(ind(j),1,k) TRJ(ind(j),2,k) TRJ(ind(j),3,k)]';
     end
 end




figure
subplot(3,1,1)
plot( TRJ(:,1,3))
subplot(3,1,2)
plot( TRJ(:,2,3))
subplot(3,1,3)
plot( TRJ(:,3,3))
title('camere')
figure
subplot(3,1,1)
plot( TRJf(:,1,3))
subplot(3,1,2)
plot( TRJf(:,2,3))
subplot(3,1,3)
plot( TRJf(:,3,3))
title('terna corrente mat corretta')
figure
subplot(3,1,1)
plot( TRJoldfissa(:,1,3))
subplot(3,1,2)
plot( TRJoldfissa(:,2,3))
subplot(3,1,3)
plot( TRJoldfissa(:,3,3))
title('terna fissa mat sbagliata')
figure
subplot(3,1,1)
plot( TRJoldcorrente(:,1,3))
subplot(3,1,2)
plot( TRJoldcorrente(:,2,3))
subplot(3,1,3)
plot( TRJoldcorrente(:,3,3))
title('terna corrente mat sbagliata')

figure
subplot(3,1,1)
plot( TRJ(:,1,3))
hold on
subplot(3,1,2)
plot( TRJ(:,2,3))
hold on
subplot(3,1,3)
plot( TRJ(:,3,3))
hold on

subplot(3,1,1)
plot( TRJf(:,1,3))
subplot(3,1,2)
plot( TRJf(:,2,3))
subplot(3,1,3)
plot( TRJf(:,3,3))

subplot(3,1,1)
plot( TRJoldfissa(:,1,3))
subplot(3,1,2)
plot( TRJoldfissa(:,2,3))
subplot(3,1,3)
plot( TRJoldfissa(:,3,3))


x1i = [TRJ(1,1,4) TRJ(1,1,1) TRJ(1,1,2)];
y1i = [TRJ(1,2,4) TRJ(1,2,1) TRJ(1,2,2)];
z1i = [TRJ(1,3,4) TRJ(1,3,1) TRJ(1,3,2)];

x2i = [TRJ(1,1,7) TRJ(1,1,1) TRJ(1,1,5)];
y2i = [TRJ(1,2,7) TRJ(1,2,1) TRJ(1,2,5)];
z2i = [TRJ(1,3,7) TRJ(1,3,1) TRJ(1,3,5)];

x3i = [TRJ(1,1,10) TRJ(1,1,1) TRJ(1,1,8)];
y3i = [TRJ(1,2,10) TRJ(1,2,1) TRJ(1,2,8)];
z3i = [TRJ(1,3,10) TRJ(1,3,1) TRJ(1,3,8)];
figure
h1=line('XData',x1i,'YData',y1i,'ZData',z1i);
h2=line('XData',x2i,'YData',y2i,'ZData',z2i);
h3=line('XData',x3i,'YData',y3i,'ZData',z3i);

h1f=line('XData',x1i,'YData',y1i,'ZData',z1i,'color','red');
h2f=line('XData',x2i,'YData',y2i,'ZData',z2i,'color','red');
h3f=line('XData',x3i,'YData',y3i,'ZData',z3i,'color','red');

xlabel('X')
ylabel('Y')
zlabel('Z')
zlim([-20 200])
xlim([-500 500])
ylim([-500 500])
view(73,25)
set(gcf,'units','normalized','outerposition',[0 0 1 1])
for i=2000:3190
    x1 = [TRJ(i,1,4) TRJ(i,1,1) TRJ(i,1,2)];
    y1 = [TRJ(i,2,4) TRJ(i,2,1) TRJ(i,2,2)];
    z1 = [TRJ(i,3,4) TRJ(i,3,1) TRJ(i,3,2)];
    
    x2 = [TRJ(i,1,7) TRJ(i,1,1) TRJ(i,1,5)];
    y2 = [TRJ(i,2,7) TRJ(i,2,1) TRJ(i,2,5)];
    z2 = [TRJ(i,3,7) TRJ(i,3,1) TRJ(i,3,5)];
    
    x3 = [TRJ(i,1,10) TRJ(i,1,1) TRJ(i,1,8)];
    y3 = [TRJ(i,2,10) TRJ(i,2,1) TRJ(i,2,8)];
    z3 = [TRJ(i,3,10) TRJ(i,3,1) TRJ(i,3,8)];
    
    x1f = [TRJf(i,1,4) TRJf(i,1,1) TRJf(i,1,2)];
    y1f = [TRJf(i,2,4) TRJf(i,2,1) TRJf(i,2,2)];
    z1f = [TRJf(i,3,4) TRJf(i,3,1) TRJf(i,3,2)];
    
    x2f = [TRJf(i,1,7) TRJf(i,1,1) TRJf(i,1,5)];
    y2f = [TRJf(i,2,7) TRJf(i,2,1) TRJf(i,2,5)];
    z2f = [TRJf(i,3,7) TRJf(i,3,1) TRJf(i,3,5)];
    
    x3f = [TRJf(i,1,10) TRJf(i,1,1) TRJf(i,1,8)];
    y3f = [TRJf(i,2,10) TRJf(i,2,1) TRJf(i,2,8)];
    z3f = [TRJf(i,3,10) TRJf(i,3,1) TRJf(i,3,8)];
    
    set(h1f,'XData',x1f,'YData',y1f,'ZData',z1f)
    set(h2f,'XData',x2f,'YData',y2f,'ZData',z2f)
    set(h3f,'XData',x3f,'YData',y3f,'ZData',z3f)
    
    
    set(h1,'XData',x1,'YData',y1,'ZData',z1)
    set(h2,'XData',x2,'YData',y2,'ZData',z2)
    set(h3,'XData',x3,'YData',y3,'ZData',z3)
    
    drawnow
end


