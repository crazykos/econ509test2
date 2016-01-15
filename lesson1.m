% Use Newton's method to solve this problem
% solving a sequence of the 1st order Taylor expansions
p = 0.2;
delta_p = 1e10;
% loop over first oder Taylor approximations, and solve for their root
% dx = - f'(x)/f(x)
while abs(delta_p) > 1e-8
    delta_p = -(0.5*p^(-0.2)+0.5*p^(-0.5)-2)/(-0.1*p^(-1.2)-0.25*p^(-1.5));
    p = p + delta_p
end;

% time
a = rand(10);
b = rand(100);
c = rand(1000);
d = rand(5000);
tic
ainv = inv(a);
toc
tic
binv = inv(b);
toc
tic
cinv = inv(c);
toc
tic 
dinv = inv(d);
toc

% system of linear equations
% matrix in Matlab is row-wise
A =[400 -201; 
    -800 401];
b = [200;-200];
A\b;
% right division
