??7
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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??4
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
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_64/kernel
}
$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*&
_output_shapes
: *
dtype0
t
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_64/bias
m
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes
: *
dtype0
?
conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_65/kernel
}
$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_65/bias
m
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes
:@*
dtype0
?
conv2d_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_66/kernel
~
$conv2d_66/kernel/Read/ReadVariableOpReadVariableOpconv2d_66/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_66/bias
n
"conv2d_66/bias/Read/ReadVariableOpReadVariableOpconv2d_66/bias*
_output_shapes	
:?*
dtype0
?
conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_67/kernel

$conv2d_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_67/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_67/bias
n
"conv2d_67/bias/Read/ReadVariableOpReadVariableOpconv2d_67/bias*
_output_shapes	
:?*
dtype0
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
??*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
:*
dtype0
{
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,* 
shared_namedense_33/kernel
t
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes
:	?,*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:?,*
dtype0
?
conv2d_transpose_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *+
shared_nameconv2d_transpose_80/kernel
?
.conv2d_transpose_80/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_80/kernel*'
_output_shapes
:? *
dtype0
?
conv2d_transpose_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_80/bias
?
,conv2d_transpose_80/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_80/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*+
shared_nameconv2d_transpose_81/kernel
?
.conv2d_transpose_81/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_81/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameconv2d_transpose_81/bias
?
,conv2d_transpose_81/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_81/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_82/kernel
?
.conv2d_transpose_82/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_82/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_82/bias
?
,conv2d_transpose_82/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_82/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_83/kernel
?
.conv2d_transpose_83/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_83/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_83/bias
?
,conv2d_transpose_83/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_83/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_84/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_84/kernel
?
.conv2d_transpose_84/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_84/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_84/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_84/bias
?
,conv2d_transpose_84/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_84/bias*
_output_shapes
:*
dtype0
?
Adam/conv2d_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_64/kernel/m
?
+Adam/conv2d_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_64/bias/m
{
)Adam/conv2d_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_65/kernel/m
?
+Adam/conv2d_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_65/bias/m
{
)Adam/conv2d_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_66/kernel/m
?
+Adam/conv2d_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_66/bias/m
|
)Adam/conv2d_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_67/kernel/m
?
+Adam/conv2d_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_67/bias/m
|
)Adam/conv2d_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_32/kernel/m
?
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/m
y
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,*'
shared_nameAdam/dense_33/kernel/m
?
*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m*
_output_shapes
:	?,*
dtype0
?
Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*%
shared_nameAdam/dense_33/bias/m
z
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes	
:?,*
dtype0
?
!Adam/conv2d_transpose_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *2
shared_name#!Adam/conv2d_transpose_80/kernel/m
?
5Adam/conv2d_transpose_80/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_80/kernel/m*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_80/bias/m
?
3Adam/conv2d_transpose_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_80/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_81/kernel/m
?
5Adam/conv2d_transpose_81/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_81/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_81/bias/m
?
3Adam/conv2d_transpose_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_81/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_82/kernel/m
?
5Adam/conv2d_transpose_82/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_82/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_82/bias/m
?
3Adam/conv2d_transpose_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_82/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_83/kernel/m
?
5Adam/conv2d_transpose_83/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_83/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_83/bias/m
?
3Adam/conv2d_transpose_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_83/bias/m*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_84/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_84/kernel/m
?
5Adam/conv2d_transpose_84/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_84/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_84/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_84/bias/m
?
3Adam/conv2d_transpose_84/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_84/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_64/kernel/v
?
+Adam/conv2d_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_64/bias/v
{
)Adam/conv2d_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_64/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_65/kernel/v
?
+Adam/conv2d_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_65/bias/v
{
)Adam/conv2d_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_65/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_66/kernel/v
?
+Adam/conv2d_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_66/bias/v
|
)Adam/conv2d_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_66/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_67/kernel/v
?
+Adam/conv2d_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_67/bias/v
|
)Adam/conv2d_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_32/kernel/v
?
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/v
y
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?,*'
shared_nameAdam/dense_33/kernel/v
?
*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v*
_output_shapes
:	?,*
dtype0
?
Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*%
shared_nameAdam/dense_33/bias/v
z
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes	
:?,*
dtype0
?
!Adam/conv2d_transpose_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *2
shared_name#!Adam/conv2d_transpose_80/kernel/v
?
5Adam/conv2d_transpose_80/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_80/kernel/v*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_80/bias/v
?
3Adam/conv2d_transpose_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_80/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*2
shared_name#!Adam/conv2d_transpose_81/kernel/v
?
5Adam/conv2d_transpose_81/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_81/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!Adam/conv2d_transpose_81/bias/v
?
3Adam/conv2d_transpose_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_81/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_82/kernel/v
?
5Adam/conv2d_transpose_82/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_82/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_82/bias/v
?
3Adam/conv2d_transpose_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_82/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_83/kernel/v
?
5Adam/conv2d_transpose_83/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_83/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_83/bias/v
?
3Adam/conv2d_transpose_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_83/bias/v*
_output_shapes
: *
dtype0
?
!Adam/conv2d_transpose_84/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv2d_transpose_84/kernel/v
?
5Adam/conv2d_transpose_84/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_84/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_84/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/conv2d_transpose_84/bias/v
?
3Adam/conv2d_transpose_84/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_84/bias/v*
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
VARIABLE_VALUEconv2d_64/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_64/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_65/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_65/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_66/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_66/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_67/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_67/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_32/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_32/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_33/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEdense_33/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_80/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_80/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_81/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_81/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_82/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_82/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_83/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_83/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_84/kernel1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEconv2d_transpose_84/bias1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/conv2d_64/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_64/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_65/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_65/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_66/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_66/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_67/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_67/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_32/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_32/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_33/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_33/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_80/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_80/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_81/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_81/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_82/kernel/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_82/bias/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_83/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_83/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_84/kernel/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_84/bias/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_64/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_64/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_65/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_65/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_66/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_66/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/conv2d_67/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_67/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_32/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_32/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_33/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense_33/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_80/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_80/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_81/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_81/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_82/kernel/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_82/bias/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_83/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_83/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!Adam/conv2d_transpose_84/kernel/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/conv2d_transpose_84/bias/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasconv2d_transpose_80/kernelconv2d_transpose_80/biasconv2d_transpose_81/kernelconv2d_transpose_81/biasconv2d_transpose_82/kernelconv2d_transpose_82/biasconv2d_transpose_83/kernelconv2d_transpose_83/biasconv2d_transpose_84/kernelconv2d_transpose_84/bias*"
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
#__inference_signature_wrapper_38564
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp$conv2d_65/kernel/Read/ReadVariableOp"conv2d_65/bias/Read/ReadVariableOp$conv2d_66/kernel/Read/ReadVariableOp"conv2d_66/bias/Read/ReadVariableOp$conv2d_67/kernel/Read/ReadVariableOp"conv2d_67/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp.conv2d_transpose_80/kernel/Read/ReadVariableOp,conv2d_transpose_80/bias/Read/ReadVariableOp.conv2d_transpose_81/kernel/Read/ReadVariableOp,conv2d_transpose_81/bias/Read/ReadVariableOp.conv2d_transpose_82/kernel/Read/ReadVariableOp,conv2d_transpose_82/bias/Read/ReadVariableOp.conv2d_transpose_83/kernel/Read/ReadVariableOp,conv2d_transpose_83/bias/Read/ReadVariableOp.conv2d_transpose_84/kernel/Read/ReadVariableOp,conv2d_transpose_84/bias/Read/ReadVariableOp+Adam/conv2d_64/kernel/m/Read/ReadVariableOp)Adam/conv2d_64/bias/m/Read/ReadVariableOp+Adam/conv2d_65/kernel/m/Read/ReadVariableOp)Adam/conv2d_65/bias/m/Read/ReadVariableOp+Adam/conv2d_66/kernel/m/Read/ReadVariableOp)Adam/conv2d_66/bias/m/Read/ReadVariableOp+Adam/conv2d_67/kernel/m/Read/ReadVariableOp)Adam/conv2d_67/bias/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_80/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_80/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_81/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_81/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_82/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_82/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_83/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_83/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_84/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_84/bias/m/Read/ReadVariableOp+Adam/conv2d_64/kernel/v/Read/ReadVariableOp)Adam/conv2d_64/bias/v/Read/ReadVariableOp+Adam/conv2d_65/kernel/v/Read/ReadVariableOp)Adam/conv2d_65/bias/v/Read/ReadVariableOp+Adam/conv2d_66/kernel/v/Read/ReadVariableOp)Adam/conv2d_66/bias/v/Read/ReadVariableOp+Adam/conv2d_67/kernel/v/Read/ReadVariableOp)Adam/conv2d_67/bias/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_80/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_80/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_81/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_81/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_82/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_82/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_83/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_83/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_84/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_84/bias/v/Read/ReadVariableOpConst*T
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
__inference__traced_save_42414
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d_64/kernelconv2d_64/biasconv2d_65/kernelconv2d_65/biasconv2d_66/kernelconv2d_66/biasconv2d_67/kernelconv2d_67/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasconv2d_transpose_80/kernelconv2d_transpose_80/biasconv2d_transpose_81/kernelconv2d_transpose_81/biasconv2d_transpose_82/kernelconv2d_transpose_82/biasconv2d_transpose_83/kernelconv2d_transpose_83/biasconv2d_transpose_84/kernelconv2d_transpose_84/biasAdam/conv2d_64/kernel/mAdam/conv2d_64/bias/mAdam/conv2d_65/kernel/mAdam/conv2d_65/bias/mAdam/conv2d_66/kernel/mAdam/conv2d_66/bias/mAdam/conv2d_67/kernel/mAdam/conv2d_67/bias/mAdam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/m!Adam/conv2d_transpose_80/kernel/mAdam/conv2d_transpose_80/bias/m!Adam/conv2d_transpose_81/kernel/mAdam/conv2d_transpose_81/bias/m!Adam/conv2d_transpose_82/kernel/mAdam/conv2d_transpose_82/bias/m!Adam/conv2d_transpose_83/kernel/mAdam/conv2d_transpose_83/bias/m!Adam/conv2d_transpose_84/kernel/mAdam/conv2d_transpose_84/bias/mAdam/conv2d_64/kernel/vAdam/conv2d_64/bias/vAdam/conv2d_65/kernel/vAdam/conv2d_65/bias/vAdam/conv2d_66/kernel/vAdam/conv2d_66/bias/vAdam/conv2d_67/kernel/vAdam/conv2d_67/bias/vAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/v!Adam/conv2d_transpose_80/kernel/vAdam/conv2d_transpose_80/bias/v!Adam/conv2d_transpose_81/kernel/vAdam/conv2d_transpose_81/bias/v!Adam/conv2d_transpose_82/kernel/vAdam/conv2d_transpose_82/bias/v!Adam/conv2d_transpose_83/kernel/vAdam/conv2d_transpose_83/bias/v!Adam/conv2d_transpose_84/kernel/vAdam/conv2d_transpose_84/bias/v*S
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
!__inference__traced_restore_42637??2
??
?
__inference_decode_39904
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	@?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
:@ ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
:@ ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:@,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:@,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:@X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:@X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:@?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:@?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:@??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_41689

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
?
__inference_decode_39784
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38938
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38291
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_36878

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
?
?
3__inference_conv2d_transpose_84_layer_call_fn_42120

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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_377862
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
?
I
 __inference_reparameterize_36625
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
?
?
'__inference_cvae_17_layer_call_fn_38670
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_381312
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
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38884
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
C__inference_dense_33_layer_call_and_return_conditional_losses_41779

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
?
__inference_call_39280
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42102

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
?
?
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_37758

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
?
?
-__inference_sequential_32_layer_call_fn_36949
input_33!
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
StatefulPartitionedCallStatefulPartitionedCallinput_33unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
H__inference_sequential_32_layer_call_and_return_conditional_losses_369262
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
input_33
?
?
)__inference_conv2d_64_layer_call_fn_41658

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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_368442
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
?
?
-__inference_sequential_32_layer_call_fn_41271

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
H__inference_sequential_32_layer_call_and_return_conditional_losses_370622
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
?
?
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_37700

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
?
?
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41950

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
?
?
3__inference_conv2d_transpose_80_layer_call_fn_41816

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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_376712
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
?
?
)__inference_conv2d_67_layer_call_fn_41718

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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_368952
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
?R
?
__forward_encode_40994
x_0P
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1
split_split_dim0
,sequential_32_dense_32_matmul_readvariableop$
 sequential_32_flatten_16_reshape 
sequential_32_conv2d_67_relu 
sequential_32_conv2d_66_relu1
-sequential_32_conv2d_67_conv2d_readvariableop 
sequential_32_conv2d_65_relu1
-sequential_32_conv2d_66_conv2d_readvariableop 
sequential_32_conv2d_64_relu1
-sequential_32_conv2d_65_conv2d_readvariableop
x1
-sequential_32_conv2d_64_conv2d_readvariableop??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx_05sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
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
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"f
-sequential_32_conv2d_64_conv2d_readvariableop5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0"J
sequential_32_conv2d_64_relu*sequential_32/conv2d_64/Relu:activations:0"f
-sequential_32_conv2d_65_conv2d_readvariableop5sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0"J
sequential_32_conv2d_65_relu*sequential_32/conv2d_65/Relu:activations:0"f
-sequential_32_conv2d_66_conv2d_readvariableop5sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0"J
sequential_32_conv2d_66_relu*sequential_32/conv2d_66/Relu:activations:0"f
-sequential_32_conv2d_67_conv2d_readvariableop5sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0"J
sequential_32_conv2d_67_relu*sequential_32/conv2d_67/Relu:activations:0"d
,sequential_32_dense_32_matmul_readvariableop4sequential_32/dense_32/MatMul/ReadVariableOp:value:0"M
 sequential_32_flatten_16_reshape)sequential_32/flatten_16/Reshape:output:0"+
