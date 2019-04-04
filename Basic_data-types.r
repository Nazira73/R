#-------------------------------------------------------------------------------

# There are only 2 things in R.
# 1. Function
# 2. Object (Every object has a class associated with it)

#-------------------------------------------------------------------------------
# Creation of objects holding single data value
#-------------------------------------------------------------------------------

# These could hold 4 types of data
# 1. Numeric
# 2. Character
# 3. Logical
# 4. Integer (By default if we pass any number to R then it considers it as a 
#    integer but if we want to give integer then we will write L at the last)
# 5. Complex 
#----------------------------------------------------------------------

x=5           # creation of object and assigning numeric data
x<-5          # Another way of assigning (before version 2 '=' was not available)
x             

X=15          # (R and Python are case sensitive, SAS and SQL are not)
abc=x         # Object assignement is allowed
abc

ab=2.3        # floating data is considered as numeric data 
class(x)
class(abc)
class(ab)

#----------------------------------------------------------------------

y="nazira"    # creation of object and assigning character data
y
y1="n"
y2='a'
y3="One tea"  # space is also considered as character
# y4='z"      # is not allowed
class(y)
class(y1)
class(y2)
class(y3)

#-----------------------------------------------------------------------

z=TRUE        # creation of object and assigning logical data
z             # here true and false should be all in caps

# shortcut to write true and false is T and F

a=T
b=F
class(z)
class(a)
class(b)

#-------------------------------------------------------------------------

k=6L          # L denotes integer in R
class(k)
l=6.5L        # This gives warning
class(l)      # class of l remains numeric
l

#-------------------------------------------------------------------------

rm(a,b,k)     # to remove the object from the environment(remove variables from memory)
remove(a,b,k) # same work

#-------------------------------------------------------------------------------

ls()          # returns character strings giving the names of the objects in 
              # the specified environment
              # By default the environment is current environment
a=5
ab=10
a1=1
a2=2
a3=3
b1=1
b2=2
B3=3
a4=4
ls(pattern = "b")   # returns objects as strings whose name contains the given pattern
ls(pattern = "ab")
ls(pattern = "m")

#-----------------------------------------------------------------------------------
.j=5                  # creating hidden objects (starts with .)
.po=10
ls()
ls(all.names = T)     # returns the names of all the objects as strings including
                      # hidden objects
#---------------------------------------------------------------------------------

# remove all the object from the environmenet 
rm(list=ls())    # or we can use this directly

#----------------------------------------------------------------------------------------------------
#If we want to delete 3rd object from 5 objects then
#----------------------------------------------------------------------------------------------------

a=10
b=20
c=30
d=40
e=50

rm(list=ls()[3])

#----------------------------------------------------------------------------------------------------
# If we want to delete only 3,6 and 10th objects from 10 objects available in the environment
#----------------------------------------------------------------------------------------------------

a=10
b=20
c=30
d=40
e=50
f=60
g=70
h=80
i=90
j=100

rm( list=ls()[c(3,6,10)] )

#----------------------------------------------------------------------------------------------------
# Converting data type
#-----------------------------------------------------------------------------------------------------

v1="23.45"
class(v1)

v1=as.numeric(v1)    # as. --> converting one data type to other
class(v1)

is.numeric(v1)       # Gives logical answers to the question

v1="king"
class(v1)

v2=as.numeric(v1)    # (NA introduced by coercion),since this is not possible
v2                   
class(v2)            # But still class gets converted

v1="23.45"
class(v1)
v1=as.integer(v1)
class(v1)

v1="23.45"
v1=v1+2              # throws an error
v1=as.numeric(v1)+2
v1
class(v1)

v1="12"
v1=as.character(v1)
v1
class(v1)


# Hierarchy

#             ---------
#            |character|        Highest Priority
#             ---------  
#                 |
#              -------
#             |Complex|
#              -------
#                 |
#             ---------
#             |Numeric|
#             --------- 
#                 |
#             ---------
#             |Integer|
#             ---------  
#                 |
#             ---------
#             |Logical|         Lowest Priority
#             ---------  
#-----------------------------------------------------------------------------------------
########################## Naming rules for object #####################################
#------------------------------------------------------------------------------------------


