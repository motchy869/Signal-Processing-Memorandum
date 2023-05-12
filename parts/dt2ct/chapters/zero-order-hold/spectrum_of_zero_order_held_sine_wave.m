% sampling period
gT_samp = 0.01;

% frequency of continuous wave [Hz]
g_f = 10;

% continous and discretized functions
f_c = @(t) exp(1i*2*pi*g_f*t);
f_d = @(t) f_c(floor(t/gT_samp)*gT_samp);

ts = linspace(0,2/g_f,500);
figure(1);
plot(ts, real(f_c(ts)))
hold on
plot(ts, real(f_d(ts)))
legend('f_c','f_d')
title('time domain view')
hold off

%% Windowed Fourier Transform

% integration time
gN = 200; gT_int = gN*gT_samp;

% Windowed Fourier Transform of continuous and discretized wave
F_c = @(f) (1-exp(-1i*2*pi*(f-g_f)*gT_int)) ./ (1i*2*pi*(f-g_f)) / gT_int;
F_d = @(f) (1-exp(-1i*2*pi*f*gT_samp)) ./ (1i*2*pi*f*gT_int) .* exp(1i*pi*(g_f-f)*(gN-1)*gT_samp) * gN .* sinc((f-g_f)*gN*gT_samp) ./ sinc((f-g_f)*gT_samp);

% power spectrum in the neighborhood of `g_f`
fs = linspace(0,2*g_f,1000);
figure(2);
plot(fs, 20*log10(abs(F_c(fs))))
hold on
plot(fs, 20*log10(abs(F_d(fs))), '-.')
ylim([-80,0])
legend('F_c','F_d')
title('Windowed Power Spectrum')
hold off

% phase in the neighborhood of `g_f`
figure(3)
plot(fs, angle(F_c(fs)))
hold on
plot(fs, angle(F_d(fs)))
hold off
legend('F_c','F_d')
title('argument of windowed spectrum')

% Observe aliasing
fs = linspace(0,3/gT_samp,1000);
figure(4);
plot(fs, 20*log10(abs(F_c(fs))))
hold on
plot(fs, 20*log10(abs(F_d(fs))), '-.')
ylim([-80,0])
legend('F_c','F_d')
title('Windowed Power Spectrum with perceptible aliasing')
hold off