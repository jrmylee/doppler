??.
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

,
Exp
x"T
y"T"
Ttype:

2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??+
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
: *
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
: *
dtype0
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:@*
dtype0
?
conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_54/kernel
~
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_54/bias
n
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes	
:?*
dtype0
?
conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_55/kernel

$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_55/bias
n
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes	
:?*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
??*
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
{
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,* 
shared_namedense_27/kernel
t
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel*
_output_shapes
:	?,*
dtype0
s
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*
shared_namedense_27/bias
l
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes	
:?,*
dtype0
?
conv2d_transpose_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *+
shared_nameconv2d_transpose_65/kernel
?
.conv2d_transpose_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_65/kernel*'
_output_shapes
:? *
dtype0
?
conv2d_transpose_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_65/bias
?
,conv2d_transpose_65/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_65/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_66/kernel
?
.conv2d_transpose_66/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_66/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_66/bias
?
,conv2d_transpose_66/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_66/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_67/kernel
?
.conv2d_transpose_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_67/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_67/bias
?
,conv2d_transpose_67/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_67/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_68/kernel
?
.conv2d_transpose_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_68/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_68/bias
?
,conv2d_transpose_68/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_68/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_69/kernel
?
.conv2d_transpose_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_69/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_69/bias
?
,conv2d_transpose_69/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_69/bias*
_output_shapes
:*
dtype0
?
Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_52/kernel/m
?
+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_52/bias/m
{
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_53/kernel/m
?
+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_53/bias/m
{
)Adam/conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_54/kernel/m
?
+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_54/bias/m
|
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_55/kernel/m
?
+Adam/conv2d_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_55/bias/m
|
)Adam/conv2d_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,*'
shared_nameAdam/dense_27/kernel/m
?
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m*
_output_shapes
:	?,*
dtype0
?
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*%
shared_nameAdam/dense_27/bias/m
z
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes	
:?,*
dtype0
?
!Adam/conv2d_transpose_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *2
shared_name#!Adam/conv2d_transpose_65/kernel/m
?
5Adam/conv2d_transpose_65/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_65/kernel/m*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_65/bias/m
?
3Adam/conv2d_transpose_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_65/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_66/kernel/m
?
5Adam/conv2d_transpose_66/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_66/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_66/bias/m
?
3Adam/conv2d_transpose_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_66/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_67/kernel/m
?
5Adam/conv2d_transpose_67/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_67/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_67/bias/m
?
3Adam/conv2d_transpose_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_67/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_68/kernel/m
?
5Adam/conv2d_transpose_68/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_68/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_68/bias/m
?
3Adam/conv2d_transpose_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_68/bias/m*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_69/kernel/m
?
5Adam/conv2d_transpose_69/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_69/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_69/bias/m
?
3Adam/conv2d_transpose_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_69/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_52/kernel/v
?
+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_52/bias/v
{
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_53/kernel/v
?
+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_53/bias/v
{
)Adam/conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_54/kernel/v
?
+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_54/bias/v
|
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_55/kernel/v
?
+Adam/conv2d_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_55/bias/v
|
)Adam/conv2d_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,*'
shared_nameAdam/dense_27/kernel/v
?
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v*
_output_shapes
:	?,*
dtype0
?
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*%
shared_nameAdam/dense_27/bias/v
z
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes	
:?,*
dtype0
?
!Adam/conv2d_transpose_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *2
shared_name#!Adam/conv2d_transpose_65/kernel/v
?
5Adam/conv2d_transpose_65/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_65/kernel/v*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_65/bias/v
?
3Adam/conv2d_transpose_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_65/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_66/kernel/v
?
5Adam/conv2d_transpose_66/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_66/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_66/bias/v
?
3Adam/conv2d_transpose_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_66/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_67/kernel/v
?
5Adam/conv2d_transpose_67/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_67/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_67/bias/v
?
3Adam/conv2d_transpose_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_67/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_68/kernel/v
?
5Adam/conv2d_transpose_68/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_68/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_68/bias/v
?
3Adam/conv2d_transpose_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_68/bias/v*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_69/kernel/v
?
5Adam/conv2d_transpose_69/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_69/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_69/bias/v
?
3Adam/conv2d_transpose_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_69/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?t
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?t
value?tB?t B?t
?
encoder
decoder
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
?

layer_with_weights-0

layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
regularization_losses
trainable_variables
	variables
	keras_api
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
regularization_losses
trainable_variables
	variables
	keras_api
?
iter

 beta_1

!beta_2
	"decay
#learning_rate$m?%m?&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?$v?%v?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?
 
 
?
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
.10
/11
012
113
214
315
416
517
618
719
820
921
?
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
.10
/11
012
113
214
315
416
517
618
719
820
921
?
:metrics
regularization_losses
trainable_variables
;layer_metrics
<layer_regularization_losses
=non_trainable_variables

>layers
	variables
 
h

$kernel
%bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
h

&kernel
'bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
h

(kernel
)bias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
h

*kernel
+bias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
R
Oregularization_losses
Ptrainable_variables
Q	variables
R	keras_api
h

,kernel
-bias
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
 
F
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
F
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
?
Wmetrics
regularization_losses
trainable_variables
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables

[layers
	variables
h

.kernel
/bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
R
`regularization_losses
atrainable_variables
b	variables
c	keras_api
h

0kernel
1bias
dregularization_losses
etrainable_variables
f	variables
g	keras_api
h

2kernel
3bias
hregularization_losses
itrainable_variables
j	variables
k	keras_api
h

4kernel
5bias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
h

6kernel
7bias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
h

8kernel
9bias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
 
V
.0
/1
02
13
24
35
46
57
68
79
810
911
V
.0
/1
02
13
24
35
46
57
68
79
810
911
?
xmetrics
regularization_losses
trainable_variables
ylayer_metrics
zlayer_regularization_losses
{non_trainable_variables

|layers
	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_52/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_52/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_53/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_53/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_54/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_54/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_55/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_55/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_26/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_26/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_27/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_27/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_65/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_65/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_66/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_66/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_67/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_67/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_68/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_68/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_69/kernel1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_69/bias1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 

0
1
 

$0
%1

$0
%1
?
}metrics
?regularization_losses
@trainable_variables
~layer_metrics
layer_regularization_losses
?non_trainable_variables
?layers
A	variables
 

&0
'1

&0
'1
?
?metrics
Cregularization_losses
Dtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
E	variables
 

(0
)1

(0
)1
?
?metrics
Gregularization_losses
Htrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
I	variables
 

*0
+1

*0
+1
?
?metrics
Kregularization_losses
Ltrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
M	variables
 
 
 
?
?metrics
Oregularization_losses
Ptrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Q	variables
 

,0
-1

,0
-1
?
?metrics
Sregularization_losses
Ttrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
U	variables
 
 
 
 
*

0
1
2
3
4
5
 

.0
/1

.0
/1
?
?metrics
\regularization_losses
]trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
^	variables
 
 
 
?
?metrics
`regularization_losses
atrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
b	variables
 

00
11

00
11
?
?metrics
dregularization_losses
etrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
f	variables
 

20
31

20
31
?
?metrics
hregularization_losses
itrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
j	variables
 

40
51

40
51
?
?metrics
lregularization_losses
mtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
n	variables
 

60
71

60
71
?
?metrics
pregularization_losses
qtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
r	variables
 

80
91

80
91
?
?metrics
tregularization_losses
utrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
v	variables
 
 
 
 
1
0
1
2
3
4
5
6
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
yw
VARIABLE_VALUEAdam/conv2d_52/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_52/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_53/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_53/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_54/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_54/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_55/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_55/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_26/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_26/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_27/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_27/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_65/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_65/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_66/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_66/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_67/kernel/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_67/bias/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_68/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_68/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_69/kernel/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_69/bias/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_52/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_52/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_53/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_53/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_54/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_54/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_55/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_55/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_26/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_26/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_27/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_27/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_65/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_65/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_66/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_66/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_67/kernel/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_67/bias/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_68/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_68/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_69/kernel/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_69/bias/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasconv2d_transpose_65/kernelconv2d_transpose_65/biasconv2d_transpose_66/kernelconv2d_transpose_66/biasconv2d_transpose_67/kernelconv2d_transpose_67/biasconv2d_transpose_68/kernelconv2d_transpose_68/biasconv2d_transpose_69/kernelconv2d_transpose_69/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_26308
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$conv2d_55/kernel/Read/ReadVariableOp"conv2d_55/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp.conv2d_transpose_65/kernel/Read/ReadVariableOp,conv2d_transpose_65/bias/Read/ReadVariableOp.conv2d_transpose_66/kernel/Read/ReadVariableOp,conv2d_transpose_66/bias/Read/ReadVariableOp.conv2d_transpose_67/kernel/Read/ReadVariableOp,conv2d_transpose_67/bias/Read/ReadVariableOp.conv2d_transpose_68/kernel/Read/ReadVariableOp,conv2d_transpose_68/bias/Read/ReadVariableOp.conv2d_transpose_69/kernel/Read/ReadVariableOp,conv2d_transpose_69/bias/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp)Adam/conv2d_53/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp+Adam/conv2d_55/kernel/m/Read/ReadVariableOp)Adam/conv2d_55/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_65/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_65/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_66/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_66/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_67/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_67/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_68/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_68/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_69/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_69/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp)Adam/conv2d_53/bias/v/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp+Adam/conv2d_55/kernel/v/Read/ReadVariableOp)Adam/conv2d_55/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_65/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_65/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_66/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_66/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_67/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_67/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_68/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_68/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_69/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_69/bias/v/Read/ReadVariableOpConst*T
TinM
K2I	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_29425
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasdense_26/kerneldense_26/biasdense_27/kerneldense_27/biasconv2d_transpose_65/kernelconv2d_transpose_65/biasconv2d_transpose_66/kernelconv2d_transpose_66/biasconv2d_transpose_67/kernelconv2d_transpose_67/biasconv2d_transpose_68/kernelconv2d_transpose_68/biasconv2d_transpose_69/kernelconv2d_transpose_69/biasAdam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/mAdam/conv2d_53/bias/mAdam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/conv2d_55/kernel/mAdam/conv2d_55/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/m!Adam/conv2d_transpose_65/kernel/mAdam/conv2d_transpose_65/bias/m!Adam/conv2d_transpose_66/kernel/mAdam/conv2d_transpose_66/bias/m!Adam/conv2d_transpose_67/kernel/mAdam/conv2d_transpose_67/bias/m!Adam/conv2d_transpose_68/kernel/mAdam/conv2d_transpose_68/bias/m!Adam/conv2d_transpose_69/kernel/mAdam/conv2d_transpose_69/bias/mAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/vAdam/conv2d_53/bias/vAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/conv2d_55/kernel/vAdam/conv2d_55/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/v!Adam/conv2d_transpose_65/kernel/vAdam/conv2d_transpose_65/bias/v!Adam/conv2d_transpose_66/kernel/vAdam/conv2d_transpose_66/bias/v!Adam/conv2d_transpose_67/kernel/vAdam/conv2d_transpose_67/bias/v!Adam/conv2d_transpose_68/kernel/vAdam/conv2d_transpose_68/bias/v!Adam/conv2d_transpose_69/kernel/vAdam/conv2d_transpose_69/bias/v*S
TinL
J2H*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_29648??)
?
?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_25444

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????,@?2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_25875
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
(__inference_dense_27_layer_call_fn_28779

inputs
unknown:	?,
	unknown_0:	?,
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_253702
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????,2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28937

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29013

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?H
?

__inference_encode_27454
xP
6sequential_26_conv2d_52_conv2d_readvariableop_resource: E
7sequential_26_conv2d_52_biasadd_readvariableop_resource: P
6sequential_26_conv2d_53_conv2d_readvariableop_resource: @E
7sequential_26_conv2d_53_biasadd_readvariableop_resource:@Q
6sequential_26_conv2d_54_conv2d_readvariableop_resource:@?F
7sequential_26_conv2d_54_biasadd_readvariableop_resource:	?R
6sequential_26_conv2d_55_conv2d_readvariableop_resource:??F
7sequential_26_conv2d_55_biasadd_readvariableop_resource:	?I
5sequential_26_dense_26_matmul_readvariableop_resource:
??D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity

identity_1??.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?-sequential_26/conv2d_52/Conv2D/ReadVariableOp?.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?-sequential_26/conv2d_53/Conv2D/ReadVariableOp?.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?-sequential_26/conv2d_54/Conv2D/ReadVariableOp?.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?-sequential_26/conv2d_55/Conv2D/ReadVariableOp?-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOp?
sequential_26/conv2d_52/Conv2DConv2Dx5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2D?
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2!
sequential_26/conv2d_52/BiasAdd?
sequential_26/conv2d_52/ReluRelu(sequential_26/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential_26/conv2d_52/Relu?
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp?
sequential_26/conv2d_53/Conv2DConv2D*sequential_26/conv2d_52/Relu:activations:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2D?
.sequential_26/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?
sequential_26/conv2d_53/BiasAddBiasAdd'sequential_26/conv2d_53/Conv2D:output:06sequential_26/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2!
sequential_26/conv2d_53/BiasAdd?
sequential_26/conv2d_53/ReluRelu(sequential_26/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential_26/conv2d_53/Relu?
-sequential_26/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_26/conv2d_54/Conv2D/ReadVariableOp?
sequential_26/conv2d_54/Conv2DConv2D*sequential_26/conv2d_53/Relu:activations:05sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_26/conv2d_54/Conv2D?
.sequential_26/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?
sequential_26/conv2d_54/BiasAddBiasAdd'sequential_26/conv2d_54/Conv2D:output:06sequential_26/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_26/conv2d_54/BiasAdd?
sequential_26/conv2d_54/ReluRelu(sequential_26/conv2d_54/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_26/conv2d_54/Relu?
-sequential_26/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_26/conv2d_55/Conv2D/ReadVariableOp?
sequential_26/conv2d_55/Conv2DConv2D*sequential_26/conv2d_54/Relu:activations:05sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2 
sequential_26/conv2d_55/Conv2D?
.sequential_26/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?
sequential_26/conv2d_55/BiasAddBiasAdd'sequential_26/conv2d_55/Conv2D:output:06sequential_26/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2!
sequential_26/conv2d_55/BiasAdd?
sequential_26/conv2d_55/ReluRelu(sequential_26/conv2d_55/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential_26/conv2d_55/Relu?
sequential_26/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_26/flatten_13/Const?
 sequential_26/flatten_13/ReshapeReshape*sequential_26/conv2d_55/Relu:activations:0'sequential_26/flatten_13/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_26/flatten_13/Reshape?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_13/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_26/dense_26/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_26/dense_26/BiasAdd:output:0*
T0*:
_output_shapes(
&:?????????:?????????*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp/^sequential_26/conv2d_53/BiasAdd/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp/^sequential_26/conv2d_54/BiasAdd/ReadVariableOp.^sequential_26/conv2d_54/Conv2D/ReadVariableOp/^sequential_26/conv2d_55/BiasAdd/ReadVariableOp.^sequential_26/conv2d_55/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp.sequential_26/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp.sequential_26/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_54/Conv2D/ReadVariableOp-sequential_26/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp.sequential_26/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_55/Conv2D/ReadVariableOp-sequential_26/conv2d_55/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_24639

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????
?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_cvae_13_layer_call_fn_26361
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_cvae_13_layer_call_and_return_conditional_losses_258752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_25502

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceU
stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????X?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????X?@
 
_user_specified_nameinputs
?
?
'__inference_cvae_13_layer_call_fn_26520
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_cvae_13_layer_call_and_return_conditional_losses_260352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
I
 __inference_reparameterize_24369
mean

logvar
identity?B
ShapeShapemean*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:?????????*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????2
random_normalS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
mul/y[
mulMullogvarmul/y:output:0*
T0*'
_output_shapes
:?????????2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:?????????2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:?????????2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:?????????2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:M I
'
_output_shapes
:?????????

_user_specified_namemean:OK
'
_output_shapes
:?????????
 
_user_specified_namelogvar
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26682
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?!
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24806

inputs)
conv2d_52_24779: 
conv2d_52_24781: )
conv2d_53_24784: @
conv2d_53_24786:@*
conv2d_54_24789:@?
conv2d_54_24791:	?+
conv2d_55_24794:??
conv2d_55_24796:	?"
dense_26_24800:
??
dense_26_24802:
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_24779conv2d_52_24781*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_245882#
!conv2d_52/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_24784conv2d_53_24786*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_246052#
!conv2d_53/StatefulPartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_54_24789conv2d_54_24791*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_246222#
!conv2d_54/StatefulPartitionedCall?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_24794conv2d_55_24796*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_246392#
!conv2d_55/StatefulPartitionedCall?
flatten_13/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_246512
flatten_13/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_26_24800dense_26_24802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_246632"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28961

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????,@?2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?

?
C__inference_dense_26_layer_call_and_return_conditional_losses_28770

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
3__inference_conv2d_transpose_66_layer_call_fn_28894

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_250402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_25216

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?6
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_28322

inputsB
(conv2d_52_conv2d_readvariableop_resource: 7
)conv2d_52_biasadd_readvariableop_resource: B
(conv2d_53_conv2d_readvariableop_resource: @7
)conv2d_53_biasadd_readvariableop_resource:@C
(conv2d_54_conv2d_readvariableop_resource:@?8
)conv2d_54_biasadd_readvariableop_resource:	?D
(conv2d_55_conv2d_readvariableop_resource:??8
)conv2d_55_biasadd_readvariableop_resource:	?;
'dense_26_matmul_readvariableop_resource:
??6
(dense_26_biasadd_readvariableop_resource:
identity?? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d_52/Relu?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_53/Relu?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_54/Conv2D/ReadVariableOp?
conv2d_54/Conv2DConv2Dconv2d_53/Relu:activations:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_54/Conv2D?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOp?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_54/BiasAdd
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_54/Relu?
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_55/Conv2D/ReadVariableOp?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_55/Conv2D?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_55/BiasAdd/ReadVariableOp?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_55/BiasAdd
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_55/Reluu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten_13/Const?
flatten_13/ReshapeReshapeconv2d_55/Relu:activations:0flatten_13/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_13/Reshape?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMulflatten_13/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAddt
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
)__inference___backward_decode_27806_27867
placeholder?
}gradients_sequential_27_conv2d_transpose_69_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_68_relu?
?gradients_sequential_27_conv2d_transpose_69_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop?
}gradients_sequential_27_conv2d_transpose_68_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_67_relu?
?gradients_sequential_27_conv2d_transpose_68_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop?
}gradients_sequential_27_conv2d_transpose_67_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_66_relu?
?gradients_sequential_27_conv2d_transpose_67_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop?
}gradients_sequential_27_conv2d_transpose_66_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_65_relu?
?gradients_sequential_27_conv2d_transpose_66_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop{
wgradients_sequential_27_conv2d_transpose_65_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_reshape_13_reshape?
?gradients_sequential_27_conv2d_transpose_65_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_65_conv2d_transpose_readvariableopS
Ogradients_sequential_27_dense_27_relu_grad_relugrad_sequential_27_dense_27_relud
`gradients_sequential_27_dense_27_matmul_grad_matmul_sequential_27_dense_27_matmul_readvariableop;
7gradients_sequential_27_dense_27_matmul_grad_matmul_1_z
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12v
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??2
gradients/grad_ys_0?
Dgradients/sequential_27/conv2d_transpose_69/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:2F
Dgradients/sequential_27/conv2d_transpose_69/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2I
Ggradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Shape?
Vgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFiltergradients/grad_ys_0:output:0Pgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Shape:output:0}gradients_sequential_27_conv2d_transpose_69_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_68_relu*
T0*&
_output_shapes
: *
paddingSAME*
strides
2X
Vgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2DConv2Dgradients/grad_ys_0:output:0?gradients_sequential_27_conv2d_transpose_69_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
2J
Hgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2D?
>gradients/sequential_27/conv2d_transpose_68/Relu_grad/ReluGradReluGradQgradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_27_conv2d_transpose_69_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_68_relu*
T0*(
_output_shapes
:?? 2@
>gradients/sequential_27/conv2d_transpose_68/Relu_grad/ReluGrad?
Dgradients/sequential_27/conv2d_transpose_68/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_27/conv2d_transpose_68/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2F
Dgradients/sequential_27/conv2d_transpose_68/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   2I
Ggradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Shape?
Vgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_27/conv2d_transpose_68/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Shape:output:0}gradients_sequential_27_conv2d_transpose_68_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_67_relu*
T0*&
_output_shapes
: @*
paddingSAME*
strides
2X
Vgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_27/conv2d_transpose_68/Relu_grad/ReluGrad:backprops:0?gradients_sequential_27_conv2d_transpose_68_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
2J
Hgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2D?
>gradients/sequential_27/conv2d_transpose_67/Relu_grad/ReluGradReluGradQgradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_27_conv2d_transpose_68_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_67_relu*
T0*'
_output_shapes
:X?@2@
>gradients/sequential_27/conv2d_transpose_67/Relu_grad/ReluGrad?
Dgradients/sequential_27/conv2d_transpose_67/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_27/conv2d_transpose_67/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2F
Dgradients/sequential_27/conv2d_transpose_67/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   ?   2I
Ggradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Shape?
Vgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_27/conv2d_transpose_67/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Shape:output:0}gradients_sequential_27_conv2d_transpose_67_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_66_relu*
T0*'
_output_shapes
:@?*
paddingSAME*
strides
2X
Vgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_27/conv2d_transpose_67/Relu_grad/ReluGrad:backprops:0?gradients_sequential_27_conv2d_transpose_67_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
2J
Hgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2D?
>gradients/sequential_27/conv2d_transpose_66/Relu_grad/ReluGradReluGradQgradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_27_conv2d_transpose_67_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_66_relu*
T0*'
_output_shapes
:,@?2@
>gradients/sequential_27/conv2d_transpose_66/Relu_grad/ReluGrad?
Dgradients/sequential_27/conv2d_transpose_66/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_27/conv2d_transpose_66/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2F
Dgradients/sequential_27/conv2d_transpose_66/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2I
Ggradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Shape?
Vgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_27/conv2d_transpose_66/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Shape:output:0}gradients_sequential_27_conv2d_transpose_66_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_65_relu*
T0*(
_output_shapes
:??*
paddingSAME*
strides
2X
Vgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_27/conv2d_transpose_66/Relu_grad/ReluGrad:backprops:0?gradients_sequential_27_conv2d_transpose_66_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
2J
Hgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2D?
>gradients/sequential_27/conv2d_transpose_65/Relu_grad/ReluGradReluGradQgradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_27_conv2d_transpose_66_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_conv2d_transpose_65_relu*
T0*'
_output_shapes
: ?2@
>gradients/sequential_27/conv2d_transpose_65/Relu_grad/ReluGrad?
Dgradients/sequential_27/conv2d_transpose_65/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_27/conv2d_transpose_65/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2F
Dgradients/sequential_27/conv2d_transpose_65/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2I
Ggradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Shape?
Vgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_27/conv2d_transpose_65/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Shape:output:0wgradients_sequential_27_conv2d_transpose_65_conv2d_transpose_grad_conv2dbackpropfilter_sequential_27_reshape_13_reshape*
T0*'
_output_shapes
:? *
paddingSAME*
strides
2X
Vgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_27/conv2d_transpose_65/Relu_grad/ReluGrad:backprops:0?gradients_sequential_27_conv2d_transpose_65_conv2d_transpose_grad_conv2d_sequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop*
T0*&
_output_shapes
: *
paddingSAME*
strides
2J
Hgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2D?
5gradients/sequential_27/reshape_13/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5gradients/sequential_27/reshape_13/Reshape_grad/Shape?
7gradients/sequential_27/reshape_13/Reshape_grad/ReshapeReshapeQgradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2D:output:0>gradients/sequential_27/reshape_13/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?,29
7gradients/sequential_27/reshape_13/Reshape_grad/Reshape?
3gradients/sequential_27/dense_27/Relu_grad/ReluGradReluGrad@gradients/sequential_27/reshape_13/Reshape_grad/Reshape:output:0Ogradients_sequential_27_dense_27_relu_grad_relugrad_sequential_27_dense_27_relu*
T0*
_output_shapes
:	?,25
3gradients/sequential_27/dense_27/Relu_grad/ReluGrad?
9gradients/sequential_27/dense_27/BiasAdd_grad/BiasAddGradBiasAddGrad?gradients/sequential_27/dense_27/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?,2;
9gradients/sequential_27/dense_27/BiasAdd_grad/BiasAddGrad?
3gradients/sequential_27/dense_27/MatMul_grad/MatMulMatMul?gradients/sequential_27/dense_27/Relu_grad/ReluGrad:backprops:0`gradients_sequential_27_dense_27_matmul_grad_matmul_sequential_27_dense_27_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(25
3gradients/sequential_27/dense_27/MatMul_grad/MatMul?
5gradients/sequential_27/dense_27/MatMul_grad/MatMul_1MatMul7gradients_sequential_27_dense_27_matmul_grad_matmul_1_z?gradients/sequential_27/dense_27/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:	?,*
transpose_a(27
5gradients/sequential_27/dense_27/MatMul_grad/MatMul_1?
IdentityIdentity=gradients/sequential_27/dense_27/MatMul_grad/MatMul:product:0*
T0*
_output_shapes

:2

Identity?

Identity_1Identity?gradients/sequential_27/dense_27/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	?,2

Identity_1?

Identity_2IdentityBgradients/sequential_27/dense_27/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?,2

Identity_2?

Identity_3Identity_gradients/sequential_27/conv2d_transpose_65/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:? 2

Identity_3?

Identity_4IdentityMgradients/sequential_27/conv2d_transpose_65/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identity_gradients/sequential_27/conv2d_transpose_66/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_5?

Identity_6IdentityMgradients/sequential_27/conv2d_transpose_66/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7Identity_gradients/sequential_27/conv2d_transpose_67/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_7?

Identity_8IdentityMgradients/sequential_27/conv2d_transpose_67/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_8?

Identity_9Identity_gradients/sequential_27/conv2d_transpose_68/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_9?
Identity_10IdentityMgradients/sequential_27/conv2d_transpose_68/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11Identity_gradients/sequential_27/conv2d_transpose_69/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2
Identity_11?
Identity_12IdentityMgradients/sequential_27/conv2d_transpose_69/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:2
Identity_12"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	?,:*1
forward_function_name__forward_decode_27866:. *
(
_output_shapes
:??:.*
(
_output_shapes
:?? :,(
&
_output_shapes
: :-)
'
_output_shapes
:X?@:,(
&
_output_shapes
: @:-)
'
_output_shapes
:,@?:-)
'
_output_shapes
:@?:-)
'
_output_shapes
: ?:.*
(
_output_shapes
:??:,	(
&
_output_shapes
: :-
)
'
_output_shapes
:? :%!

_output_shapes
:	?,:%!

_output_shapes
:	?,:$ 

_output_shapes

:
?
?
3__inference_conv2d_transpose_67_layer_call_fn_28970

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_251282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
I
 __inference_reparameterize_26820
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:2
random_normalS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
mul/yR
mulMullogvarmul/y:output:0*
T0*
_output_shapes

:2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:::D @

_output_shapes

:

_user_specified_namemean:FB

_output_shapes

:
 
_user_specified_namelogvar
?
?
3__inference_conv2d_transpose_68_layer_call_fn_29055

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_255022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????X?@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????X?@
 
_user_specified_nameinputs
?%
?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_25303

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
1__inference___backward_reparameterize_27908_27933
placeholder 
gradients_mul_1_grad_mul_exp,
(gradients_mul_1_grad_mul_1_random_normal 
gradients_mul_grad_mul_mul_y#
gradients_mul_grad_mul_1_logvar
identity

identity_1l
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:2
gradients/grad_ys_0?
gradients/mul_1_grad/MulMulgradients/grad_ys_0:output:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul?
gradients/mul_1_grad/Mul_1Mulgradients/grad_ys_0:output:0(gradients_mul_1_grad_mul_1_random_normal*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul_1?
gradients/Exp_grad/mulMulgradients/mul_1_grad/Mul_1:z:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:2
gradients/Exp_grad/mul?
+gradients/mul_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gradients/mul_grad/BroadcastGradientArgs/s0?
+gradients/mul_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2-
+gradients/mul_grad/BroadcastGradientArgs/s1?
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/mul_grad/BroadcastGradientArgs/s0:output:04gradients/mul_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:?????????:?????????2*
(gradients/mul_grad/BroadcastGradientArgs?
gradients/mul_grad/MulMulgradients/Exp_grad/mul:z:0gradients_mul_grad_mul_mul_y*
T0*
_output_shapes

:2
gradients/mul_grad/Mul?
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_logvargradients/Exp_grad/mul:z:0*
T0*
_output_shapes

:2
gradients/mul_grad/Mul_1?
(gradients/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/mul_grad/Sum/reduction_indices?
gradients/mul_grad/SumSumgradients/mul_grad/Mul_1:z:01gradients/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Sum?
 gradients/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/mul_grad/Reshape/shape?
"gradients/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_grad/Reshape/shape_1?
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0+gradients/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Reshapeg
IdentityIdentitygradients/grad_ys_0:output:0*
T0*
_output_shapes

:2

Identityi

Identity_1Identitygradients/mul_grad/Mul:z:0*
T0*
_output_shapes

:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:::: :*9
forward_function_name __forward_reparameterize_27932:$  

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

:
?
|
__forward_reparameterize_27932
mean
logvar_0
identity
exp
random_normal	
mul_y

logvar?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:2
random_normal/mulf
random_normal_0AddV2random_normal/mul:z:0random_normal/mean:output:0*
T02
random_normalS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
mul/yT
mulMullogvar_0mul/y:output:0*
T0*
_output_shapes

:2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:2
Exp\
mul_1Mulrandom_normal_0:z:0Exp:y:0*
T0*
_output_shapes

:2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:2

Identity"
expExp:y:0"
identityIdentity:output:0"
logvarlogvar_0"
mul_ymul/y:output:0"$
random_normalrandom_normal_0:z:0*(
_construction_contextkEagerRuntime*'
_input_shapes
::*M
backward_function_name31__inference___backward_reparameterize_27908_27933:D @

_output_shapes

:

_user_specified_namemean:FB

_output_shapes

:
 
_user_specified_namelogvar
?
?
'__inference_cvae_13_layer_call_fn_26467
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_cvae_13_layer_call_and_return_conditional_losses_260352
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
??
?
__inference_decode_24490
zH
5sequential_27_dense_27_matmul_readvariableop_resource:	?,E
6sequential_27_dense_27_biasadd_readvariableop_resource:	?,e
Jsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? P
Asequential_27_conv2d_transpose_65_biasadd_readvariableop_resource:	?f
Jsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??P
Asequential_27_conv2d_transpose_66_biasadd_readvariableop_resource:	?e
Jsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?O
Asequential_27_conv2d_transpose_67_biasadd_readvariableop_resource:@d
Jsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @O
Asequential_27_conv2d_transpose_68_biasadd_readvariableop_resource: d
Jsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource: O
Asequential_27_conv2d_transpose_69_biasadd_readvariableop_resource:
identity??8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?-sequential_27/dense_27/BiasAdd/ReadVariableOp?,sequential_27/dense_27/MatMul/ReadVariableOp?
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_27/dense_27/MatMul/ReadVariableOp?
sequential_27/dense_27/MatMulMatMulz4sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_27/dense_27/MatMul?
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_27/dense_27/BiasAdd/ReadVariableOp?
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2 
sequential_27/dense_27/BiasAdd?
sequential_27/dense_27/ReluRelu'sequential_27/dense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_27/dense_27/Relu?
sequential_27/reshape_13/ShapeShape)sequential_27/dense_27/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_27/reshape_13/Shape?
,sequential_27/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_13/strided_slice/stack?
.sequential_27/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_1?
.sequential_27/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_2?
&sequential_27/reshape_13/strided_sliceStridedSlice'sequential_27/reshape_13/Shape:output:05sequential_27/reshape_13/strided_slice/stack:output:07sequential_27/reshape_13/strided_slice/stack_1:output:07sequential_27/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_13/strided_slice?
(sequential_27/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/1?
(sequential_27/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/2?
(sequential_27/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/reshape_13/Reshape/shape/3?
&sequential_27/reshape_13/Reshape/shapePack/sequential_27/reshape_13/strided_slice:output:01sequential_27/reshape_13/Reshape/shape/1:output:01sequential_27/reshape_13/Reshape/shape/2:output:01sequential_27/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_13/Reshape/shape?
 sequential_27/reshape_13/ReshapeReshape)sequential_27/dense_27/Relu:activations:0/sequential_27/reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2"
 sequential_27/reshape_13/Reshape?
'sequential_27/conv2d_transpose_65/ShapeShape)sequential_27/reshape_13/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/Shape?
5sequential_27/conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_65/strided_slice/stack?
7sequential_27/conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_1?
7sequential_27/conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_2?
/sequential_27/conv2d_transpose_65/strided_sliceStridedSlice0sequential_27/conv2d_transpose_65/Shape:output:0>sequential_27/conv2d_transpose_65/strided_slice/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_65/strided_slice?
)sequential_27/conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_65/stack/1?
)sequential_27/conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_65/stack/2?
)sequential_27/conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_65/stack/3?
'sequential_27/conv2d_transpose_65/stackPack8sequential_27/conv2d_transpose_65/strided_slice:output:02sequential_27/conv2d_transpose_65/stack/1:output:02sequential_27/conv2d_transpose_65/stack/2:output:02sequential_27/conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/stack?
7sequential_27/conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_65/strided_slice_1/stack?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_65/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_65/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_65/strided_slice_1?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_65/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_65/stack:output:0Isequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0)sequential_27/reshape_13/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_65/conv2d_transpose?
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_65/BiasAddBiasAdd;sequential_27/conv2d_transpose_65/conv2d_transpose:output:0@sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2+
)sequential_27/conv2d_transpose_65/BiasAdd?
&sequential_27/conv2d_transpose_65/ReluRelu2sequential_27/conv2d_transpose_65/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2(
&sequential_27/conv2d_transpose_65/Relu?
'sequential_27/conv2d_transpose_66/ShapeShape4sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/Shape?
5sequential_27/conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_66/strided_slice/stack?
7sequential_27/conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_1?
7sequential_27/conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_2?
/sequential_27/conv2d_transpose_66/strided_sliceStridedSlice0sequential_27/conv2d_transpose_66/Shape:output:0>sequential_27/conv2d_transpose_66/strided_slice/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_66/strided_slice?
)sequential_27/conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_27/conv2d_transpose_66/stack/1?
)sequential_27/conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_66/stack/2?
)sequential_27/conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_66/stack/3?
'sequential_27/conv2d_transpose_66/stackPack8sequential_27/conv2d_transpose_66/strided_slice:output:02sequential_27/conv2d_transpose_66/stack/1:output:02sequential_27/conv2d_transpose_66/stack/2:output:02sequential_27/conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/stack?
7sequential_27/conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_66/strided_slice_1/stack?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_66/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_66/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_66/strided_slice_1?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_66/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_66/stack:output:0Isequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_66/conv2d_transpose?
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_66/BiasAddBiasAdd;sequential_27/conv2d_transpose_66/conv2d_transpose:output:0@sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2+
)sequential_27/conv2d_transpose_66/BiasAdd?
&sequential_27/conv2d_transpose_66/ReluRelu2sequential_27/conv2d_transpose_66/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2(
&sequential_27/conv2d_transpose_66/Relu?
'sequential_27/conv2d_transpose_67/ShapeShape4sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/Shape?
5sequential_27/conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_67/strided_slice/stack?
7sequential_27/conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_1?
7sequential_27/conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_2?
/sequential_27/conv2d_transpose_67/strided_sliceStridedSlice0sequential_27/conv2d_transpose_67/Shape:output:0>sequential_27/conv2d_transpose_67/strided_slice/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_67/strided_slice?
)sequential_27/conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_27/conv2d_transpose_67/stack/1?
)sequential_27/conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_67/stack/2?
)sequential_27/conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_67/stack/3?
'sequential_27/conv2d_transpose_67/stackPack8sequential_27/conv2d_transpose_67/strided_slice:output:02sequential_27/conv2d_transpose_67/stack/1:output:02sequential_27/conv2d_transpose_67/stack/2:output:02sequential_27/conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/stack?
7sequential_27/conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_67/strided_slice_1/stack?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_67/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_67/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_67/strided_slice_1?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_67/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_67/stack:output:0Isequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_67/conv2d_transpose?
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_67/BiasAddBiasAdd;sequential_27/conv2d_transpose_67/conv2d_transpose:output:0@sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2+
)sequential_27/conv2d_transpose_67/BiasAdd?
&sequential_27/conv2d_transpose_67/ReluRelu2sequential_27/conv2d_transpose_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2(
&sequential_27/conv2d_transpose_67/Relu?
'sequential_27/conv2d_transpose_68/ShapeShape4sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/Shape?
5sequential_27/conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_68/strided_slice/stack?
7sequential_27/conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_1?
7sequential_27/conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_2?
/sequential_27/conv2d_transpose_68/strided_sliceStridedSlice0sequential_27/conv2d_transpose_68/Shape:output:0>sequential_27/conv2d_transpose_68/strided_slice/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_68/strided_slice?
)sequential_27/conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/1?
)sequential_27/conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/2?
)sequential_27/conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_68/stack/3?
'sequential_27/conv2d_transpose_68/stackPack8sequential_27/conv2d_transpose_68/strided_slice:output:02sequential_27/conv2d_transpose_68/stack/1:output:02sequential_27/conv2d_transpose_68/stack/2:output:02sequential_27/conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/stack?
7sequential_27/conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_68/strided_slice_1/stack?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_68/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_68/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_68/strided_slice_1?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_68/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_68/stack:output:0Isequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_68/conv2d_transpose?
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_68/BiasAddBiasAdd;sequential_27/conv2d_transpose_68/conv2d_transpose:output:0@sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2+
)sequential_27/conv2d_transpose_68/BiasAdd?
&sequential_27/conv2d_transpose_68/ReluRelu2sequential_27/conv2d_transpose_68/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2(
&sequential_27/conv2d_transpose_68/Relu?
'sequential_27/conv2d_transpose_69/ShapeShape4sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/Shape?
5sequential_27/conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_69/strided_slice/stack?
7sequential_27/conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_1?
7sequential_27/conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_2?
/sequential_27/conv2d_transpose_69/strided_sliceStridedSlice0sequential_27/conv2d_transpose_69/Shape:output:0>sequential_27/conv2d_transpose_69/strided_slice/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_69/strided_slice?
)sequential_27/conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/1?
)sequential_27/conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/2?
)sequential_27/conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_69/stack/3?
'sequential_27/conv2d_transpose_69/stackPack8sequential_27/conv2d_transpose_69/strided_slice:output:02sequential_27/conv2d_transpose_69/stack/1:output:02sequential_27/conv2d_transpose_69/stack/2:output:02sequential_27/conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/stack?
7sequential_27/conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_69/strided_slice_1/stack?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_69/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_69/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_69/strided_slice_1?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_69/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_69/stack:output:0Isequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_69/conv2d_transpose?
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_69/BiasAddBiasAdd;sequential_27/conv2d_transpose_69/conv2d_transpose:output:0@sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2+
)sequential_27/conv2d_transpose_69/BiasAdd?
IdentityIdentity2sequential_27/conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp9^sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2t
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namez
?
?
-__inference_sequential_26_layer_call_fn_24693
input_27!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_27unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_246702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_27
?&
?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_25040

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26574
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
-__inference_sequential_26_layer_call_fn_28257

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_246702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_dense_27_layer_call_and_return_conditional_losses_25370

