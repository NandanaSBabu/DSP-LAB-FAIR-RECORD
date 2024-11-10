## THEORY
The linearity property of the DFT states that if you have two sequences x1[n] and x2[n], and their corresponding DFTs are X1[k] and X2[k], then for any scalar a and b:

     `DFT{a⋅x1[n]+b⋅x2[n]} = a⋅DFT{x1[n]}+b⋅DFT{x2[n]}`

Parseval's theorem states that the total energy of a signal in the time domain is equal to the total energy in the frequency domain. For a sequence x[n] and its DFT 

    `X[k]:∑_(n=0)^(N-1)〖x[n]〗^2 =1/N ∑_(n=0)^(N-1)〖X[k]〗`
    

The convolution property of the DFT states that the circular convolution of two sequences in the time domain is equivalent to the element-wise multiplication of their DFTs in the frequency domain:

      ` DFT{x1[n]⊛x2[n]}=DFT{x1[n]}⋅DFT{x2[n]}`

The multiplication property of DFT states that pointwise multiplication in the time domain corresponds to circular convolution in the frequency domain:
    
    `DFT{x1[n]⋅x2[n]} = ( 1)/NDFT{x1[n]}⊛DFT{x2[n]}`

## OBSERVATION
#### CIRCULAR CONVOLUTION PROPERTY
enter first sequence[1 2 3 4]
enter sequence sequence:[1 1 1 1]
LHS
  Columns 1 through 2

    10    10

  Columns 3 through 4

    10    10

RHS
  Columns 1 through 2

    10    10

  Columns 3 through 4

    10    10

Circular Convolution verified
#### PARSEVAL'S THEOREM
enter first sequence:[1 2 3 4]
enter second sequence:[1 1 1 1]

LHS
    10

RHS
    10

Parseval's Theorem verified

#### LINEARITY PROPERTY
enter first sequence[1 2 3 4 ]
enter second sequence:[1 1 1 1]

x =

     1     2     3     4

enter value of 'a':2
enter value of 'b':3
LHS
  Column 1

  32.0000 + 0.0000i

  Column 2

  -4.0000 + 4.0000i

  Column 3

  -4.0000 + 0.0000i

  Column 4

  -4.0000 - 4.0000i

RHS
  Column 1

  32.0000 + 0.0000i

  Column 2

  -4.0000 + 4.0000i

  Column 3

  -4.0000 + 0.0000i

  Column 4

  -4.0000 - 4.0000i

Linearity property verified

#### MULTIPLICATION PROPERTY
enter first sequence[1 2 3 4]
enter sequence sequence:[1 1 1 1]
LHS
  Column 1

  10.0000 + 0.0000i

  Column 2

  -2.0000 + 2.0000i

  Column 3

  -2.0000 + 0.0000i

  Column 4

  -2.0000 - 2.0000i

RHS
  Column 1

  10.0000 + 0.0000i

  Column 2

  -2.0000 + 2.0000i

  Column 3

  -2.0000 + 0.0000i

  Column 4

  -2.0000 - 2.0000i

Multiplication property verified


  
