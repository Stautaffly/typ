#let c = counter("theorem")
#let b = counter("prove")
#let a = counter("lemma")
#let d = counter("proposition")
#let e = counter("example")




#let lemma(name,neiron) = block[                               //计数器变量记得改
  #a.step()
#set math.equation(numbering: "(1)",supplement: [le.])
#text(size: 20pt)[*Lemma #a.display(): #name *] \
#line(stroke: (paint: gray, thickness: 1pt, dash: "dashed"),length: 100%)  #neiron
]


#let theorem(name,neiron) = block[
  #c.step()
#set math.equation(numbering: "(1)",supplement: [Th.])
#text(size: 20pt)[*Theorem #c.display(): #name *] \
#line(stroke: (paint: gray, thickness: 1pt, dash: "dashed"),length: 100%)  #neiron
]



#set text(size: 15pt)
#set enum(tight: false,spacing: 3%)//设置列表间距
#theorem("级数的基本收敛判别法",[

  + \(柯西收敛) $forall epsilon>0 exists N in NN " "forall n>m>N in NN "使得"abs(sum_(m+1)^n a_n)< epsilon $ 
  
  + \(等价形式) $forall epsilon>0 exists N in NN forall n>=N "so" \(forall p in NN " " abs(sum_n^(n+p)a_n)<epsilon )$ 
  
])<级数的基本收敛判别法>
with
#theorem("收敛级数的线性",[
  若$display(sum_n^infinity a_n) $,$display(sum_n^infinity b_n ) $都收敛,则$ alpha sum_n^infinity a_n+beta sum_n^infinity b_n $<收敛级数的线性>也收敛
])
@收敛级数的线性 
111111