split_split_dimsplit/split_dim:output:0"
xx_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : *E
backward_function_name+)__inference___backward_encode_40935_409952`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?
?
'__inference_cvae_17_layer_call_fn_38776
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_382912
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
?+
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_37793

inputs!
dense_33_37627:	?,
dense_33_37629:	?,4
conv2d_transpose_80_37672:? (
conv2d_transpose_80_37674:	?5
conv2d_transpose_81_37701:??(
conv2d_transpose_81_37703:	?4
conv2d_transpose_82_37730:@?'
conv2d_transpose_82_37732:@3
conv2d_transpose_83_37759: @'
conv2d_transpose_83_37761: 3
conv2d_transpose_84_37787: '
conv2d_transpose_84_37789:
identity??+conv2d_transpose_80/StatefulPartitionedCall?+conv2d_transpose_81/StatefulPartitionedCall?+conv2d_transpose_82/StatefulPartitionedCall?+conv2d_transpose_83/StatefulPartitionedCall?+conv2d_transpose_84/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinputsdense_33_37627dense_33_37629*
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
C__inference_dense_33_layer_call_and_return_conditional_losses_376262"
 dense_33/StatefulPartitionedCall?
reshape_16/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
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
E__inference_reshape_16_layer_call_and_return_conditional_losses_376462
reshape_16/PartitionedCall?
+conv2d_transpose_80/StatefulPartitionedCallStatefulPartitionedCall#reshape_16/PartitionedCall:output:0conv2d_transpose_80_37672conv2d_transpose_80_37674*
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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_376712-
+conv2d_transpose_80/StatefulPartitionedCall?
+conv2d_transpose_81/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_80/StatefulPartitionedCall:output:0conv2d_transpose_81_37701conv2d_transpose_81_37703*
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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_377002-
+conv2d_transpose_81/StatefulPartitionedCall?
+conv2d_transpose_82/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_81/StatefulPartitionedCall:output:0conv2d_transpose_82_37730conv2d_transpose_82_37732*
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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_377292-
+conv2d_transpose_82/StatefulPartitionedCall?
+conv2d_transpose_83/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_82/StatefulPartitionedCall:output:0conv2d_transpose_83_37759conv2d_transpose_83_37761*
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_377582-
+conv2d_transpose_83/StatefulPartitionedCall?
+conv2d_transpose_84/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_83/StatefulPartitionedCall:output:0conv2d_transpose_84_37787conv2d_transpose_84_37789*
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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_377862-
+conv2d_transpose_84/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_84/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_80/StatefulPartitionedCall,^conv2d_transpose_81/StatefulPartitionedCall,^conv2d_transpose_82/StatefulPartitionedCall,^conv2d_transpose_83/StatefulPartitionedCall,^conv2d_transpose_84/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_80/StatefulPartitionedCall+conv2d_transpose_80/StatefulPartitionedCall2Z
+conv2d_transpose_81/StatefulPartitionedCall+conv2d_transpose_81/StatefulPartitionedCall2Z
+conv2d_transpose_82/StatefulPartitionedCall+conv2d_transpose_82/StatefulPartitionedCall2Z
+conv2d_transpose_83/StatefulPartitionedCall+conv2d_transpose_83/StatefulPartitionedCall2Z
+conv2d_transpose_84/StatefulPartitionedCall+conv2d_transpose_84/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_33_layer_call_fn_41380

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
H__inference_sequential_33_layer_call_and_return_conditional_losses_377932
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
??
?
__forward_decode_40855
z_0H
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity*
&sequential_33_conv2d_transpose_83_reluE
Asequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop*
&sequential_33_conv2d_transpose_82_reluE
Asequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop*
&sequential_33_conv2d_transpose_81_reluE
Asequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop*
&sequential_33_conv2d_transpose_80_reluE
Asequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop$
 sequential_33_reshape_16_reshapeE
Asequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop
sequential_33_dense_33_relu0
,sequential_33_dense_33_matmul_readvariableop
z??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz_04sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"?
Asequential_33_conv2d_transpose_80_conv2d_transpose_readvariableopIsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_33_conv2d_transpose_80_relu4sequential_33/conv2d_transpose_80/Relu:activations:0"?
Asequential_33_conv2d_transpose_81_conv2d_transpose_readvariableopIsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_33_conv2d_transpose_81_relu4sequential_33/conv2d_transpose_81/Relu:activations:0"?
Asequential_33_conv2d_transpose_82_conv2d_transpose_readvariableopIsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_33_conv2d_transpose_82_relu4sequential_33/conv2d_transpose_82/Relu:activations:0"?
Asequential_33_conv2d_transpose_83_conv2d_transpose_readvariableopIsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:0"^
&sequential_33_conv2d_transpose_83_relu4sequential_33/conv2d_transpose_83/Relu:activations:0"?
Asequential_33_conv2d_transpose_84_conv2d_transpose_readvariableopIsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:0"d
,sequential_33_dense_33_matmul_readvariableop4sequential_33/dense_33/MatMul/ReadVariableOp:value:0"H
sequential_33_dense_33_relu)sequential_33/dense_33/Relu:activations:0"M
 sequential_33_reshape_16_reshape)sequential_33/reshape_16/Reshape:output:0"
zz_0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : *E
backward_function_name+)__inference___backward_decode_40795_408562t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
I
 __inference_reparameterize_39076
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
??
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_41649

inputs:
'dense_33_matmul_readvariableop_resource:	?,7
(dense_33_biasadd_readvariableop_resource:	?,W
<conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? B
3conv2d_transpose_80_biasadd_readvariableop_resource:	?X
<conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_81_biasadd_readvariableop_resource:	?W
<conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_82_biasadd_readvariableop_resource:@V
<conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_83_biasadd_readvariableop_resource: V
<conv2d_transpose_84_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_84_biasadd_readvariableop_resource:
identity??*conv2d_transpose_80/BiasAdd/ReadVariableOp?3conv2d_transpose_80/conv2d_transpose/ReadVariableOp?*conv2d_transpose_81/BiasAdd/ReadVariableOp?3conv2d_transpose_81/conv2d_transpose/ReadVariableOp?*conv2d_transpose_82/BiasAdd/ReadVariableOp?3conv2d_transpose_82/conv2d_transpose/ReadVariableOp?*conv2d_transpose_83/BiasAdd/ReadVariableOp?3conv2d_transpose_83/conv2d_transpose/ReadVariableOp?*conv2d_transpose_84/BiasAdd/ReadVariableOp?3conv2d_transpose_84/conv2d_transpose/ReadVariableOp?dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOp?
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02 
dense_33/MatMul/ReadVariableOp?
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_33/MatMul?
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02!
dense_33/BiasAdd/ReadVariableOp?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_33/BiasAddt
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_33/Reluo
reshape_16/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:2
reshape_16/Shape?
reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_16/strided_slice/stack?
 reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_16/strided_slice/stack_1?
 reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_16/strided_slice/stack_2?
reshape_16/strided_sliceStridedSlicereshape_16/Shape:output:0'reshape_16/strided_slice/stack:output:0)reshape_16/strided_slice/stack_1:output:0)reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_16/strided_slicez
reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_16/Reshape/shape/1z
reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_16/Reshape/shape/2z
reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_16/Reshape/shape/3?
reshape_16/Reshape/shapePack!reshape_16/strided_slice:output:0#reshape_16/Reshape/shape/1:output:0#reshape_16/Reshape/shape/2:output:0#reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_16/Reshape/shape?
reshape_16/ReshapeReshapedense_33/Relu:activations:0!reshape_16/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape_16/Reshape?
conv2d_transpose_80/ShapeShapereshape_16/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_80/Shape?
'conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_80/strided_slice/stack?
)conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_80/strided_slice/stack_1?
)conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_80/strided_slice/stack_2?
!conv2d_transpose_80/strided_sliceStridedSlice"conv2d_transpose_80/Shape:output:00conv2d_transpose_80/strided_slice/stack:output:02conv2d_transpose_80/strided_slice/stack_1:output:02conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_80/strided_slice|
conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_80/stack/1|
conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_80/stack/2}
conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_80/stack/3?
conv2d_transpose_80/stackPack*conv2d_transpose_80/strided_slice:output:0$conv2d_transpose_80/stack/1:output:0$conv2d_transpose_80/stack/2:output:0$conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_80/stack?
)conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_80/strided_slice_1/stack?
+conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_80/strided_slice_1/stack_1?
+conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_80/strided_slice_1/stack_2?
#conv2d_transpose_80/strided_slice_1StridedSlice"conv2d_transpose_80/stack:output:02conv2d_transpose_80/strided_slice_1/stack:output:04conv2d_transpose_80/strided_slice_1/stack_1:output:04conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_80/strided_slice_1?
3conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype025
3conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_80/conv2d_transposeConv2DBackpropInput"conv2d_transpose_80/stack:output:0;conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0reshape_16/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_80/conv2d_transpose?
*conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_80/BiasAdd/ReadVariableOp?
conv2d_transpose_80/BiasAddBiasAdd-conv2d_transpose_80/conv2d_transpose:output:02conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_80/BiasAdd?
conv2d_transpose_80/ReluRelu$conv2d_transpose_80/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_80/Relu?
conv2d_transpose_81/ShapeShape&conv2d_transpose_80/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_81/Shape?
'conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_81/strided_slice/stack?
)conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_81/strided_slice/stack_1?
)conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_81/strided_slice/stack_2?
!conv2d_transpose_81/strided_sliceStridedSlice"conv2d_transpose_81/Shape:output:00conv2d_transpose_81/strided_slice/stack:output:02conv2d_transpose_81/strided_slice/stack_1:output:02conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_81/strided_slice|
conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_81/stack/1|
conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_81/stack/2}
conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_81/stack/3?
conv2d_transpose_81/stackPack*conv2d_transpose_81/strided_slice:output:0$conv2d_transpose_81/stack/1:output:0$conv2d_transpose_81/stack/2:output:0$conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_81/stack?
)conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_81/strided_slice_1/stack?
+conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_81/strided_slice_1/stack_1?
+conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_81/strided_slice_1/stack_2?
#conv2d_transpose_81/strided_slice_1StridedSlice"conv2d_transpose_81/stack:output:02conv2d_transpose_81/strided_slice_1/stack:output:04conv2d_transpose_81/strided_slice_1/stack_1:output:04conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_81/strided_slice_1?
3conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_81/conv2d_transposeConv2DBackpropInput"conv2d_transpose_81/stack:output:0;conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_80/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2&
$conv2d_transpose_81/conv2d_transpose?
*conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_81/BiasAdd/ReadVariableOp?
conv2d_transpose_81/BiasAddBiasAdd-conv2d_transpose_81/conv2d_transpose:output:02conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_81/BiasAdd?
conv2d_transpose_81/ReluRelu$conv2d_transpose_81/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_81/Relu?
conv2d_transpose_82/ShapeShape&conv2d_transpose_81/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_82/Shape?
'conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_82/strided_slice/stack?
)conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_82/strided_slice/stack_1?
)conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_82/strided_slice/stack_2?
!conv2d_transpose_82/strided_sliceStridedSlice"conv2d_transpose_82/Shape:output:00conv2d_transpose_82/strided_slice/stack:output:02conv2d_transpose_82/strided_slice/stack_1:output:02conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_82/strided_slice|
conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_82/stack/1}
conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_82/stack/2|
conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_82/stack/3?
conv2d_transpose_82/stackPack*conv2d_transpose_82/strided_slice:output:0$conv2d_transpose_82/stack/1:output:0$conv2d_transpose_82/stack/2:output:0$conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_82/stack?
)conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_82/strided_slice_1/stack?
+conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_82/strided_slice_1/stack_1?
+conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_82/strided_slice_1/stack_2?
#conv2d_transpose_82/strided_slice_1StridedSlice"conv2d_transpose_82/stack:output:02conv2d_transpose_82/strided_slice_1/stack:output:04conv2d_transpose_82/strided_slice_1/stack_1:output:04conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_82/strided_slice_1?
3conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_82/conv2d_transposeConv2DBackpropInput"conv2d_transpose_82/stack:output:0;conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_81/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2&
$conv2d_transpose_82/conv2d_transpose?
*conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_82/BiasAdd/ReadVariableOp?
conv2d_transpose_82/BiasAddBiasAdd-conv2d_transpose_82/conv2d_transpose:output:02conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_82/BiasAdd?
conv2d_transpose_82/ReluRelu$conv2d_transpose_82/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_82/Relu?
conv2d_transpose_83/ShapeShape&conv2d_transpose_82/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_83/Shape?
'conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_83/strided_slice/stack?
)conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_83/strided_slice/stack_1?
)conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_83/strided_slice/stack_2?
!conv2d_transpose_83/strided_sliceStridedSlice"conv2d_transpose_83/Shape:output:00conv2d_transpose_83/strided_slice/stack:output:02conv2d_transpose_83/strided_slice/stack_1:output:02conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_83/strided_slice}
conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_83/stack/1}
conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_83/stack/2|
conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_83/stack/3?
conv2d_transpose_83/stackPack*conv2d_transpose_83/strided_slice:output:0$conv2d_transpose_83/stack/1:output:0$conv2d_transpose_83/stack/2:output:0$conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_83/stack?
)conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_83/strided_slice_1/stack?
+conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_83/strided_slice_1/stack_1?
+conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_83/strided_slice_1/stack_2?
#conv2d_transpose_83/strided_slice_1StridedSlice"conv2d_transpose_83/stack:output:02conv2d_transpose_83/strided_slice_1/stack:output:04conv2d_transpose_83/strided_slice_1/stack_1:output:04conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_83/strided_slice_1?
3conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_83/conv2d_transposeConv2DBackpropInput"conv2d_transpose_83/stack:output:0;conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_82/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2&
$conv2d_transpose_83/conv2d_transpose?
*conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_83/BiasAdd/ReadVariableOp?
conv2d_transpose_83/BiasAddBiasAdd-conv2d_transpose_83/conv2d_transpose:output:02conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_83/BiasAdd?
conv2d_transpose_83/ReluRelu$conv2d_transpose_83/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_83/Relu?
conv2d_transpose_84/ShapeShape&conv2d_transpose_83/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_84/Shape?
'conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_84/strided_slice/stack?
)conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_84/strided_slice/stack_1?
)conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_84/strided_slice/stack_2?
!conv2d_transpose_84/strided_sliceStridedSlice"conv2d_transpose_84/Shape:output:00conv2d_transpose_84/strided_slice/stack:output:02conv2d_transpose_84/strided_slice/stack_1:output:02conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_84/strided_slice}
conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_84/stack/1}
conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_84/stack/2|
conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_84/stack/3?
conv2d_transpose_84/stackPack*conv2d_transpose_84/strided_slice:output:0$conv2d_transpose_84/stack/1:output:0$conv2d_transpose_84/stack/2:output:0$conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_84/stack?
)conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_84/strided_slice_1/stack?
+conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_84/strided_slice_1/stack_1?
+conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_84/strided_slice_1/stack_2?
#conv2d_transpose_84/strided_slice_1StridedSlice"conv2d_transpose_84/stack:output:02conv2d_transpose_84/strided_slice_1/stack:output:04conv2d_transpose_84/strided_slice_1/stack_1:output:04conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_84/strided_slice_1?
3conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_84/conv2d_transposeConv2DBackpropInput"conv2d_transpose_84/stack:output:0;conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_83/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2&
$conv2d_transpose_84/conv2d_transpose?
*conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_84/BiasAdd/ReadVariableOp?
conv2d_transpose_84/BiasAddBiasAdd-conv2d_transpose_84/conv2d_transpose:output:02conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_84/BiasAdd?
IdentityIdentity$conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp+^conv2d_transpose_80/BiasAdd/ReadVariableOp4^conv2d_transpose_80/conv2d_transpose/ReadVariableOp+^conv2d_transpose_81/BiasAdd/ReadVariableOp4^conv2d_transpose_81/conv2d_transpose/ReadVariableOp+^conv2d_transpose_82/BiasAdd/ReadVariableOp4^conv2d_transpose_82/conv2d_transpose/ReadVariableOp+^conv2d_transpose_83/BiasAdd/ReadVariableOp4^conv2d_transpose_83/conv2d_transpose/ReadVariableOp+^conv2d_transpose_84/BiasAdd/ReadVariableOp4^conv2d_transpose_84/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2X
*conv2d_transpose_80/BiasAdd/ReadVariableOp*conv2d_transpose_80/BiasAdd/ReadVariableOp2j
3conv2d_transpose_80/conv2d_transpose/ReadVariableOp3conv2d_transpose_80/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_81/BiasAdd/ReadVariableOp*conv2d_transpose_81/BiasAdd/ReadVariableOp2j
3conv2d_transpose_81/conv2d_transpose/ReadVariableOp3conv2d_transpose_81/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_82/BiasAdd/ReadVariableOp*conv2d_transpose_82/BiasAdd/ReadVariableOp2j
3conv2d_transpose_82/conv2d_transpose/ReadVariableOp3conv2d_transpose_82/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_83/BiasAdd/ReadVariableOp*conv2d_transpose_83/BiasAdd/ReadVariableOp2j
3conv2d_transpose_83/conv2d_transpose/ReadVariableOp3conv2d_transpose_83/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_84/BiasAdd/ReadVariableOp*conv2d_transpose_84/BiasAdd/ReadVariableOp2j
3conv2d_transpose_84/conv2d_transpose/ReadVariableOp3conv2d_transpose_84/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
__inference_decode_39587
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	@?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
:@ ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
:@ ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:@,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:@,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:@X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:@X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:@?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:@?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:@??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
?@
?
__inference_compute_loss_39382
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
__inference_encode_390382
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
 __inference_reparameterize_390762
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
__inference_decode_391972
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
?
?
-__inference_sequential_33_layer_call_fn_37820
input_34
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
StatefulPartitionedCallStatefulPartitionedCallinput_34unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_33_layer_call_and_return_conditional_losses_377932
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
input_34
?&
?
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_37384

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
?
-__inference_sequential_33_layer_call_fn_38003
input_34
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
StatefulPartitionedCallStatefulPartitionedCallinput_34unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_33_layer_call_and_return_conditional_losses_379472
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
input_34
?G
?

__inference_encode_39038
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
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
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
??
?
__inference_decode_40145
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeShape)sequential_33/dense_33/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeShape)sequential_33/reshape_16/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeShape4sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeShape4sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeShape4sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeShape4sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namez
?G
?

__inference_encode_39428
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*'
_output_shapes
:@?2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*'
_output_shapes
:@
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0* 
_output_shapes
:
@??2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
T0*(
_output_shapes
:@:@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@2

Identity_1?
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@??: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:K G
(
_output_shapes
:@??

_user_specified_namex
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38992
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
C__inference_dense_33_layer_call_and_return_conditional_losses_37626

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
?
?
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_37729

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
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_36844

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
??
?
__inference_decode_39197
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
?
3__inference_conv2d_transpose_83_layer_call_fn_42044

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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_377582
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
?@
?
__inference_compute_loss_39664
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
:@:@*,
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
__inference_encode_394282
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_reparameterize_394662
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
:@??*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *!
fR
__inference_decode_395872
StatefulPartitionedCall_2?
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"@   ?         2*
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
:@??2
logistic_loss/zeros_like?
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:@??2
logistic_loss/GreaterEqual?
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:@??2
logistic_loss/Select?
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:@??2
logistic_loss/Neg?
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:@??2
logistic_loss/Select_1?
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:@??2
logistic_loss/mul?
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:@??2
logistic_loss/sub?
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:@??2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:@??2
logistic_loss/Log1p?
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:@??2
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
:@2
SumD
NegNegSum:output:0*
T0*
_output_shapes
:@2
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

:@2
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

:@2
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

:@2
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

:@2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:@2
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

:@2
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
:@2
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

:@2
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

:@2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:@2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:@2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:@2
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

:@2
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
:@2
Sum_2U
add_4AddV2Neg:y:0Sum_1:output:0*
T0*
_output_shapes
:@2
add_4U
sub_2Sub	add_4:z:0Sum_2:output:0*
T0*
_output_shapes
:@2
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
@:@??: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:@??

_user_specified_namex
?!
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_37170
input_33)
conv2d_64_37143: 
conv2d_64_37145: )
conv2d_65_37148: @
conv2d_65_37150:@*
conv2d_66_37153:@?
conv2d_66_37155:	?+
conv2d_67_37158:??
conv2d_67_37160:	?"
dense_32_37164:
??
dense_32_37166:
identity??!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall? dense_32/StatefulPartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCallinput_33conv2d_64_37143conv2d_64_37145*
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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_368442#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_37148conv2d_65_37150*
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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_368612#
!conv2d_65/StatefulPartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_37153conv2d_66_37155*
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_368782#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_37158conv2d_67_37160*
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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_368952#
!conv2d_67/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
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
E__inference_flatten_16_layer_call_and_return_conditional_losses_369072
flatten_16/PartitionedCall?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_37164dense_32_37166*
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
C__inference_dense_32_layer_call_and_return_conditional_losses_369192"
 dense_32/StatefulPartitionedCall?
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_33
?
a
E__inference_flatten_16_layer_call_and_return_conditional_losses_36907

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
?
a
E__inference_reshape_16_layer_call_and_return_conditional_losses_41798

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
?
I
 __inference_reparameterize_40325
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
µ
?0
!__inference__traced_restore_42637
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: =
#assignvariableop_5_conv2d_64_kernel: /
!assignvariableop_6_conv2d_64_bias: =
#assignvariableop_7_conv2d_65_kernel: @/
!assignvariableop_8_conv2d_65_bias:@>
#assignvariableop_9_conv2d_66_kernel:@?1
"assignvariableop_10_conv2d_66_bias:	?@
$assignvariableop_11_conv2d_67_kernel:??1
"assignvariableop_12_conv2d_67_bias:	?7
#assignvariableop_13_dense_32_kernel:
??/
!assignvariableop_14_dense_32_bias:6
#assignvariableop_15_dense_33_kernel:	?,0
!assignvariableop_16_dense_33_bias:	?,I
.assignvariableop_17_conv2d_transpose_80_kernel:? ;
,assignvariableop_18_conv2d_transpose_80_bias:	?J
.assignvariableop_19_conv2d_transpose_81_kernel:??;
,assignvariableop_20_conv2d_transpose_81_bias:	?I
.assignvariableop_21_conv2d_transpose_82_kernel:@?:
,assignvariableop_22_conv2d_transpose_82_bias:@H
.assignvariableop_23_conv2d_transpose_83_kernel: @:
,assignvariableop_24_conv2d_transpose_83_bias: H
.assignvariableop_25_conv2d_transpose_84_kernel: :
,assignvariableop_26_conv2d_transpose_84_bias:E
+assignvariableop_27_adam_conv2d_64_kernel_m: 7
)assignvariableop_28_adam_conv2d_64_bias_m: E
+assignvariableop_29_adam_conv2d_65_kernel_m: @7
)assignvariableop_30_adam_conv2d_65_bias_m:@F
+assignvariableop_31_adam_conv2d_66_kernel_m:@?8
)assignvariableop_32_adam_conv2d_66_bias_m:	?G
+assignvariableop_33_adam_conv2d_67_kernel_m:??8
)assignvariableop_34_adam_conv2d_67_bias_m:	?>
*assignvariableop_35_adam_dense_32_kernel_m:
??6
(assignvariableop_36_adam_dense_32_bias_m:=
*assignvariableop_37_adam_dense_33_kernel_m:	?,7
(assignvariableop_38_adam_dense_33_bias_m:	?,P
5assignvariableop_39_adam_conv2d_transpose_80_kernel_m:? B
3assignvariableop_40_adam_conv2d_transpose_80_bias_m:	?Q
5assignvariableop_41_adam_conv2d_transpose_81_kernel_m:??B
3assignvariableop_42_adam_conv2d_transpose_81_bias_m:	?P
5assignvariableop_43_adam_conv2d_transpose_82_kernel_m:@?A
3assignvariableop_44_adam_conv2d_transpose_82_bias_m:@O
5assignvariableop_45_adam_conv2d_transpose_83_kernel_m: @A
3assignvariableop_46_adam_conv2d_transpose_83_bias_m: O
5assignvariableop_47_adam_conv2d_transpose_84_kernel_m: A
3assignvariableop_48_adam_conv2d_transpose_84_bias_m:E
+assignvariableop_49_adam_conv2d_64_kernel_v: 7
)assignvariableop_50_adam_conv2d_64_bias_v: E
+assignvariableop_51_adam_conv2d_65_kernel_v: @7
)assignvariableop_52_adam_conv2d_65_bias_v:@F
+assignvariableop_53_adam_conv2d_66_kernel_v:@?8
)assignvariableop_54_adam_conv2d_66_bias_v:	?G
+assignvariableop_55_adam_conv2d_67_kernel_v:??8
)assignvariableop_56_adam_conv2d_67_bias_v:	?>
*assignvariableop_57_adam_dense_32_kernel_v:
??6
(assignvariableop_58_adam_dense_32_bias_v:=
*assignvariableop_59_adam_dense_33_kernel_v:	?,7
(assignvariableop_60_adam_dense_33_bias_v:	?,P
5assignvariableop_61_adam_conv2d_transpose_80_kernel_v:? B
3assignvariableop_62_adam_conv2d_transpose_80_bias_v:	?Q
5assignvariableop_63_adam_conv2d_transpose_81_kernel_v:??B
3assignvariableop_64_adam_conv2d_transpose_81_bias_v:	?P
5assignvariableop_65_adam_conv2d_transpose_82_kernel_v:@?A
3assignvariableop_66_adam_conv2d_transpose_82_bias_v:@O
5assignvariableop_67_adam_conv2d_transpose_83_kernel_v: @A
3assignvariableop_68_adam_conv2d_transpose_83_bias_v: O
5assignvariableop_69_adam_conv2d_transpose_84_kernel_v: A
3assignvariableop_70_adam_conv2d_transpose_84_bias_v:
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
AssignVariableOp_5AssignVariableOp#assignvariableop_5_conv2d_64_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_conv2d_64_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp#assignvariableop_7_conv2d_65_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp!assignvariableop_8_conv2d_65_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_conv2d_66_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp"assignvariableop_10_conv2d_66_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp$assignvariableop_11_conv2d_67_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_conv2d_67_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_32_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_32_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_33_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_33_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_conv2d_transpose_80_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_conv2d_transpose_80_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_conv2d_transpose_81_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_conv2d_transpose_81_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp.assignvariableop_21_conv2d_transpose_82_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_conv2d_transpose_82_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp.assignvariableop_23_conv2d_transpose_83_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_conv2d_transpose_83_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp.assignvariableop_25_conv2d_transpose_84_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_conv2d_transpose_84_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_64_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_64_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_65_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_65_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_66_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_66_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_67_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_67_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_32_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_32_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_33_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_33_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_conv2d_transpose_80_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp3assignvariableop_40_adam_conv2d_transpose_80_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_conv2d_transpose_81_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp3assignvariableop_42_adam_conv2d_transpose_81_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_conv2d_transpose_82_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp3assignvariableop_44_adam_conv2d_transpose_82_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_conv2d_transpose_83_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp3assignvariableop_46_adam_conv2d_transpose_83_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp5assignvariableop_47_adam_conv2d_transpose_84_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_conv2d_transpose_84_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_64_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_64_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_65_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_65_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_66_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_66_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_67_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_67_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_32_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_32_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_33_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_33_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_conv2d_transpose_80_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp3assignvariableop_62_adam_conv2d_transpose_80_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp5assignvariableop_63_adam_conv2d_transpose_81_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp3assignvariableop_64_adam_conv2d_transpose_81_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_conv2d_transpose_82_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp3assignvariableop_66_adam_conv2d_transpose_82_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp5assignvariableop_67_adam_conv2d_transpose_83_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp3assignvariableop_68_adam_conv2d_transpose_83_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_conv2d_transpose_84_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp3assignvariableop_70_adam_conv2d_transpose_84_bias_vIdentity_70:output:0"/device:CPU:0*
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
?
?
__inference_call_39226
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
__inference_encode_390382
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
 __inference_reparameterize_390762
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
__inference_decode_391972
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
?@
?
__inference_compute_loss_40579
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
__inference_encode_390382
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
 __inference_reparameterize_390762
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
__inference_decode_391972
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
?6
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_41311

inputsB
(conv2d_64_conv2d_readvariableop_resource: 7
)conv2d_64_biasadd_readvariableop_resource: B
(conv2d_65_conv2d_readvariableop_resource: @7
)conv2d_65_biasadd_readvariableop_resource:@C
(conv2d_66_conv2d_readvariableop_resource:@?8
)conv2d_66_biasadd_readvariableop_resource:	?D
(conv2d_67_conv2d_readvariableop_resource:??8
)conv2d_67_biasadd_readvariableop_resource:	?;
'dense_32_matmul_readvariableop_resource:
??6
(dense_32_biasadd_readvariableop_resource:
identity?? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp?dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2Dinputs'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d_64/Relu?
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_65/Conv2D/ReadVariableOp?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_65/Conv2D?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_65/Relu?
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_66/Conv2D/ReadVariableOp?
conv2d_66/Conv2DConv2Dconv2d_65/Relu:activations:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_66/Conv2D?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_66/BiasAdd/ReadVariableOp?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_66/BiasAdd
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_66/Relu?
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_67/Conv2D/ReadVariableOp?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_67/Conv2D?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_67/BiasAdd/ReadVariableOp?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_67/BiasAdd
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_67/Reluu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten_16/Const?
flatten_16/ReshapeReshapeconv2d_67/Relu:activations:0flatten_16/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_16/Reshape?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_32/MatMul/ReadVariableOp?
dense_32/MatMulMatMulflatten_16/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_32/MatMul?
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_32/BiasAdd/ReadVariableOp?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_32/BiasAddt
IdentityIdentitydense_32/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?H
?

__inference_encode_40277
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
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
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?
I
 __inference_reparameterize_40293
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
?
?
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41874

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
?%
?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_37559

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
?!
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_36926

inputs)
conv2d_64_36845: 
conv2d_64_36847: )
conv2d_65_36862: @
conv2d_65_36864:@*
conv2d_66_36879:@?
conv2d_66_36881:	?+
conv2d_67_36896:??
conv2d_67_36898:	?"
dense_32_36920:
??
dense_32_36922:
identity??!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall? dense_32/StatefulPartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_64_36845conv2d_64_36847*
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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_368442#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_36862conv2d_65_36864*
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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_368612#
!conv2d_65/StatefulPartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_36879conv2d_66_36881*
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_368782#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_36896conv2d_67_36898*
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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_368952#
!conv2d_67/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
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
E__inference_flatten_16_layer_call_and_return_conditional_losses_369072
flatten_16/PartitionedCall?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_36920dense_32_36922*
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
C__inference_dense_32_layer_call_and_return_conditional_losses_369192"
 dense_32/StatefulPartitionedCall?
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41850

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
?
?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_41669

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
?G
?

__inference_encode_40189
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0* 
_output_shapes
:
??2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
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
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?^
?
__forward_compute_loss_41055
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
__forward_encode_409942
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
__forward_reparameterize_409212
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
__forward_decode_408552
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
backward_function_name1/__inference___backward_compute_loss_40626_4105622
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
?
?
-__inference_sequential_32_layer_call_fn_37110
input_33!
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
StatefulPartitionedCallStatefulPartitionedCallinput_33unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
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
H__inference_sequential_32_layer_call_and_return_conditional_losses_370622
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
input_33
?&
?
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42078

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
3__inference_conv2d_transpose_81_layer_call_fn_41892

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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_377002
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
??
?
__inference_decode_40025
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
SigmoidSigmoid2sequential_33/conv2d_transpose_84/BiasAdd:output:0*
T0*(
_output_shapes
:??2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
?
(__inference_dense_32_layer_call_fn_41749

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
C__inference_dense_32_layer_call_and_return_conditional_losses_369192
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
a
E__inference_reshape_16_layer_call_and_return_conditional_losses_37646

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
?
?
(__inference_dense_33_layer_call_fn_41768

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
C__inference_dense_33_layer_call_and_return_conditional_losses_376262
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
??
?$
__inference_train_step_41221
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
__forward_compute_loss_410552
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
/__inference___backward_compute_loss_40626_410562
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
loc:@40580*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdam?
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam	unknown_0&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40582*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdam?
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam	unknown_1&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:3^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40584*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdam?
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam	unknown_2&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:4^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40586*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdam?
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam	unknown_3&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:5^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40588*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_4/ResourceApplyAdam?
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam	unknown_4&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:6^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40590*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_5/ResourceApplyAdam?
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam	unknown_5&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:7^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40592*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_6/ResourceApplyAdam?
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam	unknown_6&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:8^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40594*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_7/ResourceApplyAdam?
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam	unknown_7&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:9^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40596*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_8/ResourceApplyAdam?
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam	unknown_8&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:10^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40598*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_9/ResourceApplyAdam?
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam	unknown_9'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:11^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40600*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_10/ResourceApplyAdam?
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam
unknown_10'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:12^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40602*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_11/ResourceApplyAdam?
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam
unknown_11'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:13^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40604*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_12/ResourceApplyAdam?
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam
unknown_12'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:14^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40606*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_13/ResourceApplyAdam?
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam
unknown_13'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:15^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40608*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_14/ResourceApplyAdam?
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam
unknown_14'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:16^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40610*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_15/ResourceApplyAdam?
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam
unknown_15'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:17^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40612*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_16/ResourceApplyAdam?
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam
unknown_16'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:18^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40614*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_17/ResourceApplyAdam?
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdam
unknown_17'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:19^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40616*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_18/ResourceApplyAdam?
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdam
unknown_18'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:20^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40618*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_19/ResourceApplyAdam?
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam
unknown_19'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:21^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40620*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_20/ResourceApplyAdam?
%Adam/Adam/update_21/ResourceApplyAdamResourceApplyAdam
unknown_20'adam_adam_update_21_resourceapplyadam_m'adam_adam_update_21_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:22^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@40622*
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
loc:@40580:

_class

loc:@40580:

_class

loc:@40582:

_class

loc:@40582:

_class

loc:@40584: 

_class

loc:@40584:!

_class

loc:@40586:"

_class

loc:@40586:#

_class

loc:@40588:$

_class

loc:@40588:%

_class

loc:@40590:&

_class

loc:@40590:'

_class

loc:@40592:(

_class

loc:@40592:)

_class

loc:@40594:*

_class

loc:@40594:+

_class

loc:@40596:,

_class

loc:@40596:-

_class

loc:@40598:.

_class

loc:@40598:/

_class

loc:@40600:0

_class

loc:@40600:1

_class

loc:@40602:2

_class

loc:@40602:3

_class

loc:@40604:4

_class

loc:@40604:5

_class

loc:@40606:6

_class

loc:@40606:7

_class

loc:@40608:8

_class

loc:@40608:9

_class

loc:@40610::

_class

loc:@40610:;

_class

loc:@40612:<

_class

loc:@40612:=

_class

loc:@40614:>

_class

loc:@40614:?

_class

loc:@40616:@

_class

loc:@40616:A

_class

loc:@40618:B

_class

loc:@40618:C

_class

loc:@40620:D

_class

loc:@40620:E

_class

loc:@40622:F

_class

loc:@40622
??
?
__inference_decode_36746
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeShape)sequential_33/dense_33/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeShape)sequential_33/reshape_16/Reshape:output:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeShape4sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeShape4sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeShape4sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeShape4sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2+
)sequential_33/conv2d_transpose_84/BiasAdd?
IdentityIdentity2sequential_33/conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????

_user_specified_namez
?
?
#__inference_signature_wrapper_38564
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
 __inference__wrapped_model_368262
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
?+
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_38073
input_34!
dense_33_38041:	?,
dense_33_38043:	?,4
conv2d_transpose_80_38047:? (
conv2d_transpose_80_38049:	?5
conv2d_transpose_81_38052:??(
conv2d_transpose_81_38054:	?4
conv2d_transpose_82_38057:@?'
conv2d_transpose_82_38059:@3
conv2d_transpose_83_38062: @'
conv2d_transpose_83_38064: 3
conv2d_transpose_84_38067: '
conv2d_transpose_84_38069:
identity??+conv2d_transpose_80/StatefulPartitionedCall?+conv2d_transpose_81/StatefulPartitionedCall?+conv2d_transpose_82/StatefulPartitionedCall?+conv2d_transpose_83/StatefulPartitionedCall?+conv2d_transpose_84/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinput_34dense_33_38041dense_33_38043*
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
C__inference_dense_33_layer_call_and_return_conditional_losses_376262"
 dense_33/StatefulPartitionedCall?
reshape_16/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
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
E__inference_reshape_16_layer_call_and_return_conditional_losses_376462
reshape_16/PartitionedCall?
+conv2d_transpose_80/StatefulPartitionedCallStatefulPartitionedCall#reshape_16/PartitionedCall:output:0conv2d_transpose_80_38047conv2d_transpose_80_38049*
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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_376712-
+conv2d_transpose_80/StatefulPartitionedCall?
+conv2d_transpose_81/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_80/StatefulPartitionedCall:output:0conv2d_transpose_81_38052conv2d_transpose_81_38054*
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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_377002-
+conv2d_transpose_81/StatefulPartitionedCall?
+conv2d_transpose_82/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_81/StatefulPartitionedCall:output:0conv2d_transpose_82_38057conv2d_transpose_82_38059*
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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_377292-
+conv2d_transpose_82/StatefulPartitionedCall?
+conv2d_transpose_83/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_82/StatefulPartitionedCall:output:0conv2d_transpose_83_38062conv2d_transpose_83_38064*
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_377582-
+conv2d_transpose_83/StatefulPartitionedCall?
+conv2d_transpose_84/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_83/StatefulPartitionedCall:output:0conv2d_transpose_84_38067conv2d_transpose_84_38069*
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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_377862-
+conv2d_transpose_84/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_84/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_80/StatefulPartitionedCall,^conv2d_transpose_81/StatefulPartitionedCall,^conv2d_transpose_82/StatefulPartitionedCall,^conv2d_transpose_83/StatefulPartitionedCall,^conv2d_transpose_84/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_80/StatefulPartitionedCall+conv2d_transpose_80/StatefulPartitionedCall2Z
+conv2d_transpose_81/StatefulPartitionedCall+conv2d_transpose_81/StatefulPartitionedCall2Z
+conv2d_transpose_82/StatefulPartitionedCall+conv2d_transpose_82/StatefulPartitionedCall2Z
+conv2d_transpose_83/StatefulPartitionedCall+conv2d_transpose_83/StatefulPartitionedCall2Z
+conv2d_transpose_84/StatefulPartitionedCall+conv2d_transpose_84/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_34
?
|
__forward_reparameterize_40921
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
backward_function_name31__inference___backward_reparameterize_40897_40922:D @

_output_shapes

:

_user_specified_namemean:FB

_output_shapes

:
 
_user_specified_namelogvar
?
?
3__inference_conv2d_transpose_80_layer_call_fn_41807

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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_372082
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
?
?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_41709

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
?
a
E__inference_flatten_16_layer_call_and_return_conditional_losses_41740

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
?	
?
3__inference_conv2d_transpose_81_layer_call_fn_41883

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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_372962
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
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38830
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
?j
?

)__inference___backward_encode_40935_40995
placeholder
placeholder_1/
+gradients_split_grad_concat_split_split_dimd
`gradients_sequential_32_dense_32_matmul_grad_matmul_sequential_32_dense_32_matmul_readvariableopZ
Vgradients_sequential_32_dense_32_matmul_grad_matmul_1_sequential_32_flatten_16_reshapeU
Qgradients_sequential_32_conv2d_67_relu_grad_relugrad_sequential_32_conv2d_67_reluU
Qgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_66_reluf
bgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_67_conv2d_readvariableopU
Qgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_65_reluf
bgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_66_conv2d_readvariableopU
Qgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_64_reluf
bgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_65_conv2d_readvariableop:
6gradients_sequential_32_conv2d_64_conv2d_grad_shapen_xf
bgradients_sequential_32_conv2d_64_conv2d_grad_shapen_sequential_32_conv2d_64_conv2d_readvariableop
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
9gradients/sequential_32/dense_32/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:2;
9gradients/sequential_32/dense_32/BiasAdd_grad/BiasAddGrad?
3gradients/sequential_32/dense_32/MatMul_grad/MatMulMatMul$gradients/split_grad/concat:output:0`gradients_sequential_32_dense_32_matmul_grad_matmul_sequential_32_dense_32_matmul_readvariableop*
T0* 
_output_shapes
:
??*
transpose_b(25
3gradients/sequential_32/dense_32/MatMul_grad/MatMul?
5gradients/sequential_32/dense_32/MatMul_grad/MatMul_1MatMulVgradients_sequential_32_dense_32_matmul_grad_matmul_1_sequential_32_flatten_16_reshape$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??*
transpose_a(27
5gradients/sequential_32/dense_32/MatMul_grad/MatMul_1?
5gradients/sequential_32/flatten_16/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   
         27
5gradients/sequential_32/flatten_16/Reshape_grad/Shape?
7gradients/sequential_32/flatten_16/Reshape_grad/ReshapeReshape=gradients/sequential_32/dense_32/MatMul_grad/MatMul:product:0>gradients/sequential_32/flatten_16/Reshape_grad/Shape:output:0*
T0*'
_output_shapes
:
?29
7gradients/sequential_32/flatten_16/Reshape_grad/Reshape?
4gradients/sequential_32/conv2d_67/Relu_grad/ReluGradReluGrad@gradients/sequential_32/flatten_16/Reshape_grad/Reshape:output:0Qgradients_sequential_32_conv2d_67_relu_grad_relugrad_sequential_32_conv2d_67_relu*
T0*'
_output_shapes
:
?26
4gradients/sequential_32/conv2d_67/Relu_grad/ReluGrad?
:gradients/sequential_32/conv2d_67/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_32/conv2d_67/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2<
:gradients/sequential_32/conv2d_67/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_32/conv2d_67/Conv2D_grad/ShapeNShapeNQgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_66_relubgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_67_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_32/conv2d_67/Conv2D_grad/ShapeN?
Agradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_32/conv2d_67/Conv2D_grad/ShapeN:output:0bgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_67_conv2d_readvariableop@gradients/sequential_32/conv2d_67/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2C
Agradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_66_relu=gradients/sequential_32/conv2d_67/Conv2D_grad/ShapeN:output:1@gradients/sequential_32/conv2d_67/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2D
Bgradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_32/conv2d_66/Relu_grad/ReluGradReluGradJgradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_32_conv2d_67_conv2d_grad_shapen_sequential_32_conv2d_66_relu*
T0*'
_output_shapes
:?26
4gradients/sequential_32/conv2d_66/Relu_grad/ReluGrad?
:gradients/sequential_32/conv2d_66/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_32/conv2d_66/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2<
:gradients/sequential_32/conv2d_66/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_32/conv2d_66/Conv2D_grad/ShapeNShapeNQgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_65_relubgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_66_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_32/conv2d_66/Conv2D_grad/ShapeN?
Agradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_32/conv2d_66/Conv2D_grad/ShapeN:output:0bgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_66_conv2d_readvariableop@gradients/sequential_32/conv2d_66/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2C
Agradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_65_relu=gradients/sequential_32/conv2d_66/Conv2D_grad/ShapeN:output:1@gradients/sequential_32/conv2d_66/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2D
Bgradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_32/conv2d_65/Relu_grad/ReluGradReluGradJgradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_32_conv2d_66_conv2d_grad_shapen_sequential_32_conv2d_65_relu*
T0*&
_output_shapes
:+?@26
4gradients/sequential_32/conv2d_65/Relu_grad/ReluGrad?
:gradients/sequential_32/conv2d_65/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_32/conv2d_65/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2<
:gradients/sequential_32/conv2d_65/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_32/conv2d_65/Conv2D_grad/ShapeNShapeNQgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_64_relubgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_65_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_32/conv2d_65/Conv2D_grad/ShapeN?
Agradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_32/conv2d_65/Conv2D_grad/ShapeN:output:0bgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_65_conv2d_readvariableop@gradients/sequential_32/conv2d_65/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2C
Agradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterQgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_64_relu=gradients/sequential_32/conv2d_65/Conv2D_grad/ShapeN:output:1@gradients/sequential_32/conv2d_65/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: @*
paddingVALID*
strides
2D
Bgradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropFilter?
4gradients/sequential_32/conv2d_64/Relu_grad/ReluGradReluGradJgradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropInput:output:0Qgradients_sequential_32_conv2d_65_conv2d_grad_shapen_sequential_32_conv2d_64_relu*
T0*&
_output_shapes
:W 26
4gradients/sequential_32/conv2d_64/Relu_grad/ReluGrad?
:gradients/sequential_32/conv2d_64/BiasAdd_grad/BiasAddGradBiasAddGrad@gradients/sequential_32/conv2d_64/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2<
:gradients/sequential_32/conv2d_64/BiasAdd_grad/BiasAddGrad?
4gradients/sequential_32/conv2d_64/Conv2D_grad/ShapeNShapeN6gradients_sequential_32_conv2d_64_conv2d_grad_shapen_xbgradients_sequential_32_conv2d_64_conv2d_grad_shapen_sequential_32_conv2d_64_conv2d_readvariableop*
N*
T0* 
_output_shapes
::26
4gradients/sequential_32/conv2d_64/Conv2D_grad/ShapeN?
Agradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput=gradients/sequential_32/conv2d_64/Conv2D_grad/ShapeN:output:0bgradients_sequential_32_conv2d_64_conv2d_grad_shapen_sequential_32_conv2d_64_conv2d_readvariableop@gradients/sequential_32/conv2d_64/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2C
Agradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropInput?
Bgradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter6gradients_sequential_32_conv2d_64_conv2d_grad_shapen_x=gradients/sequential_32/conv2d_64/Conv2D_grad/ShapeN:output:1@gradients/sequential_32/conv2d_64/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2D
Bgradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropFilter?
IdentityIdentityJgradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:??2

Identity?

Identity_1IdentityKgradients/sequential_32/conv2d_64/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2

Identity_1?

Identity_2IdentityCgradients/sequential_32/conv2d_64/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2

Identity_2?

Identity_3IdentityKgradients/sequential_32/conv2d_65/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_3?

Identity_4IdentityCgradients/sequential_32/conv2d_65/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_4?

Identity_5IdentityKgradients/sequential_32/conv2d_66/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_5?

Identity_6IdentityCgradients/sequential_32/conv2d_66/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7IdentityKgradients/sequential_32/conv2d_67/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_7?

Identity_8IdentityCgradients/sequential_32/conv2d_67/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_8?

Identity_9Identity?gradients/sequential_32/dense_32/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
??2

Identity_9?
Identity_10IdentityBgradients/sequential_32/dense_32/BiasAdd_grad/BiasAddGrad:output:0*
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
forward_function_name__forward_encode_40994:$  

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
??
?
__inference_decode_40448
zH
5sequential_33_dense_33_matmul_readvariableop_resource:	?,E
6sequential_33_dense_33_biasadd_readvariableop_resource:	?,e
Jsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? P
Asequential_33_conv2d_transpose_80_biasadd_readvariableop_resource:	?f
Jsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??P
Asequential_33_conv2d_transpose_81_biasadd_readvariableop_resource:	?e
Jsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?O
Asequential_33_conv2d_transpose_82_biasadd_readvariableop_resource:@d
Jsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @O
Asequential_33_conv2d_transpose_83_biasadd_readvariableop_resource: d
Jsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource: O
Asequential_33_conv2d_transpose_84_biasadd_readvariableop_resource:
identity??8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?-sequential_33/dense_33/BiasAdd/ReadVariableOp?,sequential_33/dense_33/MatMul/ReadVariableOp?
,sequential_33/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02.
,sequential_33/dense_33/MatMul/ReadVariableOp?
sequential_33/dense_33/MatMulMatMulz4sequential_33/dense_33/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/MatMul?
-sequential_33/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02/
-sequential_33/dense_33/BiasAdd/ReadVariableOp?
sequential_33/dense_33/BiasAddBiasAdd'sequential_33/dense_33/MatMul:product:05sequential_33/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2 
sequential_33/dense_33/BiasAdd?
sequential_33/dense_33/ReluRelu'sequential_33/dense_33/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_33/dense_33/Relu?
sequential_33/reshape_16/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
sequential_33/reshape_16/Shape?
,sequential_33/reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_33/reshape_16/strided_slice/stack?
.sequential_33/reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_1?
.sequential_33/reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_33/reshape_16/strided_slice/stack_2?
&sequential_33/reshape_16/strided_sliceStridedSlice'sequential_33/reshape_16/Shape:output:05sequential_33/reshape_16/strided_slice/stack:output:07sequential_33/reshape_16/strided_slice/stack_1:output:07sequential_33/reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_33/reshape_16/strided_slice?
(sequential_33/reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/1?
(sequential_33/reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_33/reshape_16/Reshape/shape/2?
(sequential_33/reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_33/reshape_16/Reshape/shape/3?
&sequential_33/reshape_16/Reshape/shapePack/sequential_33/reshape_16/strided_slice:output:01sequential_33/reshape_16/Reshape/shape/1:output:01sequential_33/reshape_16/Reshape/shape/2:output:01sequential_33/reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_33/reshape_16/Reshape/shape?
 sequential_33/reshape_16/ReshapeReshape)sequential_33/dense_33/Relu:activations:0/sequential_33/reshape_16/Reshape/shape:output:0*
T0*&
_output_shapes
: 2"
 sequential_33/reshape_16/Reshape?
'sequential_33/conv2d_transpose_80/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_80/Shape?
5sequential_33/conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_80/strided_slice/stack?
7sequential_33/conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_1?
7sequential_33/conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_80/strided_slice/stack_2?
/sequential_33/conv2d_transpose_80/strided_sliceStridedSlice0sequential_33/conv2d_transpose_80/Shape:output:0>sequential_33/conv2d_transpose_80/strided_slice/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_80/strided_slice?
)sequential_33/conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_80/stack/1?
)sequential_33/conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_80/stack/2?
)sequential_33/conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_80/stack/3?
'sequential_33/conv2d_transpose_80/stackPack8sequential_33/conv2d_transpose_80/strided_slice:output:02sequential_33/conv2d_transpose_80/stack/1:output:02sequential_33/conv2d_transpose_80/stack/2:output:02sequential_33/conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_80/stack?
7sequential_33/conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_80/strided_slice_1/stack?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_80/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_80/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_80/stack:output:0@sequential_33/conv2d_transpose_80/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_80/strided_slice_1?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02C
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_80/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_80/stack:output:0Isequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0)sequential_33/reshape_16/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_80/conv2d_transpose?
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_80/BiasAddBiasAdd;sequential_33/conv2d_transpose_80/conv2d_transpose:output:0@sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2+
)sequential_33/conv2d_transpose_80/BiasAdd?
&sequential_33/conv2d_transpose_80/ReluRelu2sequential_33/conv2d_transpose_80/BiasAdd:output:0*
T0*'
_output_shapes
: ?2(
&sequential_33/conv2d_transpose_80/Relu?
'sequential_33/conv2d_transpose_81/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'sequential_33/conv2d_transpose_81/Shape?
5sequential_33/conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_81/strided_slice/stack?
7sequential_33/conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_1?
7sequential_33/conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_81/strided_slice/stack_2?
/sequential_33/conv2d_transpose_81/strided_sliceStridedSlice0sequential_33/conv2d_transpose_81/Shape:output:0>sequential_33/conv2d_transpose_81/strided_slice/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_81/strided_slice?
)sequential_33/conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2+
)sequential_33/conv2d_transpose_81/stack/1?
)sequential_33/conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_81/stack/2?
)sequential_33/conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_81/stack/3?
'sequential_33/conv2d_transpose_81/stackPack8sequential_33/conv2d_transpose_81/strided_slice:output:02sequential_33/conv2d_transpose_81/stack/1:output:02sequential_33/conv2d_transpose_81/stack/2:output:02sequential_33/conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_81/stack?
7sequential_33/conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_81/strided_slice_1/stack?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_81/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_81/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_81/stack:output:0@sequential_33/conv2d_transpose_81/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_81/strided_slice_1?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02C
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_81/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_81/stack:output:0Isequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_80/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_81/conv2d_transpose?
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02:
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_81/BiasAddBiasAdd;sequential_33/conv2d_transpose_81/conv2d_transpose:output:0@sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2+
)sequential_33/conv2d_transpose_81/BiasAdd?
&sequential_33/conv2d_transpose_81/ReluRelu2sequential_33/conv2d_transpose_81/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2(
&sequential_33/conv2d_transpose_81/Relu?
'sequential_33/conv2d_transpose_82/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2)
'sequential_33/conv2d_transpose_82/Shape?
5sequential_33/conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_82/strided_slice/stack?
7sequential_33/conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_1?
7sequential_33/conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_82/strided_slice/stack_2?
/sequential_33/conv2d_transpose_82/strided_sliceStridedSlice0sequential_33/conv2d_transpose_82/Shape:output:0>sequential_33/conv2d_transpose_82/strided_slice/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_82/strided_slice?
)sequential_33/conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2+
)sequential_33/conv2d_transpose_82/stack/1?
)sequential_33/conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_82/stack/2?
)sequential_33/conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2+
)sequential_33/conv2d_transpose_82/stack/3?
'sequential_33/conv2d_transpose_82/stackPack8sequential_33/conv2d_transpose_82/strided_slice:output:02sequential_33/conv2d_transpose_82/stack/1:output:02sequential_33/conv2d_transpose_82/stack/2:output:02sequential_33/conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_82/stack?
7sequential_33/conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_82/strided_slice_1/stack?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_82/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_82/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_82/stack:output:0@sequential_33/conv2d_transpose_82/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_82/strided_slice_1?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02C
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_82/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_82/stack:output:0Isequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_81/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_82/conv2d_transpose?
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02:
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_82/BiasAddBiasAdd;sequential_33/conv2d_transpose_82/conv2d_transpose:output:0@sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2+
)sequential_33/conv2d_transpose_82/BiasAdd?
&sequential_33/conv2d_transpose_82/ReluRelu2sequential_33/conv2d_transpose_82/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2(
&sequential_33/conv2d_transpose_82/Relu?
'sequential_33/conv2d_transpose_83/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2)
'sequential_33/conv2d_transpose_83/Shape?
5sequential_33/conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_83/strided_slice/stack?
7sequential_33/conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_1?
7sequential_33/conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_83/strided_slice/stack_2?
/sequential_33/conv2d_transpose_83/strided_sliceStridedSlice0sequential_33/conv2d_transpose_83/Shape:output:0>sequential_33/conv2d_transpose_83/strided_slice/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_83/strided_slice?
)sequential_33/conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/1?
)sequential_33/conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_83/stack/2?
)sequential_33/conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_33/conv2d_transpose_83/stack/3?
'sequential_33/conv2d_transpose_83/stackPack8sequential_33/conv2d_transpose_83/strided_slice:output:02sequential_33/conv2d_transpose_83/stack/1:output:02sequential_33/conv2d_transpose_83/stack/2:output:02sequential_33/conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_83/stack?
7sequential_33/conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_83/strided_slice_1/stack?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_83/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_83/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_83/stack:output:0@sequential_33/conv2d_transpose_83/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_83/strided_slice_1?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02C
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_83/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_83/stack:output:0Isequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_82/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_83/conv2d_transpose?
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02:
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_83/BiasAddBiasAdd;sequential_33/conv2d_transpose_83/conv2d_transpose:output:0@sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2+
)sequential_33/conv2d_transpose_83/BiasAdd?
&sequential_33/conv2d_transpose_83/ReluRelu2sequential_33/conv2d_transpose_83/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2(
&sequential_33/conv2d_transpose_83/Relu?
'sequential_33/conv2d_transpose_84/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2)
'sequential_33/conv2d_transpose_84/Shape?
5sequential_33/conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_33/conv2d_transpose_84/strided_slice/stack?
7sequential_33/conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_1?
7sequential_33/conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_33/conv2d_transpose_84/strided_slice/stack_2?
/sequential_33/conv2d_transpose_84/strided_sliceStridedSlice0sequential_33/conv2d_transpose_84/Shape:output:0>sequential_33/conv2d_transpose_84/strided_slice/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_1:output:0@sequential_33/conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_33/conv2d_transpose_84/strided_slice?
)sequential_33/conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/1?
)sequential_33/conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2+
)sequential_33/conv2d_transpose_84/stack/2?
)sequential_33/conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2+
)sequential_33/conv2d_transpose_84/stack/3?
'sequential_33/conv2d_transpose_84/stackPack8sequential_33/conv2d_transpose_84/strided_slice:output:02sequential_33/conv2d_transpose_84/stack/1:output:02sequential_33/conv2d_transpose_84/stack/2:output:02sequential_33/conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2)
'sequential_33/conv2d_transpose_84/stack?
7sequential_33/conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 29
7sequential_33/conv2d_transpose_84/strided_slice_1/stack?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_1?
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9sequential_33/conv2d_transpose_84/strided_slice_1/stack_2?
1sequential_33/conv2d_transpose_84/strided_slice_1StridedSlice0sequential_33/conv2d_transpose_84/stack:output:0@sequential_33/conv2d_transpose_84/strided_slice_1/stack:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_1:output:0Bsequential_33/conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1sequential_33/conv2d_transpose_84/strided_slice_1?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02C
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
2sequential_33/conv2d_transpose_84/conv2d_transposeConv2DBackpropInput0sequential_33/conv2d_transpose_84/stack:output:0Isequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:04sequential_33/conv2d_transpose_83/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
24
2sequential_33/conv2d_transpose_84/conv2d_transpose?
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOpAsequential_33_conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02:
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp?
)sequential_33/conv2d_transpose_84/BiasAddBiasAdd;sequential_33/conv2d_transpose_84/conv2d_transpose:output:0@sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2+
)sequential_33/conv2d_transpose_84/BiasAdd?
SigmoidSigmoid2sequential_33/conv2d_transpose_84/BiasAdd:output:0*
T0*(
_output_shapes
:??2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp9^sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp9^sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOpB^sequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp.^sequential_33/dense_33/BiasAdd/ReadVariableOp-^sequential_33/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2t
8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_80/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_80/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_81/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_81/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_82/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_82/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_83/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_83/conv2d_transpose/ReadVariableOp2t
8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp8sequential_33/conv2d_transpose_84/BiasAdd/ReadVariableOp2?
Asequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOpAsequential_33/conv2d_transpose_84/conv2d_transpose/ReadVariableOp2^
-sequential_33/dense_33/BiasAdd/ReadVariableOp-sequential_33/dense_33/BiasAdd/ReadVariableOp2\
,sequential_33/dense_33/MatMul/ReadVariableOp,sequential_33/dense_33/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
?
?
__inference_call_36775
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
?+
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_37947

inputs!
dense_33_37915:	?,
dense_33_37917:	?,4
conv2d_transpose_80_37921:? (
conv2d_transpose_80_37923:	?5
conv2d_transpose_81_37926:??(
conv2d_transpose_81_37928:	?4
conv2d_transpose_82_37931:@?'
conv2d_transpose_82_37933:@3
conv2d_transpose_83_37936: @'
conv2d_transpose_83_37938: 3
conv2d_transpose_84_37941: '
conv2d_transpose_84_37943:
identity??+conv2d_transpose_80/StatefulPartitionedCall?+conv2d_transpose_81/StatefulPartitionedCall?+conv2d_transpose_82/StatefulPartitionedCall?+conv2d_transpose_83/StatefulPartitionedCall?+conv2d_transpose_84/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinputsdense_33_37915dense_33_37917*
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
C__inference_dense_33_layer_call_and_return_conditional_losses_376262"
 dense_33/StatefulPartitionedCall?
reshape_16/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
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
E__inference_reshape_16_layer_call_and_return_conditional_losses_376462
reshape_16/PartitionedCall?
+conv2d_transpose_80/StatefulPartitionedCallStatefulPartitionedCall#reshape_16/PartitionedCall:output:0conv2d_transpose_80_37921conv2d_transpose_80_37923*
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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_376712-
+conv2d_transpose_80/StatefulPartitionedCall?
+conv2d_transpose_81/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_80/StatefulPartitionedCall:output:0conv2d_transpose_81_37926conv2d_transpose_81_37928*
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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_377002-
+conv2d_transpose_81/StatefulPartitionedCall?
+conv2d_transpose_82/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_81/StatefulPartitionedCall:output:0conv2d_transpose_82_37931conv2d_transpose_82_37933*
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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_377292-
+conv2d_transpose_82/StatefulPartitionedCall?
+conv2d_transpose_83/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_82/StatefulPartitionedCall:output:0conv2d_transpose_83_37936conv2d_transpose_83_37938*
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_377582-
+conv2d_transpose_83/StatefulPartitionedCall?
+conv2d_transpose_84/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_83/StatefulPartitionedCall:output:0conv2d_transpose_84_37941conv2d_transpose_84_37943*
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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_377862-
+conv2d_transpose_84/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_84/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_80/StatefulPartitionedCall,^conv2d_transpose_81/StatefulPartitionedCall,^conv2d_transpose_82/StatefulPartitionedCall,^conv2d_transpose_83/StatefulPartitionedCall,^conv2d_transpose_84/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_80/StatefulPartitionedCall+conv2d_transpose_80/StatefulPartitionedCall2Z
+conv2d_transpose_81/StatefulPartitionedCall+conv2d_transpose_81/StatefulPartitionedCall2Z
+conv2d_transpose_82/StatefulPartitionedCall+conv2d_transpose_82/StatefulPartitionedCall2Z
+conv2d_transpose_83/StatefulPartitionedCall+conv2d_transpose_83/StatefulPartitionedCall2Z
+conv2d_transpose_84/StatefulPartitionedCall+conv2d_transpose_84/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
/__inference___backward_compute_loss_40626_41056
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
)__inference___backward_decode_40795_408562:
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
1__inference___backward_reparameterize_40897_409222:
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
)__inference___backward_encode_40935_4099528
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
forward_function_name__forward_compute_loss_41055: 
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
I
 __inference_reparameterize_39466
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
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

:@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@2
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

:@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@:@:D @

_output_shapes

:@

_user_specified_namemean:FB

_output_shapes

:@
 
_user_specified_namelogvar
?
?
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42026

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
?
?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_36861

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
?
I
 __inference_reparameterize_40309
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
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

:@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@2
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

:@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@:@:D @

_output_shapes

:@

_user_specified_namemean:FB

_output_shapes

:@
 
_user_specified_namelogvar
?&
?
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_37208

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
?
?
3__inference_conv2d_transpose_82_layer_call_fn_41959

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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_373842
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
?
?
 __inference__wrapped_model_36826
input_1'
cvae_17_36776: 
cvae_17_36778: '
cvae_17_36780: @
cvae_17_36782:@(
cvae_17_36784:@?
cvae_17_36786:	?)
cvae_17_36788:??
cvae_17_36790:	?!
cvae_17_36792:
??
cvae_17_36794: 
cvae_17_36796:	?,
cvae_17_36798:	?,(
cvae_17_36800:? 
cvae_17_36802:	?)
cvae_17_36804:??
cvae_17_36806:	?(
cvae_17_36808:@?
cvae_17_36810:@'
cvae_17_36812: @
cvae_17_36814: '
cvae_17_36816: 
cvae_17_36818:
identity

identity_1

identity_2??cvae_17/StatefulPartitionedCall?
cvae_17/StatefulPartitionedCallStatefulPartitionedCallinput_1cvae_17_36776cvae_17_36778cvae_17_36780cvae_17_36782cvae_17_36784cvae_17_36786cvae_17_36788cvae_17_36790cvae_17_36792cvae_17_36794cvae_17_36796cvae_17_36798cvae_17_36800cvae_17_36802cvae_17_36804cvae_17_36806cvae_17_36808cvae_17_36810cvae_17_36812cvae_17_36814cvae_17_36816cvae_17_36818*"
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
__inference_call_367752!
cvae_17/StatefulPartitionedCall?
IdentityIdentity(cvae_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(cvae_17/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity(cvae_17/StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2p
NoOpNoOp ^cvae_17/StatefulPartitionedCall*"
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
cvae_17/StatefulPartitionedCallcvae_17/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?!
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_37062

inputs)
conv2d_64_37035: 
conv2d_64_37037: )
conv2d_65_37040: @
conv2d_65_37042:@*
conv2d_66_37045:@?
conv2d_66_37047:	?+
conv2d_67_37050:??
conv2d_67_37052:	?"
dense_32_37056:
??
dense_32_37058:
identity??!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall? dense_32/StatefulPartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_64_37035conv2d_64_37037*
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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_368442#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_37040conv2d_65_37042*
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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_368612#
!conv2d_65/StatefulPartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_37045conv2d_66_37047*
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_368782#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_37050conv2d_67_37052*
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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_368952#
!conv2d_67/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
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
E__inference_flatten_16_layer_call_and_return_conditional_losses_369072
flatten_16/PartitionedCall?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_37056dense_32_37058*
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
C__inference_dense_32_layer_call_and_return_conditional_losses_369192"
 dense_32/StatefulPartitionedCall?
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42176

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
__inference_sample_40475
eps
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
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallepsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
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
__inference_decode_404482
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes

:

_user_specified_nameeps
?
?
-__inference_sequential_33_layer_call_fn_41409

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
H__inference_sequential_33_layer_call_and_return_conditional_losses_379472
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
?
?
'__inference_cvae_17_layer_call_fn_38723
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_382912
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
?
?
'__inference_cvae_17_layer_call_fn_38617
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_381312
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
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_36895

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
?!
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_37140
input_33)
conv2d_64_37113: 
conv2d_64_37115: )
conv2d_65_37118: @
conv2d_65_37120:@*
conv2d_66_37123:@?
conv2d_66_37125:	?+
conv2d_67_37128:??
conv2d_67_37130:	?"
dense_32_37134:
??
dense_32_37136:
identity??!conv2d_64/StatefulPartitionedCall?!conv2d_65/StatefulPartitionedCall?!conv2d_66/StatefulPartitionedCall?!conv2d_67/StatefulPartitionedCall? dense_32/StatefulPartitionedCall?
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCallinput_33conv2d_64_37113conv2d_64_37115*
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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_368442#
!conv2d_64/StatefulPartitionedCall?
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0conv2d_65_37118conv2d_65_37120*
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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_368612#
!conv2d_65/StatefulPartitionedCall?
!conv2d_66/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0conv2d_66_37123conv2d_66_37125*
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_368782#
!conv2d_66/StatefulPartitionedCall?
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall*conv2d_66/StatefulPartitionedCall:output:0conv2d_67_37128conv2d_67_37130*
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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_368952#
!conv2d_67/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0*
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
E__inference_flatten_16_layer_call_and_return_conditional_losses_369072
flatten_16/PartitionedCall?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_32_37134dense_32_37136*
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
C__inference_dense_32_layer_call_and_return_conditional_losses_369192"
 dense_32/StatefulPartitionedCall?
IdentityIdentity)dense_32/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall"^conv2d_66/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2F
!conv2d_66/StatefulPartitionedCall!conv2d_66/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
input_33
??
?
)__inference___backward_decode_40795_40856
placeholder?
}gradients_sequential_33_conv2d_transpose_84_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_83_relu?
?gradients_sequential_33_conv2d_transpose_84_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop?
}gradients_sequential_33_conv2d_transpose_83_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_82_relu?
?gradients_sequential_33_conv2d_transpose_83_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop?
}gradients_sequential_33_conv2d_transpose_82_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_81_relu?
?gradients_sequential_33_conv2d_transpose_82_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop?
}gradients_sequential_33_conv2d_transpose_81_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_80_relu?
?gradients_sequential_33_conv2d_transpose_81_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop{
wgradients_sequential_33_conv2d_transpose_80_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_reshape_16_reshape?
?gradients_sequential_33_conv2d_transpose_80_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_80_conv2d_transpose_readvariableopS
Ogradients_sequential_33_dense_33_relu_grad_relugrad_sequential_33_dense_33_relud
`gradients_sequential_33_dense_33_matmul_grad_matmul_sequential_33_dense_33_matmul_readvariableop;
7gradients_sequential_33_dense_33_matmul_grad_matmul_1_z
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
Dgradients/sequential_33/conv2d_transpose_84/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:2F
Dgradients/sequential_33/conv2d_transpose_84/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2I
Ggradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Shape?
Vgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFiltergradients/grad_ys_0:output:0Pgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Shape:output:0}gradients_sequential_33_conv2d_transpose_84_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_83_relu*
T0*&
_output_shapes
: *
paddingSAME*
strides
2X
Vgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2DConv2Dgradients/grad_ys_0:output:0?gradients_sequential_33_conv2d_transpose_84_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_84_conv2d_transpose_readvariableop*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
2J
Hgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2D?
>gradients/sequential_33/conv2d_transpose_83/Relu_grad/ReluGradReluGradQgradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_33_conv2d_transpose_84_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_83_relu*
T0*(
_output_shapes
:?? 2@
>gradients/sequential_33/conv2d_transpose_83/Relu_grad/ReluGrad?
Dgradients/sequential_33/conv2d_transpose_83/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_33/conv2d_transpose_83/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2F
Dgradients/sequential_33/conv2d_transpose_83/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   2I
Ggradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Shape?
Vgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_33/conv2d_transpose_83/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Shape:output:0}gradients_sequential_33_conv2d_transpose_83_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_82_relu*
T0*&
_output_shapes
: @*
paddingSAME*
strides
2X
Vgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_33/conv2d_transpose_83/Relu_grad/ReluGrad:backprops:0?gradients_sequential_33_conv2d_transpose_83_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_83_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
2J
Hgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2D?
>gradients/sequential_33/conv2d_transpose_82/Relu_grad/ReluGradReluGradQgradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_33_conv2d_transpose_83_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_82_relu*
T0*'
_output_shapes
:X?@2@
>gradients/sequential_33/conv2d_transpose_82/Relu_grad/ReluGrad?
Dgradients/sequential_33/conv2d_transpose_82/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_33/conv2d_transpose_82/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2F
Dgradients/sequential_33/conv2d_transpose_82/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   ?   2I
Ggradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Shape?
Vgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_33/conv2d_transpose_82/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Shape:output:0}gradients_sequential_33_conv2d_transpose_82_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_81_relu*
T0*'
_output_shapes
:@?*
paddingSAME*
strides
2X
Vgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_33/conv2d_transpose_82/Relu_grad/ReluGrad:backprops:0?gradients_sequential_33_conv2d_transpose_82_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_82_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
2J
Hgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2D?
>gradients/sequential_33/conv2d_transpose_81/Relu_grad/ReluGradReluGradQgradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_33_conv2d_transpose_82_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_81_relu*
T0*'
_output_shapes
:,@?2@
>gradients/sequential_33/conv2d_transpose_81/Relu_grad/ReluGrad?
Dgradients/sequential_33/conv2d_transpose_81/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_33/conv2d_transpose_81/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2F
Dgradients/sequential_33/conv2d_transpose_81/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2I
Ggradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Shape?
Vgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_33/conv2d_transpose_81/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Shape:output:0}gradients_sequential_33_conv2d_transpose_81_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_80_relu*
T0*(
_output_shapes
:??*
paddingSAME*
strides
2X
Vgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_33/conv2d_transpose_81/Relu_grad/ReluGrad:backprops:0?gradients_sequential_33_conv2d_transpose_81_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_81_conv2d_transpose_readvariableop*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
2J
Hgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2D?
>gradients/sequential_33/conv2d_transpose_80/Relu_grad/ReluGradReluGradQgradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2D:output:0}gradients_sequential_33_conv2d_transpose_81_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_conv2d_transpose_80_relu*
T0*'
_output_shapes
: ?2@
>gradients/sequential_33/conv2d_transpose_80/Relu_grad/ReluGrad?
Dgradients/sequential_33/conv2d_transpose_80/BiasAdd_grad/BiasAddGradBiasAddGradJgradients/sequential_33/conv2d_transpose_80/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2F
Dgradients/sequential_33/conv2d_transpose_80/BiasAdd_grad/BiasAddGrad?
Ggradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2I
Ggradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Shape?
Vgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterJgradients/sequential_33/conv2d_transpose_80/Relu_grad/ReluGrad:backprops:0Pgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Shape:output:0wgradients_sequential_33_conv2d_transpose_80_conv2d_transpose_grad_conv2dbackpropfilter_sequential_33_reshape_16_reshape*
T0*'
_output_shapes
:? *
paddingSAME*
strides
2X
Vgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2DBackpropFilter?
Hgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2DConv2DJgradients/sequential_33/conv2d_transpose_80/Relu_grad/ReluGrad:backprops:0?gradients_sequential_33_conv2d_transpose_80_conv2d_transpose_grad_conv2d_sequential_33_conv2d_transpose_80_conv2d_transpose_readvariableop*
T0*&
_output_shapes
: *
paddingSAME*
strides
2J
Hgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2D?
5gradients/sequential_33/reshape_16/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5gradients/sequential_33/reshape_16/Reshape_grad/Shape?
7gradients/sequential_33/reshape_16/Reshape_grad/ReshapeReshapeQgradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2D:output:0>gradients/sequential_33/reshape_16/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?,29
7gradients/sequential_33/reshape_16/Reshape_grad/Reshape?
3gradients/sequential_33/dense_33/Relu_grad/ReluGradReluGrad@gradients/sequential_33/reshape_16/Reshape_grad/Reshape:output:0Ogradients_sequential_33_dense_33_relu_grad_relugrad_sequential_33_dense_33_relu*
T0*
_output_shapes
:	?,25
3gradients/sequential_33/dense_33/Relu_grad/ReluGrad?
9gradients/sequential_33/dense_33/BiasAdd_grad/BiasAddGradBiasAddGrad?gradients/sequential_33/dense_33/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?,2;
9gradients/sequential_33/dense_33/BiasAdd_grad/BiasAddGrad?
3gradients/sequential_33/dense_33/MatMul_grad/MatMulMatMul?gradients/sequential_33/dense_33/Relu_grad/ReluGrad:backprops:0`gradients_sequential_33_dense_33_matmul_grad_matmul_sequential_33_dense_33_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(25
3gradients/sequential_33/dense_33/MatMul_grad/MatMul?
5gradients/sequential_33/dense_33/MatMul_grad/MatMul_1MatMul7gradients_sequential_33_dense_33_matmul_grad_matmul_1_z?gradients/sequential_33/dense_33/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:	?,*
transpose_a(27
5gradients/sequential_33/dense_33/MatMul_grad/MatMul_1?
IdentityIdentity=gradients/sequential_33/dense_33/MatMul_grad/MatMul:product:0*
T0*
_output_shapes

:2

Identity?

Identity_1Identity?gradients/sequential_33/dense_33/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	?,2

Identity_1?

Identity_2IdentityBgradients/sequential_33/dense_33/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?,2

Identity_2?

Identity_3Identity_gradients/sequential_33/conv2d_transpose_80/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:? 2

Identity_3?

Identity_4IdentityMgradients/sequential_33/conv2d_transpose_80/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identity_gradients/sequential_33/conv2d_transpose_81/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_5?

Identity_6IdentityMgradients/sequential_33/conv2d_transpose_81/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7Identity_gradients/sequential_33/conv2d_transpose_82/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_7?

Identity_8IdentityMgradients/sequential_33/conv2d_transpose_82/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_8?

Identity_9Identity_gradients/sequential_33/conv2d_transpose_83/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_9?
Identity_10IdentityMgradients/sequential_33/conv2d_transpose_83/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11Identity_gradients/sequential_33/conv2d_transpose_84/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2
Identity_11?
Identity_12IdentityMgradients/sequential_33/conv2d_transpose_84/BiasAdd_grad/BiasAddGrad:output:0*
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
forward_function_name__forward_decode_40855:. *
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
?%
?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42153

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
?

?
C__inference_dense_32_layer_call_and_return_conditional_losses_41759

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
Ւ
?
__inference__traced_save_42414
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop/
+savev2_conv2d_65_kernel_read_readvariableop-
)savev2_conv2d_65_bias_read_readvariableop/
+savev2_conv2d_66_kernel_read_readvariableop-
)savev2_conv2d_66_bias_read_readvariableop/
+savev2_conv2d_67_kernel_read_readvariableop-
)savev2_conv2d_67_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop9
5savev2_conv2d_transpose_80_kernel_read_readvariableop7
3savev2_conv2d_transpose_80_bias_read_readvariableop9
5savev2_conv2d_transpose_81_kernel_read_readvariableop7
3savev2_conv2d_transpose_81_bias_read_readvariableop9
5savev2_conv2d_transpose_82_kernel_read_readvariableop7
3savev2_conv2d_transpose_82_bias_read_readvariableop9
5savev2_conv2d_transpose_83_kernel_read_readvariableop7
3savev2_conv2d_transpose_83_bias_read_readvariableop9
5savev2_conv2d_transpose_84_kernel_read_readvariableop7
3savev2_conv2d_transpose_84_bias_read_readvariableop6
2savev2_adam_conv2d_64_kernel_m_read_readvariableop4
0savev2_adam_conv2d_64_bias_m_read_readvariableop6
2savev2_adam_conv2d_65_kernel_m_read_readvariableop4
0savev2_adam_conv2d_65_bias_m_read_readvariableop6
2savev2_adam_conv2d_66_kernel_m_read_readvariableop4
0savev2_adam_conv2d_66_bias_m_read_readvariableop6
2savev2_adam_conv2d_67_kernel_m_read_readvariableop4
0savev2_adam_conv2d_67_bias_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_80_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_80_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_81_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_81_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_82_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_82_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_83_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_83_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_84_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_84_bias_m_read_readvariableop6
2savev2_adam_conv2d_64_kernel_v_read_readvariableop4
0savev2_adam_conv2d_64_bias_v_read_readvariableop6
2savev2_adam_conv2d_65_kernel_v_read_readvariableop4
0savev2_adam_conv2d_65_bias_v_read_readvariableop6
2savev2_adam_conv2d_66_kernel_v_read_readvariableop4
0savev2_adam_conv2d_66_bias_v_read_readvariableop6
2savev2_adam_conv2d_67_kernel_v_read_readvariableop4
0savev2_adam_conv2d_67_bias_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_80_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_80_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_81_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_81_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_82_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_82_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_83_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_83_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_84_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_84_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop+savev2_conv2d_65_kernel_read_readvariableop)savev2_conv2d_65_bias_read_readvariableop+savev2_conv2d_66_kernel_read_readvariableop)savev2_conv2d_66_bias_read_readvariableop+savev2_conv2d_67_kernel_read_readvariableop)savev2_conv2d_67_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop5savev2_conv2d_transpose_80_kernel_read_readvariableop3savev2_conv2d_transpose_80_bias_read_readvariableop5savev2_conv2d_transpose_81_kernel_read_readvariableop3savev2_conv2d_transpose_81_bias_read_readvariableop5savev2_conv2d_transpose_82_kernel_read_readvariableop3savev2_conv2d_transpose_82_bias_read_readvariableop5savev2_conv2d_transpose_83_kernel_read_readvariableop3savev2_conv2d_transpose_83_bias_read_readvariableop5savev2_conv2d_transpose_84_kernel_read_readvariableop3savev2_conv2d_transpose_84_bias_read_readvariableop2savev2_adam_conv2d_64_kernel_m_read_readvariableop0savev2_adam_conv2d_64_bias_m_read_readvariableop2savev2_adam_conv2d_65_kernel_m_read_readvariableop0savev2_adam_conv2d_65_bias_m_read_readvariableop2savev2_adam_conv2d_66_kernel_m_read_readvariableop0savev2_adam_conv2d_66_bias_m_read_readvariableop2savev2_adam_conv2d_67_kernel_m_read_readvariableop0savev2_adam_conv2d_67_bias_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_80_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_80_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_81_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_81_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_82_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_82_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_83_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_83_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_84_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_84_bias_m_read_readvariableop2savev2_adam_conv2d_64_kernel_v_read_readvariableop0savev2_adam_conv2d_64_bias_v_read_readvariableop2savev2_adam_conv2d_65_kernel_v_read_readvariableop0savev2_adam_conv2d_65_bias_v_read_readvariableop2savev2_adam_conv2d_66_kernel_v_read_readvariableop0savev2_adam_conv2d_66_bias_v_read_readvariableop2savev2_adam_conv2d_67_kernel_v_read_readvariableop0savev2_adam_conv2d_67_bias_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_80_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_80_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_81_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_81_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_82_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_82_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_83_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_83_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_84_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_84_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?&
?
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41926

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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_37296

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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42002

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
?
?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_37786

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
?
?
1__inference___backward_reparameterize_40897_40922
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
forward_function_name __forward_reparameterize_40921:$  

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
?

?
C__inference_dense_32_layer_call_and_return_conditional_losses_36919

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
?
?
3__inference_conv2d_transpose_83_layer_call_fn_42035

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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_374722
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
?
F
*__inference_reshape_16_layer_call_fn_41784

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
E__inference_reshape_16_layer_call_and_return_conditional_losses_376462
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
?&
?
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_37472

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
?
?
D__inference_conv2d_67_layer_call_and_return_conditional_losses_41729

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
?6
?
H__inference_sequential_32_layer_call_and_return_conditional_losses_41351

inputsB
(conv2d_64_conv2d_readvariableop_resource: 7
)conv2d_64_biasadd_readvariableop_resource: B
(conv2d_65_conv2d_readvariableop_resource: @7
)conv2d_65_biasadd_readvariableop_resource:@C
(conv2d_66_conv2d_readvariableop_resource:@?8
)conv2d_66_biasadd_readvariableop_resource:	?D
(conv2d_67_conv2d_readvariableop_resource:??8
)conv2d_67_biasadd_readvariableop_resource:	?;
'dense_32_matmul_readvariableop_resource:
??6
(dense_32_biasadd_readvariableop_resource:
identity?? conv2d_64/BiasAdd/ReadVariableOp?conv2d_64/Conv2D/ReadVariableOp? conv2d_65/BiasAdd/ReadVariableOp?conv2d_65/Conv2D/ReadVariableOp? conv2d_66/BiasAdd/ReadVariableOp?conv2d_66/Conv2D/ReadVariableOp? conv2d_67/BiasAdd/ReadVariableOp?conv2d_67/Conv2D/ReadVariableOp?dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_64/Conv2D/ReadVariableOp?
conv2d_64/Conv2DConv2Dinputs'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d_64/Conv2D?
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp?
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d_64/Relu?
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_65/Conv2D/ReadVariableOp?
conv2d_65/Conv2DConv2Dconv2d_64/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_65/Conv2D?
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp?
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_65/Relu?
conv2d_66/Conv2D/ReadVariableOpReadVariableOp(conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02!
conv2d_66/Conv2D/ReadVariableOp?
conv2d_66/Conv2DConv2Dconv2d_65/Relu:activations:0'conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_66/Conv2D?
 conv2d_66/BiasAdd/ReadVariableOpReadVariableOp)conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_66/BiasAdd/ReadVariableOp?
conv2d_66/BiasAddBiasAddconv2d_66/Conv2D:output:0(conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_66/BiasAdd
conv2d_66/ReluReluconv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_66/Relu?
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02!
conv2d_67/Conv2D/ReadVariableOp?
conv2d_67/Conv2DConv2Dconv2d_66/Relu:activations:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_67/Conv2D?
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 conv2d_67/BiasAdd/ReadVariableOp?
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_67/BiasAdd
conv2d_67/ReluReluconv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_67/Reluu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten_16/Const?
flatten_16/ReshapeReshapeconv2d_67/Relu:activations:0flatten_16/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_16/Reshape?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_32/MatMul/ReadVariableOp?
dense_32/MatMulMatMulflatten_16/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_32/MatMul?
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_32/BiasAdd/ReadVariableOp?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_32/BiasAddt
IdentityIdentitydense_32/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp!^conv2d_66/BiasAdd/ReadVariableOp ^conv2d_66/Conv2D/ReadVariableOp!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2D
 conv2d_66/BiasAdd/ReadVariableOp conv2d_66/BiasAdd/ReadVariableOp2B
conv2d_66/Conv2D/ReadVariableOpconv2d_66/Conv2D/ReadVariableOp2D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_37671

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
?
F
*__inference_flatten_16_layer_call_fn_41734

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
E__inference_flatten_16_layer_call_and_return_conditional_losses_369072
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
?+
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_38038
input_34!
dense_33_38006:	?,
dense_33_38008:	?,4
conv2d_transpose_80_38012:? (
conv2d_transpose_80_38014:	?5
conv2d_transpose_81_38017:??(
conv2d_transpose_81_38019:	?4
conv2d_transpose_82_38022:@?'
conv2d_transpose_82_38024:@3
conv2d_transpose_83_38027: @'
conv2d_transpose_83_38029: 3
conv2d_transpose_84_38032: '
conv2d_transpose_84_38034:
identity??+conv2d_transpose_80/StatefulPartitionedCall?+conv2d_transpose_81/StatefulPartitionedCall?+conv2d_transpose_82/StatefulPartitionedCall?+conv2d_transpose_83/StatefulPartitionedCall?+conv2d_transpose_84/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
 dense_33/StatefulPartitionedCallStatefulPartitionedCallinput_34dense_33_38006dense_33_38008*
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
C__inference_dense_33_layer_call_and_return_conditional_losses_376262"
 dense_33/StatefulPartitionedCall?
reshape_16/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
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
E__inference_reshape_16_layer_call_and_return_conditional_losses_376462
reshape_16/PartitionedCall?
+conv2d_transpose_80/StatefulPartitionedCallStatefulPartitionedCall#reshape_16/PartitionedCall:output:0conv2d_transpose_80_38012conv2d_transpose_80_38014*
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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_376712-
+conv2d_transpose_80/StatefulPartitionedCall?
+conv2d_transpose_81/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_80/StatefulPartitionedCall:output:0conv2d_transpose_81_38017conv2d_transpose_81_38019*
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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_377002-
+conv2d_transpose_81/StatefulPartitionedCall?
+conv2d_transpose_82/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_81/StatefulPartitionedCall:output:0conv2d_transpose_82_38022conv2d_transpose_82_38024*
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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_377292-
+conv2d_transpose_82/StatefulPartitionedCall?
+conv2d_transpose_83/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_82/StatefulPartitionedCall:output:0conv2d_transpose_83_38027conv2d_transpose_83_38029*
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_377582-
+conv2d_transpose_83/StatefulPartitionedCall?
+conv2d_transpose_84/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_83/StatefulPartitionedCall:output:0conv2d_transpose_84_38032conv2d_transpose_84_38034*
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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_377862-
+conv2d_transpose_84/StatefulPartitionedCall?
IdentityIdentity4conv2d_transpose_84/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp,^conv2d_transpose_80/StatefulPartitionedCall,^conv2d_transpose_81/StatefulPartitionedCall,^conv2d_transpose_82/StatefulPartitionedCall,^conv2d_transpose_83/StatefulPartitionedCall,^conv2d_transpose_84/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2Z
+conv2d_transpose_80/StatefulPartitionedCall+conv2d_transpose_80/StatefulPartitionedCall2Z
+conv2d_transpose_81/StatefulPartitionedCall+conv2d_transpose_81/StatefulPartitionedCall2Z
+conv2d_transpose_82/StatefulPartitionedCall+conv2d_transpose_82/StatefulPartitionedCall2Z
+conv2d_transpose_83/StatefulPartitionedCall+conv2d_transpose_83/StatefulPartitionedCall2Z
+conv2d_transpose_84/StatefulPartitionedCall+conv2d_transpose_84/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_34
?
?
)__inference_conv2d_65_layer_call_fn_41678

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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_368612
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
?
?
-__inference_sequential_32_layer_call_fn_41246

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
H__inference_sequential_32_layer_call_and_return_conditional_losses_369262
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
?
?
B__inference_cvae_17_layer_call_and_return_conditional_losses_38131
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
__inference_encode_365872
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
 __inference_reparameterize_366252
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
__inference_decode_367462
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
3__inference_conv2d_transpose_84_layer_call_fn_42111

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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_375592
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
?G
?

__inference_encode_40233
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*'
_output_shapes
:@?2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*'
_output_shapes
:@
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0* 
_output_shapes
:
@??2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
T0*(
_output_shapes
:@:@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@2

Identity_1?
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@??: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:K G
(
_output_shapes
:@??

_user_specified_namex
??
?
H__inference_sequential_33_layer_call_and_return_conditional_losses_41529

inputs:
'dense_33_matmul_readvariableop_resource:	?,7
(dense_33_biasadd_readvariableop_resource:	?,W
<conv2d_transpose_80_conv2d_transpose_readvariableop_resource:? B
3conv2d_transpose_80_biasadd_readvariableop_resource:	?X
<conv2d_transpose_81_conv2d_transpose_readvariableop_resource:??B
3conv2d_transpose_81_biasadd_readvariableop_resource:	?W
<conv2d_transpose_82_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_82_biasadd_readvariableop_resource:@V
<conv2d_transpose_83_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_83_biasadd_readvariableop_resource: V
<conv2d_transpose_84_conv2d_transpose_readvariableop_resource: A
3conv2d_transpose_84_biasadd_readvariableop_resource:
identity??*conv2d_transpose_80/BiasAdd/ReadVariableOp?3conv2d_transpose_80/conv2d_transpose/ReadVariableOp?*conv2d_transpose_81/BiasAdd/ReadVariableOp?3conv2d_transpose_81/conv2d_transpose/ReadVariableOp?*conv2d_transpose_82/BiasAdd/ReadVariableOp?3conv2d_transpose_82/conv2d_transpose/ReadVariableOp?*conv2d_transpose_83/BiasAdd/ReadVariableOp?3conv2d_transpose_83/conv2d_transpose/ReadVariableOp?*conv2d_transpose_84/BiasAdd/ReadVariableOp?3conv2d_transpose_84/conv2d_transpose/ReadVariableOp?dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOp?
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	?,*
dtype02 
dense_33/MatMul/ReadVariableOp?
dense_33/MatMulMatMulinputs&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_33/MatMul?
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02!
dense_33/BiasAdd/ReadVariableOp?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_33/BiasAddt
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_33/Reluo
reshape_16/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:2
reshape_16/Shape?
reshape_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_16/strided_slice/stack?
 reshape_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_16/strided_slice/stack_1?
 reshape_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_16/strided_slice/stack_2?
reshape_16/strided_sliceStridedSlicereshape_16/Shape:output:0'reshape_16/strided_slice/stack:output:0)reshape_16/strided_slice/stack_1:output:0)reshape_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_16/strided_slicez
reshape_16/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_16/Reshape/shape/1z
reshape_16/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_16/Reshape/shape/2z
reshape_16/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_16/Reshape/shape/3?
reshape_16/Reshape/shapePack!reshape_16/strided_slice:output:0#reshape_16/Reshape/shape/1:output:0#reshape_16/Reshape/shape/2:output:0#reshape_16/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_16/Reshape/shape?
reshape_16/ReshapeReshapedense_33/Relu:activations:0!reshape_16/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape_16/Reshape?
conv2d_transpose_80/ShapeShapereshape_16/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_80/Shape?
'conv2d_transpose_80/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_80/strided_slice/stack?
)conv2d_transpose_80/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_80/strided_slice/stack_1?
)conv2d_transpose_80/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_80/strided_slice/stack_2?
!conv2d_transpose_80/strided_sliceStridedSlice"conv2d_transpose_80/Shape:output:00conv2d_transpose_80/strided_slice/stack:output:02conv2d_transpose_80/strided_slice/stack_1:output:02conv2d_transpose_80/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_80/strided_slice|
conv2d_transpose_80/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_80/stack/1|
conv2d_transpose_80/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_80/stack/2}
conv2d_transpose_80/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_80/stack/3?
conv2d_transpose_80/stackPack*conv2d_transpose_80/strided_slice:output:0$conv2d_transpose_80/stack/1:output:0$conv2d_transpose_80/stack/2:output:0$conv2d_transpose_80/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_80/stack?
)conv2d_transpose_80/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_80/strided_slice_1/stack?
+conv2d_transpose_80/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_80/strided_slice_1/stack_1?
+conv2d_transpose_80/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_80/strided_slice_1/stack_2?
#conv2d_transpose_80/strided_slice_1StridedSlice"conv2d_transpose_80/stack:output:02conv2d_transpose_80/strided_slice_1/stack:output:04conv2d_transpose_80/strided_slice_1/stack_1:output:04conv2d_transpose_80/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_80/strided_slice_1?
3conv2d_transpose_80/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_80_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype025
3conv2d_transpose_80/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_80/conv2d_transposeConv2DBackpropInput"conv2d_transpose_80/stack:output:0;conv2d_transpose_80/conv2d_transpose/ReadVariableOp:value:0reshape_16/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2&
$conv2d_transpose_80/conv2d_transpose?
*conv2d_transpose_80/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_80_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_80/BiasAdd/ReadVariableOp?
conv2d_transpose_80/BiasAddBiasAdd-conv2d_transpose_80/conv2d_transpose:output:02conv2d_transpose_80/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_80/BiasAdd?
conv2d_transpose_80/ReluRelu$conv2d_transpose_80/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose_80/Relu?
conv2d_transpose_81/ShapeShape&conv2d_transpose_80/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_81/Shape?
'conv2d_transpose_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_81/strided_slice/stack?
)conv2d_transpose_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_81/strided_slice/stack_1?
)conv2d_transpose_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_81/strided_slice/stack_2?
!conv2d_transpose_81/strided_sliceStridedSlice"conv2d_transpose_81/Shape:output:00conv2d_transpose_81/strided_slice/stack:output:02conv2d_transpose_81/strided_slice/stack_1:output:02conv2d_transpose_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_81/strided_slice|
conv2d_transpose_81/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_81/stack/1|
conv2d_transpose_81/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_81/stack/2}
conv2d_transpose_81/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_81/stack/3?
conv2d_transpose_81/stackPack*conv2d_transpose_81/strided_slice:output:0$conv2d_transpose_81/stack/1:output:0$conv2d_transpose_81/stack/2:output:0$conv2d_transpose_81/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_81/stack?
)conv2d_transpose_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_81/strided_slice_1/stack?
+conv2d_transpose_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_81/strided_slice_1/stack_1?
+conv2d_transpose_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_81/strided_slice_1/stack_2?
#conv2d_transpose_81/strided_slice_1StridedSlice"conv2d_transpose_81/stack:output:02conv2d_transpose_81/strided_slice_1/stack:output:04conv2d_transpose_81/strided_slice_1/stack_1:output:04conv2d_transpose_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_81/strided_slice_1?
3conv2d_transpose_81/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_81_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype025
3conv2d_transpose_81/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_81/conv2d_transposeConv2DBackpropInput"conv2d_transpose_81/stack:output:0;conv2d_transpose_81/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_80/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2&
$conv2d_transpose_81/conv2d_transpose?
*conv2d_transpose_81/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_81_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*conv2d_transpose_81/BiasAdd/ReadVariableOp?
conv2d_transpose_81/BiasAddBiasAdd-conv2d_transpose_81/conv2d_transpose:output:02conv2d_transpose_81/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_81/BiasAdd?
conv2d_transpose_81/ReluRelu$conv2d_transpose_81/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_81/Relu?
conv2d_transpose_82/ShapeShape&conv2d_transpose_81/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_82/Shape?
'conv2d_transpose_82/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_82/strided_slice/stack?
)conv2d_transpose_82/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_82/strided_slice/stack_1?
)conv2d_transpose_82/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_82/strided_slice/stack_2?
!conv2d_transpose_82/strided_sliceStridedSlice"conv2d_transpose_82/Shape:output:00conv2d_transpose_82/strided_slice/stack:output:02conv2d_transpose_82/strided_slice/stack_1:output:02conv2d_transpose_82/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_82/strided_slice|
conv2d_transpose_82/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_82/stack/1}
conv2d_transpose_82/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_82/stack/2|
conv2d_transpose_82/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_82/stack/3?
conv2d_transpose_82/stackPack*conv2d_transpose_82/strided_slice:output:0$conv2d_transpose_82/stack/1:output:0$conv2d_transpose_82/stack/2:output:0$conv2d_transpose_82/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_82/stack?
)conv2d_transpose_82/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_82/strided_slice_1/stack?
+conv2d_transpose_82/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_82/strided_slice_1/stack_1?
+conv2d_transpose_82/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_82/strided_slice_1/stack_2?
#conv2d_transpose_82/strided_slice_1StridedSlice"conv2d_transpose_82/stack:output:02conv2d_transpose_82/strided_slice_1/stack:output:04conv2d_transpose_82/strided_slice_1/stack_1:output:04conv2d_transpose_82/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_82/strided_slice_1?
3conv2d_transpose_82/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_82_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3conv2d_transpose_82/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_82/conv2d_transposeConv2DBackpropInput"conv2d_transpose_82/stack:output:0;conv2d_transpose_82/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_81/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2&
$conv2d_transpose_82/conv2d_transpose?
*conv2d_transpose_82/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_82_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_82/BiasAdd/ReadVariableOp?
conv2d_transpose_82/BiasAddBiasAdd-conv2d_transpose_82/conv2d_transpose:output:02conv2d_transpose_82/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_82/BiasAdd?
conv2d_transpose_82/ReluRelu$conv2d_transpose_82/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_82/Relu?
conv2d_transpose_83/ShapeShape&conv2d_transpose_82/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_83/Shape?
'conv2d_transpose_83/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_83/strided_slice/stack?
)conv2d_transpose_83/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_83/strided_slice/stack_1?
)conv2d_transpose_83/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_83/strided_slice/stack_2?
!conv2d_transpose_83/strided_sliceStridedSlice"conv2d_transpose_83/Shape:output:00conv2d_transpose_83/strided_slice/stack:output:02conv2d_transpose_83/strided_slice/stack_1:output:02conv2d_transpose_83/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_83/strided_slice}
conv2d_transpose_83/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_83/stack/1}
conv2d_transpose_83/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_83/stack/2|
conv2d_transpose_83/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_83/stack/3?
conv2d_transpose_83/stackPack*conv2d_transpose_83/strided_slice:output:0$conv2d_transpose_83/stack/1:output:0$conv2d_transpose_83/stack/2:output:0$conv2d_transpose_83/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_83/stack?
)conv2d_transpose_83/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_83/strided_slice_1/stack?
+conv2d_transpose_83/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_83/strided_slice_1/stack_1?
+conv2d_transpose_83/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_83/strided_slice_1/stack_2?
#conv2d_transpose_83/strided_slice_1StridedSlice"conv2d_transpose_83/stack:output:02conv2d_transpose_83/strided_slice_1/stack:output:04conv2d_transpose_83/strided_slice_1/stack_1:output:04conv2d_transpose_83/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_83/strided_slice_1?
3conv2d_transpose_83/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_83_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_83/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_83/conv2d_transposeConv2DBackpropInput"conv2d_transpose_83/stack:output:0;conv2d_transpose_83/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_82/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2&
$conv2d_transpose_83/conv2d_transpose?
*conv2d_transpose_83/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_83_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_83/BiasAdd/ReadVariableOp?
conv2d_transpose_83/BiasAddBiasAdd-conv2d_transpose_83/conv2d_transpose:output:02conv2d_transpose_83/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_83/BiasAdd?
conv2d_transpose_83/ReluRelu$conv2d_transpose_83/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_83/Relu?
conv2d_transpose_84/ShapeShape&conv2d_transpose_83/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_84/Shape?
'conv2d_transpose_84/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_84/strided_slice/stack?
)conv2d_transpose_84/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_84/strided_slice/stack_1?
)conv2d_transpose_84/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_84/strided_slice/stack_2?
!conv2d_transpose_84/strided_sliceStridedSlice"conv2d_transpose_84/Shape:output:00conv2d_transpose_84/strided_slice/stack:output:02conv2d_transpose_84/strided_slice/stack_1:output:02conv2d_transpose_84/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_84/strided_slice}
conv2d_transpose_84/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_84/stack/1}
conv2d_transpose_84/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_84/stack/2|
conv2d_transpose_84/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_84/stack/3?
conv2d_transpose_84/stackPack*conv2d_transpose_84/strided_slice:output:0$conv2d_transpose_84/stack/1:output:0$conv2d_transpose_84/stack/2:output:0$conv2d_transpose_84/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_84/stack?
)conv2d_transpose_84/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_84/strided_slice_1/stack?
+conv2d_transpose_84/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_84/strided_slice_1/stack_1?
+conv2d_transpose_84/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_84/strided_slice_1/stack_2?
#conv2d_transpose_84/strided_slice_1StridedSlice"conv2d_transpose_84/stack:output:02conv2d_transpose_84/strided_slice_1/stack:output:04conv2d_transpose_84/strided_slice_1/stack_1:output:04conv2d_transpose_84/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_84/strided_slice_1?
3conv2d_transpose_84/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_84_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_84/conv2d_transpose/ReadVariableOp?
$conv2d_transpose_84/conv2d_transposeConv2DBackpropInput"conv2d_transpose_84/stack:output:0;conv2d_transpose_84/conv2d_transpose/ReadVariableOp:value:0&conv2d_transpose_83/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2&
$conv2d_transpose_84/conv2d_transpose?
*conv2d_transpose_84/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_84_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_84/BiasAdd/ReadVariableOp?
conv2d_transpose_84/BiasAddBiasAdd-conv2d_transpose_84/conv2d_transpose:output:02conv2d_transpose_84/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_84/BiasAdd?
IdentityIdentity$conv2d_transpose_84/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp+^conv2d_transpose_80/BiasAdd/ReadVariableOp4^conv2d_transpose_80/conv2d_transpose/ReadVariableOp+^conv2d_transpose_81/BiasAdd/ReadVariableOp4^conv2d_transpose_81/conv2d_transpose/ReadVariableOp+^conv2d_transpose_82/BiasAdd/ReadVariableOp4^conv2d_transpose_82/conv2d_transpose/ReadVariableOp+^conv2d_transpose_83/BiasAdd/ReadVariableOp4^conv2d_transpose_83/conv2d_transpose/ReadVariableOp+^conv2d_transpose_84/BiasAdd/ReadVariableOp4^conv2d_transpose_84/conv2d_transpose/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : : : : : 2X
*conv2d_transpose_80/BiasAdd/ReadVariableOp*conv2d_transpose_80/BiasAdd/ReadVariableOp2j
3conv2d_transpose_80/conv2d_transpose/ReadVariableOp3conv2d_transpose_80/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_81/BiasAdd/ReadVariableOp*conv2d_transpose_81/BiasAdd/ReadVariableOp2j
3conv2d_transpose_81/conv2d_transpose/ReadVariableOp3conv2d_transpose_81/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_82/BiasAdd/ReadVariableOp*conv2d_transpose_82/BiasAdd/ReadVariableOp2j
3conv2d_transpose_82/conv2d_transpose/ReadVariableOp3conv2d_transpose_82/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_83/BiasAdd/ReadVariableOp*conv2d_transpose_83/BiasAdd/ReadVariableOp2j
3conv2d_transpose_83/conv2d_transpose/ReadVariableOp3conv2d_transpose_83/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_84/BiasAdd/ReadVariableOp*conv2d_transpose_84/BiasAdd/ReadVariableOp2j
3conv2d_transpose_84/conv2d_transpose/ReadVariableOp3conv2d_transpose_84/conv2d_transpose/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_82_layer_call_fn_41968

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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_377292
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
?
?
)__inference_conv2d_66_layer_call_fn_41698

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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_368782
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
?H
?

__inference_encode_36587
xP
6sequential_32_conv2d_64_conv2d_readvariableop_resource: E
7sequential_32_conv2d_64_biasadd_readvariableop_resource: P
6sequential_32_conv2d_65_conv2d_readvariableop_resource: @E
7sequential_32_conv2d_65_biasadd_readvariableop_resource:@Q
6sequential_32_conv2d_66_conv2d_readvariableop_resource:@?F
7sequential_32_conv2d_66_biasadd_readvariableop_resource:	?R
6sequential_32_conv2d_67_conv2d_readvariableop_resource:??F
7sequential_32_conv2d_67_biasadd_readvariableop_resource:	?I
5sequential_32_dense_32_matmul_readvariableop_resource:
??D
6sequential_32_dense_32_biasadd_readvariableop_resource:
identity

identity_1??.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?-sequential_32/conv2d_64/Conv2D/ReadVariableOp?.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?-sequential_32/conv2d_65/Conv2D/ReadVariableOp?.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?-sequential_32/conv2d_66/Conv2D/ReadVariableOp?.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?-sequential_32/conv2d_67/Conv2D/ReadVariableOp?-sequential_32/dense_32/BiasAdd/ReadVariableOp?,sequential_32/dense_32/MatMul/ReadVariableOp?
-sequential_32/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_32/conv2d_64/Conv2D/ReadVariableOp?
sequential_32/conv2d_64/Conv2DConv2Dx5sequential_32/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2 
sequential_32/conv2d_64/Conv2D?
.sequential_32/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp?
sequential_32/conv2d_64/BiasAddBiasAdd'sequential_32/conv2d_64/Conv2D:output:06sequential_32/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2!
sequential_32/conv2d_64/BiasAdd?
sequential_32/conv2d_64/ReluRelu(sequential_32/conv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential_32/conv2d_64/Relu?
-sequential_32/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_32/conv2d_65/Conv2D/ReadVariableOp?
sequential_32/conv2d_65/Conv2DConv2D*sequential_32/conv2d_64/Relu:activations:05sequential_32/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2 
sequential_32/conv2d_65/Conv2D?
.sequential_32/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp?
sequential_32/conv2d_65/BiasAddBiasAdd'sequential_32/conv2d_65/Conv2D:output:06sequential_32/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2!
sequential_32/conv2d_65/BiasAdd?
sequential_32/conv2d_65/ReluRelu(sequential_32/conv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential_32/conv2d_65/Relu?
-sequential_32/conv2d_66/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_66_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02/
-sequential_32/conv2d_66/Conv2D/ReadVariableOp?
sequential_32/conv2d_66/Conv2DConv2D*sequential_32/conv2d_65/Relu:activations:05sequential_32/conv2d_66/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2 
sequential_32/conv2d_66/Conv2D?
.sequential_32/conv2d_66/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_66_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp?
sequential_32/conv2d_66/BiasAddBiasAdd'sequential_32/conv2d_66/Conv2D:output:06sequential_32/conv2d_66/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_32/conv2d_66/BiasAdd?
sequential_32/conv2d_66/ReluRelu(sequential_32/conv2d_66/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_32/conv2d_66/Relu?
-sequential_32/conv2d_67/Conv2D/ReadVariableOpReadVariableOp6sequential_32_conv2d_67_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02/
-sequential_32/conv2d_67/Conv2D/ReadVariableOp?
sequential_32/conv2d_67/Conv2DConv2D*sequential_32/conv2d_66/Relu:activations:05sequential_32/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2 
sequential_32/conv2d_67/Conv2D?
.sequential_32/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp7sequential_32_conv2d_67_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp?
sequential_32/conv2d_67/BiasAddBiasAdd'sequential_32/conv2d_67/Conv2D:output:06sequential_32/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2!
sequential_32/conv2d_67/BiasAdd?
sequential_32/conv2d_67/ReluRelu(sequential_32/conv2d_67/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential_32/conv2d_67/Relu?
sequential_32/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2 
sequential_32/flatten_16/Const?
 sequential_32/flatten_16/ReshapeReshape*sequential_32/conv2d_67/Relu:activations:0'sequential_32/flatten_16/Const:output:0*
T0*)
_output_shapes
:???????????2"
 sequential_32/flatten_16/Reshape?
,sequential_32/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_32_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_32/dense_32/MatMul/ReadVariableOp?
sequential_32/dense_32/MatMulMatMul)sequential_32/flatten_16/Reshape:output:04sequential_32/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_32/dense_32/MatMul?
-sequential_32/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_32_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_32/dense_32/BiasAdd/ReadVariableOp?
sequential_32/dense_32/BiasAddBiasAdd'sequential_32/dense_32/MatMul:product:05sequential_32/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_32/dense_32/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0'sequential_32/dense_32/BiasAdd:output:0*
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
NoOpNoOp/^sequential_32/conv2d_64/BiasAdd/ReadVariableOp.^sequential_32/conv2d_64/Conv2D/ReadVariableOp/^sequential_32/conv2d_65/BiasAdd/ReadVariableOp.^sequential_32/conv2d_65/Conv2D/ReadVariableOp/^sequential_32/conv2d_66/BiasAdd/ReadVariableOp.^sequential_32/conv2d_66/Conv2D/ReadVariableOp/^sequential_32/conv2d_67/BiasAdd/ReadVariableOp.^sequential_32/conv2d_67/Conv2D/ReadVariableOp.^sequential_32/dense_32/BiasAdd/ReadVariableOp-^sequential_32/dense_32/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2`
.sequential_32/conv2d_64/BiasAdd/ReadVariableOp.sequential_32/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_64/Conv2D/ReadVariableOp-sequential_32/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_65/BiasAdd/ReadVariableOp.sequential_32/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_65/Conv2D/ReadVariableOp-sequential_32/conv2d_65/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_66/BiasAdd/ReadVariableOp.sequential_32/conv2d_66/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_66/Conv2D/ReadVariableOp-sequential_32/conv2d_66/Conv2D/ReadVariableOp2`
.sequential_32/conv2d_67/BiasAdd/ReadVariableOp.sequential_32/conv2d_67/BiasAdd/ReadVariableOp2^
-sequential_32/conv2d_67/Conv2D/ReadVariableOp-sequential_32/conv2d_67/Conv2D/ReadVariableOp2^
-sequential_32/dense_32/BiasAdd/ReadVariableOp-sequential_32/dense_32/BiasAdd/ReadVariableOp2\
,sequential_32/dense_32/MatMul/ReadVariableOp,sequential_32/dense_32/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????
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
*:( 2conv2d_64/kernel
: 2conv2d_64/bias
*:( @2conv2d_65/kernel
:@2conv2d_65/bias
+:)@?2conv2d_66/kernel
:?2conv2d_66/bias
,:*??2conv2d_67/kernel
:?2conv2d_67/bias
#:!
??2dense_32/kernel
:2dense_32/bias
": 	?,2dense_33/kernel
:?,2dense_33/bias
5:3? 2conv2d_transpose_80/kernel
':%?2conv2d_transpose_80/bias
6:4??2conv2d_transpose_81/kernel
':%?2conv2d_transpose_81/bias
5:3@?2conv2d_transpose_82/kernel
&:$@2conv2d_transpose_82/bias
4:2 @2conv2d_transpose_83/kernel
&:$ 2conv2d_transpose_83/bias
4:2 2conv2d_transpose_84/kernel
&:$2conv2d_transpose_84/bias
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
/:- 2Adam/conv2d_64/kernel/m
!: 2Adam/conv2d_64/bias/m
/:- @2Adam/conv2d_65/kernel/m
!:@2Adam/conv2d_65/bias/m
0:.@?2Adam/conv2d_66/kernel/m
": ?2Adam/conv2d_66/bias/m
1:/??2Adam/conv2d_67/kernel/m
": ?2Adam/conv2d_67/bias/m
(:&
??2Adam/dense_32/kernel/m
 :2Adam/dense_32/bias/m
':%	?,2Adam/dense_33/kernel/m
!:?,2Adam/dense_33/bias/m
::8? 2!Adam/conv2d_transpose_80/kernel/m
,:*?2Adam/conv2d_transpose_80/bias/m
;:9??2!Adam/conv2d_transpose_81/kernel/m
,:*?2Adam/conv2d_transpose_81/bias/m
::8@?2!Adam/conv2d_transpose_82/kernel/m
+:)@2Adam/conv2d_transpose_82/bias/m
9:7 @2!Adam/conv2d_transpose_83/kernel/m
+:) 2Adam/conv2d_transpose_83/bias/m
9:7 2!Adam/conv2d_transpose_84/kernel/m
+:)2Adam/conv2d_transpose_84/bias/m
/:- 2Adam/conv2d_64/kernel/v
!: 2Adam/conv2d_64/bias/v
/:- @2Adam/conv2d_65/kernel/v
!:@2Adam/conv2d_65/bias/v
0:.@?2Adam/conv2d_66/kernel/v
": ?2Adam/conv2d_66/bias/v
1:/??2Adam/conv2d_67/kernel/v
": ?2Adam/conv2d_67/bias/v
(:&
??2Adam/dense_32/kernel/v
 :2Adam/dense_32/bias/v
':%	?,2Adam/dense_33/kernel/v
!:?,2Adam/dense_33/bias/v
::8? 2!Adam/conv2d_transpose_80/kernel/v
,:*?2Adam/conv2d_transpose_80/bias/v
;:9??2!Adam/conv2d_transpose_81/kernel/v
,:*?2Adam/conv2d_transpose_81/bias/v
::8@?2!Adam/conv2d_transpose_82/kernel/v
+:)@2Adam/conv2d_transpose_82/bias/v
9:7 @2!Adam/conv2d_transpose_83/kernel/v
+:) 2Adam/conv2d_transpose_83/bias/v
9:7 2!Adam/conv2d_transpose_84/kernel/v
+:)2Adam/conv2d_transpose_84/bias/v
?2?
'__inference_cvae_17_layer_call_fn_38617
'__inference_cvae_17_layer_call_fn_38670
'__inference_cvae_17_layer_call_fn_38723
'__inference_cvae_17_layer_call_fn_38776?
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
 __inference__wrapped_model_36826input_1"?
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_38830
B__inference_cvae_17_layer_call_and_return_conditional_losses_38884
B__inference_cvae_17_layer_call_and_return_conditional_losses_38938
B__inference_cvae_17_layer_call_and_return_conditional_losses_38992?
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
__inference_call_39226
__inference_call_39280?
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
__inference_compute_loss_39382
__inference_compute_loss_39664?
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
?2?
__inference_decode_39784
__inference_decode_39904
__inference_decode_40025
__inference_decode_40145?
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
__inference_encode_40189
__inference_encode_40233
__inference_encode_40277?
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
?2?
 __inference_reparameterize_40293
 __inference_reparameterize_40309
 __inference_reparameterize_40325?
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
?2?
__inference_sample_40475?
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
__inference_train_step_41221?
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
-__inference_sequential_32_layer_call_fn_36949
-__inference_sequential_32_layer_call_fn_41246
-__inference_sequential_32_layer_call_fn_41271
-__inference_sequential_32_layer_call_fn_37110?
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
H__inference_sequential_32_layer_call_and_return_conditional_losses_41311
H__inference_sequential_32_layer_call_and_return_conditional_losses_41351
H__inference_sequential_32_layer_call_and_return_conditional_losses_37140
H__inference_sequential_32_layer_call_and_return_conditional_losses_37170?
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
-__inference_sequential_33_layer_call_fn_37820
-__inference_sequential_33_layer_call_fn_41380
-__inference_sequential_33_layer_call_fn_41409
-__inference_sequential_33_layer_call_fn_38003?
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
H__inference_sequential_33_layer_call_and_return_conditional_losses_41529
H__inference_sequential_33_layer_call_and_return_conditional_losses_41649
H__inference_sequential_33_layer_call_and_return_conditional_losses_38038
H__inference_sequential_33_layer_call_and_return_conditional_losses_38073?
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
#__inference_signature_wrapper_38564input_1"?
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
)__inference_conv2d_64_layer_call_fn_41658?
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
D__inference_conv2d_64_layer_call_and_return_conditional_losses_41669?
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
)__inference_conv2d_65_layer_call_fn_41678?
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
D__inference_conv2d_65_layer_call_and_return_conditional_losses_41689?
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
)__inference_conv2d_66_layer_call_fn_41698?
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
D__inference_conv2d_66_layer_call_and_return_conditional_losses_41709?
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
)__inference_conv2d_67_layer_call_fn_41718?
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
D__inference_conv2d_67_layer_call_and_return_conditional_losses_41729?
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
*__inference_flatten_16_layer_call_fn_41734?
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
E__inference_flatten_16_layer_call_and_return_conditional_losses_41740?
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
(__inference_dense_32_layer_call_fn_41749?
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
C__inference_dense_32_layer_call_and_return_conditional_losses_41759?
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
(__inference_dense_33_layer_call_fn_41768?
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
C__inference_dense_33_layer_call_and_return_conditional_losses_41779?
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
*__inference_reshape_16_layer_call_fn_41784?
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
E__inference_reshape_16_layer_call_and_return_conditional_losses_41798?
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
3__inference_conv2d_transpose_80_layer_call_fn_41807
3__inference_conv2d_transpose_80_layer_call_fn_41816?
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
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41850
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41874?
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
3__inference_conv2d_transpose_81_layer_call_fn_41883
3__inference_conv2d_transpose_81_layer_call_fn_41892?
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
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41926
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41950?
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
3__inference_conv2d_transpose_82_layer_call_fn_41959
3__inference_conv2d_transpose_82_layer_call_fn_41968?
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
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42002
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42026?
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
3__inference_conv2d_transpose_83_layer_call_fn_42035
3__inference_conv2d_transpose_83_layer_call_fn_42044?
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
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42078
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42102?
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
3__inference_conv2d_transpose_84_layer_call_fn_42111
3__inference_conv2d_transpose_84_layer_call_fn_42120?
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
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42153
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42176?
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
 __inference__wrapped_model_36826?$%&'()*+,-./0123456789:?7
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
__inference_call_39226?$%&'()*+,-./0123456789+?(
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
__inference_call_39280?$%&'()*+,-./01234567894?1
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
__inference_compute_loss_39382N$%&'()*+,-./0123456789+?(
!?
?
x??
? "? p
__inference_compute_loss_39664N$%&'()*+,-./0123456789+?(
!?
?
x@??
? "? ?
D__inference_conv2d_64_layer_call_and_return_conditional_losses_41669n$%9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????W 
? ?
)__inference_conv2d_64_layer_call_fn_41658a$%9?6
/?,
*?'
inputs???????????
? " ??????????W ?
D__inference_conv2d_65_layer_call_and_return_conditional_losses_41689l&'7?4
-?*
(?%
inputs?????????W 
? "-?*
#? 
0?????????+?@
? ?
)__inference_conv2d_65_layer_call_fn_41678_&'7?4
-?*
(?%
inputs?????????W 
? " ??????????+?@?
D__inference_conv2d_66_layer_call_and_return_conditional_losses_41709m()7?4
-?*
(?%
inputs?????????+?@
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_66_layer_call_fn_41698`()7?4
-?*
(?%
inputs?????????+?@
? "!????????????
D__inference_conv2d_67_layer_call_and_return_conditional_losses_41729n*+8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
)__inference_conv2d_67_layer_call_fn_41718a*+8?5
.?+
)?&
inputs??????????
? "!??????????
??
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41850?01I?F
??<
:?7
inputs+??????????????????????????? 
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_80_layer_call_and_return_conditional_losses_41874m017?4
-?*
(?%
inputs????????? 
? ".?+
$?!
0????????? ?
? ?
3__inference_conv2d_transpose_80_layer_call_fn_41807?01I?F
??<
:?7
inputs+??????????????????????????? 
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_80_layer_call_fn_41816`017?4
-?*
(?%
inputs????????? 
? "!?????????? ??
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41926?23J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_81_layer_call_and_return_conditional_losses_41950n238?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0?????????,@?
? ?
3__inference_conv2d_transpose_81_layer_call_fn_41883?23J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_81_layer_call_fn_41892a238?5
.?+
)?&
inputs????????? ?
? "!??????????,@??
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42002?45J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_conv2d_transpose_82_layer_call_and_return_conditional_losses_42026n458?5
.?+
)?&
inputs?????????,@?
? ".?+
$?!
0?????????X?@
? ?
3__inference_conv2d_transpose_82_layer_call_fn_41959?45J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
3__inference_conv2d_transpose_82_layer_call_fn_41968a458?5
.?+
)?&
inputs?????????,@?
? "!??????????X?@?
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42078?67I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
N__inference_conv2d_transpose_83_layer_call_and_return_conditional_losses_42102o678?5
.?+
)?&
inputs?????????X?@
? "/?,
%?"
0??????????? 
? ?
3__inference_conv2d_transpose_83_layer_call_fn_42035?67I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
3__inference_conv2d_transpose_83_layer_call_fn_42044b678?5
.?+
)?&
inputs?????????X?@
? ""???????????? ?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42153?89I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_conv2d_transpose_84_layer_call_and_return_conditional_losses_42176p899?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
3__inference_conv2d_transpose_84_layer_call_fn_42111?89I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
3__inference_conv2d_transpose_84_layer_call_fn_42120c899?6
/?,
*?'
inputs??????????? 
? ""?????????????
B__inference_cvae_17_layer_call_and_return_conditional_losses_38830?$%&'()*+,-./01234567898?5
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_38884?$%&'()*+,-./01234567898?5
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_38938?$%&'()*+,-./0123456789>?;
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
B__inference_cvae_17_layer_call_and_return_conditional_losses_38992?$%&'()*+,-./0123456789>?;
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
'__inference_cvae_17_layer_call_fn_38617?$%&'()*+,-./0123456789>?;
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
'__inference_cvae_17_layer_call_fn_38670?$%&'()*+,-./01234567898?5
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
'__inference_cvae_17_layer_call_fn_38723?$%&'()*+,-./01234567898?5
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
'__inference_cvae_17_layer_call_fn_38776?$%&'()*+,-./0123456789>?;
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
__inference_decode_39784P./0123456789%?"
?
?
z
p 
? "???l
__inference_decode_39904P./0123456789%?"
?
?
z@
p 
? "?@??l
__inference_decode_40025P./0123456789%?"
?
?
z
p
? "???~
__inference_decode_40145b./0123456789.?+
$?!
?
z?????????
p 
? ""?????????????
C__inference_dense_32_layer_call_and_return_conditional_losses_41759^,-1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? }
(__inference_dense_32_layer_call_fn_41749Q,-1?.
'?$
"?
inputs???????????
? "???????????
C__inference_dense_33_layer_call_and_return_conditional_losses_41779].//?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????,
? |
(__inference_dense_33_layer_call_fn_41768P.//?,
%?"
 ?
inputs?????????
? "???????????,?
__inference_encode_40189f
$%&'()*+,-+?(
!?
?
x??
? "+?(
?
0
?
1?
__inference_encode_40233f
$%&'()*+,-+?(
!?
?
x@??
? "+?(
?
0@
?
1@?
__inference_encode_40277?
$%&'()*+,-4?1
*?'
%?"
x???????????
? "=?:
?
0?????????
?
1??????????
E__inference_flatten_16_layer_call_and_return_conditional_losses_41740c8?5
.?+
)?&
inputs?????????
?
? "'?$
?
0???????????
? ?
*__inference_flatten_16_layer_call_fn_41734V8?5
.?+
)?&
inputs?????????
?
? "????????????t
 __inference_reparameterize_40293P=?:
3?0
?
mean
?
logvar
? "?t
 __inference_reparameterize_40309P=?:
3?0
?
mean@
?
logvar@
? "?@?
 __inference_reparameterize_40325kO?L
E?B
?
mean?????????
 ?
logvar?????????
? "???????????
E__inference_reshape_16_layer_call_and_return_conditional_losses_41798a0?-
&?#
!?
inputs??????????,
? "-?*
#? 
0????????? 
? ?
*__inference_reshape_16_layer_call_fn_41784T0?-
&?#
!?
inputs??????????,
? " ?????????? j
__inference_sample_40475N./0123456789#? 
?
?
eps
? "????
H__inference_sequential_32_layer_call_and_return_conditional_losses_37140x
$%&'()*+,-C?@
9?6
,?)
input_33???????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_32_layer_call_and_return_conditional_losses_37170x
$%&'()*+,-C?@
9?6
,?)
input_33???????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_32_layer_call_and_return_conditional_losses_41311v
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
H__inference_sequential_32_layer_call_and_return_conditional_losses_41351v
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
-__inference_sequential_32_layer_call_fn_36949k
$%&'()*+,-C?@
9?6
,?)
input_33???????????
p 

 
? "???????????
-__inference_sequential_32_layer_call_fn_37110k
$%&'()*+,-C?@
9?6
,?)
input_33???????????
p

 
? "???????????
-__inference_sequential_32_layer_call_fn_41246i
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
-__inference_sequential_32_layer_call_fn_41271i
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p

 
? "???????????
H__inference_sequential_33_layer_call_and_return_conditional_losses_38038z./01234567899?6
/?,
"?
input_34?????????
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_33_layer_call_and_return_conditional_losses_38073z./01234567899?6
/?,
"?
input_34?????????
p

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_33_layer_call_and_return_conditional_losses_41529x./01234567897?4
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
H__inference_sequential_33_layer_call_and_return_conditional_losses_41649x./01234567897?4
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
-__inference_sequential_33_layer_call_fn_37820m./01234567899?6
/?,
"?
input_34?????????
p 

 
? ""?????????????
-__inference_sequential_33_layer_call_fn_38003m./01234567899?6
/?,
"?
input_34?????????
p

 
? ""?????????????
-__inference_sequential_33_layer_call_fn_41380k./01234567897?4
-?*
 ?
inputs?????????
p 

 
? ""?????????????
-__inference_sequential_33_layer_call_fn_41409k./01234567897?4
-?*
 ?
inputs?????????
p

 
? ""?????????????
#__inference_signature_wrapper_38564?$%&'()*+,-./0123456789E?B
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
__inference_train_step_41221?r$%&'()*+,-./0123456789# !????????????????????????????????????????????+?(
!?
?
x??
? "?

loss?

loss 