Overlap-Add Method

The Overlap-Add method, on the other hand, handles circular convolution by adding overlapping sections of the convolved blocks. Here’s how it works:

1. Block Decomposition: The input signal is split into non-overlapping blocks of size. Each block is then zero-padded to a size of , where  is the length of the filter.
2. FFT and Convolution: Each block is convolved with the filter using FFT. Since the blocks are zero-padded, the convolution produces valid linear results, but the output blocks overlap.
3. Overlap and Add: After convolution, the results of each block overlap by samples. These overlapping regions are added together to form the final output.


Overlap-Save Method

The Overlap-Save method deals with circular convolution by discarding the parts of the signal that are corrupted by wrap-around effects. Here's how it works:
1. Block Decomposition: The input signal is divided into overlapping blocks. If the filter has length and we use blocks of length, the overlap is  samples, so each block has  new samples and  samples from the previous block.
2. FFT and Convolution: Each block is convolved with the filter using FFT. However, because of circular convolution, the result contains artifacts due to the overlap.
3. Discard and Save: We discard the first samples from each block (the part affected by the wrap-around) and save the remaining samples. This gives us the correct linear convolution.

## OBSERVATION
#### OVERLAP SAVE
Enter 1st sequence: [3 -1 0 1 3 2 0 1 2 1]
Enter 2nd sequence: [1 1 1]
Fragmented block size: 3
Using Overlap and Save method
  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     3

  Columns 9 through 10

     3     4

  Columns 11 through 12

     3     1

Verification
  Column 1

    3.0000

  Column 2

    2.0000

  Column 3

    2.0000

  Column 4

         0

  Column 5

    4.0000

  Column 6

    6.0000

  Column 7

    5.0000

  Column 8

    3.0000

  Column 9

    3.0000

  Column 10

    4.0000

  Column 11

    3.0000

  Column 12

    1.0000

#### OVERLAP ADD
Enter the input sequence x : [3 -1 0 1 3 2 0 1 2 1]
Enter the impulse response h : [1 1 1]

y =

  Columns 1 through 2

     0     0

  Columns 3 through 4

     0     0

  Columns 5 through 6

     0     0

  Columns 7 through 8

     0     0

  Columns 9 through 10

     0     0

  Columns 11 through 12

     0     0

  Columns 13 through 14

     0     0


x_section =

  Columns 1 through 2

     3    -1

  Column 3

     0


conv_result =

  Columns 1 through 2

     3     2

  Columns 3 through 4

     2    -1

  Column 5

     0


y =

  Columns 1 through 2

     3     2

  Columns 3 through 4

     2    -1

  Columns 5 through 6

     0     0

  Columns 7 through 8

     0     0

  Columns 9 through 10

     0     0

  Columns 11 through 12

     0     0

  Columns 13 through 14

     0     0


x_section =

  Columns 1 through 2

     1     3

  Column 3

     2


conv_result =

  Columns 1 through 2

     1     4

  Columns 3 through 4

     6     5

  Column 5

     2


y =

  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     2

  Columns 9 through 10

     0     0

  Columns 11 through 12

     0     0

  Columns 13 through 14

     0     0


x_section =

  Columns 1 through 2

     0     1

  Column 3

     2


conv_result =

  Columns 1 through 2

     0     1

  Columns 3 through 4

     3     3

  Column 5

     2


y =

  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     3

  Columns 9 through 10

     3     3

  Columns 11 through 12

     2     0

  Columns 13 through 14

     0     0


x_section =

  Columns 1 through 2

     1     0

  Column 3

     0


conv_result =

  Columns 1 through 2

     1     1

  Columns 3 through 4

     1     0

  Column 5

     0


y =

  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     3

  Columns 9 through 10

     3     4

  Columns 11 through 12

     3     1

  Columns 13 through 14

     0     0

Overlap-add convolution result:
  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     3

  Columns 9 through 10

     3     4

  Columns 11 through 12

     3     1

Built-in convolution result:
  Columns 1 through 2

     3     2

  Columns 3 through 4

     2     0

  Columns 5 through 6

     4     6

  Columns 7 through 8

     5     3

  Columns 9 through 10

     3     4

  Columns 11 through 12

     3     1

![image](https://github.com/user-attachments/assets/ea83b7f6-ec8f-4e1e-b2ed-eeca13a91d05)

