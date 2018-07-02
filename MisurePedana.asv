clear
close all
FileName = 'TestMatriceRotazione Cal 02.c3d';
c3d=c3d2c3d(FileName);
TRJ=c3dget(c3d,c3d.c3dpar.subjects.names,c3d.c3dpar.point.labels,'a');%trajectory
time = 0 : 1/200:(length(TRJ)-1)/200;
t1 = time(2900:3046)-time(2900);
t2 = time(3047:3190)-time(2900);
%%R new
gamma = 5;
beta = 5;
alpha = 0;
clear t
% % t=t1;
% % % Rnewok=[cosd(gamma*t(j))*cosd(beta*t(j)) -sind(gamma*t(j))*cosd(alpha*t(j))+cosd(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) sind(gamma*t(j))*sind(alpha*t(j))+cosd(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% % %             sind(gamma*t(j))*cosd(gamma*t(j)) cosd(gamma*t(j))*cosd(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) -cosd(gamma*t(j))*sind(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% % %             -sind(beta*t(j)) cosd(beta*t(j))*sind(alpha*t(j)) cosd(beta*t(j))*cosd(alpha*t(j))];
% %         
% % for k=1:size(TRJ,3)
% %     for j=1:length(t)
% %         Rnew=[cosd(gamma*t(j))*cosd(beta*t(j)) -sind(gamma*t(j))*cosd(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) sind(gamma*t(j))*sind(alpha*t(j))+cosd(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% %             sind(gamma*t(j))*cosd(gamma*t(j)) cosd(gamma*t(j))*cosd(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) -cosd(gamma*t(j))*sind(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% %             -sind(beta*t(j)) -cosd(beta*t(j))*sind(alpha*t(j)) cosd(beta*t(j))*cosd(alpha*t(j))];
% %         TRJftmp1(j,:,k) = Rnew*[TRJ(2900,1,k) TRJ(2900,2,k) TRJ(2900,3,k)]';
% %         l(:,:,k) = TRJftmp1(j,:,k);
% %         
% %         zz(j,:,k) = - TRJ(2900,1,k) * sind(beta*t(j))+ TRJ(2900,2,k)* cosd(beta*t(j))*sind(alpha*t(j))+TRJ(2900,3,k) * cosd(beta*t(j))*cosd(alpha*t(j));
% %         zzsb(j,:,k) = - TRJ(2900,1,k) * sind(beta*t(j))- TRJ(2900,2,k)* cosd(beta*t(j))*sind(alpha*t(j))+TRJ(2900,3,k) * cosd(beta*t(j))*cosd(alpha*t(j));
% % 
% %     end
% % end
% % clear t
% % 
% % t=t2;
% % 
% % for k=1:size(TRJ,3)
% %     for j=1:length(t)
% %         Rnew=[cosd(gamma*t(j))*cosd(beta*t(j)) -sind(gamma*t(j))*cosd(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) sind(gamma*t(j))*sind(alpha*t(j))+cosd(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% %             sind(gamma*t(j))*cosd(gamma*t(j)) cosd(gamma*t(j))*cosd(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*sind(alpha*t(j)) -cosd(gamma*t(j))*sind(alpha*t(j))+sind(gamma*t(j))*sind(beta*t(j))*cosd(alpha*t(j));...
% %             -sind(beta*t(j)) -cosd(beta*t(j))*sind(alpha*t(j)) cosd(beta*t(j))*cosd(alpha*t(j))];
% % %         TRJftmp2(j,:,k) = Rnew'*[l(1,1,k) l(1,2,k) l(1,3,k)]';
% %         TRJftmp2(j,:,k) = Rnew'*[TRJ(2900,1,k) TRJ(2900,2,k) TRJ(2900,3,k)]';
% %     end
% % end


TRJftmp = [TRJftmp1;TRJftmp2];
TRJf = TRJ;
TRJf(2900:3190,:,:) = TRJftmp;
figure
plot( TRJ(:,1,3))
hold on
plot( TRJ(:,2,3))
plot( TRJ(:,3,3))
figure
plot( TRJf(:,1,3))
hold on
plot( TRJf(:,2,3))
plot( TRJf(:,3,3))
figure
plot( TRJ(:,1,1))
hold on
plot( TRJ(:,2,1))
plot( TRJ(:,3,1))



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
zlim([-20 140])
xlim([-500 500])
ylim([-500 500])
view(73,25)
set(gcf,'units','normalized','outerposition',[0 0 1 1])
for i=1:3190
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


