% sampling period
gT_samp = 0.01;

% frequency of continuous wave [Hz]
g_f = 10;

% continous and discretized version of the integral function
v = @(t) (exp(1i*2*pi*g_f*t)-1)/(1i*2*pi*g_f);
y_d = @(n) gT_samp*(1-exp(1i*2*pi*g_f*gT_samp*n))/(1-exp(1i*2*pi*g_f*gT_samp));
y = @(t) y_d(floor(t/gT_samp));

ts = linspace(0,2/g_f,500);
figure(1);
plot(ts, real(v(ts)))
hold on
plot(ts, real(y(ts)))
legend('v','y')
title('time domain view')
hold off

%% Windowed Fourier Transform

% integration time
gN = 200; gT_int = gN*gT_samp;

% Windowed Fourier Transform of continuous and discretized wave
V = @(f) ((1-exp(-1i*2*pi*(f-g_f)*gT_int)) ./ (1i*2*pi*(f-g_f)) - (1-exp(-1i*2*pi*f*gT_int)) ./ (1i*2*pi*f)) ./ (1i*2*pi*g_f*gT_int);
Y = @(f) (1-exp(-1i*2*pi*f*gT_samp)) ./ (1-exp(1i*2*pi*g_f*gT_samp)) / gN ./ (1i*2*pi*f) .* ((1-exp(-1i*2*pi*f*gT_samp*gN)) ./ (1-exp(-1i*2*pi*f*gT_samp)) - (1-exp(-1i*2*pi*(f-g_f)*gT_samp*gN)) ./ (1-exp(-1i*2*pi*(f-g_f)*gT_samp)));

% power spectrum in the neighborhood `g_f`
fs = linspace(0,2*g_f,1000);
figure(2);
plot(fs, 20*log10(abs(V(fs))))
hold on
plot(fs, 20*log10(abs(Y(fs))), '-.')
ylim([-80,0])
legend('V','Y')
title('Windowed Power Spectrum')
hold off

% phase in the neighborhood `g_f`
figure(3)
plot(fs, angle(V(fs)))
hold on
plot(fs, angle(Y(fs)))
hold off
legend('V','Y')
title('argument of windowed spectrum')

% Observe aliasing
fs = linspace(0,3/gT_samp,1000);
figure(4);
plot(fs, 20*log10(abs(V(fs))))
hold on
plot(fs, 20*log10(abs(Y(fs))), '-.')
ylim([-80,0])
legend('V','Y')
title('Windowed Power Spectrum with perceptible aliasing')
hold off