# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

- Fixed:
  - Refined words: changed from '時間' to '座標' in the following theorems:
    - DFT of Hermitian signal is real-valued
    - IDFT of Hermitian signal is real-valued
  - missing conjugate symbol over 'DFT(g)(k)' in the equation 'DFT of cyclic correlation'

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
  - power spectrum of 0-order-held sinusoid
  - z-transform of continuous system with 0-order-hold input
  - power spectrum of integral sinusoid by Euler method

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
