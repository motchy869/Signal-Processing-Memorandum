# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.4.0]

- Fixed
  - minor errors in DTFT
  - critical errors in Sampling Theorem (The summing range is not restricted to be natural numbers, but integers.)
- Improved
  - Replaced `,\cdots,` with `,\dots,`.
- Added
  - relationship between DTFT and aliasing
  - integral representation of Heaviside step function
  - DTFT of Gaussian noise
  - average spectrum of Gaussian noise
  - definition of cyclic correlation
  - DFT of cyclic correlation

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
