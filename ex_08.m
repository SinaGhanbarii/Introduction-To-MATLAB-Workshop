clear all, clc
A = [4 -1 -1 0;
    -1 4 0 -1;
    -1 0 4 -1;
    0 -1 -1 4];
B = [45 35 55 45]';

X = linsolve(A,B);
disp('The value of T1, T2, T3, and T4 in degree Celcius are: ')
disp(X)
Alternate_X = pinv(A)*B;

disp('')
disp(Alternate_X)

Temp = ones(4,4);
for i = 1:4
    for j=1:4
        if (i==1 && j==1) || (i==1 && j==4) || (i==4 && j==1) || (i==4 && j==4)
            Temp(i,j) = 25;
        elseif i==1 && (j==2 || j==3)
            Temp(i,j) = 15;
        elseif j==1 && (i==2 || i==3)
            Temp(i,j) = 30;
        elseif i==4 && (j==2 || j==3)
            Temp(i,j) = 25;
        elseif j==4 && (i==2 || i==3)
            Temp(i,j) = 20;
        end
    end
end
Temp(2,2) = X(1); Temp(2,3) =X(2); Temp(3,2) = X(3); Temp(3,3) = X(4);

figure
heatmap(Temp)
surf(Temp)