#1. Can contain alphabetics and numerics

#2. Allowed special characters are only "_" and "."

#3. Cannot start with number

#4. Cannot start with a symbol

## eg. Valid --> s23,one.more.thing,students.1_marks
##    Invalid --> 2name, _data , .file

3ns = 10                 # throws error
assign("3ns",10)

# There are no restrictions on name: it can be a non-syntactic name 

1 <- 2                   # Error
assign("1",2)


# To access the contents of objects whose names are not syntactically right. 
# we make use of backtick ``
3ns           # doesnt work
"3ns"         # doesnt work
'3ns'         # doesnt work
`3ns`         # works 

`1`

`5`=3*80
`+`=1920
`-`=360

`+`(2,9)
`-`(10,8)
`/`(30,10)

`1 2 ka 4`=124


`my name is` = "nazira"

#----------------------------------------------------------------------------------------
#Operations on single data objects
#----------------------------------------------------------------------------------------
#---------------------------------------------------------------------------------------
# A. Numeric Operations
#---------------------------------------------------------------------------------------
# 1. Operations using arithmetic operators
# 2. Operations using functions

x=2
y=3

x+y
x-y
x*y
x/y
x%%y            # remainder after division
x%/%y           # quotient after division
x^y
x**y
whatever=x+y-5+3/x

#---------------------------------------------------------------------

tan(x)
sin(45)
log(2)
log(2,2)
log(10)
log(2^14,10)
acos(5)
asinh(6)
cos(c(0,1,2,3,4))
cospi(c(0,1,2,3,4))
sinpi(c(0,0.5,1,1.5,2,3))


#--------------------------------------------------------------------------------------
# B. String Operations
#--------------------------------------------------------------------------------------

# 1. paste(),paste0()    -------> To concatenate
# 2. sub(),gsub()        -------> Substitution and global substitution
# 3. substr()            -------> Extract substring


name="nazira"
surname="shaikh"
profession="teacher"
experience=3

paste(name,surname)
paste(name,surname,profession,sep=":")
paste(name,surname,"is teaching since",experience,"years")
paste(name,surname,"is teaching since",experience,"years",sep='$')
paste(name,surname,sep="")
paste0(name,surname)          # To concetanete without spaces

# Note: paste() stores result in character data type

a=paste(1234,4565)
a
a1=paste(name,1990)
a1
a2=1:10                       # To create vector of numbers
a2
a3=paste("bird",a2)
a3
a4=paste("bird","flying",a2)
a4
a5=paste(a3,a4,sep=":")
a5
x=c(5,10,15,20,25)
x
a6=x>10                       # All conditional operators gives logical result
a6
a7=paste(x[a6],name)
a7
a8=paste(a6,a4)
a8
a9=paste(x[a6],a4)
a9
a10=paste(a2,x,collapse=NULL) # collapse is related to vector 
a10
a11=paste(a2,x,collapse=" ")
a11
a12=paste(a2,x,collapse=" $ ")
a12
a13=paste0(a2,x,collapse = "+")
a13

#--------------------------------------------------------------------------------------------------

a="I love you"                      # Substitute part of string with some another string
a
a=sub("love","hate",a)
a

address="Gulistan bldg-7/B/101. Pooja-Nagar road,Naya-nagar,Mira-road (E)"
newadd=sub("-"," ",address)         # Substitution of first occurence
newadd
newadd1=sub("101","102",address)  
newadd1
newadd2=gsub("-"," ",address)       # Global substitution
newadd2

#----------------------------------------------------------------------------------------------------

num="1.2345% 67$_89 1"
substr(num,start=1,stop=10)        # Substring (extract part of a string)
substr(num,5,200000)               # it automatically shows only till last digit
substr(num,10,nchar(num))          # nchar() gives total number of characters

#----------------------------------------------------------------------------------------------------
# C. Logical/Conditional operators
#----------------------------------------------------------------------------------------------------

x=0
y=10
z=20

x&y
x|y
!x

x<y & y<10
x<z | y>z

a="nazira"

a=="Nazira" | a=="NAZIRA"
a=="Nazira" & a=="nazira"
a=="Nazira" | a=="nazira"

