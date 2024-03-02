clear,clc
m = input('Enter your weight in kg: ');
h = input('Enter your height in m: ');
BMI = m/h^2;

if BMI<18.5
    disp('Under Wight')
elseif (18.5<= BMI) &&  (BMI< 25)
    disp('Normal Weight')
elseif (25 <= BMI) && (BMI <29.9)
    disp('Over weight')
elseif (29.9 <= BMI) && (BMI < 34.9)
    disp('obese Class 1')
elseif (34.9 <= BMI) && (BMI < 39.9)
    disp(' obese Class 2')
else 
    disp(' obese Class 3')
end