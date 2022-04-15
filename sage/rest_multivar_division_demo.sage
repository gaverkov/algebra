def rest_of_multivariate_division_demo(f,G):
    to_be_divided=f
    remainder=R(0)
    print "Rest beim Teilen von {}".format(f)
    print "durch"
    for i,g in enumerate(G):
        print "# {}: {}".format(i+1,g)
    print f.parent().term_order()
    print 
    print "Berechnungen: "
    dround=0
    while to_be_divided!=0:
        dround+=1
        print
        print "Division: Runde {}".format(dround)
        used_some_Gi=False
        for i in range(len(G)):
            T,r= to_be_divided.lt().quo_rem(G[i].lt())
            if r==0:
                print "{} * # {} = {}".format(-T,i+1,-T*G[i])
                to_be_divided-=T*G[i]
                print "noch zu teilen: {}".format(to_be_divided)
                used_some_Gi=True
                break
        print
        if not used_some_Gi:
            print "{} -> Rest".format(to_be_divided.lt())
            remainder+=to_be_divided.lt()
            to_be_divided-=to_be_divided.lt()
            print to_be_divided 
    print
    print "(Ergebnis) Rest:"
    print remainder
