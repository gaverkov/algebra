

# Algebra: Structures and Algorithms

Module description: https://www.b-tu.de/modul/13911

Prerequisites for the course. Basically, that is a wish list or a nice-to-have list for certain skills and some background knowledge. 

General math abilities: 
- Understand what one says or writes. For example, you say: f is a ring homomorphism. If you say that, probably you know what you mean by a ring and what you mean by homomorphism. 
- Make statements whose truth value is definite (either true or false). That means parseable statements. That means statements in which the meaning of its the words is clear without guessing. That means, a statement which has a subject and a predicate, whose meaning is clear without guessing. 
- Make well-defined statements/definitions. For example, assume, you say: I consider *the* function f with the property P. If you say *the*, that means you probably know why such a function exists and why it is unique.
- Write formulas that can be parsed. 
- Make and use formal definitions. Say, you define a property P and then say that object A definitely has property P, whereas the object B definitely does not have the property P.
- Build parseable reasoning chains, like A implies B, B implies C, C implies D.
- Reason without gaps. A gap means that you use something in your reasoning, for which you don't know any reasons why it is true. The reasons why things are true could be: you've checked it yourself or (in the case you reasoning depends on the trust in other sources) someone else whom you trust has checked that (maybe, the lecturer or the author of a book). 
- Reason by induction (this also helps in programming)
- Reason by contradiction, reason using the contra position.
- Reason in an abstract fashion. That means, reasoning at a certain level of abstraction, say, for general sets, or general algebraic structure.
- Go through the arguments written down by the others in a critical way. For example, the lecturer makes a mistake and you can spot it. Yes, lecturers do make mistakes (at least, once in a while)! And in books, too, there are sometimes mistakes. Another example: ability to spot the mistakes in the output of AI systems (like ChatGPT). In their nature, AI systems immitate the stuff on which they have been trained. So, their answers to math questions are quite often wrong, because those systems do not bother about the truth. They bother about having seen something like that in a test test or not.
- Understand the question asked by someone.
- Ask own questions. 

General computer-science abilities: 
- Understand the code by reading it, without doing testing. That's also called code review.
- Confirm or disprove the finite termination of the code. That is, experience with figuring out why a particular code does terminate or why some particular code does not terminate.
- Analyze resources (time and memory) required for the executation of the code.
- Analyze the correctness of the code without doing testing (just by reasoning)

Specific math knowledge: 
- Knowing basic algebraic structures like a field.
- Linear algebra: Vector spaces, vector subspaces, basis, dimension.
- Linear algebra: linear map, rank nullity theorem, kernel, image
- The notion of derivative and partial derivative


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

- [Week 06, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_06_1.pdf)
- [Week 06, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_06_2.pdf)

## Week 7
- [Week 07, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_07_1.pdf)
- [Week 07, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_07_2.pdf)

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
- [Week 08, lecture 1, notes](notizen/wise_25_26/algebra_wise_25_26_week_08_1.pdf)
- [Week 08, lecture 2, notes](notizen/wise_25_26/algebra_wise_25_26_week_08_2.pdf)

[The English Wikipedia article on the Chinese Remainder Theorem](https://en.wikipedia.org/wiki/Chinese_remainder_theorem) provides interesting information, including connection to polynomial interpolation and various applications (including secrete sharing and signal processing). 

## Week 9

- No board images for Week 09, lecture 1
- [Week 09, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_09_2.pdf)

## Week 10
- [Week 10, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_10_1.pdf)
- [Prime number theorem on Wikipedia.](https://en.wikipedia.org/wiki/Prime_number_theorem) We've discussed it in the context of the RSA and had an interesting discussion on best ways to find a prime number in a given range.

## Week 11
- [Week 11, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_11_1.pdf)
- [Week 11, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_11_2.pdf)

## Week 12

- [Week 12, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_12_1.pdf)
- We had a pre-exam instead of the lectures

## Week 13

- [Week 13, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_13_1.pdf)
- [Week 13, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_13_2.pdf)


## Week 14

This week, we've played with Groebner bases in SageMath. In particular, we generated this code:

- [Week 14, lecture 1, board images](notizen/wise_25_26/algebra_wise_25_26_week_14_1.pdf)
- [Week 14, lecture 2, board images](notizen/wise_25_26/algebra_wise_25_26_week_14_2.pdf)


```python
R = PolynomialRing(QQ,'x,y',order='lex')
x,y = R.gens()
f = x^2 - x*y + 2*y^2 - 4
g = y^2 - x^2*(x+1) + x*y

pf= implicit_plot(f,(x,-3,3),(y,-3,3),color='red')
pg= implicit_plot(g,(x,-3,3),(y,-3,3),color='blue')

I = R.ideal(f,g)

G = I.groebner_basis()

print(f"f={f} (curve plotted in red)")
print(f"g={g} (curve plotted in blue)")

show(pf+pg)

print("Our ideal is this:")
print(I)

print("""The Groebner basis wrt 
to the lex order of this idea is this:""")
print(G)

h = G[-1]
print("""We care about this polynomial
because it depends only on y:
""")
print(h)

ph= implicit_plot(h,(x,-3,3),(y,-3,3),color='orange')
show(pf+pg+ph)

pg0=implicit_plot(G[0],(x,-3,3),(y,-3,3),color='green')
pg1=implicit_plot(G[1],(x,-3,3),(y,-3,3),color='violet')
pg2=implicit_plot(G[2],(x,-3,3),(y,-3,3),color='orange')


show(pg0+pg1+pg2)

#print("""The first polynomial in the Groebner basis""")
#print(G[0])
#print(G[0](-1,2))


#plot3d(G[0],(x,-2,0),(y,0,2))+plot3d(0,(x,-2,0),(y,0,2),color='yellow')

T = PolynomialRing(QQ,'t')
t = T.gen()

hh = h(0,t)
hh.roots()


print(f(-1,1))
print(g(-1,1))
```

## Week 15