inputs1
matmul_readvariableop_resource:	?,.
biasadd_readvariableop_resource:	?,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26628
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
)__inference_conv2d_54_layer_call_fn_28709

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_246222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????+?@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????+?@
 
_user_specified_nameinputs
µ
?0
!__inference__traced_restore_29648
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: =
#assignvariableop_5_conv2d_52_kernel: /
!assignvariableop_6_conv2d_52_bias: =
#assignvariableop_7_conv2d_53_kernel: @/
!assignvariableop_8_conv2d_53_bias:@>
#assignvariableop_9_conv2d_54_kernel:@?1
"assignvariableop_10_conv2d_54_bias:	?@
$assignvariableop_11_conv2d_55_kernel:??1
"assignvariableop_12_conv2d_55_bias:	?7
#assignvariableop_13_dense_26_kernel:
??/
!assignvariableop_14_dense_26_bias:6
#assignvariableop_15_dense_27_kernel:	?,0
!assignvariableop_16_dense_27_bias:	?,I
.assignvariableop_17_conv2d_transpose_65_kernel:? ;
,assignvariableop_18_conv2d_transpose_65_bias:	?J
.assignvariableop_19_conv2d_transpose_66_kernel:??;
,assignvariableop_20_conv2d_transpose_66_bias:	?I
.assignvariableop_21_conv2d_transpose_67_kernel:@?:
,assignvariableop_22_conv2d_transpose_67_bias:@H
.assignvariableop_23_conv2d_transpose_68_kernel: @:
,assignvariableop_24_conv2d_transpose_68_bias: H
.assignvariableop_25_conv2d_transpose_69_kernel: :
,assignvariableop_26_conv2d_transpose_69_bias:E
+assignvariableop_27_adam_conv2d_52_kernel_m: 7
)assignvariableop_28_adam_conv2d_52_bias_m: E
+assignvariableop_29_adam_conv2d_53_kernel_m: @7
)assignvariableop_30_adam_conv2d_53_bias_m:@F
+assignvariableop_31_adam_conv2d_54_kernel_m:@?8
)assignvariableop_32_adam_conv2d_54_bias_m:	?G
+assignvariableop_33_adam_conv2d_55_kernel_m:??8
)assignvariableop_34_adam_conv2d_55_bias_m:	?>
*assignvariableop_35_adam_dense_26_kernel_m:
??6
(assignvariableop_36_adam_dense_26_bias_m:=
*assignvariableop_37_adam_dense_27_kernel_m:	?,7
(assignvariableop_38_adam_dense_27_bias_m:	?,P
5assignvariableop_39_adam_conv2d_transpose_65_kernel_m:? B
3assignvariableop_40_adam_conv2d_transpose_65_bias_m:	?Q
5assignvariableop_41_adam_conv2d_transpose_66_kernel_m:??B
3assignvariableop_42_adam_conv2d_transpose_66_bias_m:	?P
5assignvariableop_43_adam_conv2d_transpose_67_kernel_m:@?A
3assignvariableop_44_adam_conv2d_transpose_67_bias_m:@O
5assignvariableop_45_adam_conv2d_transpose_68_kernel_m: @A
3assignvariableop_46_adam_conv2d_transpose_68_bias_m: O
5assignvariableop_47_adam_conv2d_transpose_69_kernel_m: A
3assignvariableop_48_adam_conv2d_transpose_69_bias_m:E
+assignvariableop_49_adam_conv2d_52_kernel_v: 7
)assignvariableop_50_adam_conv2d_52_bias_v: E
+assignvariableop_51_adam_conv2d_53_kernel_v: @7
)assignvariableop_52_adam_conv2d_53_bias_v:@F
+assignvariableop_53_adam_conv2d_54_kernel_v:@?8
)assignvariableop_54_adam_conv2d_54_bias_v:	?G
+assignvariableop_55_adam_conv2d_55_kernel_v:??8
)assignvariableop_56_adam_conv2d_55_bias_v:	?>
*assignvariableop_57_adam_dense_26_kernel_v:
??6
(assignvariableop_58_adam_dense_26_bias_v:=
*assignvariableop_59_adam_dense_27_kernel_v:	?,7
(assignvariableop_60_adam_dense_27_bias_v:	?,P
5assignvariableop_61_adam_conv2d_transpose_65_kernel_v:? B
3assignvariableop_62_adam_conv2d_transpose_65_bias_v:	?Q
5assignvariableop_63_adam_conv2d_transpose_66_kernel_v:??B
3assignvariableop_64_adam_conv2d_transpose_66_bias_v:	?P
5assignvariableop_65_adam_conv2d_transpose_67_kernel_v:@?A
3assignvariableop_66_adam_conv2d_transpose_67_bias_v:@O
5assignvariableop_67_adam_conv2d_transpose_68_kernel_v: @A
3assignvariableop_68_adam_conv2d_transpose_68_bias_v: O
5assignvariableop_69_adam_conv2d_transpose_69_kernel_v: A
3assignvariableop_70_adam_conv2d_transpose_69_bias_v:
identity_72??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_8?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?%
value?%B?%HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?
value?B?HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_52_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_52_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_53_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv2d_53_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv2d_54_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv2d_54_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_55_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_conv2d_55_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_26_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_26_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_27_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_27_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_conv2d_transpose_65_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_conv2d_transpose_65_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_conv2d_transpose_66_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_conv2d_transpose_66_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_conv2d_transpose_67_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_conv2d_transpose_67_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_conv2d_transpose_68_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_conv2d_transpose_68_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp.assignvariableop_25_conv2d_transpose_69_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_conv2d_transpose_69_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_52_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_52_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_53_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_53_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_54_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_54_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_55_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_55_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_26_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_26_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_27_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_27_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_conv2d_transpose_65_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp3assignvariableop_40_adam_conv2d_transpose_65_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_conv2d_transpose_66_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_conv2d_transpose_66_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_conv2d_transpose_67_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_conv2d_transpose_67_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_conv2d_transpose_68_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_conv2d_transpose_68_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp5assignvariableop_47_adam_conv2d_transpose_69_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_conv2d_transpose_69_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_52_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_52_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_53_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_53_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_54_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_54_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_55_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_55_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_26_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_26_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_27_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_27_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_conv2d_transpose_65_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp3assignvariableop_62_adam_conv2d_transpose_65_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp5assignvariableop_63_adam_conv2d_transpose_66_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp3assignvariableop_64_adam_conv2d_transpose_66_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_conv2d_transpose_67_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_conv2d_transpose_67_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_conv2d_transpose_68_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp3assignvariableop_68_adam_conv2d_transpose_68_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_conv2d_transpose_69_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_conv2d_transpose_69_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_709
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_71f
Identity_72IdentityIdentity_71:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_72?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_72Identity_72:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ւ
?
__inference__traced_save_29425
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_conv2d_55_kernel_read_readvariableop-
)savev2_conv2d_55_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop9
5savev2_conv2d_transpose_65_kernel_read_readvariableop7
3savev2_conv2d_transpose_65_bias_read_readvariableop9
5savev2_conv2d_transpose_66_kernel_read_readvariableop7
3savev2_conv2d_transpose_66_bias_read_readvariableop9
5savev2_conv2d_transpose_67_kernel_read_readvariableop7
3savev2_conv2d_transpose_67_bias_read_readvariableop9
5savev2_conv2d_transpose_68_kernel_read_readvariableop7
3savev2_conv2d_transpose_68_bias_read_readvariableop9
5savev2_conv2d_transpose_69_kernel_read_readvariableop7
3savev2_conv2d_transpose_69_bias_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableop4
0savev2_adam_conv2d_53_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop6
2savev2_adam_conv2d_55_kernel_m_read_readvariableop4
0savev2_adam_conv2d_55_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_65_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_65_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_66_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_66_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_67_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_67_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_68_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_68_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_69_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_69_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableop4
0savev2_adam_conv2d_53_bias_v_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop6
2savev2_adam_conv2d_55_kernel_v_read_readvariableop4
0savev2_adam_conv2d_55_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_65_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_65_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_66_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_66_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_67_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_67_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_68_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_68_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_69_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_69_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?%
value?%B?%HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?
value?B?HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_conv2d_55_kernel_read_readvariableop)savev2_conv2d_55_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop5savev2_conv2d_transpose_65_kernel_read_readvariableop3savev2_conv2d_transpose_65_bias_read_readvariableop5savev2_conv2d_transpose_66_kernel_read_readvariableop3savev2_conv2d_transpose_66_bias_read_readvariableop5savev2_conv2d_transpose_67_kernel_read_readvariableop3savev2_conv2d_transpose_67_bias_read_readvariableop5savev2_conv2d_transpose_68_kernel_read_readvariableop3savev2_conv2d_transpose_68_bias_read_readvariableop5savev2_conv2d_transpose_69_kernel_read_readvariableop3savev2_conv2d_transpose_69_bias_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop0savev2_adam_conv2d_53_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop2savev2_adam_conv2d_55_kernel_m_read_readvariableop0savev2_adam_conv2d_55_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_65_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_65_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_66_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_66_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_67_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_67_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_68_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_68_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_69_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_69_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop0savev2_adam_conv2d_53_bias_v_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop2savev2_adam_conv2d_55_kernel_v_read_readvariableop0savev2_adam_conv2d_55_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_65_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_65_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_66_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_66_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_67_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_67_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_68_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_68_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_69_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_69_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : @:@:@?:?:??:?:
??::	?,:?,:? :?:??:?:@?:@: @: : :: : : @:@:@?:?:??:?:
??::	?,:?,:? :?:??:?:@?:@: @: : :: : : @:@:@?:?:??:?:
??::	?,:?,:? :?:??:?:@?:@: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 	

_output_shapes
:@:-
)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??: 

_output_shapes
::%!

_output_shapes
:	?,:!

_output_shapes	
:?,:-)
'
_output_shapes
:? :!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:-)
'
_output_shapes
:@?: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:- )
'
_output_shapes
:@?:!!

_output_shapes	
:?:."*
(
_output_shapes
:??:!#

_output_shapes	
:?:&$"
 
_output_shapes
:
??: %

_output_shapes
::%&!

_output_shapes
:	?,:!'

_output_shapes	
:?,:-()
'
_output_shapes
:? :!)

_output_shapes	
:?:.**
(
_output_shapes
:??:!+

_output_shapes	
:?:-,)
'
_output_shapes
:@?: -

