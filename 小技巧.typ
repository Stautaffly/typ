

#set text(size: 15pt)




= 等比\*等差数列求和办法
令 $T_n=("An"+B)q^n$ 其部分和$ S_n=(A+B)q+(2A+B)q^2+dots+("An"+B)q^n $
法一:错位相减\
$ S_n=&(A+B)q+(2A+B)q^2+dots+("An"+B)q^n \ 
q S_n=&  (A+B)q^2+dots+(A n+B-A)q^(n)+ ("An"+B)q^(n+1)         



$
两式相减得$ S_n=((A+B)q+A q^2(1-q^(n-1))/(1-q)-(A n+B)q^(n+1))/(1-q) $
