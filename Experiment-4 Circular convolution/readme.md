## THEORY
Circular convolution is a mathematical operation that is like linear convolution but is performed in a periodic or circular manner. This is particularly useful in discrete-time signal processing where signals are often represented as periodic sequences. 

Mathematical Definition: 

Given two periodic sequences x[n] and h[n], their circular convolution is defined as: 

`y[n] = (x[n] ⊛ h[n]) = Σ_{k=0} ^{N-1} x[k]h[(n-k) mod N] `

Applications: 

•	Discrete-Time Filtering: Circular convolution is used for filtering discrete-time signals. 

•	Digital Signal Processing: It's a fundamental operation in many digital signal processing algorithms. 

•	Cyclic Convolution: In certain applications, such as cyclic prefix OFDM, circular convolution is used to simplify the implementation of linear convolution. 
## OBSERVATION

enter first sequence:
[1 2 3 4 ]

enter second sequence:
[1 2 1 2]

enter starting index of first sequence:
0

enter starting index of second sequence:
0

output:
    16    14    16    14
![image](https://github.com/user-attachments/assets/1aa7f8c0-4664-46d9-94cc-04da715abf13)