_output_shapes
:@:,.(
&
_output_shapes
: @: /

_output_shapes
: :,0(
&
_output_shapes
: : 1

_output_shapes
::,2(
&
_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
: @: 5

_output_shapes
:@:-6)
'
_output_shapes
:@?:!7

_output_shapes	
:?:.8*
(
_output_shapes
:??:!9

_output_shapes	
:?:&:"
 
_output_shapes
:
??: ;

_output_shapes
::%<!

_output_shapes
:	?,:!=

_output_shapes	
:?,:->)
'
_output_shapes
:? :!?

_output_shapes	
:?:.@*
(
_output_shapes
:??:!A

_output_shapes	
:?:-B)
'
_output_shapes
:@?: C

_output_shapes
:@:,D(
&
_output_shapes
: @: E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
::H

_output_shapes
: 
?
?
3__inference_conv2d_transpose_67_layer_call_fn_28979

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????X?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_254732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????X?@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????,@?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????,@?
 
_user_specified_nameinputs
?^
?
__forward_compute_loss_28066
x_0!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity	
add_3
mul_3_x	
add_1
mul_1_x
logistic_loss_exp	
exp_1	
pow_1
logistic_loss_greaterequal

x
statefulpartitionedcall_2
exp
pow
pow_1_y	
sub_1	
pow_y
sub
statefulpartitionedcall_2_0
statefulpartitionedcall_2_1
statefulpartitionedcall_2_2
statefulpartitionedcall_2_3
statefulpartitionedcall_2_4
statefulpartitionedcall_2_5
statefulpartitionedcall_2_6
statefulpartitionedcall_2_7
statefulpartitionedcall_2_8
statefulpartitionedcall_2_9 
statefulpartitionedcall_2_10 
statefulpartitionedcall_2_11 
statefulpartitionedcall_2_12
statefulpartitionedcall_1
statefulpartitionedcall_1_0
statefulpartitionedcall_1_1
statefulpartitionedcall_1_2
statefulpartitionedcall
statefulpartitionedcall_0
statefulpartitionedcall_3
statefulpartitionedcall_4
statefulpartitionedcall_5
statefulpartitionedcall_6
statefulpartitionedcall_7
statefulpartitionedcall_8
statefulpartitionedcall_9
statefulpartitionedcall_10
statefulpartitionedcall_11
statefulpartitionedcall_12??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallx_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?::: :
??:
??:
?:?:??:+?@:@?:W : @:??: *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *
fR
__forward_encode_280052
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout	
2*
_collective_manager_ids
 *>
_output_shapes,
*:::: :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__forward_reparameterize_279322
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:??:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	?,:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *
fR
__forward_decode_278662
StatefulPartitionedCall_2?
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2*
(logistic_loss/zeros_like/shape_as_tensor?
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/Const?
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:??2
logistic_loss/zeros_like?
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/GreaterEqual?
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select?
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Neg?
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select_1?
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x_0*
T0*(
_output_shapes
:??2
logistic_loss/mul?
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:??2
logistic_loss/sub?
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:??2
logistic_loss/Log1p?
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:??2
logistic_loss?
Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         2
Sum/reduction_indicesi
SumSumlogistic_loss:z:0Sum/reduction_indices:output:0*
T0*
_output_shapes
:2
SumD
NegNegSum:output:0*
T0*
_output_shapes
:2
NegS
Log/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2
Log/xB
LogLogLog/x:output:0*
T0*
_output_shapes
: 2
LogS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yP
sub_0Sub"StatefulPartitionedCall_1:output:0sub/y:output:0*
T02
subS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/y7
pow_0Pow	sub_0:z:0pow/y:output:0*
T02
powS
Exp/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
Exp/xB
ExpExpExp/x:output:0*
T0*
_output_shapes
: 2
ExpN
mulMul	pow_0:z:0Exp:y:0*
T0*
_output_shapes

:2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
add/yU
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes

:2
add4
add_1_0AddV2add:z:0Log:y:0*
T02
add_1W
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_1/x]
mul_1Mulmul_1/x:output:0add_1_0:z:0*
T0*
_output_shapes

:2
mul_1t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesg
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_1W
Log_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1f
sub_1_0Sub"StatefulPartitionedCall_1:output:0 StatefulPartitionedCall:output:0*
T02
sub_1W
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
pow_1/y?
pow_1_0Powsub_1_0:z:0pow_1/y:output:0*
T02
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:2
Exp_1V
mul_2Mulpow_1_0:z:0	Exp_1:y:0*
T0*
_output_shapes

:2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
add_28
add_3_0AddV2	add_2:z:0	Log_1:y:0*
T02
add_3W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_3/x]
mul_3Mulmul_3/x:output:0add_3_0:z:0*
T0*
_output_shapes

:2
mul_3t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesg
Sum_2Sum	mul_3:z:0 Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_2U
add_4AddV2Neg:y:0Sum_1:output:0*
T0*
_output_shapes
:2
add_4U
sub_2Sub	add_4:z:0Sum_2:output:0*
T0*
_output_shapes
:2
sub_2X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstP
MeanMean	sub_2:z:0Const:output:0*
T0*
_output_shapes
: 2
MeanE
Neg_2NegMean:output:0*
T0*
_output_shapes
: 2
Neg_2S
IdentityIdentity	Neg_2:y:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
add_1add_1_0:z:0"
add_3add_3_0:z:0"
expExp:y:0"
exp_1	Exp_1:y:0"
identityIdentity:output:0"*
logistic_loss_explogistic_loss/Exp:y:0"<
logistic_loss_greaterequallogistic_loss/GreaterEqual:z:0"
mul_1_xmul_1/x:output:0"
mul_3_xmul_3/x:output:0"
pow	pow_0:z:0"
pow_1pow_1_0:z:0"
pow_1_ypow_1/y:output:0"
pow_ypow/y:output:0";
statefulpartitionedcall StatefulPartitionedCall:output:2"=
statefulpartitionedcall_0 StatefulPartitionedCall:output:3"?
statefulpartitionedcall_1"StatefulPartitionedCall_1:output:1"?
statefulpartitionedcall_10!StatefulPartitionedCall:output:11"?
statefulpartitionedcall_11!StatefulPartitionedCall:output:12"?
statefulpartitionedcall_12!StatefulPartitionedCall:output:13"A
statefulpartitionedcall_1_0"StatefulPartitionedCall_1:output:2"A
statefulpartitionedcall_1_1"StatefulPartitionedCall_1:output:3"A
statefulpartitionedcall_1_2"StatefulPartitionedCall_1:output:4"?
statefulpartitionedcall_2"StatefulPartitionedCall_2:output:0"A
statefulpartitionedcall_2_0"StatefulPartitionedCall_2:output:1"A
statefulpartitionedcall_2_1"StatefulPartitionedCall_2:output:2"C
statefulpartitionedcall_2_10#StatefulPartitionedCall_2:output:11"C
statefulpartitionedcall_2_11#StatefulPartitionedCall_2:output:12"C
statefulpartitionedcall_2_12#StatefulPartitionedCall_2:output:13"A
statefulpartitionedcall_2_2"StatefulPartitionedCall_2:output:3"A
statefulpartitionedcall_2_3"StatefulPartitionedCall_2:output:4"A
statefulpartitionedcall_2_4"StatefulPartitionedCall_2:output:5"A
statefulpartitionedcall_2_5"StatefulPartitionedCall_2:output:6"A
statefulpartitionedcall_2_6"StatefulPartitionedCall_2:output:7"A
statefulpartitionedcall_2_7"StatefulPartitionedCall_2:output:8"A
statefulpartitionedcall_2_8"StatefulPartitionedCall_2:output:9"B
statefulpartitionedcall_2_9#StatefulPartitionedCall_2:output:10"=
statefulpartitionedcall_3 StatefulPartitionedCall:output:4"=
statefulpartitionedcall_4 StatefulPartitionedCall:output:5"=
statefulpartitionedcall_5 StatefulPartitionedCall:output:6"=
statefulpartitionedcall_6 StatefulPartitionedCall:output:7"=
statefulpartitionedcall_7 StatefulPartitionedCall:output:8"=
statefulpartitionedcall_8 StatefulPartitionedCall:output:9">
statefulpartitionedcall_9!StatefulPartitionedCall:output:10"
sub	sub_0:z:0"
sub_1sub_1_0:z:0"
xx_0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??: : : : : : : : : : : : : : : : : : : : : : *K
backward_function_name1/__inference___backward_compute_loss_27637_2806722
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
??
?$
__inference_train_step_28232
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: >
$adam_adam_update_resourceapplyadam_m: >
$adam_adam_update_resourceapplyadam_v: 4
&adam_adam_update_1_resourceapplyadam_m: 4
&adam_adam_update_1_resourceapplyadam_v: @
&adam_adam_update_2_resourceapplyadam_m: @@
&adam_adam_update_2_resourceapplyadam_v: @4
&adam_adam_update_3_resourceapplyadam_m:@4
&adam_adam_update_3_resourceapplyadam_v:@A
&adam_adam_update_4_resourceapplyadam_m:@?A
&adam_adam_update_4_resourceapplyadam_v:@?5
&adam_adam_update_5_resourceapplyadam_m:	?5
&adam_adam_update_5_resourceapplyadam_v:	?B
&adam_adam_update_6_resourceapplyadam_m:??B
&adam_adam_update_6_resourceapplyadam_v:??5
&adam_adam_update_7_resourceapplyadam_m:	?5
&adam_adam_update_7_resourceapplyadam_v:	?:
&adam_adam_update_8_resourceapplyadam_m:
??:
&adam_adam_update_8_resourceapplyadam_v:
??4
&adam_adam_update_9_resourceapplyadam_m:4
&adam_adam_update_9_resourceapplyadam_v::
'adam_adam_update_10_resourceapplyadam_m:	?,:
'adam_adam_update_10_resourceapplyadam_v:	?,6
'adam_adam_update_11_resourceapplyadam_m:	?,6
'adam_adam_update_11_resourceapplyadam_v:	?,B
'adam_adam_update_12_resourceapplyadam_m:? B
'adam_adam_update_12_resourceapplyadam_v:? 6
'adam_adam_update_13_resourceapplyadam_m:	?6
'adam_adam_update_13_resourceapplyadam_v:	?C
'adam_adam_update_14_resourceapplyadam_m:??C
'adam_adam_update_14_resourceapplyadam_v:??6
'adam_adam_update_15_resourceapplyadam_m:	?6
'adam_adam_update_15_resourceapplyadam_v:	?B
'adam_adam_update_16_resourceapplyadam_m:@?B
'adam_adam_update_16_resourceapplyadam_v:@?5
'adam_adam_update_17_resourceapplyadam_m:@5
'adam_adam_update_17_resourceapplyadam_v:@A
'adam_adam_update_18_resourceapplyadam_m: @A
'adam_adam_update_18_resourceapplyadam_v: @5
'adam_adam_update_19_resourceapplyadam_m: 5
'adam_adam_update_19_resourceapplyadam_v: A
'adam_adam_update_20_resourceapplyadam_m: A
'adam_adam_update_20_resourceapplyadam_v: 5
'adam_adam_update_21_resourceapplyadam_m:5
'adam_adam_update_21_resourceapplyadam_v:
identity??Adam/Adam/AssignAddVariableOp?"Adam/Adam/update/ResourceApplyAdam?$Adam/Adam/update_1/ResourceApplyAdam?%Adam/Adam/update_10/ResourceApplyAdam?%Adam/Adam/update_11/ResourceApplyAdam?%Adam/Adam/update_12/ResourceApplyAdam?%Adam/Adam/update_13/ResourceApplyAdam?%Adam/Adam/update_14/ResourceApplyAdam?%Adam/Adam/update_15/ResourceApplyAdam?%Adam/Adam/update_16/ResourceApplyAdam?%Adam/Adam/update_17/ResourceApplyAdam?%Adam/Adam/update_18/ResourceApplyAdam?%Adam/Adam/update_19/ResourceApplyAdam?$Adam/Adam/update_2/ResourceApplyAdam?%Adam/Adam/update_20/ResourceApplyAdam?%Adam/Adam/update_21/ResourceApplyAdam?$Adam/Adam/update_3/ResourceApplyAdam?$Adam/Adam/update_4/ResourceApplyAdam?$Adam/Adam/update_5/ResourceApplyAdam?$Adam/Adam/update_6/ResourceApplyAdam?$Adam/Adam/update_7/ResourceApplyAdam?$Adam/Adam/update_8/ResourceApplyAdam?$Adam/Adam/update_9/ResourceApplyAdam?Adam/Cast/ReadVariableOp?Adam/Cast_2/ReadVariableOp?Adam/Cast_3/ReadVariableOp?Adam/ReadVariableOp?StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*:
Tout2
02.
*
_collective_manager_ids
 *?
_output_shapes?
?: :: :: :??:::??:??:??: :: :: ::?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	?,:::: :: :
??:
??:
?:?:??:+?@:@?:W : @:??: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *%
f R
__forward_compute_loss_280662
StatefulPartitionedCallQ
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones?
PartitionedCallPartitionedCallones:output:0 StatefulPartitionedCall:output:1 StatefulPartitionedCall:output:2 StatefulPartitionedCall:output:3 StatefulPartitionedCall:output:4 StatefulPartitionedCall:output:5 StatefulPartitionedCall:output:6 StatefulPartitionedCall:output:7 StatefulPartitionedCall:output:8 StatefulPartitionedCall:output:9!StatefulPartitionedCall:output:10!StatefulPartitionedCall:output:11!StatefulPartitionedCall:output:12!StatefulPartitionedCall:output:13!StatefulPartitionedCall:output:14!StatefulPartitionedCall:output:15!StatefulPartitionedCall:output:16!StatefulPartitionedCall:output:17!StatefulPartitionedCall:output:18!StatefulPartitionedCall:output:19!StatefulPartitionedCall:output:20!StatefulPartitionedCall:output:21!StatefulPartitionedCall:output:22!StatefulPartitionedCall:output:23!StatefulPartitionedCall:output:24!StatefulPartitionedCall:output:25!StatefulPartitionedCall:output:26!StatefulPartitionedCall:output:27!StatefulPartitionedCall:output:28!StatefulPartitionedCall:output:29!StatefulPartitionedCall:output:30!StatefulPartitionedCall:output:31!StatefulPartitionedCall:output:32!StatefulPartitionedCall:output:33!StatefulPartitionedCall:output:34!StatefulPartitionedCall:output:35!StatefulPartitionedCall:output:36!StatefulPartitionedCall:output:37!StatefulPartitionedCall:output:38!StatefulPartitionedCall:output:39!StatefulPartitionedCall:output:40!StatefulPartitionedCall:output:41!StatefulPartitionedCall:output:42!StatefulPartitionedCall:output:43!StatefulPartitionedCall:output:44!StatefulPartitionedCall:output:45*9
Tin2
02.
*#
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:??: : : @:@:@?:?:??:?:
??::	?,:?,:? :?:??:?:@?:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *8
f3R1
/__inference___backward_compute_loss_27637_280672
PartitionedCall?
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast/ReadVariableOp?
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	2
Adam/ReadVariableOp?

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R2

Adam/add/y?
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 2

Adam/add?
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Adam/Cast_1?
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_2/ReadVariableOp?
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_1?
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_3/ReadVariableOp?
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_2?
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow?

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow_1?

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2

Adam/sub/x?
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub{
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
	Adam/Sqrt?
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Adam/sub_1/x?

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_1?
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/truediv?
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/mul?

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *???32

Adam/Const?
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Adam/sub_2/x?

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_2?
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Adam/sub_3/x?

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_3?
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamunknown$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:1^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27591*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdam?
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam	unknown_0&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27593*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdam?
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam	unknown_1&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:3^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27595*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdam?
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam	unknown_2&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:4^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27597*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdam?
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam	unknown_3&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:5^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27599*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_4/ResourceApplyAdam?
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam	unknown_4&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:6^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27601*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_5/ResourceApplyAdam?
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam	unknown_5&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:7^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27603*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_6/ResourceApplyAdam?
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam	unknown_6&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:8^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27605*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_7/ResourceApplyAdam?
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam	unknown_7&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:9^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27607*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_8/ResourceApplyAdam?
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam	unknown_8&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:10^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27609*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_9/ResourceApplyAdam?
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam	unknown_9'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:11^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27611*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_10/ResourceApplyAdam?
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam
unknown_10'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:12^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27613*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_11/ResourceApplyAdam?
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam
unknown_11'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:13^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27615*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_12/ResourceApplyAdam?
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam
unknown_12'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:14^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27617*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_13/ResourceApplyAdam?
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam
unknown_13'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:15^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27619*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_14/ResourceApplyAdam?
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam
unknown_14'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:16^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27621*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_15/ResourceApplyAdam?
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam
unknown_15'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:17^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27623*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_16/ResourceApplyAdam?
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam
unknown_16'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:18^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27625*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_17/ResourceApplyAdam?
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdam
unknown_17'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:19^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27627*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_18/ResourceApplyAdam?
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdam
unknown_18'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:20^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27629*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_19/ResourceApplyAdam?
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam
unknown_19'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:21^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27631*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_20/ResourceApplyAdam?
%Adam/Adam/update_21/ResourceApplyAdamResourceApplyAdam
unknown_20'adam_adam_update_21_resourceapplyadam_m'adam_adam_update_21_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:22^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@27633*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_21/ResourceApplyAdam?
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam&^Adam/Adam/update_21/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 2
Adam/Adam/group_deps{
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
Adam/Adam/Const?
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	2
Adam/Adam/AssignAddVariableOpj
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam&^Adam/Adam/update_21/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2N
%Adam/Adam/update_18/ResourceApplyAdam%Adam/Adam/update_18/ResourceApplyAdam2N
%Adam/Adam/update_19/ResourceApplyAdam%Adam/Adam/update_19/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2N
%Adam/Adam/update_20/ResourceApplyAdam%Adam/Adam/update_20/ResourceApplyAdam2N
%Adam/Adam/update_21/ResourceApplyAdam%Adam/Adam/update_21/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:??

_user_specified_namex:

_class

loc:@27591:

_class

loc:@27591:

_class

loc:@27593:

_class

loc:@27593:

_class

loc:@27595: 

_class

loc:@27595:!

_class

loc:@27597:"

_class

loc:@27597:#

_class

loc:@27599:$

_class

loc:@27599:%

_class

loc:@27601:&

_class

loc:@27601:'

_class

loc:@27603:(

_class

loc:@27603:)

_class

loc:@27605:*

_class

loc:@27605:+

_class

loc:@27607:,

_class

loc:@27607:-

_class

loc:@27609:.

_class

loc:@27609:/

_class

loc:@27611:0

_class

loc:@27611:1

_class

loc:@27613:2

_class

loc:@27613:3

_class

loc:@27615:4

_class

loc:@27615:5

_class

loc:@27617:6

_class

loc:@27617:7

_class

loc:@27619:8

_class

loc:@27619:9

_class

loc:@27621::

_class

loc:@27621:;

_class

loc:@27623:<

_class

loc:@27623:=

_class

loc:@27625:>

_class

loc:@27625:?

_class

loc:@27627:@

_class

loc:@27627:A

_class

loc:@27629:B

_class

loc:@27629:C

_class

loc:@27631:D

_class

loc:@27631:E

_class

loc:@27633:F

_class

loc:@27633
?!
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24670

inputs)
conv2d_52_24589: 
conv2d_52_24591: )
conv2d_53_24606: @
conv2d_53_24608:@*
conv2d_54_24623:@?
conv2d_54_24625:	?+
conv2d_55_24640:??
conv2d_55_24642:	?"
dense_26_24664:
??
dense_26_24666:
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_52_24589conv2d_52_24591*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_245882#
!conv2d_52/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_24606conv2d_53_24608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_246052#
!conv2d_53/StatefulPartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_54_24623conv2d_54_24625*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_246222#
!conv2d_54/StatefulPartitionedCall?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_24640conv2d_55_24642*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_246392#
!conv2d_55/StatefulPartitionedCall?
flatten_13/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_246512
flatten_13/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_26_24664dense_26_24666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_246632"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_26_layer_call_fn_24854
input_27!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_27unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_248062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_27
?@
?
__inference_compute_loss_27590
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
::*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_267822
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_268202
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_269412
StatefulPartitionedCall_2?
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2*
(logistic_loss/zeros_like/shape_as_tensor?
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/Const?
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:??2
logistic_loss/zeros_like?
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/GreaterEqual?
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select?
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Neg?
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select_1?
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:??2
logistic_loss/mul?
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:??2
logistic_loss/sub?
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:??2
logistic_loss/Log1p?
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:??2
logistic_loss?
Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         2
Sum/reduction_indicesi
SumSumlogistic_loss:z:0Sum/reduction_indices:output:0*
T0*
_output_shapes
:2
SumD
NegNegSum:output:0*
T0*
_output_shapes
:2
NegS
Log/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2
Log/xB
LogLogLog/x:output:0*
T0*
_output_shapes
: 2
LogS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yn
subSub"StatefulPartitionedCall_1:output:0sub/y:output:0*
T0*
_output_shapes

:2
subS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/yS
powPowsub:z:0pow/y:output:0*
T0*
_output_shapes

:2
powS
Exp/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
Exp/xB
ExpExpExp/x:output:0*
T0*
_output_shapes
: 2
ExpL
mulMulpow:z:0Exp:y:0*
T0*
_output_shapes

:2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
add/yU
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes

:2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:2
add_1W
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_1/x[
mul_1Mulmul_1/x:output:0	add_1:z:0*
T0*
_output_shapes

:2
mul_1t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesg
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_1W
Log_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1?
sub_1Sub"StatefulPartitionedCall_1:output:0 StatefulPartitionedCall:output:0*
T0*
_output_shapes

:2
sub_1W
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
pow_1/y[
pow_1Pow	sub_1:z:0pow_1/y:output:0*
T0*
_output_shapes

:2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:2
add_3W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_3/x[
mul_3Mulmul_3/x:output:0	add_3:z:0*
T0*
_output_shapes

:2
mul_3t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesg
Sum_2Sum	mul_3:z:0 Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_2U
add_4AddV2Neg:y:0Sum_1:output:0*
T0*
_output_shapes
:2
add_4U
sub_2Sub	add_4:z:0Sum_2:output:0*
T0*
_output_shapes
:2
sub_2X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstP
MeanMean	sub_2:z:0Const:output:0*
T0*
_output_shapes
: 2
MeanE
Neg_2NegMean:output:0*
T0*
_output_shapes
: 2
Neg_2S
IdentityIdentity	Neg_2:y:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
?&
?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_24952

inputsC
(conv2d_transpose_readvariableop_resource:? .
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
F
*__inference_reshape_13_layer_call_fn_28795

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_253902
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????,:P L
(
_output_shapes
:??????????,
 
_user_specified_nameinputs
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_24588

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????W 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_65_layer_call_fn_28818

inputs"
unknown:? 
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_249522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_69_layer_call_fn_29122

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_253032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_28540

inputs:
'dense_27_matmul_readvariableop_resource:	?,7
(dense_27_biasadd_readvariableop_resource:	?,W
<conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? B
3conv2d_transpose_65_biasadd_readvariableop_resource:	?X
<conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_66_biasadd_readvariableop_resource:	?W
<conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_67_biasadd_readvariableop_resource:@V
<conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_68_biasadd_readvariableop_resource: V
<conv2d_transpose_69_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_69_biasadd_readvariableop_resource:
identity??*conv2d_transpose_65/BiasAdd/ReadVariableOp?3conv2d_transpose_65/conv2d_transpose/ReadVariableOp?*conv2d_transpose_66/BiasAdd/ReadVariableOp?3conv2d_transpose_66/conv2d_transpose/ReadVariableOp?*conv2d_transpose_67/BiasAdd/ReadVariableOp?3conv2d_transpose_67/conv2d_transpose/ReadVariableOp?*conv2d_transpose_68/BiasAdd/ReadVariableOp?3conv2d_transpose_68/conv2d_transpose/ReadVariableOp?*conv2d_transpose_69/BiasAdd/ReadVariableOp?3conv2d_transpose_69/conv2d_transpose/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMulinputs&dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_27/BiasAddt
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_27/Reluo
reshape_13/ShapeShapedense_27/Relu:activations:0*
T0*
_output_shapes
:2
reshape_13/Shape?
reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_13/strided_slice/stack?
 reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_13/strided_slice/stack_1?
 reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_13/strided_slice/stack_2?
reshape_13/strided_sliceStridedSlicereshape_13/Shape:output:0'reshape_13/strided_slice/stack:output:0)reshape_13/strided_slice/stack_1:output:0)reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_13/strided_slicez
reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_13/Reshape/shape/1z
reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_13/Reshape/shape/2z
reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_13/Reshape/shape/3?
reshape_13/Reshape/shapePack!reshape_13/strided_slice:output:0#reshape_13/Reshape/shape/1:output:0#reshape_13/Reshape/shape/2:output:0#reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_13/Reshape/shape?
reshape_13/ReshapeReshapedense_27/Relu:activations:0!reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape_13/Reshape?
conv2d_transpose_65/ShapeShapereshape_13/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_65/Shape?
'conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_65/strided_slice/stack?
)conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_65/strided_slice/stack_1?
)conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_65/strided_slice/stack_2?
!conv2d_transpose_65/strided_sliceStridedSlice"conv2d_transpose_65/Shape:output:00conv2d_transpose_65/strided_slice/stack:output:02conv2d_transpose_65/strided_slice/stack_1:output:02conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_65/strided_slice|
conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_65/stack/1|
conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_65/stack/2}
conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_65/stack/3?
conv2d_transpose_65/stackPack*conv2d_transpose_65/strided_slice:output:0$conv2d_transpose_65/stack/1:output:0$conv2d_transpose_65/stack/2:output:0$conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_65/stack?
)conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_65/strided_slice_1/stack?
+conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_65/strided_slice_1/stack_1?
+conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_65/strided_slice_1/stack_2?
#conv2d_transpose_65/strided_slice_1StridedSlice"conv2d_transpose_65/stack:output:02conv2d_transpose_65/strided_slice_1/stack:output:04conv2d_transpose_65/strided_slice_1/stack_1:output:04conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_65/strided_slice_1?
3conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype025
3conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_65/conv2d_transposeConv2DBackpropInput"conv2d_transpose_65/stack:output:0;conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0reshape_13/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_65/conv2d_transpose?
*conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_65/BiasAdd/ReadVariableOp?
conv2d_transpose_65/BiasAddBiasAdd-conv2d_transpose_65/conv2d_transpose:output:02conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_65/BiasAdd?
conv2d_transpose_65/ReluRelu$conv2d_transpose_65/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_65/Relu?
conv2d_transpose_66/ShapeShape&conv2d_transpose_65/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_66/Shape?
'conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_66/strided_slice/stack?
)conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_66/strided_slice/stack_1?
)conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_66/strided_slice/stack_2?
!conv2d_transpose_66/strided_sliceStridedSlice"conv2d_transpose_66/Shape:output:00conv2d_transpose_66/strided_slice/stack:output:02conv2d_transpose_66/strided_slice/stack_1:output:02conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_66/strided_slice|
conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_66/stack/1|
conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_66/stack/2}
conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_66/stack/3?
conv2d_transpose_66/stackPack*conv2d_transpose_66/strided_slice:output:0$conv2d_transpose_66/stack/1:output:0$conv2d_transpose_66/stack/2:output:0$conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_66/stack?
)conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_66/strided_slice_1/stack?
+conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_66/strided_slice_1/stack_1?
+conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_66/strided_slice_1/stack_2?
#conv2d_transpose_66/strided_slice_1StridedSlice"conv2d_transpose_66/stack:output:02conv2d_transpose_66/strided_slice_1/stack:output:04conv2d_transpose_66/strided_slice_1/stack_1:output:04conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_66/strided_slice_1?
3conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_66/conv2d_transposeConv2DBackpropInput"conv2d_transpose_66/stack:output:0;conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_65/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2&
$conv2d_transpose_66/conv2d_transpose?
*conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_66/BiasAdd/ReadVariableOp?
conv2d_transpose_66/BiasAddBiasAdd-conv2d_transpose_66/conv2d_transpose:output:02conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_66/BiasAdd?
conv2d_transpose_66/ReluRelu$conv2d_transpose_66/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_66/Relu?
conv2d_transpose_67/ShapeShape&conv2d_transpose_66/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_67/Shape?
'conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_67/strided_slice/stack?
)conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_67/strided_slice/stack_1?
)conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_67/strided_slice/stack_2?
!conv2d_transpose_67/strided_sliceStridedSlice"conv2d_transpose_67/Shape:output:00conv2d_transpose_67/strided_slice/stack:output:02conv2d_transpose_67/strided_slice/stack_1:output:02conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_67/strided_slice|
conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_67/stack/1}
conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_67/stack/2|
conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_67/stack/3?
conv2d_transpose_67/stackPack*conv2d_transpose_67/strided_slice:output:0$conv2d_transpose_67/stack/1:output:0$conv2d_transpose_67/stack/2:output:0$conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_67/stack?
)conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_67/strided_slice_1/stack?
+conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_67/strided_slice_1/stack_1?
+conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_67/strided_slice_1/stack_2?
#conv2d_transpose_67/strided_slice_1StridedSlice"conv2d_transpose_67/stack:output:02conv2d_transpose_67/strided_slice_1/stack:output:04conv2d_transpose_67/strided_slice_1/stack_1:output:04conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_67/strided_slice_1?
3conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_67/conv2d_transposeConv2DBackpropInput"conv2d_transpose_67/stack:output:0;conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_66/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2&
$conv2d_transpose_67/conv2d_transpose?
*conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_67/BiasAdd/ReadVariableOp?
conv2d_transpose_67/BiasAddBiasAdd-conv2d_transpose_67/conv2d_transpose:output:02conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_67/BiasAdd?
conv2d_transpose_67/ReluRelu$conv2d_transpose_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_67/Relu?
conv2d_transpose_68/ShapeShape&conv2d_transpose_67/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_68/Shape?
'conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_68/strided_slice/stack?
)conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_68/strided_slice/stack_1?
)conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_68/strided_slice/stack_2?
!conv2d_transpose_68/strided_sliceStridedSlice"conv2d_transpose_68/Shape:output:00conv2d_transpose_68/strided_slice/stack:output:02conv2d_transpose_68/strided_slice/stack_1:output:02conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_68/strided_slice}
conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_68/stack/1}
conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_68/stack/2|
conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_68/stack/3?
conv2d_transpose_68/stackPack*conv2d_transpose_68/strided_slice:output:0$conv2d_transpose_68/stack/1:output:0$conv2d_transpose_68/stack/2:output:0$conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_68/stack?
)conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_68/strided_slice_1/stack?
+conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_68/strided_slice_1/stack_1?
+conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_68/strided_slice_1/stack_2?
#conv2d_transpose_68/strided_slice_1StridedSlice"conv2d_transpose_68/stack:output:02conv2d_transpose_68/strided_slice_1/stack:output:04conv2d_transpose_68/strided_slice_1/stack_1:output:04conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_68/strided_slice_1?
3conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_68/conv2d_transposeConv2DBackpropInput"conv2d_transpose_68/stack:output:0;conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_67/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2&
$conv2d_transpose_68/conv2d_transpose?
*conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_68/BiasAdd/ReadVariableOp?
conv2d_transpose_68/BiasAddBiasAdd-conv2d_transpose_68/conv2d_transpose:output:02conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_68/BiasAdd?
conv2d_transpose_68/ReluRelu$conv2d_transpose_68/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_68/Relu?
conv2d_transpose_69/ShapeShape&conv2d_transpose_68/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_69/Shape?
'conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_69/strided_slice/stack?
)conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_69/strided_slice/stack_1?
)conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_69/strided_slice/stack_2?
!conv2d_transpose_69/strided_sliceStridedSlice"conv2d_transpose_69/Shape:output:00conv2d_transpose_69/strided_slice/stack:output:02conv2d_transpose_69/strided_slice/stack_1:output:02conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_69/strided_slice}
conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_69/stack/1}
conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_69/stack/2|
conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_69/stack/3?
conv2d_transpose_69/stackPack*conv2d_transpose_69/strided_slice:output:0$conv2d_transpose_69/stack/1:output:0$conv2d_transpose_69/stack/2:output:0$conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_69/stack?
)conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_69/strided_slice_1/stack?
+conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_69/strided_slice_1/stack_1?
+conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_69/strided_slice_1/stack_2?
#conv2d_transpose_69/strided_slice_1StridedSlice"conv2d_transpose_69/stack:output:02conv2d_transpose_69/strided_slice_1/stack:output:04conv2d_transpose_69/strided_slice_1/stack_1:output:04conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_69/strided_slice_1?
3conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_69/conv2d_transposeConv2DBackpropInput"conv2d_transpose_69/stack:output:0;conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_68/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2&
$conv2d_transpose_69/conv2d_transpose?
*conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_69/BiasAdd/ReadVariableOp?
conv2d_transpose_69/BiasAddBiasAdd-conv2d_transpose_69/conv2d_transpose:output:02conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_69/BiasAdd?
IdentityIdentity$conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp+^conv2d_transpose_65/BiasAdd/ReadVariableOp4^conv2d_transpose_65/conv2d_transpose/ReadVariableOp+^conv2d_transpose_66/BiasAdd/ReadVariableOp4^conv2d_transpose_66/conv2d_transpose/ReadVariableOp+^conv2d_transpose_67/BiasAdd/ReadVariableOp4^conv2d_transpose_67/conv2d_transpose/ReadVariableOp+^conv2d_transpose_68/BiasAdd/ReadVariableOp4^conv2d_transpose_68/conv2d_transpose/ReadVariableOp+^conv2d_transpose_69/BiasAdd/ReadVariableOp4^conv2d_transpose_69/conv2d_transpose/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2X
*conv2d_transpose_65/BiasAdd/ReadVariableOp*conv2d_transpose_65/BiasAdd/ReadVariableOp2j
3conv2d_transpose_65/conv2d_transpose/ReadVariableOp3conv2d_transpose_65/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_66/BiasAdd/ReadVariableOp*conv2d_transpose_66/BiasAdd/ReadVariableOp2j
3conv2d_transpose_66/conv2d_transpose/ReadVariableOp3conv2d_transpose_66/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_67/BiasAdd/ReadVariableOp*conv2d_transpose_67/BiasAdd/ReadVariableOp2j
3conv2d_transpose_67/conv2d_transpose/ReadVariableOp3conv2d_transpose_67/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_68/BiasAdd/ReadVariableOp*conv2d_transpose_68/BiasAdd/ReadVariableOp2j
3conv2d_transpose_68/conv2d_transpose/ReadVariableOp3conv2d_transpose_68/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_69/BiasAdd/ReadVariableOp*conv2d_transpose_69/BiasAdd/ReadVariableOp2j
3conv2d_transpose_69/conv2d_transpose/ReadVariableOp3conv2d_transpose_69/conv2d_transpose/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?%
?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29164

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28861

