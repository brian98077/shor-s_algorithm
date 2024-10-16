n = 1:19;

for i = 1:19
    x(i) = mod((7^i),15);
end

figure;
stem(n,x);
title('f(x) vs x');
xlabel('x');
ylabel('f(x)');

figure;
X = fft(x);
X = fftshift(X);
for i = 1:19
    omega(i) = 2*pi*(i-9)/19;
end
plot (n,abs(X));
title('X vs omega');
xlabel('omega');
ylabel('X');