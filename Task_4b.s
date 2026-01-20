# initializing array a at 0x100
li x5, 1
li x1, 0
sb x5, 0x100(x1)
###########################
li x5 2
li x1 1
sb x5, 0x100(x1)
###########################
li x5 3
li x1 2
sb x5, 0x100(x1)
###########################
li x5 4
li x1 3
sb x5, 0x100(x1)
###########################


# initializing array b at 0x200
li x5, 1
li x1, 0
sh x5, 0x200(x1)
###########################
li x5 2
li x1 1
sh x5, 0x200(x1)
###########################
li x5 3
li x1 2
sh x5, 0x200(x1)
###########################
li x5 4
li x1 3
sh x5, 0x200(x1)
###########################


#c[0]=a[0]+b[0]
li x1, 0
lb x2, 0x100(x1) #load array vals
lh x3, 0x200(x1)
add x4, x3, x2 
sw x4, 0x300(x1)
#c[1]=a[1]+b[1]
li x1, 1
lb x2, 0x100(x1) #load array vals
lh x3, 0x200(x1)
add x4, x3, x2 
sw x4, 0x300(x1)
#c[2]=a[2]+b[2]
li x1, 2
lb x2, 0x100(x1) #load array vals
lh x3, 0x200(x1)
add x4, x3, x2 
sw x4, 0x300(x1)
#c[3]=a[3]+b[3]
li x1, 3
lb x2, 0x100(x1) #load array vals
lh x3, 0x200(x1)
add x4, x3, x2 
sw x4, 0x300(x1)

