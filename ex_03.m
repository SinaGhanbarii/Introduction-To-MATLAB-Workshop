clear, clc
t = 1:8;
T = [50.8 54.4 55.1 57.6 61.2 59.5 54.6 53.5];

Coeff_1st = polyfit(t,T,1);
Coeff_2nd = polyfit(t,T,2);
Coeff_4th = polyfit(t,T,4);
Coeff_8th = polyfit(t,T,8);

Desired_time = 4.26;
result_1 = polyval(Coeff_1st,Desired_time);
result_2 = polyval(Coeff_2nd,Desired_time);
result_4 = polyval(Coeff_4th,Desired_time);
result_8 = polyval(Coeff_8th,Desired_time);

disp(table(result_1,result_2,result_4,result_8))

figure
plot(t,T)
hold on 
plot(t,polyval(Coeff_1st,t),'o')
plot(t,polyval(Coeff_2nd,t),'o')
plot(t,polyval(Coeff_4th,t),'o')
plot(t,polyval(Coeff_8th,t),'o')

xlabel('Time (hr)')
ylabel(' Temp (\circC)')

legend('Experimental','1^{st} order','2^{nd} order', '4^{th} order', '8^{th} order')