inputsC
(conv2d_transpose_readvariableop_resource:? .
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,????????????????????????????2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+??????????????????????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
a
E__inference_flatten_13_layer_call_and_return_conditional_losses_24651

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_66_layer_call_fn_28903

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????,@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_254442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????,@?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :????????? ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:????????? ?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_28740

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????
?2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_call_24519
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29037

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????X?@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????,@?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????,@?
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_25415

inputsC
(conv2d_transpose_readvariableop_resource:? .
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:????????? ?2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_cvae_13_layer_call_fn_26414
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_cvae_13_layer_call_and_return_conditional_losses_258752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:???????????

_user_specified_namex
?
a
E__inference_flatten_13_layer_call_and_return_conditional_losses_28751

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_68_layer_call_fn_29046

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_252162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
__inference_decode_27366
zH
5sequential_27_dense_27_matmul_readvariableop_resource:	?,E
6sequential_27_dense_27_biasadd_readvariableop_resource:	?,e
Jsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? P
Asequential_27_conv2d_transpose_65_biasadd_readvariableop_resource:	?f
Jsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??P
Asequential_27_conv2d_transpose_66_biasadd_readvariableop_resource:	?e
Jsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?O
Asequential_27_conv2d_transpose_67_biasadd_readvariableop_resource:@d
Jsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @O
Asequential_27_conv2d_transpose_68_biasadd_readvariableop_resource: d
Jsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource: O
Asequential_27_conv2d_transpose_69_biasadd_readvariableop_resource:
identity??8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?-sequential_27/dense_27/BiasAdd/ReadVariableOp?,sequential_27/dense_27/MatMul/ReadVariableOp?
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_27/dense_27/MatMul/ReadVariableOp?
sequential_27/dense_27/MatMulMatMulz4sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_27/dense_27/MatMul?
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_27/dense_27/BiasAdd/ReadVariableOp?
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2 
sequential_27/dense_27/BiasAdd?
sequential_27/dense_27/ReluRelu'sequential_27/dense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_27/dense_27/Relu?
sequential_27/reshape_13/ShapeShape)sequential_27/dense_27/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_27/reshape_13/Shape?
,sequential_27/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_13/strided_slice/stack?
.sequential_27/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_1?
.sequential_27/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_2?
&sequential_27/reshape_13/strided_sliceStridedSlice'sequential_27/reshape_13/Shape:output:05sequential_27/reshape_13/strided_slice/stack:output:07sequential_27/reshape_13/strided_slice/stack_1:output:07sequential_27/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_13/strided_slice?
(sequential_27/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/1?
(sequential_27/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/2?
(sequential_27/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/reshape_13/Reshape/shape/3?
&sequential_27/reshape_13/Reshape/shapePack/sequential_27/reshape_13/strided_slice:output:01sequential_27/reshape_13/Reshape/shape/1:output:01sequential_27/reshape_13/Reshape/shape/2:output:01sequential_27/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_13/Reshape/shape?
 sequential_27/reshape_13/ReshapeReshape)sequential_27/dense_27/Relu:activations:0/sequential_27/reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2"
 sequential_27/reshape_13/Reshape?
'sequential_27/conv2d_transpose_65/ShapeShape)sequential_27/reshape_13/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/Shape?
5sequential_27/conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_65/strided_slice/stack?
7sequential_27/conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_1?
7sequential_27/conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_2?
/sequential_27/conv2d_transpose_65/strided_sliceStridedSlice0sequential_27/conv2d_transpose_65/Shape:output:0>sequential_27/conv2d_transpose_65/strided_slice/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_65/strided_slice?
)sequential_27/conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_65/stack/1?
)sequential_27/conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_65/stack/2?
)sequential_27/conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_65/stack/3?
'sequential_27/conv2d_transpose_65/stackPack8sequential_27/conv2d_transpose_65/strided_slice:output:02sequential_27/conv2d_transpose_65/stack/1:output:02sequential_27/conv2d_transpose_65/stack/2:output:02sequential_27/conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/stack?
7sequential_27/conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_65/strided_slice_1/stack?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_65/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_65/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_65/strided_slice_1?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_65/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_65/stack:output:0Isequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0)sequential_27/reshape_13/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_65/conv2d_transpose?
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_65/BiasAddBiasAdd;sequential_27/conv2d_transpose_65/conv2d_transpose:output:0@sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2+
)sequential_27/conv2d_transpose_65/BiasAdd?
&sequential_27/conv2d_transpose_65/ReluRelu2sequential_27/conv2d_transpose_65/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2(
&sequential_27/conv2d_transpose_65/Relu?
'sequential_27/conv2d_transpose_66/ShapeShape4sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/Shape?
5sequential_27/conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_66/strided_slice/stack?
7sequential_27/conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_1?
7sequential_27/conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_2?
/sequential_27/conv2d_transpose_66/strided_sliceStridedSlice0sequential_27/conv2d_transpose_66/Shape:output:0>sequential_27/conv2d_transpose_66/strided_slice/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_66/strided_slice?
)sequential_27/conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_27/conv2d_transpose_66/stack/1?
)sequential_27/conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_66/stack/2?
)sequential_27/conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_66/stack/3?
'sequential_27/conv2d_transpose_66/stackPack8sequential_27/conv2d_transpose_66/strided_slice:output:02sequential_27/conv2d_transpose_66/stack/1:output:02sequential_27/conv2d_transpose_66/stack/2:output:02sequential_27/conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/stack?
7sequential_27/conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_66/strided_slice_1/stack?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_66/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_66/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_66/strided_slice_1?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_66/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_66/stack:output:0Isequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_66/conv2d_transpose?
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_66/BiasAddBiasAdd;sequential_27/conv2d_transpose_66/conv2d_transpose:output:0@sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2+
)sequential_27/conv2d_transpose_66/BiasAdd?
&sequential_27/conv2d_transpose_66/ReluRelu2sequential_27/conv2d_transpose_66/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2(
&sequential_27/conv2d_transpose_66/Relu?
'sequential_27/conv2d_transpose_67/ShapeShape4sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/Shape?
5sequential_27/conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_67/strided_slice/stack?
7sequential_27/conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_1?
7sequential_27/conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_2?
/sequential_27/conv2d_transpose_67/strided_sliceStridedSlice0sequential_27/conv2d_transpose_67/Shape:output:0>sequential_27/conv2d_transpose_67/strided_slice/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_67/strided_slice?
)sequential_27/conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_27/conv2d_transpose_67/stack/1?
)sequential_27/conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_67/stack/2?
)sequential_27/conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_67/stack/3?
'sequential_27/conv2d_transpose_67/stackPack8sequential_27/conv2d_transpose_67/strided_slice:output:02sequential_27/conv2d_transpose_67/stack/1:output:02sequential_27/conv2d_transpose_67/stack/2:output:02sequential_27/conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/stack?
7sequential_27/conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_67/strided_slice_1/stack?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_67/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_67/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_67/strided_slice_1?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_67/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_67/stack:output:0Isequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_67/conv2d_transpose?
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_67/BiasAddBiasAdd;sequential_27/conv2d_transpose_67/conv2d_transpose:output:0@sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2+
)sequential_27/conv2d_transpose_67/BiasAdd?
&sequential_27/conv2d_transpose_67/ReluRelu2sequential_27/conv2d_transpose_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2(
&sequential_27/conv2d_transpose_67/Relu?
'sequential_27/conv2d_transpose_68/ShapeShape4sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/Shape?
5sequential_27/conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_68/strided_slice/stack?
7sequential_27/conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_1?
7sequential_27/conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_2?
/sequential_27/conv2d_transpose_68/strided_sliceStridedSlice0sequential_27/conv2d_transpose_68/Shape:output:0>sequential_27/conv2d_transpose_68/strided_slice/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_68/strided_slice?
)sequential_27/conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/1?
)sequential_27/conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/2?
)sequential_27/conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_68/stack/3?
'sequential_27/conv2d_transpose_68/stackPack8sequential_27/conv2d_transpose_68/strided_slice:output:02sequential_27/conv2d_transpose_68/stack/1:output:02sequential_27/conv2d_transpose_68/stack/2:output:02sequential_27/conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/stack?
7sequential_27/conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_68/strided_slice_1/stack?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_68/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_68/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_68/strided_slice_1?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_68/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_68/stack:output:0Isequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_68/conv2d_transpose?
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_68/BiasAddBiasAdd;sequential_27/conv2d_transpose_68/conv2d_transpose:output:0@sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2+
)sequential_27/conv2d_transpose_68/BiasAdd?
&sequential_27/conv2d_transpose_68/ReluRelu2sequential_27/conv2d_transpose_68/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2(
&sequential_27/conv2d_transpose_68/Relu?
'sequential_27/conv2d_transpose_69/ShapeShape4sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/Shape?
5sequential_27/conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_69/strided_slice/stack?
7sequential_27/conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_1?
7sequential_27/conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_2?
/sequential_27/conv2d_transpose_69/strided_sliceStridedSlice0sequential_27/conv2d_transpose_69/Shape:output:0>sequential_27/conv2d_transpose_69/strided_slice/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_69/strided_slice?
)sequential_27/conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/1?
)sequential_27/conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/2?
)sequential_27/conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_69/stack/3?
'sequential_27/conv2d_transpose_69/stackPack8sequential_27/conv2d_transpose_69/strided_slice:output:02sequential_27/conv2d_transpose_69/stack/1:output:02sequential_27/conv2d_transpose_69/stack/2:output:02sequential_27/conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/stack?
7sequential_27/conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_69/strided_slice_1/stack?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_69/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_69/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_69/strided_slice_1?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_69/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_69/stack:output:0Isequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_69/conv2d_transpose?
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_69/BiasAddBiasAdd;sequential_27/conv2d_transpose_69/conv2d_transpose:output:0@sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2+
)sequential_27/conv2d_transpose_69/BiasAdd?
IdentityIdentity2sequential_27/conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp9^sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2t
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namez
?
?
)__inference_conv2d_53_layer_call_fn_28689

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_246052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????+?@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????W : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????W 
 
_user_specified_nameinputs
?j
?

)__inference___backward_encode_27946_28006
placeholder
placeholder_1/
+gradients_split_grad_concat_split_split_dimd
`gradients_sequential_26_dense_26_matmul_grad_matmul_sequential_26_dense_26_matmul_readvariableopZ
Vgradients_sequential_26_dense_26_matmul_grad_matmul_1_sequential_26_flatten_13_reshapeU
Qgradients_sequential_26_conv2d_55_relu_grad_relugrad_sequential_26_conv2d_55_reluU
Qgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_54_reluf
bgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_55_conv2d_readvariableopU
Qgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_53_reluf
bgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_54_conv2d_readvariableopU
Qgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_52_reluf
bgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_53_conv2d_readvariableop:
6gradients_sequential_26_conv2d_52_conv2d_grad_shapen_xf
bgradients_sequential_26_conv2d_52_conv2d_grad_shapen_sequential_26_conv2d_52_conv2d_readvariableop
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10l
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:2
gradients/grad_ys_0n
gradients/grad_ys_1Identityplaceholder_1*
T0*
_output_shapes

:2
gradients/grad_ys_1?
gradients/split_grad/concatConcatV2gradients/grad_ys_0:output:0gradients/grad_ys_1:output:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_grad/concat?
9gradients/sequential_26/dense_26/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:2;
9gradients/sequential_26/dense_26/BiasAdd_grad/BiasAddGrad?
3gradients/sequential_26/dense_26/MatMul_grad/MatMulMatMul$gradients/split_grad/concat:output:0`gradients_sequential_26_dense_26_matmul_grad_matmul_sequential_26_dense_26_matmul_readvariableop*
T0* 
_output_shapes
:
??*
transpose_b(25
3gradients/sequential_26/dense_26/MatMul_grad/MatMul?
5gradients/sequential_26/dense_26/MatMul_grad/MatMul_1MatMulVgradients_sequential_26_dense_26_matmul_grad_matmul_1_sequential_26_flatten_13_reshape$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??*
transpose_a(27
5gradients/sequential_26/dense_26/MatMul_grad/MatMul_1?
5gradients/sequential_26/flatten_13/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   
         27
5gradients/sequential_26/flatten_13/Reshape_grad/Shape?
7gradients/sequential_26/flatten_13/Reshape_grad/ReshapeReshape=gradients/sequential_26/dense_26/MatMul_grad/MatMul:product:0>gradients/sequential_26/flatten_13/Reshape_grad/Shape:output:0*
T0*'
_output_shapes
:
?29
7gradients/sequential_26/flatten_13/Reshape_grad/Reshape?
4gradients/sequential_26/conv2d_55/Relu_grad/ReluGradReluGrad@gradients/sequential_26/flatten_13/Reshape_grad/Reshape:output:0Qgradients_sequential_26_conv2d_55_relu_grad_relugrad_sequential_26_conv2d_55_relu*
T0*'
_output_shapes
:
?26
4gradients/sequential_26/conv2d_55/Relu_grad/ReluGrad?
:gradients/sequential_26/conv2d_55/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_26/conv2d_55/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2<
:gradients/sequential_26/conv2d_55/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_26/conv2d_55/Conv2D_grad/ShapeNShapeNQgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_54_relubgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_55_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_26/conv2d_55/Conv2D_grad/ShapeN?
Agradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_26/conv2d_55/Conv2D_grad/ShapeN:output:0bgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_55_conv2d_readvariableop@gradients/sequential_26/conv2d_55/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2C
Agradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_54_relu=gradients/sequential_26/conv2d_55/Conv2D_grad/ShapeN:output:1@gradients/sequential_26/conv2d_55/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2D
Bgradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_26/conv2d_54/Relu_grad/ReluGradReluGradJgradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_26_conv2d_55_conv2d_grad_shapen_sequential_26_conv2d_54_relu*
T0*'
_output_shapes
:?26
4gradients/sequential_26/conv2d_54/Relu_grad/ReluGrad?
:gradients/sequential_26/conv2d_54/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_26/conv2d_54/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2<
:gradients/sequential_26/conv2d_54/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_26/conv2d_54/Conv2D_grad/ShapeNShapeNQgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_53_relubgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_54_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_26/conv2d_54/Conv2D_grad/ShapeN?
Agradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_26/conv2d_54/Conv2D_grad/ShapeN:output:0bgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_54_conv2d_readvariableop@gradients/sequential_26/conv2d_54/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2C
Agradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_53_relu=gradients/sequential_26/conv2d_54/Conv2D_grad/ShapeN:output:1@gradients/sequential_26/conv2d_54/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2D
Bgradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_26/conv2d_53/Relu_grad/ReluGradReluGradJgradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_26_conv2d_54_conv2d_grad_shapen_sequential_26_conv2d_53_relu*
T0*&
_output_shapes
:+?@26
4gradients/sequential_26/conv2d_53/Relu_grad/ReluGrad?
:gradients/sequential_26/conv2d_53/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_26/conv2d_53/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2<
:gradients/sequential_26/conv2d_53/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_26/conv2d_53/Conv2D_grad/ShapeNShapeNQgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_52_relubgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_53_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_26/conv2d_53/Conv2D_grad/ShapeN?
Agradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_26/conv2d_53/Conv2D_grad/ShapeN:output:0bgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_53_conv2d_readvariableop@gradients/sequential_26/conv2d_53/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2C
Agradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_52_relu=gradients/sequential_26/conv2d_53/Conv2D_grad/ShapeN:output:1@gradients/sequential_26/conv2d_53/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: @*
paddingVALID*
strides
2D
Bgradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_26/conv2d_52/Relu_grad/ReluGradReluGradJgradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_26_conv2d_53_conv2d_grad_shapen_sequential_26_conv2d_52_relu*
T0*&
_output_shapes
:W 26
4gradients/sequential_26/conv2d_52/Relu_grad/ReluGrad?
:gradients/sequential_26/conv2d_52/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_26/conv2d_52/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2<
:gradients/sequential_26/conv2d_52/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_26/conv2d_52/Conv2D_grad/ShapeNShapeN6gradients_sequential_26_conv2d_52_conv2d_grad_shapen_xbgradients_sequential_26_conv2d_52_conv2d_grad_shapen_sequential_26_conv2d_52_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_26/conv2d_52/Conv2D_grad/ShapeN?
Agradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_26/conv2d_52/Conv2D_grad/ShapeN:output:0bgradients_sequential_26_conv2d_52_conv2d_grad_shapen_sequential_26_conv2d_52_conv2d_readvariableop@gradients/sequential_26/conv2d_52/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2C
Agradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6gradients_sequential_26_conv2d_52_conv2d_grad_shapen_x=gradients/sequential_26/conv2d_52/Conv2D_grad/ShapeN:output:1@gradients/sequential_26/conv2d_52/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2D
Bgradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropFilter?
IdentityIdentityJgradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:??2

Identity?

Identity_1IdentityKgradients/sequential_26/conv2d_52/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2

Identity_1?

Identity_2IdentityCgradients/sequential_26/conv2d_52/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2

Identity_2?

Identity_3IdentityKgradients/sequential_26/conv2d_53/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_3?

Identity_4IdentityCgradients/sequential_26/conv2d_53/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_4?

Identity_5IdentityKgradients/sequential_26/conv2d_54/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_5?

Identity_6IdentityCgradients/sequential_26/conv2d_54/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7IdentityKgradients/sequential_26/conv2d_55/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_7?

Identity_8IdentityCgradients/sequential_26/conv2d_55/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_8?

Identity_9Identity?gradients/sequential_26/dense_26/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
??2

Identity_9?
Identity_10IdentityBgradients/sequential_26/dense_26/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:2
Identity_10"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?::: :
??:
??:
?:?:??:+?@:@?:W : @:??: *1
forward_function_name__forward_encode_28005:$  

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:-)
'
_output_shapes
:
?:-)
'
_output_shapes
:?:.*
(
_output_shapes
:??:,(
&
_output_shapes
:+?@:-	)
'
_output_shapes
:@?:,
(
&
_output_shapes
:W :,(
&
_output_shapes
: @:.*
(
_output_shapes
:??:,(
&
_output_shapes
: 
?+
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_25691

inputs!
dense_27_25659:	?,
dense_27_25661:	?,4
conv2d_transpose_65_25665:? (
conv2d_transpose_65_25667:	?5
conv2d_transpose_66_25670:??(
conv2d_transpose_66_25672:	?4
conv2d_transpose_67_25675:@?'
conv2d_transpose_67_25677:@3
conv2d_transpose_68_25680: @'
conv2d_transpose_68_25682: 3
conv2d_transpose_69_25685: '
conv2d_transpose_69_25687:
identity??+conv2d_transpose_65/StatefulPartitionedCall?+conv2d_transpose_66/StatefulPartitionedCall?+conv2d_transpose_67/StatefulPartitionedCall?+conv2d_transpose_68/StatefulPartitionedCall?+conv2d_transpose_69/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCallinputsdense_27_25659dense_27_25661*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_253702"
 dense_27/StatefulPartitionedCall?
reshape_13/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_253902
reshape_13/PartitionedCall?
+conv2d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0conv2d_transpose_65_25665conv2d_transpose_65_25667*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_254152-
+conv2d_transpose_65/StatefulPartitionedCall?
+conv2d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_65/StatefulPartitionedCall:output:0conv2d_transpose_66_25670conv2d_transpose_66_25672*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????,@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_254442-
+conv2d_transpose_66/StatefulPartitionedCall?
+conv2d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_66/StatefulPartitionedCall:output:0conv2d_transpose_67_25675conv2d_transpose_67_25677*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????X?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_254732-
+conv2d_transpose_67/StatefulPartitionedCall?
+conv2d_transpose_68/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_67/StatefulPartitionedCall:output:0conv2d_transpose_68_25680conv2d_transpose_68_25682*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_255022-
+conv2d_transpose_68/StatefulPartitionedCall?
+conv2d_transpose_69/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_68/StatefulPartitionedCall:output:0conv2d_transpose_69_25685conv2d_transpose_69_25687*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_255302-
+conv2d_transpose_69/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_69/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_65/StatefulPartitionedCall,^conv2d_transpose_66/StatefulPartitionedCall,^conv2d_transpose_67/StatefulPartitionedCall,^conv2d_transpose_68/StatefulPartitionedCall,^conv2d_transpose_69/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_65/StatefulPartitionedCall+conv2d_transpose_65/StatefulPartitionedCall2Z
+conv2d_transpose_66/StatefulPartitionedCall+conv2d_transpose_66/StatefulPartitionedCall2Z
+conv2d_transpose_67/StatefulPartitionedCall+conv2d_transpose_67/StatefulPartitionedCall2Z
+conv2d_transpose_68/StatefulPartitionedCall+conv2d_transpose_68/StatefulPartitionedCall2Z
+conv2d_transpose_69/StatefulPartitionedCall+conv2d_transpose_69/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_28720

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????+?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????+?@
 
_user_specified_nameinputs
?G
?

__inference_encode_26782
xP
6sequential_26_conv2d_52_conv2d_readvariableop_resource: E
7sequential_26_conv2d_52_biasadd_readvariableop_resource: P
6sequential_26_conv2d_53_conv2d_readvariableop_resource: @E
7sequential_26_conv2d_53_biasadd_readvariableop_resource:@Q
6sequential_26_conv2d_54_conv2d_readvariableop_resource:@?F
7sequential_26_conv2d_54_biasadd_readvariableop_resource:	?R
6sequential_26_conv2d_55_conv2d_readvariableop_resource:??F
7sequential_26_conv2d_55_biasadd_readvariableop_resource:	?I
5sequential_26_dense_26_matmul_readvariableop_resource:
??D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity

identity_1??.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?-sequential_26/conv2d_52/Conv2D/ReadVariableOp?.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?-sequential_26/conv2d_53/Conv2D/ReadVariableOp?.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?-sequential_26/conv2d_54/Conv2D/ReadVariableOp?.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?-sequential_26/conv2d_55/Conv2D/ReadVariableOp?-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOp?
sequential_26/conv2d_52/Conv2DConv2Dx5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2D?
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_26/conv2d_52/BiasAdd?
sequential_26/conv2d_52/ReluRelu(sequential_26/conv2d_52/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_26/conv2d_52/Relu?
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp?
sequential_26/conv2d_53/Conv2DConv2D*sequential_26/conv2d_52/Relu:activations:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2D?
.sequential_26/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?
sequential_26/conv2d_53/BiasAddBiasAdd'sequential_26/conv2d_53/Conv2D:output:06sequential_26/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_26/conv2d_53/BiasAdd?
sequential_26/conv2d_53/ReluRelu(sequential_26/conv2d_53/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_26/conv2d_53/Relu?
-sequential_26/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_26/conv2d_54/Conv2D/ReadVariableOp?
sequential_26/conv2d_54/Conv2DConv2D*sequential_26/conv2d_53/Relu:activations:05sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_26/conv2d_54/Conv2D?
.sequential_26/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?
sequential_26/conv2d_54/BiasAddBiasAdd'sequential_26/conv2d_54/Conv2D:output:06sequential_26/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_26/conv2d_54/BiasAdd?
sequential_26/conv2d_54/ReluRelu(sequential_26/conv2d_54/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_26/conv2d_54/Relu?
-sequential_26/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_26/conv2d_55/Conv2D/ReadVariableOp?
sequential_26/conv2d_55/Conv2DConv2D*sequential_26/conv2d_54/Relu:activations:05sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_26/conv2d_55/Conv2D?
.sequential_26/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?
sequential_26/conv2d_55/BiasAddBiasAdd'sequential_26/conv2d_55/Conv2D:output:06sequential_26/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_26/conv2d_55/BiasAdd?
sequential_26/conv2d_55/ReluRelu(sequential_26/conv2d_55/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_26/conv2d_55/Relu?
sequential_26/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_26/flatten_13/Const?
 sequential_26/flatten_13/ReshapeReshape*sequential_26/conv2d_55/Relu:activations:0'sequential_26/flatten_13/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_26/flatten_13/Reshape?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_13/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_26/dense_26/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_26/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
::*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:2

Identity_1?
NoOpNoOp/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp/^sequential_26/conv2d_53/BiasAdd/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp/^sequential_26/conv2d_54/BiasAdd/ReadVariableOp.^sequential_26/conv2d_54/Conv2D/ReadVariableOp/^sequential_26/conv2d_55/BiasAdd/ReadVariableOp.^sequential_26/conv2d_55/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp.sequential_26/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp.sequential_26/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_54/Conv2D/ReadVariableOp-sequential_26/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp.sequential_26/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_55/Conv2D/ReadVariableOp-sequential_26/conv2d_55/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?
I
 __inference_reparameterize_27486
mean

logvar
identity?B
ShapeShapemean*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:?????????*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????2
random_normalS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
mul/y[
mulMullogvarmul/y:output:0*
T0*'
_output_shapes
:?????????2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:?????????2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:?????????2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:?????????2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:M I
'
_output_shapes
:?????????

_user_specified_namemean:OK
'
_output_shapes
:?????????
 
_user_specified_namelogvar
?!
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24884
input_27)
conv2d_52_24857: 
conv2d_52_24859: )
conv2d_53_24862: @
conv2d_53_24864:@*
conv2d_54_24867:@?
conv2d_54_24869:	?+
conv2d_55_24872:??
conv2d_55_24874:	?"
dense_26_24878:
??
dense_26_24880:
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinput_27conv2d_52_24857conv2d_52_24859*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_245882#
!conv2d_52/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_24862conv2d_53_24864*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_246052#
!conv2d_53/StatefulPartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_54_24867conv2d_54_24869*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_246222#
!conv2d_54/StatefulPartitionedCall?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_24872conv2d_55_24874*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_246392#
!conv2d_55/StatefulPartitionedCall?
flatten_13/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_246512
flatten_13/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_26_24878dense_26_24880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_246632"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_27
??
?
__inference_decode_26941
zH
5sequential_27_dense_27_matmul_readvariableop_resource:	?,E
6sequential_27_dense_27_biasadd_readvariableop_resource:	?,e
Jsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? P
Asequential_27_conv2d_transpose_65_biasadd_readvariableop_resource:	?f
Jsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??P
Asequential_27_conv2d_transpose_66_biasadd_readvariableop_resource:	?e
Jsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?O
Asequential_27_conv2d_transpose_67_biasadd_readvariableop_resource:@d
Jsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @O
Asequential_27_conv2d_transpose_68_biasadd_readvariableop_resource: d
Jsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource: O
Asequential_27_conv2d_transpose_69_biasadd_readvariableop_resource:
identity??8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?-sequential_27/dense_27/BiasAdd/ReadVariableOp?,sequential_27/dense_27/MatMul/ReadVariableOp?
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_27/dense_27/MatMul/ReadVariableOp?
sequential_27/dense_27/MatMulMatMulz4sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/MatMul?
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_27/dense_27/BiasAdd/ReadVariableOp?
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_27/dense_27/BiasAdd?
sequential_27/dense_27/ReluRelu'sequential_27/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/Relu?
sequential_27/reshape_13/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_27/reshape_13/Shape?
,sequential_27/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_13/strided_slice/stack?
.sequential_27/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_1?
.sequential_27/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_2?
&sequential_27/reshape_13/strided_sliceStridedSlice'sequential_27/reshape_13/Shape:output:05sequential_27/reshape_13/strided_slice/stack:output:07sequential_27/reshape_13/strided_slice/stack_1:output:07sequential_27/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_13/strided_slice?
(sequential_27/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/1?
(sequential_27/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/2?
(sequential_27/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/reshape_13/Reshape/shape/3?
&sequential_27/reshape_13/Reshape/shapePack/sequential_27/reshape_13/strided_slice:output:01sequential_27/reshape_13/Reshape/shape/1:output:01sequential_27/reshape_13/Reshape/shape/2:output:01sequential_27/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_13/Reshape/shape?
 sequential_27/reshape_13/ReshapeReshape)sequential_27/dense_27/Relu:activations:0/sequential_27/reshape_13/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_27/reshape_13/Reshape?
'sequential_27/conv2d_transpose_65/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_65/Shape?
5sequential_27/conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_65/strided_slice/stack?
7sequential_27/conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_1?
7sequential_27/conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_2?
/sequential_27/conv2d_transpose_65/strided_sliceStridedSlice0sequential_27/conv2d_transpose_65/Shape:output:0>sequential_27/conv2d_transpose_65/strided_slice/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_65/strided_slice?
)sequential_27/conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_65/stack/1?
)sequential_27/conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_65/stack/2?
)sequential_27/conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_65/stack/3?
'sequential_27/conv2d_transpose_65/stackPack8sequential_27/conv2d_transpose_65/strided_slice:output:02sequential_27/conv2d_transpose_65/stack/1:output:02sequential_27/conv2d_transpose_65/stack/2:output:02sequential_27/conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/stack?
7sequential_27/conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_65/strided_slice_1/stack?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_65/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_65/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_65/strided_slice_1?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_65/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_65/stack:output:0Isequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0)sequential_27/reshape_13/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_65/conv2d_transpose?
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_65/BiasAddBiasAdd;sequential_27/conv2d_transpose_65/conv2d_transpose:output:0@sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_27/conv2d_transpose_65/BiasAdd?
&sequential_27/conv2d_transpose_65/ReluRelu2sequential_27/conv2d_transpose_65/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_27/conv2d_transpose_65/Relu?
'sequential_27/conv2d_transpose_66/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_66/Shape?
5sequential_27/conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_66/strided_slice/stack?
7sequential_27/conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_1?
7sequential_27/conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_2?
/sequential_27/conv2d_transpose_66/strided_sliceStridedSlice0sequential_27/conv2d_transpose_66/Shape:output:0>sequential_27/conv2d_transpose_66/strided_slice/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_66/strided_slice?
)sequential_27/conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_27/conv2d_transpose_66/stack/1?
)sequential_27/conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_66/stack/2?
)sequential_27/conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_66/stack/3?
'sequential_27/conv2d_transpose_66/stackPack8sequential_27/conv2d_transpose_66/strided_slice:output:02sequential_27/conv2d_transpose_66/stack/1:output:02sequential_27/conv2d_transpose_66/stack/2:output:02sequential_27/conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/stack?
7sequential_27/conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_66/strided_slice_1/stack?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_66/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_66/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_66/strided_slice_1?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_66/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_66/stack:output:0Isequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_66/conv2d_transpose?
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_66/BiasAddBiasAdd;sequential_27/conv2d_transpose_66/conv2d_transpose:output:0@sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_27/conv2d_transpose_66/BiasAdd?
&sequential_27/conv2d_transpose_66/ReluRelu2sequential_27/conv2d_transpose_66/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_27/conv2d_transpose_66/Relu?
'sequential_27/conv2d_transpose_67/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_27/conv2d_transpose_67/Shape?
5sequential_27/conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_67/strided_slice/stack?
7sequential_27/conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_1?
7sequential_27/conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_2?
/sequential_27/conv2d_transpose_67/strided_sliceStridedSlice0sequential_27/conv2d_transpose_67/Shape:output:0>sequential_27/conv2d_transpose_67/strided_slice/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_67/strided_slice?
)sequential_27/conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_27/conv2d_transpose_67/stack/1?
)sequential_27/conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_67/stack/2?
)sequential_27/conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_67/stack/3?
'sequential_27/conv2d_transpose_67/stackPack8sequential_27/conv2d_transpose_67/strided_slice:output:02sequential_27/conv2d_transpose_67/stack/1:output:02sequential_27/conv2d_transpose_67/stack/2:output:02sequential_27/conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/stack?
7sequential_27/conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_67/strided_slice_1/stack?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_67/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_67/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_67/strided_slice_1?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_67/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_67/stack:output:0Isequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_67/conv2d_transpose?
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_67/BiasAddBiasAdd;sequential_27/conv2d_transpose_67/conv2d_transpose:output:0@sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_27/conv2d_transpose_67/BiasAdd?
&sequential_27/conv2d_transpose_67/ReluRelu2sequential_27/conv2d_transpose_67/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_27/conv2d_transpose_67/Relu?
'sequential_27/conv2d_transpose_68/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_27/conv2d_transpose_68/Shape?
5sequential_27/conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_68/strided_slice/stack?
7sequential_27/conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_1?
7sequential_27/conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_2?
/sequential_27/conv2d_transpose_68/strided_sliceStridedSlice0sequential_27/conv2d_transpose_68/Shape:output:0>sequential_27/conv2d_transpose_68/strided_slice/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_68/strided_slice?
)sequential_27/conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/1?
)sequential_27/conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/2?
)sequential_27/conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_68/stack/3?
'sequential_27/conv2d_transpose_68/stackPack8sequential_27/conv2d_transpose_68/strided_slice:output:02sequential_27/conv2d_transpose_68/stack/1:output:02sequential_27/conv2d_transpose_68/stack/2:output:02sequential_27/conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/stack?
7sequential_27/conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_68/strided_slice_1/stack?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_68/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_68/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_68/strided_slice_1?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_68/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_68/stack:output:0Isequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_68/conv2d_transpose?
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_68/BiasAddBiasAdd;sequential_27/conv2d_transpose_68/conv2d_transpose:output:0@sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_27/conv2d_transpose_68/BiasAdd?
&sequential_27/conv2d_transpose_68/ReluRelu2sequential_27/conv2d_transpose_68/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_27/conv2d_transpose_68/Relu?
'sequential_27/conv2d_transpose_69/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_27/conv2d_transpose_69/Shape?
5sequential_27/conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_69/strided_slice/stack?
7sequential_27/conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_1?
7sequential_27/conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_2?
/sequential_27/conv2d_transpose_69/strided_sliceStridedSlice0sequential_27/conv2d_transpose_69/Shape:output:0>sequential_27/conv2d_transpose_69/strided_slice/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_69/strided_slice?
)sequential_27/conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/1?
)sequential_27/conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/2?
)sequential_27/conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_69/stack/3?
'sequential_27/conv2d_transpose_69/stackPack8sequential_27/conv2d_transpose_69/strided_slice:output:02sequential_27/conv2d_transpose_69/stack/1:output:02sequential_27/conv2d_transpose_69/stack/2:output:02sequential_27/conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/stack?
7sequential_27/conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_69/strided_slice_1/stack?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_69/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_69/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_69/strided_slice_1?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_69/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_69/stack:output:0Isequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_69/conv2d_transpose?
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_69/BiasAddBiasAdd;sequential_27/conv2d_transpose_69/conv2d_transpose:output:0@sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_27/conv2d_transpose_69/BiasAdd?
IdentityIdentity2sequential_27/conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
?
__inference_call_26970
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
::*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_267822
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_268202
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_269412
StatefulPartitionedCall_2r
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:2

