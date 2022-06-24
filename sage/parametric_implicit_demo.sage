def demo_parametric_to_implicit_curve(n):
    """
        n - number of nodes in the lagrange interpolation 
    """
    Rt=PolynomialRing(QQ,'t')
    t=Rt.gen()
    tnodes=range(n)
    p=[ (randint(0,10),randint(0,10)) for tval in tnodes]
    xnodes=[a for a,b in p]
    ynodes=[b for a,b in p]
    xt=Rt.lagrange_polynomial(zip(tnodes,xnodes)) 
    yt=Rt.lagrange_polynomial(zip(tnodes,ynodes))
    print(60*"=")
    print("parametric description")
    print("x={}\ny={}".format(xt,yt))

    show(parametric_plot((xt,yt),(t,min(tnodes),max(tnodes)))+points(p,color='red',size=30))

    R=PolynomialRing(QQ,'t,x,y')
    t,x,y=R.gens()
    I=R.ideal(R(xt)-x,R(yt)-y)
    print("implicit description (constructed using elimination ideals)")
    print("{} = 0".format(I.elimination_ideal(t).gens()[0]))
    print(60*"=")

for i in range(5):
    demo_parametric_to_implicit_curve(6)