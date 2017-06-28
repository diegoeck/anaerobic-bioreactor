% Simulation example

p = [ 1
      0.1
      1
      0.1
      1
      0.8]; 

fu=bio_f_sat(p);

u= @(t) 0.01
f=@(x,t) fu(x,t,u)

ti=0;
h=1;

N=[ 1000  ];
xi=[1   
    1   
    0   
    0    ];

[x1,t1]=bio_runge_4(f,ti,xi,h,N);

%[q]=g(x1);

figure(1)
plot(t1,x1,'-o')
legend('x_1(t)','x_2(t)','S_1(t)','S_2(t)','C(t)')
title('Simple Simulation')
xlabel('time [seconds]')
ylabel('state')

% figure(2)
% plot(t1,q,'-o')
% legend('q_m(t)')
% title('Simple Simulation')
% xlabel('time [seconds]')
% ylabel('gas flow [liters/second]')
% 
% 
% 
