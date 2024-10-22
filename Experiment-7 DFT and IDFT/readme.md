Discrete Fourier Transform (DFT)
  The Discrete Fourier Transform (DFT) is a mathematical transformation used to analyze the    frequency content of discrete signals. For a sequence x[n] of length N, the DFT is defined as:
        X[k]=∑(n=0 to N-1)x[n] ⋅e^(-j 2π/N nk),k=0,1,2,...,N-1
	X[k] is the DFT of the sequence x[n].
	The exponential factor represents e^(-j 2π/N nk) the complex sinusoidal basis functions.
	The DFT maps the time-domain signal into the frequency domain.

Inverse Discrete Fourier Transform (IDFT)Method:
  The Inverse Discrete Fourier Transform (IDFT) is used to convert a frequency-domain sequence X[k] back into its time-domain sequence x[n]. The IDFT is defined as:
x[n]=1/N ∑(k=0toN-1)X[k] ⋅e^(j 2π/N nk),n=0,1,2,...,N-1

	The IDFT takes the frequency components X[k] and reconstructs the original sequence x[n].
	The exponential factor e^(j 2π/N nk) is the inverse of the DFT’s complex sinusoidal basis functions
.
Application
	Spectrum (Analysis)
	Filtering
	Compression
	Modulation
	Convolution
	Demodulation
	Equalization
	Restoration
	Detection
	Estimation
