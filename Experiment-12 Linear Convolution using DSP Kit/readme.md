## THEORY
Linear convolution is one of the fundamental operations used extensively in signal and system in electrical engineering. It has applications in areas like audio processing, signal filtering, imaging, communication systems and more.

In simple terms, linear convolution is the process of combining two signals or functions to produce a third signal or function. Formally, the linear convolution of two functions f(t) and g(t) is defined as:

The formula for linear convolution of two discrete signals x[n] and h[n] is given by:

                        y[n] = ∑(k=-∞ to ∞) x[k] * h[n-k]                    

where: 

•	x[n] is the input signal.

•	h[n] is the impulse response of the system.

•	y[n] is the output signal.

In the context of linear convolution in DSP, this operation is applied to digital signals. DSP systems utilize algorithms to perform convolution efficiently, often leveraging Fast Convolution methods to handle large datasets and real-time processing.

#### Applications of Linear Convolution :

•	Filtering: Used in digital filters to process signals.

•	Image Processing: Applied for edge detection and blurring.

•	System Analysis: Helps in analyzing LTI systems in response to inputs.

## OBSERVATION

Linear Convolution Output:

4

11

20

30

20

11

4
