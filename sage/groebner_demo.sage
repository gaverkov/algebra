R=PolynomialRing(QQ,'x,y',order='deglex')
x,y=R.gens()

def SPOL(f,g):
    M=lcm(f.lm(),g.lm())
    return R(M/f.lt())*f - R(M/g.lt())*g

def groebner_basis_demo(F):
    G=F
    while True:
        m=len(G)
        print()
        print("Aktuelle Polynome:")
        for i,g in enumerate(G):
            print("\t{}: {}".format(i,g))
        print()
        R=[]
        for j in range(m):
            for i in range(j):
                r=SPOL(G[i],G[j]).reduce(G)
                if r!=0:
                    R.append(r)
                    print("neu {}: {} aus {} und {}".format(m+len(R)-1,r,i,j))
             
        if len(R)==0:
            return G
        G=G+R
        

F=[x^3-2*x*y,x^2*y-2*y^2 + x]
G=groebner_basis_demo(F)
print("Ergebnis")
for i,g in enumerate(G):
    print("{}: {}".format(i,g))
