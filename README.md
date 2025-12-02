

# Algebra: Structures and Algorithms

Module description: https://www.b-tu.de/modul/13911

Prerequisites: 
- linear algebra
- mathematics with proofs
- basic algorithmic knowledge

# WiSe 25/26

## Week 1. 

Self-learning. Chapter 1, Paragraph 1 in Cox-Little-O'Shea. All of the exercises at the end of this paragraph. 

## Week 2

We introduced multivariate polynomials and had a few observations about them. 

## Week 3
We had an exercises class, which emerged by looking at polynomial interpolation and the definition of the ring. 

## Week 4
-- [B. Sturmfel's lecture: Elimination and implicitatization](https://www.math.uni-konstanz.de/~michalek/april24.pdf)

## Week 5

Ideals. 

## Week 6

- [Week 06, lecture 1, board images](algebra_wise_25_26_week_06_1.pdf)
- [Week 06, lecture 2, board images](algebra_wise_25_26_week_06_2.pdf)

## Week 7
- [Week 07, lecture 1, board images](algebra_wise_25_26_week_07_1.pdf)
- [Week 07, lecture 2, board images](algebra_wise_25_26_week_07_2.pdf)

This code highlights how the extended Euclidean algorithm works. 
The non-extended Euclidean algorithm maintains a pair of numbers. 
The numbers
in the pair get smaller, but the gcd does not change. 
The extended Euclidean algorithm does the same arithmetic
operations as
the non-extended Euclidean algorithm but attaches a linear equation to each 
of the two numbers that are getting processsed. 
So, in the loop of the extended Euclidean algorithm, one keeps the track
of the two equations that are satisfied on the input 
throughout the execution. In this SageMath implementation, 
the equations are encoded through vectors:

```python
def extended_gcd(a,b):
    f = vector([a,1,0]) 
    # f[0]==f[1]*a+f[2]*b will stay true
    g = vector([b,0,1]) 
    # g[0]==g[1]*a+g[2]*b will stay true 
    # gcd(f[0],f[1]) will stay the same 
    while g[0]!=0:
        q = f[0] // g[0]
        f,g = g, f-q*g # degree of g drops - progress! 
    return tuple(f)
```

Here the recursive implementation is of course less efficient due to the call stack overheads, but it is even shorter with the easy to track correctness. 

```python
def ext_eucl(a,b):
    if b==0:
        return a,1,0
    q = a // b
    g,u,v=ext_eucl(b,a-q*b)
    return g,v,u-q*v
```



## Week 8
- [Week 08, lecture 1, notes](algebra_wise_25_26_week_08_1.pdf)
- [Week 08, lecture 2, notes](algebra_wise_25_26_week_08_2.pdf)

[The English Wikipedia article on the Chinese Remainder Theorem](https://en.wikipedia.org/wiki/Chinese_remainder_theorem) provides interesting information, including connection to polynomial interpolation and various applications (including secrete sharing and signal processing). 



## General comments

### On mathematics

- A wrong definition is a definition that can be parsed but is not the same as the definition that was agreed upon. Non-Definition is a description that cannot be parsed. Your description of a ring is a non-definition if give a particular structure (R,+,.) it is not possible to decide from your description if it satisfies the properties you list or not.
- A basic skill in math is to understand a question. For example consider a question: what is a ring? The answer is supposed to be a description that would allow one to distinguish between the structures that are rings and the structures that are no rings. Sometimes, gets an answer whose relation to the original question is not clear.

### On computer science

- If your computer science bachelor degree involved theory, it must have had mathematical induction (in my humble opinion). For a huge number of algorithms, induction is the way an algorithm emerges and the way to see its correctness. 

### On linear algebra 

- Many computational problems are actually problems from linear algebra: polynomial interpolation, different kinds of regression, principal component analysis, least-square approximation are all directly related to linear algebra.
- Having a strong theoretical background in quantitative sciences is hardly possible without linear algebra (in my humble opinion)

### Fitting a linear function to two datapoints 

 also known as the linear interpolation is a baby case of interpolation


