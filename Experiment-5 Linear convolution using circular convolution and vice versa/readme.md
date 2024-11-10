## THEORY
#### Performing Linear Convolution Using Circular Convolution 

##### Method: 

•	Zero-Padding: Pad both sequences x[n] and h[n] with zeros to a length of at least 2N-1, where N is the maximum length of the two sequences. This ensures that the circular convolution will not wrap around and introduce artificial periodicity. 

•	Circular Convolution: Perform circular convolution on the zero-padded sequences. 

•	Truncation: Truncate the result of the circular convolution to the length N1 + N2 - 1, where N1 and N2 are the lengths of the original sequences x[n] and h[n], respectively.

#### Example: 

•	Consider the sequences x[n] = [1, 2, 3] and h[n] = [4, 5]. 

•	Zero-padding: Pad x[n] to [1, 2, 3, 0, 0] and h[n] to [4, 5, 0, 0]. 

•	Circular Convolution: Perform circular convolution on the zero-padded sequences. The result will be [4, 13, 21, 15, 0].

•	Truncation: Truncate the result to [4, 13, 21, 15]. 

This result is the same as the linear convolution of x[n] and h[n].  


#### Performing Circular Convolution Using Linear Convolution

##### Method:

Time Reversal: Reverse the sequence h[n] to obtain h[-n].

Linear Convolution: Perform linear convolution between x[n] and h[-n].

Time Reversal (Optional): If you need the circular convolution in the original time direction, reverse the result of the linear convolution.

#### Example:

Consider the sequences x[n] = [1, 2, 3] and h[n] = [4, 5].

Time Reversal: h[-n] = [5, 4]

Linear Convolution:

x[n] * h[-n] = [5, 14, 23, 15]

## OBSERVATION
Linear Convolution using Circular Convolution output

     1     3     6     9     7     4

Verification

     1     3     6     9     7     4
     
Circular using Linear convolution

     8     7     6     9     

Verification

     8     7     6     9
