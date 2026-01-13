.text
.globl main
main:

    # x20=a, x21=b, x22=d, x23=e, x5= temp1, x6=temp2
    li x20, 5 #a=5
    li x21, 0 #b=0
    addi x20, x21, 32 #a = b+32
    ##########################
    add x22, x20, x21 #d=a+b
    addi x22, x22, -5 #d-5
    ##########################
    sub x5, x20,x22 #temp1=a-d
    sub x6, x21, x20 #temp2=b-a
    add x23, x5, x6 #e=temp1+temp2
    add x23, x23, x22 #e = (temp1+temp2)+d
    ##########################
    add x23, x23, x20 #a+e
    add x23, x23, x21 #a+b+e
    add x23, x23, x22 #a+b+d+e, e already in x23, we dont need to add it again. we add in the same location so this translate to the same thing
end: 
    j end

    

