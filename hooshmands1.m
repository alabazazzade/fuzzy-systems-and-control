clear all
close all
clc
%syms x
 x=0:10;
mu=trimf(x,[1,3,9]);
subplot(221)    
plot(x,mu)
title ('triangular function')
if 0<mu<=0.5
    mi=2*(mu.^2);
end
if 0.5<mu<=1
    mi=1-(2*(1-mu).^2);
end   
% if mu==0
%     mi=0;
% end
subplot(222)
plot(x,mi)
title ('int triangular function')
 if 0<mi<=0.5
    mii=2*(mi.^2);
 end
 if 0.5<mi<=1
    mii=1-(2*(1-mi).^2);
 end
subplot(223)
plot(x,mii)
title ('int int triangular function')
if 0<mii<=0.5
    miii=2*(mii.^2);
 end
 if 0.5<mii<=1
    miii=1-(2*(1-mii).^2);
 end
subplot(224)
plot(x,miii)
title ('int int int triangular function')
