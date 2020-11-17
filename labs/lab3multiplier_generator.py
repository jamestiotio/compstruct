for i in range(1, 30):
    print("* Level %d" % i)
    print("Xlayer%d_and A[%d:0] B[%d]#%d L%d_and[%d:0] and2" % (i, 31-i, i, 32-i, i, 31-i))
    print("Xlayer%d L%d_sum[1] L%d_and[0] 0 P[%d] L%d_cout[0] FA" % (i, i-1, i, i, i))
    print("Xlayer%d_FA L%d_sum[%d:2] L%d_and[%d:1] L%d_cout[%d:0] L%d_sum[%d:1] L%d_cout[%d:1] FA" % (i, i-1, 32-i, i, 31-i, i, 30-i, i, 31-i, i, 31-i))
    print("")