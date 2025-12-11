

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

## Week 8

- No board images for Week 09, lecture 1
- [Week 09, lecture 2, board images](algebra_wise_25_26_2.pdf)

## General comments

The comments are motivated by encounters with students who got their BSc in CS at different places of this world. 
If you pick a random person across the word with a university BSc degree in CS, who graduated in the last 5 years, what expertise is this person supposed to have? 
In my view the answer is: it's not clear at all. The problem here is not that students do not know anything, but rather it is not 
clear what common theoretical knowledge every CS graduate has independently of the institution in which the person graduated. 

Now, imagine a person with BSc in CS starts doing a MSc in some university of this word and some fancy area like data science, AI, cybersecurity etc.
So, what assumptions can the teaching stuff make on the state of knowledge of the international students when offering their courses? 
Not clear at all. 



- Like in computer science you may have a non-code (does'not compile), an incorect code (doesn't do what one wants) and correct code, in mathematics one can have a non-definition, a wrong defition and a correct defintion, a non-theorem, a wrong theorem and a correct theorem. 
- A basic scientific skill is to understand a question. It's hard to give solution without understanding what the question was. A way to understand written question is just to read it word by word and understand the meaning of each word.
- Discrete math is a background for theoretical computer science. University CS degree have both theory and practice. Discrete math uses induction a lot. Analysis of algorithms is based on induction very often. Many reasons to learn induction. 
- Many computational problems are actually problems from linear algebra: polynomial interpolation, different kinds of regression, principal component analysis, least-square approximation are all directly related to linear algebra. The list can be extended. So, with a CS degree it makes sense to have a knowledge in linear algebra. 
  
