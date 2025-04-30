# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Deleted:
  - duplicated content about DTFT of over-sampled discrete-time signal
- Changed:
  - Separated source and output directories.
- Improved:
  - DTFT of under-sampled discrete-time signal
- Added:
  - Z-transform of over-sampled discrete-time signal
  - Z-transform of under-sampled discrete-time signal

## [0.17.0] - 2025-04-08

- Fixed:
  - errors in Noble Identity under-sampling case
  - many errors in CIC down-sampler and CIC up-sampler
  - minor errors and typos
- Improved:
  - FIR filter coefficients design > minimizing DTFT (weighted) square error integral > state clearly that h_0 corresponds to time 0.
  - interpolation with IDTFT > relationship to sampling theorem
- Added:
  - CIC up-sampler, down-sampler:
    - added tips for plotting transfer function
    - parameter M, hop number of comb stage

## [0.16.0] - 2025-03-23

- Changed:
  - Categorized discrete-time filter into two types: feedforward and feedback.
  - Distinguish '、' and '，' in Japanese text.
- Added:
  - closed form expression for interpolation with IDTFT
  - inverse Z-transform
  - single-sided Z-transform
    - reversibility of single-sided Z-transform
    - single-sided Z-transform of convolution
  - discrete-time feedforward filter coefficients design
    - difference between IDFT approach and minimizing DTFT square error integral
  - output range of discrete-time feedback filter with bounded input

## [0.15.0] - 2025-03-08

- Fixed:
  - trivial grammatical errors
  - FIR filter coefficients design
    - calculation error in 'minimizing DTFT (weighted) square error integral'
    - missing negative time consideration
- Changed:
  - Unified interchangeably-used two terms 'frequency characteristic' and 'frequency spectrum' to 'frequency spectrum'.
- Added:
  - interpolation with IDTFT
  - cyclic interpolation with IDFT
  - ADC/DAC ENOB expression using SNR

## [0.14.0] - 2025-01-26

- Fixed:
  - confusion between ESD (Energy Spectrum Density) and PSD (Power Spectrum Density)
- Deleted:
  - chapter 'IIRフィルタの計算手順'
- Added:
  - rules for dimension of a quantity
  - inequivalence between complex-coefficient filter and 'two real-coefficient filters + weighted-sum'
  - Hilbert transform
    - Hilbert transform of sin and cos
    - application of commutative low as convolution
  - FIR filter coefficients design
    - minimizing DTFT (weighted) square error integral
    - minimizing ∞-norm of DTFT error

## [0.13.0] - 2024-12-27

- Fixed:
  - spurious chapter whose name is printed as '*' just before the bibliography
- Added:
  - application order of time-shift and time-scaling
  - (d/dt) |x(t)|^2 = 2Re(x(t)conj(x'(t)))
  - derivative of convolution
  - Fourier transform of only real/imaginary part
  - Nyquist ISI criterion
  - Parseval's theorem
  - quadrature demodulation

## [0.12.0] - 2024-12-09

- Fixed:
  - fix typos:
    - '各周波数' -> '角周波数'
  - Refined words: changed from '時間' to '座標' in the following theorems:
    - DFT of Hermitian signal is real-valued
    - IDFT of Hermitian signal is real-valued
  - missing conjugate symbol over 'DFT(g)(k)' in the equation 'DFT of cyclic correlation'
- Added:
  - Fourier Transform of time-inverted and conjugate signal
  - DFT of cyclic convolution
  - Band-limited signals at regular intervals give a constant.

## [0.11.1] - 2023-12-16

- Fixed:
  - spelling errors. Replaced "スペクトル" with "スペクトラム".
  - wrong statement "DC gain" of CIC up-sampler.

## [0.11.0] - 2023-12-16

- Fixed:
  - Replaced misused word 'up-sampling' with 'over-sampling'.
  - Replaced misused word 'down-sampling' with 'under-sampling'.
- Added:
  - Noble Identity
  - CIC up-sampler and CIC down-sampler

## [0.10.0] - 2023-09-09

- Changed:
  - Improved the derivation of under-sampling effect to DTFT.
  - Migrated from UpLaTeX to LuaLaTeX.
- Added:
  - NCO spurious caused by PAW truncation
  - statistics of sin wave
  - the over-sampling effect to DTFT

## [0.9.0]  2023-05-12

- Fixed:
  - wrong statement in IX.2.1 The frequency spectrum of 0-order-held discrete-time signal
- Refactored:
  - hierarchy structure of discrete-time, continuous-time and their mix domain
- Added:
  - Fourier transform of product and convolution of two signals
  - Hilbert transform
  - Quick Reference for Fourier Transform
  - DTFT of over-sampled signal

## [0.8.0] - 2023-04-25

- Fixed:
  - Fixed bad figure numbering. Now the the figure number format is `<part>.<chapter>.<section>.<figure number in the section>`.
  - a typo in VIII.4.1 frequency spectrum of over-sampling
  - lost characters in figure IX.2.1.
  - typos in IV.4.8: 「 $T_\text{s}$ を十分に大きく」→「 $T_\text{s}$ を十分に小さく」, 「逆に $T_\text{s}$ が小さいとき」→「逆に $T_\text{s}$ が大きいとき」
- Added:
  - heterodyne
  - inverse-sinc filter
  - another derivation of DTFT of sampled signal (IV.4.8)
  - DTFT of under-sampled signal

## [0.7.0] - 2023-04-11

- Fixed:
  - minor error in the final value theorem of Z-transform
- Improved:
  - use Roman 'e' as exp function
- Added:
  - parity of Fourier transform
  - Frequency spectrum of ideal DA conversion
  - Frequency spectrum of over-sampling

## [0.6.0] - 2022-09-27

- Refactored
  - Renamed title in title page: "motchyの信号処理備忘録" -> "信号処理備忘録"
  - Renamed a part: "Fourier解析" -> "Fourier級数とFourier変換"
  - Moved "Sampling Theorem" after "Fourier Transform"
- Added
  - continuous-time filter behavior observed from discrete-time system.
  - a lemma for comprehension of DCT basis orthogonality
  - energy spectrum density of (time-limited) 0-order-held sinusoid
  - Z-transform of continuous system with 0-order-hold input
  - energy spectrum density of (time-limited) integral sinusoid by Euler method

## [0.5.0] - 2022-05-30

- Fixed
  - typos and mistakes of sign in Sampling Theorem
- Improved
  - Replaced `,\cdots,` with `,\dots,`.
- Added
  - definition of cyclic correlation
  - DFT of cyclic correlation

## [0.4.0] - 2022-04-01

- Fixed
  - minor errors in DTFT
  - critical errors in Sampling Theorem (The summing range is not restricted to be natural numbers, but integers.)
- Added
  - relationship between DTFT and aliasing
  - integral representation of Heaviside step function
  - DTFT of Gaussian noise
  - average spectrum of Gaussian noise

## [0.3.0] - 2022/2/17

- Introduced `hyperref` package.
- Added version to title page.
- Added inverse Fourier transform.
- Added frequency-oriented Fourier transform.

## [0.2.0] - 2021/8/29

- Added DTFT
- Fixed style:
  - Replaced `:=` with `\coloneqq`.
  - Replaced `\cdots` with `\dotsc` in comma-separated sequences.

## [0.1.0] - 2021-7-2

- Added a theorem about equivalence of cos similarity and best approximation on signal searching.
- Added a theorem about DFT of complex-valued Gaussian noise.