Identityv

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
?
?
 __inference__wrapped_model_24570
input_1'
cvae_13_24520: 
cvae_13_24522: '
cvae_13_24524: @
cvae_13_24526:@(
cvae_13_24528:@?
cvae_13_24530:	?)
cvae_13_24532:??
cvae_13_24534:	?!
cvae_13_24536:
??
cvae_13_24538: 
cvae_13_24540:	?,
cvae_13_24542:	?,(
cvae_13_24544:? 
cvae_13_24546:	?)
cvae_13_24548:??
cvae_13_24550:	?(
cvae_13_24552:@?
cvae_13_24554:@'
cvae_13_24556: @
cvae_13_24558: '
cvae_13_24560: 
cvae_13_24562:
identity

identity_1

identity_2??cvae_13/StatefulPartitionedCall?
cvae_13/StatefulPartitionedCallStatefulPartitionedCallinput_1cvae_13_24520cvae_13_24522cvae_13_24524cvae_13_24526cvae_13_24528cvae_13_24530cvae_13_24532cvae_13_24534cvae_13_24536cvae_13_24538cvae_13_24540cvae_13_24542cvae_13_24544cvae_13_24546cvae_13_24548cvae_13_24550cvae_13_24552cvae_13_24554cvae_13_24556cvae_13_24558cvae_13_24560cvae_13_24562*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *
fR
__inference_call_245192!
cvae_13/StatefulPartitionedCall?
IdentityIdentity(cvae_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(cvae_13/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity(cvae_13/StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2p
NoOpNoOp ^cvae_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2B
cvae_13/StatefulPartitionedCallcvae_13/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?R
?
__forward_encode_28005
x_0P
6sequential_26_conv2d_52_conv2d_readvariableop_resource: E
7sequential_26_conv2d_52_biasadd_readvariableop_resource: P
6sequential_26_conv2d_53_conv2d_readvariableop_resource: @E
7sequential_26_conv2d_53_biasadd_readvariableop_resource:@Q
6sequential_26_conv2d_54_conv2d_readvariableop_resource:@?F
7sequential_26_conv2d_54_biasadd_readvariableop_resource:	?R
6sequential_26_conv2d_55_conv2d_readvariableop_resource:??F
7sequential_26_conv2d_55_biasadd_readvariableop_resource:	?I
5sequential_26_dense_26_matmul_readvariableop_resource:
??D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity

identity_1
split_split_dim0
,sequential_26_dense_26_matmul_readvariableop$
 sequential_26_flatten_13_reshape 
sequential_26_conv2d_55_relu 
sequential_26_conv2d_54_relu1
-sequential_26_conv2d_55_conv2d_readvariableop 
sequential_26_conv2d_53_relu1
-sequential_26_conv2d_54_conv2d_readvariableop 
sequential_26_conv2d_52_relu1
-sequential_26_conv2d_53_conv2d_readvariableop
x1
-sequential_26_conv2d_52_conv2d_readvariableop??.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?-sequential_26/conv2d_52/Conv2D/ReadVariableOp?.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?-sequential_26/conv2d_53/Conv2D/ReadVariableOp?.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?-sequential_26/conv2d_54/Conv2D/ReadVariableOp?.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?-sequential_26/conv2d_55/Conv2D/ReadVariableOp?-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOp?
sequential_26/conv2d_52/Conv2DConv2Dx_05sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2D?
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_26/conv2d_52/BiasAdd?
sequential_26/conv2d_52/ReluRelu(sequential_26/conv2d_52/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_26/conv2d_52/Relu?
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp?
sequential_26/conv2d_53/Conv2DConv2D*sequential_26/conv2d_52/Relu:activations:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2D?
.sequential_26/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?
sequential_26/conv2d_53/BiasAddBiasAdd'sequential_26/conv2d_53/Conv2D:output:06sequential_26/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_26/conv2d_53/BiasAdd?
sequential_26/conv2d_53/ReluRelu(sequential_26/conv2d_53/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_26/conv2d_53/Relu?
-sequential_26/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_26/conv2d_54/Conv2D/ReadVariableOp?
sequential_26/conv2d_54/Conv2DConv2D*sequential_26/conv2d_53/Relu:activations:05sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_26/conv2d_54/Conv2D?
.sequential_26/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?
sequential_26/conv2d_54/BiasAddBiasAdd'sequential_26/conv2d_54/Conv2D:output:06sequential_26/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_26/conv2d_54/BiasAdd?
sequential_26/conv2d_54/ReluRelu(sequential_26/conv2d_54/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_26/conv2d_54/Relu?
-sequential_26/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_26/conv2d_55/Conv2D/ReadVariableOp?
sequential_26/conv2d_55/Conv2DConv2D*sequential_26/conv2d_54/Relu:activations:05sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_26/conv2d_55/Conv2D?
.sequential_26/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?
sequential_26/conv2d_55/BiasAddBiasAdd'sequential_26/conv2d_55/Conv2D:output:06sequential_26/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_26/conv2d_55/BiasAdd?
sequential_26/conv2d_55/ReluRelu(sequential_26/conv2d_55/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_26/conv2d_55/Relu?
sequential_26/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_26/flatten_13/Const?
 sequential_26/flatten_13/ReshapeReshape*sequential_26/conv2d_55/Relu:activations:0'sequential_26/flatten_13/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_26/flatten_13/Reshape?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_13/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_26/dense_26/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_26/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
::*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:2

Identity_1?
NoOpNoOp/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp/^sequential_26/conv2d_53/BiasAdd/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp/^sequential_26/conv2d_54/BiasAdd/ReadVariableOp.^sequential_26/conv2d_54/Conv2D/ReadVariableOp/^sequential_26/conv2d_55/BiasAdd/ReadVariableOp.^sequential_26/conv2d_55/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"f
-sequential_26_conv2d_52_conv2d_readvariableop5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0"J
sequential_26_conv2d_52_relu*sequential_26/conv2d_52/Relu:activations:0"f
-sequential_26_conv2d_53_conv2d_readvariableop5sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0"J
sequential_26_conv2d_53_relu*sequential_26/conv2d_53/Relu:activations:0"f
-sequential_26_conv2d_54_conv2d_readvariableop5sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0"J
sequential_26_conv2d_54_relu*sequential_26/conv2d_54/Relu:activations:0"f
-sequential_26_conv2d_55_conv2d_readvariableop5sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0"J
sequential_26_conv2d_55_relu*sequential_26/conv2d_55/Relu:activations:0"d
,sequential_26_dense_26_matmul_readvariableop4sequential_26/dense_26/MatMul/ReadVariableOp:value:0"M
 sequential_26_flatten_13_reshape)sequential_26/flatten_13/Reshape:output:0"+
split_split_dimsplit/split_dim:output:0"
xx_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : *E
backward_function_name+)__inference___backward_encode_27946_280062`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp.sequential_26/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp.sequential_26/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_54/Conv2D/ReadVariableOp-sequential_26/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp.sequential_26/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_55/Conv2D/ReadVariableOp-sequential_26/conv2d_55/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?
?
(__inference_dense_26_layer_call_fn_28760

inputs
unknown:
??
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_246632
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_27_layer_call_fn_25747
input_28
unknown:	?,
	unknown_0:	?,$
	unknown_1:? 
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?$
	unknown_5:@?
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_256912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_28
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_28700

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????+?@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????W 
 
_user_specified_nameinputs
??
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_28660

inputs:
'dense_27_matmul_readvariableop_resource:	?,7
(dense_27_biasadd_readvariableop_resource:	?,W
<conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? B
3conv2d_transpose_65_biasadd_readvariableop_resource:	?X
<conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_66_biasadd_readvariableop_resource:	?W
<conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_67_biasadd_readvariableop_resource:@V
<conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_68_biasadd_readvariableop_resource: V
<conv2d_transpose_69_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_69_biasadd_readvariableop_resource:
identity??*conv2d_transpose_65/BiasAdd/ReadVariableOp?3conv2d_transpose_65/conv2d_transpose/ReadVariableOp?*conv2d_transpose_66/BiasAdd/ReadVariableOp?3conv2d_transpose_66/conv2d_transpose/ReadVariableOp?*conv2d_transpose_67/BiasAdd/ReadVariableOp?3conv2d_transpose_67/conv2d_transpose/ReadVariableOp?*conv2d_transpose_68/BiasAdd/ReadVariableOp?3conv2d_transpose_68/conv2d_transpose/ReadVariableOp?*conv2d_transpose_69/BiasAdd/ReadVariableOp?3conv2d_transpose_69/conv2d_transpose/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMulinputs&dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_27/BiasAddt
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_27/Reluo
reshape_13/ShapeShapedense_27/Relu:activations:0*
T0*
_output_shapes
:2
reshape_13/Shape?
reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_13/strided_slice/stack?
 reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_13/strided_slice/stack_1?
 reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_13/strided_slice/stack_2?
reshape_13/strided_sliceStridedSlicereshape_13/Shape:output:0'reshape_13/strided_slice/stack:output:0)reshape_13/strided_slice/stack_1:output:0)reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_13/strided_slicez
reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_13/Reshape/shape/1z
reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_13/Reshape/shape/2z
reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_13/Reshape/shape/3?
reshape_13/Reshape/shapePack!reshape_13/strided_slice:output:0#reshape_13/Reshape/shape/1:output:0#reshape_13/Reshape/shape/2:output:0#reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_13/Reshape/shape?
reshape_13/ReshapeReshapedense_27/Relu:activations:0!reshape_13/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape_13/Reshape?
conv2d_transpose_65/ShapeShapereshape_13/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_65/Shape?
'conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_65/strided_slice/stack?
)conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_65/strided_slice/stack_1?
)conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_65/strided_slice/stack_2?
!conv2d_transpose_65/strided_sliceStridedSlice"conv2d_transpose_65/Shape:output:00conv2d_transpose_65/strided_slice/stack:output:02conv2d_transpose_65/strided_slice/stack_1:output:02conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_65/strided_slice|
conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_65/stack/1|
conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_65/stack/2}
conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_65/stack/3?
conv2d_transpose_65/stackPack*conv2d_transpose_65/strided_slice:output:0$conv2d_transpose_65/stack/1:output:0$conv2d_transpose_65/stack/2:output:0$conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_65/stack?
)conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_65/strided_slice_1/stack?
+conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_65/strided_slice_1/stack_1?
+conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_65/strided_slice_1/stack_2?
#conv2d_transpose_65/strided_slice_1StridedSlice"conv2d_transpose_65/stack:output:02conv2d_transpose_65/strided_slice_1/stack:output:04conv2d_transpose_65/strided_slice_1/stack_1:output:04conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_65/strided_slice_1?
3conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype025
3conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_65/conv2d_transposeConv2DBackpropInput"conv2d_transpose_65/stack:output:0;conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0reshape_13/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_65/conv2d_transpose?
*conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_65/BiasAdd/ReadVariableOp?
conv2d_transpose_65/BiasAddBiasAdd-conv2d_transpose_65/conv2d_transpose:output:02conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_65/BiasAdd?
conv2d_transpose_65/ReluRelu$conv2d_transpose_65/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_65/Relu?
conv2d_transpose_66/ShapeShape&conv2d_transpose_65/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_66/Shape?
'conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_66/strided_slice/stack?
)conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_66/strided_slice/stack_1?
)conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_66/strided_slice/stack_2?
!conv2d_transpose_66/strided_sliceStridedSlice"conv2d_transpose_66/Shape:output:00conv2d_transpose_66/strided_slice/stack:output:02conv2d_transpose_66/strided_slice/stack_1:output:02conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_66/strided_slice|
conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_66/stack/1|
conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_66/stack/2}
conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_66/stack/3?
conv2d_transpose_66/stackPack*conv2d_transpose_66/strided_slice:output:0$conv2d_transpose_66/stack/1:output:0$conv2d_transpose_66/stack/2:output:0$conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_66/stack?
)conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_66/strided_slice_1/stack?
+conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_66/strided_slice_1/stack_1?
+conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_66/strided_slice_1/stack_2?
#conv2d_transpose_66/strided_slice_1StridedSlice"conv2d_transpose_66/stack:output:02conv2d_transpose_66/strided_slice_1/stack:output:04conv2d_transpose_66/strided_slice_1/stack_1:output:04conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_66/strided_slice_1?
3conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_66/conv2d_transposeConv2DBackpropInput"conv2d_transpose_66/stack:output:0;conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_65/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2&
$conv2d_transpose_66/conv2d_transpose?
*conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_66/BiasAdd/ReadVariableOp?
conv2d_transpose_66/BiasAddBiasAdd-conv2d_transpose_66/conv2d_transpose:output:02conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_66/BiasAdd?
conv2d_transpose_66/ReluRelu$conv2d_transpose_66/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_66/Relu?
conv2d_transpose_67/ShapeShape&conv2d_transpose_66/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_67/Shape?
'conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_67/strided_slice/stack?
)conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_67/strided_slice/stack_1?
)conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_67/strided_slice/stack_2?
!conv2d_transpose_67/strided_sliceStridedSlice"conv2d_transpose_67/Shape:output:00conv2d_transpose_67/strided_slice/stack:output:02conv2d_transpose_67/strided_slice/stack_1:output:02conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_67/strided_slice|
conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_67/stack/1}
conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_67/stack/2|
conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_67/stack/3?
conv2d_transpose_67/stackPack*conv2d_transpose_67/strided_slice:output:0$conv2d_transpose_67/stack/1:output:0$conv2d_transpose_67/stack/2:output:0$conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_67/stack?
)conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_67/strided_slice_1/stack?
+conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_67/strided_slice_1/stack_1?
+conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_67/strided_slice_1/stack_2?
#conv2d_transpose_67/strided_slice_1StridedSlice"conv2d_transpose_67/stack:output:02conv2d_transpose_67/strided_slice_1/stack:output:04conv2d_transpose_67/strided_slice_1/stack_1:output:04conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_67/strided_slice_1?
3conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_67/conv2d_transposeConv2DBackpropInput"conv2d_transpose_67/stack:output:0;conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_66/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2&
$conv2d_transpose_67/conv2d_transpose?
*conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_67/BiasAdd/ReadVariableOp?
conv2d_transpose_67/BiasAddBiasAdd-conv2d_transpose_67/conv2d_transpose:output:02conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_67/BiasAdd?
conv2d_transpose_67/ReluRelu$conv2d_transpose_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_67/Relu?
conv2d_transpose_68/ShapeShape&conv2d_transpose_67/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_68/Shape?
'conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_68/strided_slice/stack?
)conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_68/strided_slice/stack_1?
)conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_68/strided_slice/stack_2?
!conv2d_transpose_68/strided_sliceStridedSlice"conv2d_transpose_68/Shape:output:00conv2d_transpose_68/strided_slice/stack:output:02conv2d_transpose_68/strided_slice/stack_1:output:02conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_68/strided_slice}
conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_68/stack/1}
conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_68/stack/2|
conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_68/stack/3?
conv2d_transpose_68/stackPack*conv2d_transpose_68/strided_slice:output:0$conv2d_transpose_68/stack/1:output:0$conv2d_transpose_68/stack/2:output:0$conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_68/stack?
)conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_68/strided_slice_1/stack?
+conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_68/strided_slice_1/stack_1?
+conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_68/strided_slice_1/stack_2?
#conv2d_transpose_68/strided_slice_1StridedSlice"conv2d_transpose_68/stack:output:02conv2d_transpose_68/strided_slice_1/stack:output:04conv2d_transpose_68/strided_slice_1/stack_1:output:04conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_68/strided_slice_1?
3conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_68/conv2d_transposeConv2DBackpropInput"conv2d_transpose_68/stack:output:0;conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_67/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2&
$conv2d_transpose_68/conv2d_transpose?
*conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_68/BiasAdd/ReadVariableOp?
conv2d_transpose_68/BiasAddBiasAdd-conv2d_transpose_68/conv2d_transpose:output:02conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_68/BiasAdd?
conv2d_transpose_68/ReluRelu$conv2d_transpose_68/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_68/Relu?
conv2d_transpose_69/ShapeShape&conv2d_transpose_68/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_69/Shape?
'conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_69/strided_slice/stack?
)conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_69/strided_slice/stack_1?
)conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_69/strided_slice/stack_2?
!conv2d_transpose_69/strided_sliceStridedSlice"conv2d_transpose_69/Shape:output:00conv2d_transpose_69/strided_slice/stack:output:02conv2d_transpose_69/strided_slice/stack_1:output:02conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_69/strided_slice}
conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_69/stack/1}
conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_69/stack/2|
conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_69/stack/3?
conv2d_transpose_69/stackPack*conv2d_transpose_69/strided_slice:output:0$conv2d_transpose_69/stack/1:output:0$conv2d_transpose_69/stack/2:output:0$conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_69/stack?
)conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_69/strided_slice_1/stack?
+conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_69/strided_slice_1/stack_1?
+conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_69/strided_slice_1/stack_2?
#conv2d_transpose_69/strided_slice_1StridedSlice"conv2d_transpose_69/stack:output:02conv2d_transpose_69/strided_slice_1/stack:output:04conv2d_transpose_69/strided_slice_1/stack_1:output:04conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_69/strided_slice_1?
3conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_69/conv2d_transposeConv2DBackpropInput"conv2d_transpose_69/stack:output:0;conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_68/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2&
$conv2d_transpose_69/conv2d_transpose?
*conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_69/BiasAdd/ReadVariableOp?
conv2d_transpose_69/BiasAddBiasAdd-conv2d_transpose_69/conv2d_transpose:output:02conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_69/BiasAdd?
IdentityIdentity$conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp+^conv2d_transpose_65/BiasAdd/ReadVariableOp4^conv2d_transpose_65/conv2d_transpose/ReadVariableOp+^conv2d_transpose_66/BiasAdd/ReadVariableOp4^conv2d_transpose_66/conv2d_transpose/ReadVariableOp+^conv2d_transpose_67/BiasAdd/ReadVariableOp4^conv2d_transpose_67/conv2d_transpose/ReadVariableOp+^conv2d_transpose_68/BiasAdd/ReadVariableOp4^conv2d_transpose_68/conv2d_transpose/ReadVariableOp+^conv2d_transpose_69/BiasAdd/ReadVariableOp4^conv2d_transpose_69/conv2d_transpose/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2X
*conv2d_transpose_65/BiasAdd/ReadVariableOp*conv2d_transpose_65/BiasAdd/ReadVariableOp2j
3conv2d_transpose_65/conv2d_transpose/ReadVariableOp3conv2d_transpose_65/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_66/BiasAdd/ReadVariableOp*conv2d_transpose_66/BiasAdd/ReadVariableOp2j
3conv2d_transpose_66/conv2d_transpose/ReadVariableOp3conv2d_transpose_66/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_67/BiasAdd/ReadVariableOp*conv2d_transpose_67/BiasAdd/ReadVariableOp2j
3conv2d_transpose_67/conv2d_transpose/ReadVariableOp3conv2d_transpose_67/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_68/BiasAdd/ReadVariableOp*conv2d_transpose_68/BiasAdd/ReadVariableOp2j
3conv2d_transpose_68/conv2d_transpose/ReadVariableOp3conv2d_transpose_68/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_69/BiasAdd/ReadVariableOp*conv2d_transpose_69/BiasAdd/ReadVariableOp2j
3conv2d_transpose_69/conv2d_transpose/ReadVariableOp3conv2d_transpose_69/conv2d_transpose/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
__inference_compute_loss_27126
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
::*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_267822
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_268202
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_269412
StatefulPartitionedCall_2?
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2*
(logistic_loss/zeros_like/shape_as_tensor?
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/Const?
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:??2
logistic_loss/zeros_like?
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/GreaterEqual?
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select?
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Neg?
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Select_1?
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:??2
logistic_loss/mul?
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:??2
logistic_loss/sub?
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:??2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:??2
logistic_loss/Log1p?
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:??2
logistic_loss?
Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"         2
Sum/reduction_indicesi
SumSumlogistic_loss:z:0Sum/reduction_indices:output:0*
T0*
_output_shapes
:2
SumD
NegNegSum:output:0*
T0*
_output_shapes
:2
NegS
Log/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2
Log/xB
LogLogLog/x:output:0*
T0*
_output_shapes
: 2
LogS
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sub/yn
subSub"StatefulPartitionedCall_1:output:0sub/y:output:0*
T0*
_output_shapes

:2
subS
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
pow/yS
powPowsub:z:0pow/y:output:0*
T0*
_output_shapes

:2
powS
Exp/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
Exp/xB
ExpExpExp/x:output:0*
T0*
_output_shapes
: 2
ExpL
mulMulpow:z:0Exp:y:0*
T0*
_output_shapes

:2
mulS
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
add/yU
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes

:2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:2
add_1W
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_1/x[
mul_1Mulmul_1/x:output:0	add_1:z:0*
T0*
_output_shapes

:2
mul_1t
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_1/reduction_indicesg
Sum_1Sum	mul_1:z:0 Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_1W
Log_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1?
sub_1Sub"StatefulPartitionedCall_1:output:0 StatefulPartitionedCall:output:0*
T0*
_output_shapes

:2
sub_1W
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2	
pow_1/y[
pow_1Pow	sub_1:z:0pow_1/y:output:0*
T0*
_output_shapes

:2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:2
add_3W
mul_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
mul_3/x[
mul_3Mulmul_3/x:output:0	add_3:z:0*
T0*
_output_shapes

:2
mul_3t
Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum_2/reduction_indicesg
Sum_2Sum	mul_3:z:0 Sum_2/reduction_indices:output:0*
T0*
_output_shapes
:2
Sum_2U
add_4AddV2Neg:y:0Sum_1:output:0*
T0*
_output_shapes
:2
add_4U
sub_2Sub	add_4:z:0Sum_2:output:0*
T0*
_output_shapes
:2
sub_2X
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstP
MeanMean	sub_2:z:0Const:output:0*
T0*
_output_shapes
: 2
MeanE
Neg_2NegMean:output:0*
T0*
_output_shapes
: 2
Neg_2S
IdentityIdentity	Neg_2:y:0^NoOp*
T0*
_output_shapes
: 2

Identity?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:??: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
?!
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24914
input_27)
conv2d_52_24887: 
conv2d_52_24889: )
conv2d_53_24892: @
conv2d_53_24894:@*
conv2d_54_24897:@?
conv2d_54_24899:	?+
conv2d_55_24902:??
conv2d_55_24904:	?"
dense_26_24908:
??
dense_26_24910:
identity??!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCallinput_27conv2d_52_24887conv2d_52_24889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_245882#
!conv2d_52/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_24892conv2d_53_24894*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_246052#
!conv2d_53/StatefulPartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_54_24897conv2d_54_24899*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_246222#
!conv2d_54/StatefulPartitionedCall?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_24902conv2d_55_24904*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_246392#
!conv2d_55/StatefulPartitionedCall?
flatten_13/PartitionedCallPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_246512
flatten_13/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0dense_26_24908dense_26_24910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_26_layer_call_and_return_conditional_losses_246632"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_27
?H
?

__inference_encode_24331
xP
6sequential_26_conv2d_52_conv2d_readvariableop_resource: E
7sequential_26_conv2d_52_biasadd_readvariableop_resource: P
6sequential_26_conv2d_53_conv2d_readvariableop_resource: @E
7sequential_26_conv2d_53_biasadd_readvariableop_resource:@Q
6sequential_26_conv2d_54_conv2d_readvariableop_resource:@?F
7sequential_26_conv2d_54_biasadd_readvariableop_resource:	?R
6sequential_26_conv2d_55_conv2d_readvariableop_resource:??F
7sequential_26_conv2d_55_biasadd_readvariableop_resource:	?I
5sequential_26_dense_26_matmul_readvariableop_resource:
??D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity

identity_1??.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?-sequential_26/conv2d_52/Conv2D/ReadVariableOp?.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?-sequential_26/conv2d_53/Conv2D/ReadVariableOp?.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?-sequential_26/conv2d_54/Conv2D/ReadVariableOp?.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?-sequential_26/conv2d_55/Conv2D/ReadVariableOp?-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOp?
sequential_26/conv2d_52/Conv2DConv2Dx5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2D?
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2!
sequential_26/conv2d_52/BiasAdd?
sequential_26/conv2d_52/ReluRelu(sequential_26/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential_26/conv2d_52/Relu?
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp?
sequential_26/conv2d_53/Conv2DConv2D*sequential_26/conv2d_52/Relu:activations:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2D?
.sequential_26/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?
sequential_26/conv2d_53/BiasAddBiasAdd'sequential_26/conv2d_53/Conv2D:output:06sequential_26/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2!
sequential_26/conv2d_53/BiasAdd?
sequential_26/conv2d_53/ReluRelu(sequential_26/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential_26/conv2d_53/Relu?
-sequential_26/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_26/conv2d_54/Conv2D/ReadVariableOp?
sequential_26/conv2d_54/Conv2DConv2D*sequential_26/conv2d_53/Relu:activations:05sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_26/conv2d_54/Conv2D?
.sequential_26/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?
sequential_26/conv2d_54/BiasAddBiasAdd'sequential_26/conv2d_54/Conv2D:output:06sequential_26/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_26/conv2d_54/BiasAdd?
sequential_26/conv2d_54/ReluRelu(sequential_26/conv2d_54/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_26/conv2d_54/Relu?
-sequential_26/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_26/conv2d_55/Conv2D/ReadVariableOp?
sequential_26/conv2d_55/Conv2DConv2D*sequential_26/conv2d_54/Relu:activations:05sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2 
sequential_26/conv2d_55/Conv2D?
.sequential_26/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?
sequential_26/conv2d_55/BiasAddBiasAdd'sequential_26/conv2d_55/Conv2D:output:06sequential_26/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2!
sequential_26/conv2d_55/BiasAdd?
sequential_26/conv2d_55/ReluRelu(sequential_26/conv2d_55/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential_26/conv2d_55/Relu?
sequential_26/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_26/flatten_13/Const?
 sequential_26/flatten_13/ReshapeReshape*sequential_26/conv2d_55/Relu:activations:0'sequential_26/flatten_13/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_26/flatten_13/Reshape?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_13/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_26/dense_26/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_26/dense_26/BiasAdd:output:0*
T0*:
_output_shapes(
&:?????????:?????????*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?
NoOpNoOp/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp/^sequential_26/conv2d_53/BiasAdd/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp/^sequential_26/conv2d_54/BiasAdd/ReadVariableOp.^sequential_26/conv2d_54/Conv2D/ReadVariableOp/^sequential_26/conv2d_55/BiasAdd/ReadVariableOp.^sequential_26/conv2d_55/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp.sequential_26/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp.sequential_26/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_54/Conv2D/ReadVariableOp-sequential_26/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp.sequential_26/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_55/Conv2D/ReadVariableOp-sequential_26/conv2d_55/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
__inference_call_27024
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_25530

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceU
stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
a
E__inference_reshape_13_layer_call_and_return_conditional_losses_25390

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:????????? 2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????,:P L
(
_output_shapes
:??????????,
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_26308
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????:?????????:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_245702
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
a
E__inference_reshape_13_layer_call_and_return_conditional_losses_28809

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:????????? 2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????,:P L
(
_output_shapes
:??????????,
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_69_layer_call_fn_29131

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_255302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?
__inference_decode_27246
zH
5sequential_27_dense_27_matmul_readvariableop_resource:	?,E
6sequential_27_dense_27_biasadd_readvariableop_resource:	?,e
Jsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? P
Asequential_27_conv2d_transpose_65_biasadd_readvariableop_resource:	?f
Jsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??P
Asequential_27_conv2d_transpose_66_biasadd_readvariableop_resource:	?e
Jsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?O
Asequential_27_conv2d_transpose_67_biasadd_readvariableop_resource:@d
Jsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @O
Asequential_27_conv2d_transpose_68_biasadd_readvariableop_resource: d
Jsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource: O
Asequential_27_conv2d_transpose_69_biasadd_readvariableop_resource:
identity??8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?-sequential_27/dense_27/BiasAdd/ReadVariableOp?,sequential_27/dense_27/MatMul/ReadVariableOp?
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_27/dense_27/MatMul/ReadVariableOp?
sequential_27/dense_27/MatMulMatMulz4sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/MatMul?
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_27/dense_27/BiasAdd/ReadVariableOp?
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_27/dense_27/BiasAdd?
sequential_27/dense_27/ReluRelu'sequential_27/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/Relu?
sequential_27/reshape_13/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_27/reshape_13/Shape?
,sequential_27/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_13/strided_slice/stack?
.sequential_27/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_1?
.sequential_27/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_2?
&sequential_27/reshape_13/strided_sliceStridedSlice'sequential_27/reshape_13/Shape:output:05sequential_27/reshape_13/strided_slice/stack:output:07sequential_27/reshape_13/strided_slice/stack_1:output:07sequential_27/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_13/strided_slice?
(sequential_27/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/1?
(sequential_27/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/2?
(sequential_27/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/reshape_13/Reshape/shape/3?
&sequential_27/reshape_13/Reshape/shapePack/sequential_27/reshape_13/strided_slice:output:01sequential_27/reshape_13/Reshape/shape/1:output:01sequential_27/reshape_13/Reshape/shape/2:output:01sequential_27/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_13/Reshape/shape?
 sequential_27/reshape_13/ReshapeReshape)sequential_27/dense_27/Relu:activations:0/sequential_27/reshape_13/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_27/reshape_13/Reshape?
'sequential_27/conv2d_transpose_65/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_65/Shape?
5sequential_27/conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_65/strided_slice/stack?
7sequential_27/conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_1?
7sequential_27/conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_2?
/sequential_27/conv2d_transpose_65/strided_sliceStridedSlice0sequential_27/conv2d_transpose_65/Shape:output:0>sequential_27/conv2d_transpose_65/strided_slice/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_65/strided_slice?
)sequential_27/conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_65/stack/1?
)sequential_27/conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_65/stack/2?
)sequential_27/conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_65/stack/3?
'sequential_27/conv2d_transpose_65/stackPack8sequential_27/conv2d_transpose_65/strided_slice:output:02sequential_27/conv2d_transpose_65/stack/1:output:02sequential_27/conv2d_transpose_65/stack/2:output:02sequential_27/conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/stack?
7sequential_27/conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_65/strided_slice_1/stack?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_65/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_65/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_65/strided_slice_1?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_65/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_65/stack:output:0Isequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0)sequential_27/reshape_13/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_65/conv2d_transpose?
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_65/BiasAddBiasAdd;sequential_27/conv2d_transpose_65/conv2d_transpose:output:0@sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_27/conv2d_transpose_65/BiasAdd?
&sequential_27/conv2d_transpose_65/ReluRelu2sequential_27/conv2d_transpose_65/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_27/conv2d_transpose_65/Relu?
'sequential_27/conv2d_transpose_66/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_66/Shape?
5sequential_27/conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_66/strided_slice/stack?
7sequential_27/conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_1?
7sequential_27/conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_2?
/sequential_27/conv2d_transpose_66/strided_sliceStridedSlice0sequential_27/conv2d_transpose_66/Shape:output:0>sequential_27/conv2d_transpose_66/strided_slice/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_66/strided_slice?
)sequential_27/conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_27/conv2d_transpose_66/stack/1?
)sequential_27/conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_66/stack/2?
)sequential_27/conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_66/stack/3?
'sequential_27/conv2d_transpose_66/stackPack8sequential_27/conv2d_transpose_66/strided_slice:output:02sequential_27/conv2d_transpose_66/stack/1:output:02sequential_27/conv2d_transpose_66/stack/2:output:02sequential_27/conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/stack?
7sequential_27/conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_66/strided_slice_1/stack?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_66/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_66/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_66/strided_slice_1?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_66/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_66/stack:output:0Isequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_66/conv2d_transpose?
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_66/BiasAddBiasAdd;sequential_27/conv2d_transpose_66/conv2d_transpose:output:0@sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_27/conv2d_transpose_66/BiasAdd?
&sequential_27/conv2d_transpose_66/ReluRelu2sequential_27/conv2d_transpose_66/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_27/conv2d_transpose_66/Relu?
'sequential_27/conv2d_transpose_67/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_27/conv2d_transpose_67/Shape?
5sequential_27/conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_67/strided_slice/stack?
7sequential_27/conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_1?
7sequential_27/conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_2?
/sequential_27/conv2d_transpose_67/strided_sliceStridedSlice0sequential_27/conv2d_transpose_67/Shape:output:0>sequential_27/conv2d_transpose_67/strided_slice/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_67/strided_slice?
)sequential_27/conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_27/conv2d_transpose_67/stack/1?
)sequential_27/conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_67/stack/2?
)sequential_27/conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_67/stack/3?
'sequential_27/conv2d_transpose_67/stackPack8sequential_27/conv2d_transpose_67/strided_slice:output:02sequential_27/conv2d_transpose_67/stack/1:output:02sequential_27/conv2d_transpose_67/stack/2:output:02sequential_27/conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/stack?
7sequential_27/conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_67/strided_slice_1/stack?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_67/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_67/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_67/strided_slice_1?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_67/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_67/stack:output:0Isequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_67/conv2d_transpose?
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_67/BiasAddBiasAdd;sequential_27/conv2d_transpose_67/conv2d_transpose:output:0@sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_27/conv2d_transpose_67/BiasAdd?
&sequential_27/conv2d_transpose_67/ReluRelu2sequential_27/conv2d_transpose_67/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_27/conv2d_transpose_67/Relu?
'sequential_27/conv2d_transpose_68/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_27/conv2d_transpose_68/Shape?
5sequential_27/conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_68/strided_slice/stack?
7sequential_27/conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_1?
7sequential_27/conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_2?
/sequential_27/conv2d_transpose_68/strided_sliceStridedSlice0sequential_27/conv2d_transpose_68/Shape:output:0>sequential_27/conv2d_transpose_68/strided_slice/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_68/strided_slice?
)sequential_27/conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/1?
)sequential_27/conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/2?
)sequential_27/conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_68/stack/3?
'sequential_27/conv2d_transpose_68/stackPack8sequential_27/conv2d_transpose_68/strided_slice:output:02sequential_27/conv2d_transpose_68/stack/1:output:02sequential_27/conv2d_transpose_68/stack/2:output:02sequential_27/conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/stack?
7sequential_27/conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_68/strided_slice_1/stack?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_68/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_68/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_68/strided_slice_1?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_68/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_68/stack:output:0Isequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_68/conv2d_transpose?
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_68/BiasAddBiasAdd;sequential_27/conv2d_transpose_68/conv2d_transpose:output:0@sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_27/conv2d_transpose_68/BiasAdd?
&sequential_27/conv2d_transpose_68/ReluRelu2sequential_27/conv2d_transpose_68/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_27/conv2d_transpose_68/Relu?
'sequential_27/conv2d_transpose_69/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_27/conv2d_transpose_69/Shape?
5sequential_27/conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_69/strided_slice/stack?
7sequential_27/conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_1?
7sequential_27/conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_2?
/sequential_27/conv2d_transpose_69/strided_sliceStridedSlice0sequential_27/conv2d_transpose_69/Shape:output:0>sequential_27/conv2d_transpose_69/strided_slice/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_69/strided_slice?
)sequential_27/conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/1?
)sequential_27/conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/2?
)sequential_27/conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_69/stack/3?
'sequential_27/conv2d_transpose_69/stackPack8sequential_27/conv2d_transpose_69/strided_slice:output:02sequential_27/conv2d_transpose_69/stack/1:output:02sequential_27/conv2d_transpose_69/stack/2:output:02sequential_27/conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/stack?
7sequential_27/conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_69/strided_slice_1/stack?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_69/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_69/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_69/strided_slice_1?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_69/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_69/stack:output:0Isequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_69/conv2d_transpose?
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_69/BiasAddBiasAdd;sequential_27/conv2d_transpose_69/conv2d_transpose:output:0@sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_27/conv2d_transpose_69/BiasAdd?
IdentityIdentity2sequential_27/conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
??
?
/__inference___backward_compute_loss_27637_28067
placeholder"
gradients_mul_3_grad_mul_add_3&
"gradients_mul_3_grad_mul_1_mul_3_x"
gradients_mul_1_grad_mul_add_1&
"gradients_mul_1_grad_mul_1_mul_1_x<
8gradients_logistic_loss_log1p_grad_add_logistic_loss_exp"
gradients_mul_2_grad_mul_exp_1$
 gradients_mul_2_grad_mul_1_pow_1I
Egradients_logistic_loss_select_grad_select_logistic_loss_greaterequal
*
&gradients_logistic_loss_mul_grad_mul_xD
@gradients_logistic_loss_mul_grad_mul_1_statefulpartitionedcall_2
gradients_mul_grad_mul_exp 
gradients_mul_grad_mul_1_pow$
 gradients_pow_1_grad_mul_pow_1_y"
gradients_pow_1_grad_pow_sub_1 
gradients_pow_grad_mul_pow_y
gradients_pow_grad_pow_subF
Bgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_1H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_2H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_3H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_4H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_5H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_6H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_7H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_8H
Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_9I
Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_10I
Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_11I
Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_12F
Bgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1H
Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_1H
Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_2H
Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_3B
>gradients_statefulpartitionedcall_grad_statefulpartitionedcallD
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_1D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_2D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_3D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_4D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_5D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_6D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_7D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_8D
@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_9E
Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_10E
Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_11
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21
identity_22d
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes
: 2
gradients/grad_ys_0z
gradients/Neg_2_grad/NegNeggradients/grad_ys_0:output:0*
T0*
_output_shapes
: 2
gradients/Neg_2_grad/Neg?
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2#
!gradients/Mean_grad/Reshape/shape?
gradients/Mean_grad/ReshapeReshapegradients/Neg_2_grad/Neg:y:0*gradients/Mean_grad/Reshape/shape:output:0*
T0*
_output_shapes
:2
gradients/Mean_grad/Reshape?
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/Mean_grad/Const?
gradients/Mean_grad/TileTile$gradients/Mean_grad/Reshape:output:0"gradients/Mean_grad/Const:output:0*
T0*
_output_shapes
:2
gradients/Mean_grad/Tile
gradients/Mean_grad/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  ?A2
gradients/Mean_grad/Const_1?
gradients/Mean_grad/truedivRealDiv!gradients/Mean_grad/Tile:output:0$gradients/Mean_grad/Const_1:output:0*
T0*
_output_shapes
:2
gradients/Mean_grad/truediv?
gradients/sub_2_grad/NegNeggradients/Mean_grad/truediv:z:0*
T0*
_output_shapes
:2
gradients/sub_2_grad/Neg?
gradients/Sum_2_grad/Maximum/xConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Sum_2_grad/Maximum/x?
gradients/Sum_2_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :2 
gradients/Sum_2_grad/Maximum/y?
gradients/Sum_2_grad/MaximumMaximum'gradients/Sum_2_grad/Maximum/x:output:0'gradients/Sum_2_grad/Maximum/y:output:0*
T0*
_output_shapes
:2
gradients/Sum_2_grad/Maximum?
gradients/Sum_2_grad/floordiv/xConst*
_output_shapes
:*
dtype0*
valueB"      2!
gradients/Sum_2_grad/floordiv/x?
gradients/Sum_2_grad/floordivFloorDiv(gradients/Sum_2_grad/floordiv/x:output:0 gradients/Sum_2_grad/Maximum:z:0*
T0*
_output_shapes
:2
gradients/Sum_2_grad/floordiv?
"gradients/Sum_2_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/Sum_2_grad/Reshape/shape?
gradients/Sum_2_grad/ReshapeReshapegradients/sub_2_grad/Neg:y:0+gradients/Sum_2_grad/Reshape/shape:output:0*
T0*
_output_shapes

:2
gradients/Sum_2_grad/Reshape?
#gradients/Sum_2_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gradients/Sum_2_grad/Tile/multiples?
gradients/Sum_2_grad/TileTile%gradients/Sum_2_grad/Reshape:output:0,gradients/Sum_2_grad/Tile/multiples:output:0*
T0*
_output_shapes

:2
gradients/Sum_2_grad/Tile}
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv:z:0*
T0*
_output_shapes
:2
gradients/Neg_grad/Neg?
"gradients/Sum_1_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/Sum_1_grad/Reshape/shape?
gradients/Sum_1_grad/ReshapeReshapegradients/Mean_grad/truediv:z:0+gradients/Sum_1_grad/Reshape/shape:output:0*
T0*
_output_shapes

:2
gradients/Sum_1_grad/Reshape?
#gradients/Sum_1_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gradients/Sum_1_grad/Tile/multiples?
gradients/Sum_1_grad/TileTile%gradients/Sum_1_grad/Reshape:output:0,gradients/Sum_1_grad/Tile/multiples:output:0*
T0*
_output_shapes

:2
gradients/Sum_1_grad/Tile?
-gradients/mul_3_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 2/
-gradients/mul_3_grad/BroadcastGradientArgs/s0?
/gradients/mul_3_grad/BroadcastGradientArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 21
/gradients/mul_3_grad/BroadcastGradientArgs/s0_1?
-gradients/mul_3_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gradients/mul_3_grad/BroadcastGradientArgs/s1?
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/mul_3_grad/BroadcastGradientArgs/s0_1:output:06gradients/mul_3_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:?????????:?????????2,
*gradients/mul_3_grad/BroadcastGradientArgs?
gradients/mul_3_grad/MulMul"gradients/Sum_2_grad/Tile:output:0gradients_mul_3_grad_mul_add_3*
T0*
_output_shapes

:2
gradients/mul_3_grad/Mul?
*gradients/mul_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/mul_3_grad/Sum/reduction_indices?
gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul:z:03gradients/mul_3_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_3_grad/Sum?
"gradients/mul_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_3_grad/Reshape/shape?
$gradients/mul_3_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/mul_3_grad/Reshape/shape_1?
gradients/mul_3_grad/ReshapeReshape!gradients/mul_3_grad/Sum:output:0-gradients/mul_3_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_3_grad/Reshape?
gradients/mul_3_grad/Mul_1Mul"gradients_mul_3_grad_mul_1_mul_3_x"gradients/Sum_2_grad/Tile:output:0*
T0*
_output_shapes

:2
gradients/mul_3_grad/Mul_1?
gradients/Sum_grad/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"            2
gradients/Sum_grad/Maximum/x~
gradients/Sum_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/Sum_grad/Maximum/y?
gradients/Sum_grad/MaximumMaximum%gradients/Sum_grad/Maximum/x:output:0%gradients/Sum_grad/Maximum/y:output:0*
T0*
_output_shapes
:2
gradients/Sum_grad/Maximum?
gradients/Sum_grad/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2
gradients/Sum_grad/floordiv/x?
gradients/Sum_grad/floordivFloorDiv&gradients/Sum_grad/floordiv/x:output:0gradients/Sum_grad/Maximum:z:0*
T0*
_output_shapes
:2
gradients/Sum_grad/floordiv?
 gradients/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2"
 gradients/Sum_grad/Reshape/shape?
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg:y:0)gradients/Sum_grad/Reshape/shape:output:0*
T0*&
_output_shapes
:2
gradients/Sum_grad/Reshape?
!gradients/Sum_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2#
!gradients/Sum_grad/Tile/multiples?
gradients/Sum_grad/TileTile#gradients/Sum_grad/Reshape:output:0*gradients/Sum_grad/Tile/multiples:output:0*
T0*(
_output_shapes
:??2
gradients/Sum_grad/Tile?
gradients/mul_1_grad/MulMul"gradients/Sum_1_grad/Tile:output:0gradients_mul_1_grad_mul_add_1*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul?
*gradients/mul_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/mul_1_grad/Sum/reduction_indices?
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul:z:03gradients/mul_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_1_grad/Sum?
"gradients/mul_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_1_grad/Reshape/shape?
$gradients/mul_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/mul_1_grad/Reshape/shape_1?
gradients/mul_1_grad/ReshapeReshape!gradients/mul_1_grad/Sum:output:0-gradients/mul_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_1_grad/Reshape?
gradients/mul_1_grad/Mul_1Mul"gradients_mul_1_grad_mul_1_mul_1_x"gradients/Sum_1_grad/Tile:output:0*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul_1?
-gradients/add_3_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gradients/add_3_grad/BroadcastGradientArgs/s0?
-gradients/add_3_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2/
-gradients/add_3_grad/BroadcastGradientArgs/s1?
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/add_3_grad/BroadcastGradientArgs/s0:output:06gradients/add_3_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:?????????:?????????2,
*gradients/add_3_grad/BroadcastGradientArgs?
*gradients/add_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/add_3_grad/Sum/reduction_indices?
gradients/add_3_grad/SumSumgradients/mul_3_grad/Mul_1:z:03gradients/add_3_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_3_grad/Sum?
"gradients/add_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_3_grad/Reshape/shape?
$gradients/add_3_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/add_3_grad/Reshape/shape_1?
gradients/add_3_grad/ReshapeReshape!gradients/add_3_grad/Sum:output:0-gradients/add_3_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_3_grad/Reshape?
*gradients/add_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/add_1_grad/Sum/reduction_indices?
gradients/add_1_grad/SumSumgradients/mul_1_grad/Mul_1:z:03gradients/add_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_1_grad/Sum?
"gradients/add_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_1_grad/Reshape/shape?
$gradients/add_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/add_1_grad/Reshape/shape_1?
gradients/add_1_grad/ReshapeReshape!gradients/add_1_grad/Sum:output:0-gradients/add_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_1_grad/Reshape?
$gradients/logistic_loss/sub_grad/NegNeg gradients/Sum_grad/Tile:output:0*
T0*(
_output_shapes
:??2&
$gradients/logistic_loss/sub_grad/Neg?
(gradients/logistic_loss/Log1p_grad/add/xConst^gradients/Sum_grad/Tile*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(gradients/logistic_loss/Log1p_grad/add/x?
&gradients/logistic_loss/Log1p_grad/addAddV21gradients/logistic_loss/Log1p_grad/add/x:output:08gradients_logistic_loss_log1p_grad_add_logistic_loss_exp*
T0*(
_output_shapes
:??2(
&gradients/logistic_loss/Log1p_grad/add?
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal*gradients/logistic_loss/Log1p_grad/add:z:0*
T0*(
_output_shapes
:??2/
-gradients/logistic_loss/Log1p_grad/Reciprocal?
&gradients/logistic_loss/Log1p_grad/mulMul gradients/Sum_grad/Tile:output:01gradients/logistic_loss/Log1p_grad/Reciprocal:y:0*
T0*(
_output_shapes
:??2(
&gradients/logistic_loss/Log1p_grad/mul?
(gradients/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/add_grad/Sum/reduction_indices?
gradients/add_grad/SumSumgradients/mul_1_grad/Mul_1:z:01gradients/add_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_grad/Sum?
 gradients/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/add_grad/Reshape/shape?
"gradients/add_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_grad/Reshape/shape_1?
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0+gradients/add_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_grad/Reshape?
gradients/mul_2_grad/MulMulgradients/mul_3_grad/Mul_1:z:0gradients_mul_2_grad_mul_exp_1*
T0*
_output_shapes

:2
gradients/mul_2_grad/Mul?
gradients/mul_2_grad/Mul_1Mulgradients/mul_3_grad/Mul_1:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:2
gradients/mul_2_grad/Mul_1?
>gradients/logistic_loss/Select_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2@
>gradients/logistic_loss/Select_grad/zeros_like/shape_as_tensor?
4gradients/logistic_loss/Select_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4gradients/logistic_loss/Select_grad/zeros_like/Const?
.gradients/logistic_loss/Select_grad/zeros_likeFillGgradients/logistic_loss/Select_grad/zeros_like/shape_as_tensor:output:0=gradients/logistic_loss/Select_grad/zeros_like/Const:output:0*
T0*(
_output_shapes
:??20
.gradients/logistic_loss/Select_grad/zeros_like?
*gradients/logistic_loss/Select_grad/SelectSelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal gradients/Sum_grad/Tile:output:07gradients/logistic_loss/Select_grad/zeros_like:output:0*
T0*(
_output_shapes
:??2,
*gradients/logistic_loss/Select_grad/Select?
,gradients/logistic_loss/Select_grad/Select_1SelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal7gradients/logistic_loss/Select_grad/zeros_like:output:0 gradients/Sum_grad/Tile:output:0*
T0*(
_output_shapes
:??2.
,gradients/logistic_loss/Select_grad/Select_1?
$gradients/logistic_loss/mul_grad/MulMul(gradients/logistic_loss/sub_grad/Neg:y:0&gradients_logistic_loss_mul_grad_mul_x*
T0*(
_output_shapes
:??2&
$gradients/logistic_loss/mul_grad/Mul?
&gradients/logistic_loss/mul_grad/Mul_1Mul(gradients/logistic_loss/sub_grad/Neg:y:0@gradients_logistic_loss_mul_grad_mul_1_statefulpartitionedcall_2*
T0*(
_output_shapes
:??2(
&gradients/logistic_loss/mul_grad/Mul_1?
$gradients/logistic_loss/Exp_grad/mulMul*gradients/logistic_loss/Log1p_grad/mul:z:08gradients_logistic_loss_log1p_grad_add_logistic_loss_exp*
T0*(
_output_shapes
:??2&
$gradients/logistic_loss/Exp_grad/mul?
gradients/mul_grad/MulMulgradients/mul_1_grad/Mul_1:z:0gradients_mul_grad_mul_exp*
T0*
_output_shapes

:2
gradients/mul_grad/Mul?
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_powgradients/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes

:2
gradients/mul_grad/Mul_1?
(gradients/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/mul_grad/Sum/reduction_indices?
gradients/mul_grad/SumSumgradients/mul_grad/Mul_1:z:01gradients/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Sum?
 gradients/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/mul_grad/Reshape/shape?
"gradients/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_grad/Reshape/shape_1?
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0+gradients/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Reshape?
gradients/pow_1_grad/mulMulgradients/mul_2_grad/Mul:z:0 gradients_pow_1_grad_mul_pow_1_y*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul}
gradients/pow_1_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gradients/pow_1_grad/sub/y?
gradients/pow_1_grad/subSub gradients_pow_1_grad_mul_pow_1_y#gradients/pow_1_grad/sub/y:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/sub?
gradients/pow_1_grad/PowPowgradients_pow_1_grad_pow_sub_1gradients/pow_1_grad/sub:z:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Pow?
gradients/pow_1_grad/mul_1Mulgradients/pow_1_grad/mul:z:0gradients/pow_1_grad/Pow:z:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_1?
gradients/pow_1_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
gradients/pow_1_grad/Greater/y?
gradients/pow_1_grad/GreaterGreatergradients_pow_1_grad_pow_sub_1'gradients/pow_1_grad/Greater/y:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Greater?
$gradients/pow_1_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$gradients/pow_1_grad/ones_like/Shape?
$gradients/pow_1_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$gradients/pow_1_grad/ones_like/Const?
gradients/pow_1_grad/ones_likeFill-gradients/pow_1_grad/ones_like/Shape:output:0-gradients/pow_1_grad/ones_like/Const:output:0*
T0*
_output_shapes

:2 
gradients/pow_1_grad/ones_like?
gradients/pow_1_grad/SelectSelect gradients/pow_1_grad/Greater:z:0gradients_pow_1_grad_pow_sub_1'gradients/pow_1_grad/ones_like:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Select?
gradients/pow_1_grad/LogLog$gradients/pow_1_grad/Select:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Log?
gradients/pow_1_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    2!
gradients/pow_1_grad/zeros_like?
gradients/pow_1_grad/Select_1Select gradients/pow_1_grad/Greater:z:0gradients/pow_1_grad/Log:y:0(gradients/pow_1_grad/zeros_like:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Select_1?
gradients/pow_1_grad/mul_2Mulgradients/mul_2_grad/Mul:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_2?
gradients/pow_1_grad/mul_3Mulgradients/pow_1_grad/mul_2:z:0&gradients/pow_1_grad/Select_1:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_3?
*gradients/pow_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/pow_1_grad/Sum/reduction_indices?
gradients/pow_1_grad/SumSumgradients/pow_1_grad/mul_3:z:03gradients/pow_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/Sum?
"gradients/pow_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/pow_1_grad/Reshape/shape?
$gradients/pow_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/pow_1_grad/Reshape/shape_1?
gradients/pow_1_grad/ReshapeReshape!gradients/pow_1_grad/Sum:output:0-gradients/pow_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/Reshape?
gradients/Exp_1_grad/mulMulgradients/mul_2_grad/Mul_1:z:0gradients_mul_2_grad_mul_exp_1*
T0*
_output_shapes

:2
gradients/Exp_1_grad/mul?
@gradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   ?         2B
@gradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensor?
6gradients/logistic_loss/Select_1_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6gradients/logistic_loss/Select_1_grad/zeros_like/Const?
0gradients/logistic_loss/Select_1_grad/zeros_likeFillIgradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensor:output:0?gradients/logistic_loss/Select_1_grad/zeros_like/Const:output:0*
T0*(
_output_shapes
:??22
0gradients/logistic_loss/Select_1_grad/zeros_like?
,gradients/logistic_loss/Select_1_grad/SelectSelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal(gradients/logistic_loss/Exp_grad/mul:z:09gradients/logistic_loss/Select_1_grad/zeros_like:output:0*
T0*(
_output_shapes
:??2.
,gradients/logistic_loss/Select_1_grad/Select?
.gradients/logistic_loss/Select_1_grad/Select_1SelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal9gradients/logistic_loss/Select_1_grad/zeros_like:output:0(gradients/logistic_loss/Exp_grad/mul:z:0*
T0*(
_output_shapes
:??20
.gradients/logistic_loss/Select_1_grad/Select_1?
gradients/pow_grad/mulMulgradients/mul_grad/Mul:z:0gradients_pow_grad_mul_pow_y*
T0*
_output_shapes

:2
gradients/pow_grad/muly
gradients/pow_grad/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gradients/pow_grad/sub/y?
gradients/pow_grad/subSubgradients_pow_grad_mul_pow_y!gradients/pow_grad/sub/y:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/sub?
gradients/pow_grad/PowPowgradients_pow_grad_pow_subgradients/pow_grad/sub:z:0*
T0*
_output_shapes

:2
gradients/pow_grad/Pow?
gradients/pow_grad/mul_1Mulgradients/pow_grad/mul:z:0gradients/pow_grad/Pow:z:0*
T0*
_output_shapes

:2
gradients/pow_grad/mul_1?
gradients/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gradients/pow_grad/Greater/y?
gradients/pow_grad/GreaterGreatergradients_pow_grad_pow_sub%gradients/pow_grad/Greater/y:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Greater?
"gradients/pow_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/pow_grad/ones_like/Shape?
"gradients/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2$
"gradients/pow_grad/ones_like/Const?
gradients/pow_grad/ones_likeFill+gradients/pow_grad/ones_like/Shape:output:0+gradients/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/ones_like?
gradients/pow_grad/SelectSelectgradients/pow_grad/Greater:z:0gradients_pow_grad_pow_sub%gradients/pow_grad/ones_like:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Select?
gradients/pow_grad/LogLog"gradients/pow_grad/Select:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Log?
gradients/pow_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    2
gradients/pow_grad/zeros_like?
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greater:z:0gradients/pow_grad/Log:y:0&gradients/pow_grad/zeros_like:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Select_1?
gradients/pow_grad/mul_2Mulgradients/mul_grad/Mul:z:0gradients_mul_grad_mul_1_pow*
T0*
_output_shapes

:2
gradients/pow_grad/mul_2?
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2:z:0$gradients/pow_grad/Select_1:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/mul_3?
(gradients/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/pow_grad/Sum/reduction_indices?
gradients/pow_grad/SumSumgradients/pow_grad/mul_3:z:01gradients/pow_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/Sum?
 gradients/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/pow_grad/Reshape/shape?
"gradients/pow_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/pow_grad/Reshape/shape_1?
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sum:output:0+gradients/pow_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/Reshape?
gradients/sub_1_grad/NegNeggradients/pow_1_grad/mul_1:z:0*
T0*
_output_shapes

:2
gradients/sub_1_grad/Neg?
gradients/Neg_1_grad/NegNeggradients/Exp_1_grad/mul:z:0*
T0*
_output_shapes

:2
gradients/Neg_1_grad/Neg?
$gradients/logistic_loss/Neg_grad/NegNeg5gradients/logistic_loss/Select_1_grad/Select:output:0*
T0*(
_output_shapes
:??2&
$gradients/logistic_loss/Neg_grad/Neg~
gradients/sub_grad/NegNeggradients/pow_grad/mul_1:z:0*
T0*
_output_shapes

:2
gradients/sub_grad/Neg?
(gradients/sub_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/sub_grad/Sum/reduction_indices?
gradients/sub_grad/SumSumgradients/sub_grad/Neg:y:01gradients/sub_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/sub_grad/Sum?
 gradients/sub_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/sub_grad/Reshape/shape?
"gradients/sub_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/sub_grad/Reshape/shape_1?
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sum:output:0+gradients/sub_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/sub_grad/Reshape?
gradients/AddNAddN3gradients/logistic_loss/Select_grad/Select:output:0(gradients/logistic_loss/mul_grad/Mul:z:07gradients/logistic_loss/Select_1_grad/Select_1:output:0(gradients/logistic_loss/Neg_grad/Neg:y:0*
N*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*(
_output_shapes
:??2
gradients/AddN?
8gradients/StatefulPartitionedCall_2_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0Bgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_1Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_2Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_3Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_4Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_5Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_6Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_7Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_8Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_9Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_10Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_11Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?::	?,:?,:? :?:??:?:@?:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *2
f-R+
)__inference___backward_decode_27806_278672:
8gradients/StatefulPartitionedCall_2_grad/PartitionedCall?
gradients/AddN_1AddNgradients/pow_1_grad/mul_1:z:0gradients/pow_grad/mul_1:z:0Agradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:0*
N*
T0*-
_class#
!loc:@gradients/pow_1_grad/mul_1*
_output_shapes

:2
gradients/AddN_1?
8gradients/StatefulPartitionedCall_1_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:0Bgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_1Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_2Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_3*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
::* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *:
f5R3
1__inference___backward_reparameterize_27908_279332:
8gradients/StatefulPartitionedCall_1_grad/PartitionedCall?
gradients/AddN_2AddNgradients/sub_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:0*
N*
T0*+
_class!
loc:@gradients/sub_1_grad/Neg*
_output_shapes

:2
gradients/AddN_2?
gradients/AddN_3AddNgradients/mul_3_grad/Mul_1:z:0gradients/Neg_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:1*
N*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1*
_output_shapes

:2
gradients/AddN_3?

6gradients/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0gradients/AddN_3:sum:0>gradients_statefulpartitionedcall_grad_statefulpartitionedcall@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_1@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_2@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_3@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_4@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_5@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_6@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_7@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_8@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_9Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_10Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:??: : : @:@:@?:?:??:?:
??:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *2
f-R+
)__inference___backward_encode_27946_2800628
6gradients/StatefulPartitionedCall_grad/PartitionedCall?
gradients/AddN_4AddN*gradients/logistic_loss/mul_grad/Mul_1:z:0?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*9
_class/
-+loc:@gradients/logistic_loss/mul_grad/Mul_1*(
_output_shapes
:??2
gradients/AddN_4k
IdentityIdentitygradients/AddN_4:sum:0*
T0*(
_output_shapes
:??2

Identity?

Identity_1Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*&
_output_shapes
: 2

Identity_1?

Identity_2Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:3*
T0*&
_output_shapes
: @2

Identity_3?

Identity_4Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:4*
T0*
_output_shapes
:@2

Identity_4?

Identity_5Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:5*
T0*'
_output_shapes
:@?2

Identity_5?

Identity_6Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:6*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:7*
T0*(
_output_shapes
:??2

Identity_7?

Identity_8Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:8*
T0*
_output_shapes	
:?2

Identity_8?

Identity_9Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:9*
T0* 
_output_shapes
:
??2

Identity_9?
Identity_10Identity@gradients/StatefulPartitionedCall_grad/PartitionedCall:output:10*
T0*
_output_shapes
:2
Identity_10?
Identity_11IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	?,2
Identity_11?
Identity_12IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:?,2
Identity_12?
Identity_13IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:3*
T0*'
_output_shapes
:? 2
Identity_13?
Identity_14IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:4*
T0*
_output_shapes	
:?2
Identity_14?
Identity_15IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:5*
T0*(
_output_shapes
:??2
Identity_15?
Identity_16IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:6*
T0*
_output_shapes	
:?2
Identity_16?
Identity_17IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:7*
T0*'
_output_shapes
:@?2
Identity_17?
Identity_18IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:8*
T0*
_output_shapes
:@2
Identity_18?
Identity_19IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:9*
T0*&
_output_shapes
: @2
Identity_19?
Identity_20IdentityBgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:10*
T0*
_output_shapes
: 2
Identity_20?
Identity_21IdentityBgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:11*
T0*&
_output_shapes
: 2
Identity_21?
Identity_22IdentityBgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:12*
T0*
_output_shapes
:2
Identity_22"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?: :: :: :??:::??:??:??: :: :: ::?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	?,:::: :: :
??:
??:
?:?:??:+?@:@?:W : @:??: *7
forward_function_name__forward_compute_loss_28066: 

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :.*
(
_output_shapes
:??:$ 

_output_shapes

::$ 

_output_shapes

::.*
(
_output_shapes
:??:.	*
(
_output_shapes
:??:.
*
(
_output_shapes
:??:

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::

_output_shapes
: :$ 

_output_shapes

::.*
(
_output_shapes
:?? :,(
&
_output_shapes
: :-)
'
_output_shapes
:X?@:,(
&
_output_shapes
: @:-)
'
_output_shapes
:,@?:-)
'
_output_shapes
:@?:-)
'
_output_shapes
: ?:.*
(
_output_shapes
:??:,(
&
_output_shapes
: :-)
'
_output_shapes
:? :%!

_output_shapes
:	?,:%!

_output_shapes
:	?,:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
: :$! 

_output_shapes

::"

_output_shapes
: :&#"
 
_output_shapes
:
??:&$"
 
_output_shapes
:
??:-%)
'
_output_shapes
:
?:-&)
'
_output_shapes
:?:.'*
(
_output_shapes
:??:,((
&
_output_shapes
:+?@:-))
'
_output_shapes
:@?:,*(
&
_output_shapes
:W :,+(
&
_output_shapes
: @:.,*
(
_output_shapes
:??:,-(
&
_output_shapes
: 
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_24605

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????+?@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????W 
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29113

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceU
stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????X?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????X?@
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_65_layer_call_fn_28827

inputs"
unknown:? 
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_254152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:????????? ?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
__forward_decode_27866
z_0H
5sequential_27_dense_27_matmul_readvariableop_resource:	?,E
6sequential_27_dense_27_biasadd_readvariableop_resource:	?,e
Jsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource:? P
Asequential_27_conv2d_transpose_65_biasadd_readvariableop_resource:	?f
Jsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource:??P
Asequential_27_conv2d_transpose_66_biasadd_readvariableop_resource:	?e
Jsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource:@?O
Asequential_27_conv2d_transpose_67_biasadd_readvariableop_resource:@d
Jsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource: @O
Asequential_27_conv2d_transpose_68_biasadd_readvariableop_resource: d
Jsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource: O
Asequential_27_conv2d_transpose_69_biasadd_readvariableop_resource:
identity*
&sequential_27_conv2d_transpose_68_reluE
Asequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop*
&sequential_27_conv2d_transpose_67_reluE
Asequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop*
&sequential_27_conv2d_transpose_66_reluE
Asequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop*
&sequential_27_conv2d_transpose_65_reluE
Asequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop$
 sequential_27_reshape_13_reshapeE
Asequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop
sequential_27_dense_27_relu0
,sequential_27_dense_27_matmul_readvariableop
z??8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?-sequential_27/dense_27/BiasAdd/ReadVariableOp?,sequential_27/dense_27/MatMul/ReadVariableOp?
,sequential_27/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_27_dense_27_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_27/dense_27/MatMul/ReadVariableOp?
sequential_27/dense_27/MatMulMatMulz_04sequential_27/dense_27/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/MatMul?
-sequential_27/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_27_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_27/dense_27/BiasAdd/ReadVariableOp?
sequential_27/dense_27/BiasAddBiasAdd'sequential_27/dense_27/MatMul:product:05sequential_27/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_27/dense_27/BiasAdd?
sequential_27/dense_27/ReluRelu'sequential_27/dense_27/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_27/dense_27/Relu?
sequential_27/reshape_13/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_27/reshape_13/Shape?
,sequential_27/reshape_13/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_27/reshape_13/strided_slice/stack?
.sequential_27/reshape_13/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_1?
.sequential_27/reshape_13/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_27/reshape_13/strided_slice/stack_2?
&sequential_27/reshape_13/strided_sliceStridedSlice'sequential_27/reshape_13/Shape:output:05sequential_27/reshape_13/strided_slice/stack:output:07sequential_27/reshape_13/strided_slice/stack_1:output:07sequential_27/reshape_13/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_27/reshape_13/strided_slice?
(sequential_27/reshape_13/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/1?
(sequential_27/reshape_13/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_27/reshape_13/Reshape/shape/2?
(sequential_27/reshape_13/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_27/reshape_13/Reshape/shape/3?
&sequential_27/reshape_13/Reshape/shapePack/sequential_27/reshape_13/strided_slice:output:01sequential_27/reshape_13/Reshape/shape/1:output:01sequential_27/reshape_13/Reshape/shape/2:output:01sequential_27/reshape_13/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_27/reshape_13/Reshape/shape?
 sequential_27/reshape_13/ReshapeReshape)sequential_27/dense_27/Relu:activations:0/sequential_27/reshape_13/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_27/reshape_13/Reshape?
'sequential_27/conv2d_transpose_65/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_65/Shape?
5sequential_27/conv2d_transpose_65/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_65/strided_slice/stack?
7sequential_27/conv2d_transpose_65/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_1?
7sequential_27/conv2d_transpose_65/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_65/strided_slice/stack_2?
/sequential_27/conv2d_transpose_65/strided_sliceStridedSlice0sequential_27/conv2d_transpose_65/Shape:output:0>sequential_27/conv2d_transpose_65/strided_slice/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_65/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_65/strided_slice?
)sequential_27/conv2d_transpose_65/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_65/stack/1?
)sequential_27/conv2d_transpose_65/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_65/stack/2?
)sequential_27/conv2d_transpose_65/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_65/stack/3?
'sequential_27/conv2d_transpose_65/stackPack8sequential_27/conv2d_transpose_65/strided_slice:output:02sequential_27/conv2d_transpose_65/stack/1:output:02sequential_27/conv2d_transpose_65/stack/2:output:02sequential_27/conv2d_transpose_65/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_65/stack?
7sequential_27/conv2d_transpose_65/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_65/strided_slice_1/stack?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_65/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_65/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_65/stack:output:0@sequential_27/conv2d_transpose_65/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_65/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_65/strided_slice_1?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_65_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_65/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_65/stack:output:0Isequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0)sequential_27/reshape_13/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_65/conv2d_transpose?
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_65_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_65/BiasAddBiasAdd;sequential_27/conv2d_transpose_65/conv2d_transpose:output:0@sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_27/conv2d_transpose_65/BiasAdd?
&sequential_27/conv2d_transpose_65/ReluRelu2sequential_27/conv2d_transpose_65/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_27/conv2d_transpose_65/Relu?
'sequential_27/conv2d_transpose_66/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_27/conv2d_transpose_66/Shape?
5sequential_27/conv2d_transpose_66/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_66/strided_slice/stack?
7sequential_27/conv2d_transpose_66/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_1?
7sequential_27/conv2d_transpose_66/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_66/strided_slice/stack_2?
/sequential_27/conv2d_transpose_66/strided_sliceStridedSlice0sequential_27/conv2d_transpose_66/Shape:output:0>sequential_27/conv2d_transpose_66/strided_slice/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_66/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_66/strided_slice?
)sequential_27/conv2d_transpose_66/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_27/conv2d_transpose_66/stack/1?
)sequential_27/conv2d_transpose_66/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_66/stack/2?
)sequential_27/conv2d_transpose_66/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_66/stack/3?
'sequential_27/conv2d_transpose_66/stackPack8sequential_27/conv2d_transpose_66/strided_slice:output:02sequential_27/conv2d_transpose_66/stack/1:output:02sequential_27/conv2d_transpose_66/stack/2:output:02sequential_27/conv2d_transpose_66/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_66/stack?
7sequential_27/conv2d_transpose_66/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_66/strided_slice_1/stack?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_66/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_66/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_66/stack:output:0@sequential_27/conv2d_transpose_66/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_66/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_66/strided_slice_1?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_66_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_66/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_66/stack:output:0Isequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_65/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_66/conv2d_transpose?
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_66/BiasAddBiasAdd;sequential_27/conv2d_transpose_66/conv2d_transpose:output:0@sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_27/conv2d_transpose_66/BiasAdd?
&sequential_27/conv2d_transpose_66/ReluRelu2sequential_27/conv2d_transpose_66/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_27/conv2d_transpose_66/Relu?
'sequential_27/conv2d_transpose_67/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_27/conv2d_transpose_67/Shape?
5sequential_27/conv2d_transpose_67/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_67/strided_slice/stack?
7sequential_27/conv2d_transpose_67/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_1?
7sequential_27/conv2d_transpose_67/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_67/strided_slice/stack_2?
/sequential_27/conv2d_transpose_67/strided_sliceStridedSlice0sequential_27/conv2d_transpose_67/Shape:output:0>sequential_27/conv2d_transpose_67/strided_slice/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_67/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_67/strided_slice?
)sequential_27/conv2d_transpose_67/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_27/conv2d_transpose_67/stack/1?
)sequential_27/conv2d_transpose_67/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_67/stack/2?
)sequential_27/conv2d_transpose_67/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_27/conv2d_transpose_67/stack/3?
'sequential_27/conv2d_transpose_67/stackPack8sequential_27/conv2d_transpose_67/strided_slice:output:02sequential_27/conv2d_transpose_67/stack/1:output:02sequential_27/conv2d_transpose_67/stack/2:output:02sequential_27/conv2d_transpose_67/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_67/stack?
7sequential_27/conv2d_transpose_67/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_67/strided_slice_1/stack?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_67/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_67/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_67/stack:output:0@sequential_27/conv2d_transpose_67/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_67/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_67/strided_slice_1?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_67_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_67/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_67/stack:output:0Isequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_66/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_67/conv2d_transpose?
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_67_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_67/BiasAddBiasAdd;sequential_27/conv2d_transpose_67/conv2d_transpose:output:0@sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_27/conv2d_transpose_67/BiasAdd?
&sequential_27/conv2d_transpose_67/ReluRelu2sequential_27/conv2d_transpose_67/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_27/conv2d_transpose_67/Relu?
'sequential_27/conv2d_transpose_68/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_27/conv2d_transpose_68/Shape?
5sequential_27/conv2d_transpose_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_68/strided_slice/stack?
7sequential_27/conv2d_transpose_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_1?
7sequential_27/conv2d_transpose_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_68/strided_slice/stack_2?
/sequential_27/conv2d_transpose_68/strided_sliceStridedSlice0sequential_27/conv2d_transpose_68/Shape:output:0>sequential_27/conv2d_transpose_68/strided_slice/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_68/strided_slice?
)sequential_27/conv2d_transpose_68/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/1?
)sequential_27/conv2d_transpose_68/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_68/stack/2?
)sequential_27/conv2d_transpose_68/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_27/conv2d_transpose_68/stack/3?
'sequential_27/conv2d_transpose_68/stackPack8sequential_27/conv2d_transpose_68/strided_slice:output:02sequential_27/conv2d_transpose_68/stack/1:output:02sequential_27/conv2d_transpose_68/stack/2:output:02sequential_27/conv2d_transpose_68/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_68/stack?
7sequential_27/conv2d_transpose_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_68/strided_slice_1/stack?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_68/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_68/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_68/stack:output:0@sequential_27/conv2d_transpose_68/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_68/strided_slice_1?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_68_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_68/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_68/stack:output:0Isequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_67/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_68/conv2d_transpose?
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_68/BiasAddBiasAdd;sequential_27/conv2d_transpose_68/conv2d_transpose:output:0@sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_27/conv2d_transpose_68/BiasAdd?
&sequential_27/conv2d_transpose_68/ReluRelu2sequential_27/conv2d_transpose_68/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_27/conv2d_transpose_68/Relu?
'sequential_27/conv2d_transpose_69/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_27/conv2d_transpose_69/Shape?
5sequential_27/conv2d_transpose_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_27/conv2d_transpose_69/strided_slice/stack?
7sequential_27/conv2d_transpose_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_1?
7sequential_27/conv2d_transpose_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_27/conv2d_transpose_69/strided_slice/stack_2?
/sequential_27/conv2d_transpose_69/strided_sliceStridedSlice0sequential_27/conv2d_transpose_69/Shape:output:0>sequential_27/conv2d_transpose_69/strided_slice/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_1:output:0@sequential_27/conv2d_transpose_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_27/conv2d_transpose_69/strided_slice?
)sequential_27/conv2d_transpose_69/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/1?
)sequential_27/conv2d_transpose_69/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_27/conv2d_transpose_69/stack/2?
)sequential_27/conv2d_transpose_69/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_27/conv2d_transpose_69/stack/3?
'sequential_27/conv2d_transpose_69/stackPack8sequential_27/conv2d_transpose_69/strided_slice:output:02sequential_27/conv2d_transpose_69/stack/1:output:02sequential_27/conv2d_transpose_69/stack/2:output:02sequential_27/conv2d_transpose_69/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_27/conv2d_transpose_69/stack?
7sequential_27/conv2d_transpose_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_27/conv2d_transpose_69/strided_slice_1/stack?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_1?
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_27/conv2d_transpose_69/strided_slice_1/stack_2?
1sequential_27/conv2d_transpose_69/strided_slice_1StridedSlice0sequential_27/conv2d_transpose_69/stack:output:0@sequential_27/conv2d_transpose_69/strided_slice_1/stack:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_1:output:0Bsequential_27/conv2d_transpose_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_27/conv2d_transpose_69/strided_slice_1?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_27_conv2d_transpose_69_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp?
2sequential_27/conv2d_transpose_69/conv2d_transposeConv2DBackpropInput0sequential_27/conv2d_transpose_69/stack:output:0Isequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:04sequential_27/conv2d_transpose_68/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_27/conv2d_transpose_69/conv2d_transpose?
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpReadVariableOpAsequential_27_conv2d_transpose_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp?
)sequential_27/conv2d_transpose_69/BiasAddBiasAdd;sequential_27/conv2d_transpose_69/conv2d_transpose:output:0@sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_27/conv2d_transpose_69/BiasAdd?
IdentityIdentity2sequential_27/conv2d_transpose_69/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp9^sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOpB^sequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp.^sequential_27/dense_27/BiasAdd/ReadVariableOp-^sequential_27/dense_27/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"?
Asequential_27_conv2d_transpose_65_conv2d_transpose_readvariableopIsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_27_conv2d_transpose_65_relu4sequential_27/conv2d_transpose_65/Relu:activations:0"?
Asequential_27_conv2d_transpose_66_conv2d_transpose_readvariableopIsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_27_conv2d_transpose_66_relu4sequential_27/conv2d_transpose_66/Relu:activations:0"?
Asequential_27_conv2d_transpose_67_conv2d_transpose_readvariableopIsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_27_conv2d_transpose_67_relu4sequential_27/conv2d_transpose_67/Relu:activations:0"?
Asequential_27_conv2d_transpose_68_conv2d_transpose_readvariableopIsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_27_conv2d_transpose_68_relu4sequential_27/conv2d_transpose_68/Relu:activations:0"?
Asequential_27_conv2d_transpose_69_conv2d_transpose_readvariableopIsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp:value:0"d
,sequential_27_dense_27_matmul_readvariableop4sequential_27/dense_27/MatMul/ReadVariableOp:value:0"H
sequential_27_dense_27_relu)sequential_27/dense_27/Relu:activations:0"M
 sequential_27_reshape_13_reshape)sequential_27/reshape_13/Reshape:output:0"
zz_0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : *E
backward_function_name+)__inference___backward_decode_27806_278672t
8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_65/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_65/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_66/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_66/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_67/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_67/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_68/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_68/conv2d_transpose/ReadVariableOp2t
8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp8sequential_27/conv2d_transpose_69/BiasAdd/ReadVariableOp2?
Asequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOpAsequential_27/conv2d_transpose_69/conv2d_transpose/ReadVariableOp2^
-sequential_27/dense_27/BiasAdd/ReadVariableOp-sequential_27/dense_27/BiasAdd/ReadVariableOp2\
,sequential_27/dense_27/MatMul/ReadVariableOp,sequential_27/dense_27/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?6
?
H__inference_sequential_26_layer_call_and_return_conditional_losses_28362

inputsB
(conv2d_52_conv2d_readvariableop_resource: 7
)conv2d_52_biasadd_readvariableop_resource: B
(conv2d_53_conv2d_readvariableop_resource: @7
)conv2d_53_biasadd_readvariableop_resource:@C
(conv2d_54_conv2d_readvariableop_resource:@?8
)conv2d_54_biasadd_readvariableop_resource:	?D
(conv2d_55_conv2d_readvariableop_resource:??8
)conv2d_55_biasadd_readvariableop_resource:	?;
'dense_26_matmul_readvariableop_resource:
??6
(dense_26_biasadd_readvariableop_resource:
identity?? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_52/Conv2D/ReadVariableOp?
conv2d_52/Conv2DConv2Dinputs'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d_52/Conv2D?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_52/BiasAdd/ReadVariableOp?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d_52/BiasAdd~
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d_52/Relu?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_53/Relu?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_54/Conv2D/ReadVariableOp?
conv2d_54/Conv2DConv2Dconv2d_53/Relu:activations:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_54/Conv2D?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOp?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_54/BiasAdd
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_54/Relu?
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_55/Conv2D/ReadVariableOp?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_55/Conv2D?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_55/BiasAdd/ReadVariableOp?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_55/BiasAdd
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_55/Reluu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten_13/Const?
flatten_13/ReshapeReshapeconv2d_55/Relu:activations:0flatten_13/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_13/Reshape?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMulflatten_13/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_26/BiasAddt
IdentityIdentitydense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29089

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+??????????????????????????? 2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_52_layer_call_fn_28669

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_245882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????W 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_25128

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????@2
Relu?
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
C__inference_dense_26_layer_call_and_return_conditional_losses_24663

inputs2
matmul_readvariableop_resource:
??-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?+
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_25537

inputs!
dense_27_25371:	?,
dense_27_25373:	?,4
conv2d_transpose_65_25416:? (
conv2d_transpose_65_25418:	?5
conv2d_transpose_66_25445:??(
conv2d_transpose_66_25447:	?4
conv2d_transpose_67_25474:@?'
conv2d_transpose_67_25476:@3
conv2d_transpose_68_25503: @'
conv2d_transpose_68_25505: 3
conv2d_transpose_69_25531: '
conv2d_transpose_69_25533:
identity??+conv2d_transpose_65/StatefulPartitionedCall?+conv2d_transpose_66/StatefulPartitionedCall?+conv2d_transpose_67/StatefulPartitionedCall?+conv2d_transpose_68/StatefulPartitionedCall?+conv2d_transpose_69/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCallinputsdense_27_25371dense_27_25373*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_253702"
 dense_27/StatefulPartitionedCall?
reshape_13/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_253902
reshape_13/PartitionedCall?
+conv2d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0conv2d_transpose_65_25416conv2d_transpose_65_25418*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_254152-
+conv2d_transpose_65/StatefulPartitionedCall?
+conv2d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_65/StatefulPartitionedCall:output:0conv2d_transpose_66_25445conv2d_transpose_66_25447*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????,@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_254442-
+conv2d_transpose_66/StatefulPartitionedCall?
+conv2d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_66/StatefulPartitionedCall:output:0conv2d_transpose_67_25474conv2d_transpose_67_25476*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????X?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_254732-
+conv2d_transpose_67/StatefulPartitionedCall?
+conv2d_transpose_68/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_67/StatefulPartitionedCall:output:0conv2d_transpose_68_25503conv2d_transpose_68_25505*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_255022-
+conv2d_transpose_68/StatefulPartitionedCall?
+conv2d_transpose_69/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_68/StatefulPartitionedCall:output:0conv2d_transpose_69_25531conv2d_transpose_69_25533*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_255302-
+conv2d_transpose_69/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_69/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_65/StatefulPartitionedCall,^conv2d_transpose_66/StatefulPartitionedCall,^conv2d_transpose_67/StatefulPartitionedCall,^conv2d_transpose_68/StatefulPartitionedCall,^conv2d_transpose_69/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_65/StatefulPartitionedCall+conv2d_transpose_65/StatefulPartitionedCall2Z
+conv2d_transpose_66/StatefulPartitionedCall+conv2d_transpose_66/StatefulPartitionedCall2Z
+conv2d_transpose_67/StatefulPartitionedCall+conv2d_transpose_67/StatefulPartitionedCall2Z
+conv2d_transpose_68/StatefulPartitionedCall+conv2d_transpose_68/StatefulPartitionedCall2Z
+conv2d_transpose_69/StatefulPartitionedCall+conv2d_transpose_69/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_27_layer_call_fn_25564
input_28
unknown:	?,
	unknown_0:	?,$
	unknown_1:? 
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?$
	unknown_5:@?
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_28unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_255372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_28
?
F
*__inference_flatten_13_layer_call_fn_28745

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_flatten_13_layer_call_and_return_conditional_losses_246512
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????
?:X T
0
_output_shapes
:?????????
?
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_25473

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????X?@2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????,@?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:?????????,@?
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28885

inputsC
(conv2d_transpose_readvariableop_resource:? .
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:????????? ?2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29187

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceU
stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3?
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOp?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_transpose?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
-__inference_sequential_27_layer_call_fn_28391

inputs
unknown:	?,
	unknown_0:	?,$
	unknown_1:? 
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?$
	unknown_5:@?
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_255372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
 __inference_reparameterize_27470
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
random_normal/stddev?
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:2
random_normalS
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
mul/yR
mulMullogvarmul/y:output:0*
T0*
_output_shapes

:2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:::D @

_output_shapes

:

_user_specified_namemean:FB

_output_shapes

:
 
_user_specified_namelogvar
?
?
-__inference_sequential_26_layer_call_fn_28282

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_26_layer_call_and_return_conditional_losses_248062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_27_layer_call_fn_28420

inputs
unknown:	?,
	unknown_0:	?,$
	unknown_1:? 
	unknown_2:	?%
	unknown_3:??
	unknown_4:	?$
	unknown_5:@?
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_27_layer_call_and_return_conditional_losses_256912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_55_layer_call_fn_28729

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????
?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_246392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????
?2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?+
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_25782
input_28!
dense_27_25750:	?,
dense_27_25752:	?,4
conv2d_transpose_65_25756:? (
conv2d_transpose_65_25758:	?5
conv2d_transpose_66_25761:??(
conv2d_transpose_66_25763:	?4
conv2d_transpose_67_25766:@?'
conv2d_transpose_67_25768:@3
conv2d_transpose_68_25771: @'
conv2d_transpose_68_25773: 3
conv2d_transpose_69_25776: '
conv2d_transpose_69_25778:
identity??+conv2d_transpose_65/StatefulPartitionedCall?+conv2d_transpose_66/StatefulPartitionedCall?+conv2d_transpose_67/StatefulPartitionedCall?+conv2d_transpose_68/StatefulPartitionedCall?+conv2d_transpose_69/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCallinput_28dense_27_25750dense_27_25752*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_253702"
 dense_27/StatefulPartitionedCall?
reshape_13/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_253902
reshape_13/PartitionedCall?
+conv2d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0conv2d_transpose_65_25756conv2d_transpose_65_25758*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_254152-
+conv2d_transpose_65/StatefulPartitionedCall?
+conv2d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_65/StatefulPartitionedCall:output:0conv2d_transpose_66_25761conv2d_transpose_66_25763*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????,@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_254442-
+conv2d_transpose_66/StatefulPartitionedCall?
+conv2d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_66/StatefulPartitionedCall:output:0conv2d_transpose_67_25766conv2d_transpose_67_25768*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????X?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_254732-
+conv2d_transpose_67/StatefulPartitionedCall?
+conv2d_transpose_68/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_67/StatefulPartitionedCall:output:0conv2d_transpose_68_25771conv2d_transpose_68_25773*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_255022-
+conv2d_transpose_68/StatefulPartitionedCall?
+conv2d_transpose_69/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_68/StatefulPartitionedCall:output:0conv2d_transpose_69_25776conv2d_transpose_69_25778*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_255302-
+conv2d_transpose_69/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_69/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_65/StatefulPartitionedCall,^conv2d_transpose_66/StatefulPartitionedCall,^conv2d_transpose_67/StatefulPartitionedCall,^conv2d_transpose_68/StatefulPartitionedCall,^conv2d_transpose_69/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_65/StatefulPartitionedCall+conv2d_transpose_65/StatefulPartitionedCall2Z
+conv2d_transpose_66/StatefulPartitionedCall+conv2d_transpose_66/StatefulPartitionedCall2Z
+conv2d_transpose_67/StatefulPartitionedCall+conv2d_transpose_67/StatefulPartitionedCall2Z
+conv2d_transpose_68/StatefulPartitionedCall+conv2d_transpose_68/StatefulPartitionedCall2Z
+conv2d_transpose_69/StatefulPartitionedCall+conv2d_transpose_69/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_28
?+
?
H__inference_sequential_27_layer_call_and_return_conditional_losses_25817
input_28!
dense_27_25785:	?,
dense_27_25787:	?,4
conv2d_transpose_65_25791:? (
conv2d_transpose_65_25793:	?5
conv2d_transpose_66_25796:??(
conv2d_transpose_66_25798:	?4
conv2d_transpose_67_25801:@?'
conv2d_transpose_67_25803:@3
conv2d_transpose_68_25806: @'
conv2d_transpose_68_25808: 3
conv2d_transpose_69_25811: '
conv2d_transpose_69_25813:
identity??+conv2d_transpose_65/StatefulPartitionedCall?+conv2d_transpose_66/StatefulPartitionedCall?+conv2d_transpose_67/StatefulPartitionedCall?+conv2d_transpose_68/StatefulPartitionedCall?+conv2d_transpose_69/StatefulPartitionedCall? dense_27/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCallinput_28dense_27_25785dense_27_25787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_27_layer_call_and_return_conditional_losses_253702"
 dense_27/StatefulPartitionedCall?
reshape_13/PartitionedCallPartitionedCall)dense_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_reshape_13_layer_call_and_return_conditional_losses_253902
reshape_13/PartitionedCall?
+conv2d_transpose_65/StatefulPartitionedCallStatefulPartitionedCall#reshape_13/PartitionedCall:output:0conv2d_transpose_65_25791conv2d_transpose_65_25793*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:????????? ?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_254152-
+conv2d_transpose_65/StatefulPartitionedCall?
+conv2d_transpose_66/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_65/StatefulPartitionedCall:output:0conv2d_transpose_66_25796conv2d_transpose_66_25798*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????,@?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_254442-
+conv2d_transpose_66/StatefulPartitionedCall?
+conv2d_transpose_67/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_66/StatefulPartitionedCall:output:0conv2d_transpose_67_25801conv2d_transpose_67_25803*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????X?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_254732-
+conv2d_transpose_67/StatefulPartitionedCall?
+conv2d_transpose_68/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_67/StatefulPartitionedCall:output:0conv2d_transpose_68_25806conv2d_transpose_68_25808*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_255022-
+conv2d_transpose_68/StatefulPartitionedCall?
+conv2d_transpose_69/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_68/StatefulPartitionedCall:output:0conv2d_transpose_69_25811conv2d_transpose_69_25813*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_255302-
+conv2d_transpose_69/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_69/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_65/StatefulPartitionedCall,^conv2d_transpose_66/StatefulPartitionedCall,^conv2d_transpose_67/StatefulPartitionedCall,^conv2d_transpose_68/StatefulPartitionedCall,^conv2d_transpose_69/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_65/StatefulPartitionedCall+conv2d_transpose_65/StatefulPartitionedCall2Z
+conv2d_transpose_66/StatefulPartitionedCall+conv2d_transpose_66/StatefulPartitionedCall2Z
+conv2d_transpose_67/StatefulPartitionedCall+conv2d_transpose_67/StatefulPartitionedCall2Z
+conv2d_transpose_68/StatefulPartitionedCall+conv2d_transpose_68/StatefulPartitionedCall2Z
+conv2d_transpose_69/StatefulPartitionedCall+conv2d_transpose_69/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_28
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26035
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:???????????

_user_specified_namex
?
?
C__inference_dense_27_layer_call_and_return_conditional_losses_28790

inputs1
matmul_readvariableop_resource:	?,.
biasadd_readvariableop_resource:	?,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26736
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:
??
	unknown_8:
	unknown_9:	?,

unknown_10:	?,%

unknown_11:? 

unknown_12:	?&

unknown_13:??

unknown_14:	?%

unknown_15:@?

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?StatefulPartitionedCall_2?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_encode_243312
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_243692
StatefulPartitionedCall_1?
StatefulPartitionedCall_2StatefulPartitionedCall"StatefulPartitionedCall_1:output:0	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_244902
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_28680

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????W 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_24622

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????+?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????+?@
 
_user_specified_nameinputs
?G
?

__inference_encode_27410
xP
6sequential_26_conv2d_52_conv2d_readvariableop_resource: E
7sequential_26_conv2d_52_biasadd_readvariableop_resource: P
6sequential_26_conv2d_53_conv2d_readvariableop_resource: @E
7sequential_26_conv2d_53_biasadd_readvariableop_resource:@Q
6sequential_26_conv2d_54_conv2d_readvariableop_resource:@?F
7sequential_26_conv2d_54_biasadd_readvariableop_resource:	?R
6sequential_26_conv2d_55_conv2d_readvariableop_resource:??F
7sequential_26_conv2d_55_biasadd_readvariableop_resource:	?I
5sequential_26_dense_26_matmul_readvariableop_resource:
??D
6sequential_26_dense_26_biasadd_readvariableop_resource:
identity

identity_1??.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?-sequential_26/conv2d_52/Conv2D/ReadVariableOp?.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?-sequential_26/conv2d_53/Conv2D/ReadVariableOp?.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?-sequential_26/conv2d_54/Conv2D/ReadVariableOp?.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?-sequential_26/conv2d_55/Conv2D/ReadVariableOp?-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?
-sequential_26/conv2d_52/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_26/conv2d_52/Conv2D/ReadVariableOp?
sequential_26/conv2d_52/Conv2DConv2Dx5sequential_26/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_26/conv2d_52/Conv2D?
.sequential_26/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp?
sequential_26/conv2d_52/BiasAddBiasAdd'sequential_26/conv2d_52/Conv2D:output:06sequential_26/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_26/conv2d_52/BiasAdd?
sequential_26/conv2d_52/ReluRelu(sequential_26/conv2d_52/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_26/conv2d_52/Relu?
-sequential_26/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_26/conv2d_53/Conv2D/ReadVariableOp?
sequential_26/conv2d_53/Conv2DConv2D*sequential_26/conv2d_52/Relu:activations:05sequential_26/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_26/conv2d_53/Conv2D?
.sequential_26/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp?
sequential_26/conv2d_53/BiasAddBiasAdd'sequential_26/conv2d_53/Conv2D:output:06sequential_26/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_26/conv2d_53/BiasAdd?
sequential_26/conv2d_53/ReluRelu(sequential_26/conv2d_53/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_26/conv2d_53/Relu?
-sequential_26/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_26/conv2d_54/Conv2D/ReadVariableOp?
sequential_26/conv2d_54/Conv2DConv2D*sequential_26/conv2d_53/Relu:activations:05sequential_26/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_26/conv2d_54/Conv2D?
.sequential_26/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_54_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp?
sequential_26/conv2d_54/BiasAddBiasAdd'sequential_26/conv2d_54/Conv2D:output:06sequential_26/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_26/conv2d_54/BiasAdd?
sequential_26/conv2d_54/ReluRelu(sequential_26/conv2d_54/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_26/conv2d_54/Relu?
-sequential_26/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_26_conv2d_55_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_26/conv2d_55/Conv2D/ReadVariableOp?
sequential_26/conv2d_55/Conv2DConv2D*sequential_26/conv2d_54/Relu:activations:05sequential_26/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_26/conv2d_55/Conv2D?
.sequential_26/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_26_conv2d_55_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp?
sequential_26/conv2d_55/BiasAddBiasAdd'sequential_26/conv2d_55/Conv2D:output:06sequential_26/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_26/conv2d_55/BiasAdd?
sequential_26/conv2d_55/ReluRelu(sequential_26/conv2d_55/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_26/conv2d_55/Relu?
sequential_26/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_26/flatten_13/Const?
 sequential_26/flatten_13/ReshapeReshape*sequential_26/conv2d_55/Relu:activations:0'sequential_26/flatten_13/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_26/flatten_13/Reshape?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul)sequential_26/flatten_13/Reshape:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_26/dense_26/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_26/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
::*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:2

Identity_1?
NoOpNoOp/^sequential_26/conv2d_52/BiasAdd/ReadVariableOp.^sequential_26/conv2d_52/Conv2D/ReadVariableOp/^sequential_26/conv2d_53/BiasAdd/ReadVariableOp.^sequential_26/conv2d_53/Conv2D/ReadVariableOp/^sequential_26/conv2d_54/BiasAdd/ReadVariableOp.^sequential_26/conv2d_54/Conv2D/ReadVariableOp/^sequential_26/conv2d_55/BiasAdd/ReadVariableOp.^sequential_26/conv2d_55/Conv2D/ReadVariableOp.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2`
.sequential_26/conv2d_52/BiasAdd/ReadVariableOp.sequential_26/conv2d_52/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_52/Conv2D/ReadVariableOp-sequential_26/conv2d_52/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_53/BiasAdd/ReadVariableOp.sequential_26/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_53/Conv2D/ReadVariableOp-sequential_26/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_54/BiasAdd/ReadVariableOp.sequential_26/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_54/Conv2D/ReadVariableOp-sequential_26/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_26/conv2d_55/BiasAdd/ReadVariableOp.sequential_26/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_26/conv2d_55/Conv2D/ReadVariableOp-sequential_26/conv2d_55/Conv2D/ReadVariableOp2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????<
output_10
StatefulPartitionedCall:0?????????<
output_20
StatefulPartitionedCall:1?????????F
output_3:
StatefulPartitionedCall:2???????????tensorflow/serving/predict:??
?
encoder
decoder
	optimizer
loss
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
	?call
?compute_loss
?decode
?encode
?reparameterize
?sample
?
train_step"
_tf_keras_model
?

layer_with_weights-0

layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
regularization_losses
trainable_variables
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
iter

 beta_1

!beta_2
	"decay
#learning_rate$m?%m?&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?$v?%v?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
.10
/11
012
113
214
315
416
517
618
719
820
921"
trackable_list_wrapper
?
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9
.10
/11
012
113
214
315
416
517
618
719
820
921"
trackable_list_wrapper
?
:metrics
regularization_losses
trainable_variables
;layer_metrics
<layer_regularization_losses
=non_trainable_variables

>layers
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?

$kernel
%bias
?regularization_losses
@trainable_variables
A	variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
Cregularization_losses
Dtrainable_variables
E	variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
Gregularization_losses
Htrainable_variables
I	variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
Kregularization_losses
Ltrainable_variables
M	variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Oregularization_losses
Ptrainable_variables
Q	variables
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

,kernel
-bias
Sregularization_losses
Ttrainable_variables
U	variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
f
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9"
trackable_list_wrapper
f
$0
%1
&2
'3
(4
)5
*6
+7
,8
-9"
trackable_list_wrapper
?
Wmetrics
regularization_losses
trainable_variables
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables

[layers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

.kernel
/bias
\regularization_losses
]trainable_variables
^	variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`regularization_losses
atrainable_variables
b	variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
dregularization_losses
etrainable_variables
f	variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
hregularization_losses
itrainable_variables
j	variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
pregularization_losses
qtrainable_variables
r	variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
tregularization_losses
utrainable_variables
v	variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
v
.0
/1
02
13
24
35
46
57
68
79
810
911"
trackable_list_wrapper
v
.0
/1
02
13
24
35
46
57
68
79
810
911"
trackable_list_wrapper
?
xmetrics
regularization_losses
trainable_variables
ylayer_metrics
zlayer_regularization_losses
{non_trainable_variables

|layers
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
*:( 2conv2d_52/kernel
: 2conv2d_52/bias
*:( @2conv2d_53/kernel
:@2conv2d_53/bias
+:)@?2conv2d_54/kernel
:?2conv2d_54/bias
,:*??2conv2d_55/kernel
:?2conv2d_55/bias
#:!
??2dense_26/kernel
:2dense_26/bias
": 	?,2dense_27/kernel
:?,2dense_27/bias
5:3? 2conv2d_transpose_65/kernel
':%?2conv2d_transpose_65/bias
6:4??2conv2d_transpose_66/kernel
':%?2conv2d_transpose_66/bias
5:3@?2conv2d_transpose_67/kernel
&:$@2conv2d_transpose_67/bias
4:2 @2conv2d_transpose_68/kernel
&:$ 2conv2d_transpose_68/bias
4:2 2conv2d_transpose_69/kernel
&:$2conv2d_transpose_69/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
}metrics
?regularization_losses
@trainable_variables
~layer_metrics
layer_regularization_losses
?non_trainable_variables
?layers
A	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
?metrics
Cregularization_losses
Dtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
E	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
?
?metrics
Gregularization_losses
Htrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
I	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
?metrics
Kregularization_losses
Ltrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
M	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
Oregularization_losses
Ptrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
Q	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?
?metrics
Sregularization_losses
Ttrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
U	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
?
?metrics
\regularization_losses
]trainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
^	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
`regularization_losses
atrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
b	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?metrics
dregularization_losses
etrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
f	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
?metrics
hregularization_losses
itrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
j	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
?
?metrics
lregularization_losses
mtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
n	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
?metrics
pregularization_losses
qtrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
r	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
?
?metrics
tregularization_losses
utrainable_variables
?layer_metrics
 ?layer_regularization_losses
?non_trainable_variables
?layers
v	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/:- 2Adam/conv2d_52/kernel/m
!: 2Adam/conv2d_52/bias/m
/:- @2Adam/conv2d_53/kernel/m
!:@2Adam/conv2d_53/bias/m
0:.@?2Adam/conv2d_54/kernel/m
": ?2Adam/conv2d_54/bias/m
1:/??2Adam/conv2d_55/kernel/m
": ?2Adam/conv2d_55/bias/m
(:&
??2Adam/dense_26/kernel/m
 :2Adam/dense_26/bias/m
':%	?,2Adam/dense_27/kernel/m
!:?,2Adam/dense_27/bias/m
::8? 2!Adam/conv2d_transpose_65/kernel/m
,:*?2Adam/conv2d_transpose_65/bias/m
;:9??2!Adam/conv2d_transpose_66/kernel/m
,:*?2Adam/conv2d_transpose_66/bias/m
::8@?2!Adam/conv2d_transpose_67/kernel/m
+:)@2Adam/conv2d_transpose_67/bias/m
9:7 @2!Adam/conv2d_transpose_68/kernel/m
+:) 2Adam/conv2d_transpose_68/bias/m
9:7 2!Adam/conv2d_transpose_69/kernel/m
+:)2Adam/conv2d_transpose_69/bias/m
/:- 2Adam/conv2d_52/kernel/v
!: 2Adam/conv2d_52/bias/v
/:- @2Adam/conv2d_53/kernel/v
!:@2Adam/conv2d_53/bias/v
0:.@?2Adam/conv2d_54/kernel/v
": ?2Adam/conv2d_54/bias/v
1:/??2Adam/conv2d_55/kernel/v
": ?2Adam/conv2d_55/bias/v
(:&
??2Adam/dense_26/kernel/v
 :2Adam/dense_26/bias/v
':%	?,2Adam/dense_27/kernel/v
!:?,2Adam/dense_27/bias/v
::8? 2!Adam/conv2d_transpose_65/kernel/v
,:*?2Adam/conv2d_transpose_65/bias/v
;:9??2!Adam/conv2d_transpose_66/kernel/v
,:*?2Adam/conv2d_transpose_66/bias/v
::8@?2!Adam/conv2d_transpose_67/kernel/v
+:)@2Adam/conv2d_transpose_67/bias/v
9:7 @2!Adam/conv2d_transpose_68/kernel/v
+:) 2Adam/conv2d_transpose_68/bias/v
9:7 2!Adam/conv2d_transpose_69/kernel/v
+:)2Adam/conv2d_transpose_69/bias/v
?2?
'__inference_cvae_13_layer_call_fn_26361
'__inference_cvae_13_layer_call_fn_26414
'__inference_cvae_13_layer_call_fn_26467
'__inference_cvae_13_layer_call_fn_26520?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
 __inference__wrapped_model_24570input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26574
B__inference_cvae_13_layer_call_and_return_conditional_losses_26628
B__inference_cvae_13_layer_call_and_return_conditional_losses_26682
B__inference_cvae_13_layer_call_and_return_conditional_losses_26736?
???
FullArgSpec$
args?
jself
jx

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_call_26970
__inference_call_27024?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_compute_loss_27126?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_decode_27246
__inference_decode_27366?
???
FullArgSpec)
args!?
jself
jz
japply_sigmoid
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_encode_27410
__inference_encode_27454?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
 __inference_reparameterize_27470
 __inference_reparameterize_27486?
???
FullArgSpec%
args?
jself
jmean
jlogvar
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jeps
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_train_step_28232?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_sequential_26_layer_call_fn_24693
-__inference_sequential_26_layer_call_fn_28257
-__inference_sequential_26_layer_call_fn_28282
-__inference_sequential_26_layer_call_fn_24854?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_26_layer_call_and_return_conditional_losses_28322
H__inference_sequential_26_layer_call_and_return_conditional_losses_28362
H__inference_sequential_26_layer_call_and_return_conditional_losses_24884
H__inference_sequential_26_layer_call_and_return_conditional_losses_24914?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_sequential_27_layer_call_fn_25564
-__inference_sequential_27_layer_call_fn_28391
-__inference_sequential_27_layer_call_fn_28420
-__inference_sequential_27_layer_call_fn_25747?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_27_layer_call_and_return_conditional_losses_28540
H__inference_sequential_27_layer_call_and_return_conditional_losses_28660
H__inference_sequential_27_layer_call_and_return_conditional_losses_25782
H__inference_sequential_27_layer_call_and_return_conditional_losses_25817?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference_signature_wrapper_26308input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_52_layer_call_fn_28669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_28680?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_53_layer_call_fn_28689?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_28700?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_54_layer_call_fn_28709?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_28720?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_conv2d_55_layer_call_fn_28729?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_28740?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_13_layer_call_fn_28745?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_flatten_13_layer_call_and_return_conditional_losses_28751?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_26_layer_call_fn_28760?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_26_layer_call_and_return_conditional_losses_28770?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_27_layer_call_fn_28779?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_27_layer_call_and_return_conditional_losses_28790?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_reshape_13_layer_call_fn_28795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_reshape_13_layer_call_and_return_conditional_losses_28809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_65_layer_call_fn_28818
3__inference_conv2d_transpose_65_layer_call_fn_28827?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28861
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_66_layer_call_fn_28894
3__inference_conv2d_transpose_66_layer_call_fn_28903?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28937
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_67_layer_call_fn_28970
3__inference_conv2d_transpose_67_layer_call_fn_28979?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29013
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29037?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_68_layer_call_fn_29046
3__inference_conv2d_transpose_68_layer_call_fn_29055?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29089
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29113?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
3__inference_conv2d_transpose_69_layer_call_fn_29122
3__inference_conv2d_transpose_69_layer_call_fn_29131?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29164
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29187?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_24570?$%&'()*+,-./0123456789:?7
0?-
+?(
input_1???????????
? "???
.
output_1"?
output_1?????????
.
output_2"?
output_2?????????
8
output_3,?)
output_3????????????
__inference_call_26970?$%&'()*+,-./0123456789+?(
!?
?
x??
? "I?F
?
0
?
1
?
2???
__inference_call_27024?$%&'()*+,-./01234567894?1
*?'
%?"
x???????????
? "d?a
?
0?????????
?
1?????????
%?"
2???????????p
__inference_compute_loss_27126N$%&'()*+,-./0123456789+?(
!?
?
x??
? "? ?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_28680n$%9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????W 
? ?
)__inference_conv2d_52_layer_call_fn_28669a$%9?6
/?,
*?'
inputs???????????
? " ??????????W ?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_28700l&'7?4
-?*
(?%
inputs?????????W 
? "-?*
#? 
0?????????+?@
? ?
)__inference_conv2d_53_layer_call_fn_28689_&'7?4
-?*
(?%
inputs?????????W 
? " ??????????+?@?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_28720m()7?4
-?*
(?%
inputs?????????+?@
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_54_layer_call_fn_28709`()7?4
-?*
(?%
inputs?????????+?@
? "!????????????
D__inference_conv2d_55_layer_call_and_return_conditional_losses_28740n*+8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
)__inference_conv2d_55_layer_call_fn_28729a*+8?5
.?+
)?&
inputs??????????
? "!??????????
??
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28861?01I?F
??<
:?7
inputs+??????????????????????????? 
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_65_layer_call_and_return_conditional_losses_28885m017?4
-?*
(?%
inputs????????? 
? ".?+
$?!
0????????? ?
? ?
3__inference_conv2d_transpose_65_layer_call_fn_28818?01I?F
??<
:?7
inputs+??????????????????????????? 
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_65_layer_call_fn_28827`017?4
-?*
(?%
inputs????????? 
? "!?????????? ??
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28937?23J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_66_layer_call_and_return_conditional_losses_28961n238?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0?????????,@?
? ?
3__inference_conv2d_transpose_66_layer_call_fn_28894?23J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_66_layer_call_fn_28903a238?5
.?+
)?&
inputs????????? ?
? "!??????????,@??
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29013?45J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_conv2d_transpose_67_layer_call_and_return_conditional_losses_29037n458?5
.?+
)?&
inputs?????????,@?
? ".?+
$?!
0?????????X?@
? ?
3__inference_conv2d_transpose_67_layer_call_fn_28970?45J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
3__inference_conv2d_transpose_67_layer_call_fn_28979a458?5
.?+
)?&
inputs?????????,@?
? "!??????????X?@?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29089?67I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
N__inference_conv2d_transpose_68_layer_call_and_return_conditional_losses_29113o678?5
.?+
)?&
inputs?????????X?@
? "/?,
%?"
0??????????? 
? ?
3__inference_conv2d_transpose_68_layer_call_fn_29046?67I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
3__inference_conv2d_transpose_68_layer_call_fn_29055b678?5
.?+
)?&
inputs?????????X?@
? ""???????????? ?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29164?89I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_conv2d_transpose_69_layer_call_and_return_conditional_losses_29187p899?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
3__inference_conv2d_transpose_69_layer_call_fn_29122?89I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
3__inference_conv2d_transpose_69_layer_call_fn_29131c899?6
/?,
*?'
inputs??????????? 
? ""?????????????
B__inference_cvae_13_layer_call_and_return_conditional_losses_26574?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p 
? "t?q
j?g
?
0/0?????????
?
0/1?????????
'?$
0/2???????????
? ?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26628?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p
? "t?q
j?g
?
0/0?????????
?
0/1?????????
'?$
0/2???????????
? ?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26682?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p 
? "t?q
j?g
?
0/0?????????
?
0/1?????????
'?$
0/2???????????
? ?
B__inference_cvae_13_layer_call_and_return_conditional_losses_26736?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p
? "t?q
j?g
?
0/0?????????
?
0/1?????????
'?$
0/2???????????
? ?
'__inference_cvae_13_layer_call_fn_26361?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p 
? "d?a
?
0?????????
?
1?????????
%?"
2????????????
'__inference_cvae_13_layer_call_fn_26414?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p 
? "d?a
?
0?????????
?
1?????????
%?"
2????????????
'__inference_cvae_13_layer_call_fn_26467?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p
? "d?a
?
0?????????
?
1?????????
%?"
2????????????
'__inference_cvae_13_layer_call_fn_26520?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p
? "d?a
?
0?????????
?
1?????????
%?"
2???????????l
__inference_decode_27246P./0123456789%?"
?
?
z
p 
? "???~
__inference_decode_27366b./0123456789.?+
$?!
?
z?????????
p 
? ""?????????????
C__inference_dense_26_layer_call_and_return_conditional_losses_28770^,-1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? }
(__inference_dense_26_layer_call_fn_28760Q,-1?.
'?$
"?
inputs???????????
? "???????????
C__inference_dense_27_layer_call_and_return_conditional_losses_28790].//?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????,
? |
(__inference_dense_27_layer_call_fn_28779P.//?,
%?"
 ?
inputs?????????
? "???????????,?
__inference_encode_27410f
$%&'()*+,-+?(
!?
?
x??
? "+?(
?
0
?
1?
__inference_encode_27454?
$%&'()*+,-4?1
*?'
%?"
x???????????
? "=?:
?
0?????????
?
1??????????
E__inference_flatten_13_layer_call_and_return_conditional_losses_28751c8?5
.?+
)?&
inputs?????????
?
? "'?$
?
0???????????
? ?
*__inference_flatten_13_layer_call_fn_28745V8?5
.?+
)?&
inputs?????????
?
? "????????????t
 __inference_reparameterize_27470P=?:
