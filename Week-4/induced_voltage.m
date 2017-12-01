% diametrical(1,:)=diametrical(1,:)*2*pi/3.509;

angle=radialflux(1,:)*pi/180;
Brad=radialflux(2,:);
plot(angle,Brad)
area=pi*(17.5e-3)^2*0.1/2; %m2
flux=Brad*area;
plot(angle,flux*1000) %mwb
xlabel('angle (rad)')
ylabel('flux linkage (mWb)')
title('position vs flux linkage')
set(gca,'FontSize',16)

% time=angle/157.08;
% der_of_link=diff(flux(:))./diff(angle(:));
% der_of_link = diff([eps; flux(:)])./diff([eps; angle(:)]);
dy=diff(flux)./diff(angle)
plot(angle(2:end),dy)
% dy=der_of_link;
% e_ind=der_of_link*157.08;
% plot(angle,e_ind)
plot(angle(2:end)/157.08*1000,dy*157.08*1000)
xlabel('time(ms)')
ylabel('induced voltage (mV)')
title('induced voltage vs time')
set(gca,'FontSize',16)