3?0
?
mean
?
logvar
? "??
 __inference_reparameterize_27486kO?L
E?B
?
mean?????????
 ?
logvar?????????
? "???????????
E__inference_reshape_13_layer_call_and_return_conditional_losses_28809a0?-
&?#
!?
inputs??????????,
? "-?*
#? 
0????????? 
? ?
*__inference_reshape_13_layer_call_fn_28795T0?-
&?#
!?
inputs??????????,
? " ?????????? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24884x
$%&'()*+,-C?@
9?6
,?)
input_27???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_24914x
$%&'()*+,-C?@
9?6
,?)
input_27???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_28322v
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_26_layer_call_and_return_conditional_losses_28362v
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_26_layer_call_fn_24693k
$%&'()*+,-C?@
9?6
,?)
input_27???????????
p 

 
? "???????????
-__inference_sequential_26_layer_call_fn_24854k
$%&'()*+,-C?@
9?6
,?)
input_27???????????
p

 
? "???????????
-__inference_sequential_26_layer_call_fn_28257i
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_sequential_26_layer_call_fn_28282i
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p

 
? "???????????
H__inference_sequential_27_layer_call_and_return_conditional_losses_25782z./01234567899?6
/?,
"?
input_28?????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_27_layer_call_and_return_conditional_losses_25817z./01234567899?6
/?,
"?
input_28?????????
p

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_27_layer_call_and_return_conditional_losses_28540x./01234567897?4
-?*
 ?
inputs?????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_27_layer_call_and_return_conditional_losses_28660x./01234567897?4
-?*
 ?
inputs?????????
p

 
? "/?,
%?"
0???????????
? ?
-__inference_sequential_27_layer_call_fn_25564m./01234567899?6
/?,
"?
input_28?????????
p 

 
? ""?????????????
-__inference_sequential_27_layer_call_fn_25747m./01234567899?6
/?,
"?
input_28?????????
p

 
? ""?????????????
-__inference_sequential_27_layer_call_fn_28391k./01234567897?4
-?*
 ?
inputs?????????
p 

 
? ""?????????????
-__inference_sequential_27_layer_call_fn_28420k./01234567897?4
-?*
 ?
inputs?????????
p

 
? ""?????????????
#__inference_signature_wrapper_26308?$%&'()*+,-./0123456789E?B
? 
;?8
6
input_1+?(
input_1???????????"???
.
output_1"?
output_1?????????
.
output_2"?
output_2?????????
8
output_3,?)
output_3????????????
__inference_train_step_28232?r$%&'()*+,-./0123456789# !????????????????????????????????????????????+?(
!?
?
x??
? "?

loss?

loss 