??2
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
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??0
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
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
?
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@?*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:?*
dtype0
?
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:??*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:?*
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:???*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?,*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	@?,*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?,*
dtype0
?
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:? *(
shared_nameconv2d_transpose/kernel
?
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*'
_output_shapes
:? *
dtype0
?
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_1/kernel
?
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameconv2d_transpose_1/bias
?
+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?**
shared_nameconv2d_transpose_2/kernel
?
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_3/kernel
?
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose_3/bias

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
: *
dtype0
?
conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_4/kernel
?
-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*&
_output_shapes
: *
dtype0
?
conv2d_transpose_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_4/bias

+conv2d_transpose_4/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/bias*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_2/kernel/m
?
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_3/kernel/m
?
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*$
shared_nameAdam/dense/kernel/m
~
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*!
_output_shapes
:???*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?,*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	@?,*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:?,*
dtype0
?
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:? */
shared_name Adam/conv2d_transpose/kernel/m
?
2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/conv2d_transpose/bias/m
?
0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_1/kernel/m
?
4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_1/bias/m
?
2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*1
shared_name" Adam/conv2d_transpose_2/kernel/m
?
4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/m
?
2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/conv2d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_3/kernel/m
?
4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_3/bias/m
?
2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/m*
_output_shapes
: *
dtype0
?
 Adam/conv2d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_4/kernel/m
?
4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/m
?
2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*'
shared_nameAdam/conv2d_2/kernel/v
?
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*'
shared_nameAdam/conv2d_3/kernel/v
?
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*$
shared_nameAdam/dense/kernel/v
~
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*!
_output_shapes
:???*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?,*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	@?,*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?,*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:?,*
dtype0
?
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:? */
shared_name Adam/conv2d_transpose/kernel/v
?
2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*'
_output_shapes
:? *
dtype0
?
Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_nameAdam/conv2d_transpose/bias/v
?
0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_1/kernel/v
?
4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_1/bias/v
?
2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*1
shared_name" Adam/conv2d_transpose_2/kernel/v
?
4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/v
?
2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/conv2d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_3/kernel/v
?
4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_3/bias/v
?
2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/v*
_output_shapes
: *
dtype0
?
 Adam/conv2d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_4/kernel/v
?
4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/v
?
2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?n
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?m
value?mB?m B?m
?
encoder
decoder
	optimizer
loss
regularization_losses
	variables
trainable_variables
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
	variables
trainable_variables
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
	variables
trainable_variables
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
;layer_regularization_losses
	variables
trainable_variables
<non_trainable_variables
=layer_metrics

>layers
 
h

$kernel
%bias
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
h

&kernel
'bias
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
h

(kernel
)bias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
h

*kernel
+bias
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
R
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
h

,kernel
-bias
Sregularization_losses
T	variables
Utrainable_variables
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
Xlayer_regularization_losses
	variables
trainable_variables
Ynon_trainable_variables
Zlayer_metrics

[layers
h

.kernel
/bias
\regularization_losses
]	variables
^trainable_variables
_	keras_api
R
`regularization_losses
a	variables
btrainable_variables
c	keras_api
h

0kernel
1bias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
h

2kernel
3bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
h

4kernel
5bias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
h

6kernel
7bias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
h

8kernel
9bias
tregularization_losses
u	variables
vtrainable_variables
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
ylayer_regularization_losses
	variables
trainable_variables
znon_trainable_variables
{layer_metrics

|layers
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
IG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_transpose/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEconv2d_transpose/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_transpose_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_transpose_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_transpose_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_transpose_3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEconv2d_transpose_4/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv2d_transpose_4/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
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
~layer_regularization_losses
@	variables
Atrainable_variables
non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
D	variables
Etrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
H	variables
Itrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
L	variables
Mtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
 
 
 
?
?metrics
Oregularization_losses
 ?layer_regularization_losses
P	variables
Qtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
T	variables
Utrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
]	variables
^trainable_variables
?non_trainable_variables
?layer_metrics
?layers
 
 
 
?
?metrics
`regularization_losses
 ?layer_regularization_losses
a	variables
btrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
e	variables
ftrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
i	variables
jtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
m	variables
ntrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
q	variables
rtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
u	variables
vtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
lj
VARIABLE_VALUEAdam/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_3/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_3/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/conv2d_transpose/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_3/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/conv2d_3/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/dense_1/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/dense_1/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/conv2d_transpose/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_3/bias/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/conv2d_transpose_4/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_transpose_4/kernelconv2d_transpose_4/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_534965
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOp-conv2d_transpose_4/kernel/Read/ReadVariableOp+conv2d_transpose_4/bias/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOp0Adam/conv2d_transpose/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOp0Adam/conv2d_transpose/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpConst*T
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_538548
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_transpose_4/kernelconv2d_transpose_4/biasAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d_transpose/kernel/mAdam/conv2d_transpose/bias/m Adam/conv2d_transpose_1/kernel/mAdam/conv2d_transpose_1/bias/m Adam/conv2d_transpose_2/kernel/mAdam/conv2d_transpose_2/bias/m Adam/conv2d_transpose_3/kernel/mAdam/conv2d_transpose_3/bias/m Adam/conv2d_transpose_4/kernel/mAdam/conv2d_transpose_4/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/conv2d_transpose/kernel/vAdam/conv2d_transpose/bias/v Adam/conv2d_transpose_1/kernel/vAdam/conv2d_transpose_1/bias/v Adam/conv2d_transpose_2/kernel/vAdam/conv2d_transpose_2/bias/v Adam/conv2d_transpose_3/kernel/vAdam/conv2d_transpose_3/bias/v Adam/conv2d_transpose_4/kernel/vAdam/conv2d_transpose_4/bias/v*S
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_538771??-
?
?
-__inference_sequential_1_layer_call_fn_537543

inputs
unknown:	@?,
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_5343482
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
+:?????????@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?*
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534439
input_2!
dense_1_534407:	@?,
dense_1_534409:	?,2
conv2d_transpose_534413:? &
conv2d_transpose_534415:	?5
conv2d_transpose_1_534418:??(
conv2d_transpose_1_534420:	?4
conv2d_transpose_2_534423:@?'
conv2d_transpose_2_534425:@3
conv2d_transpose_3_534428: @'
conv2d_transpose_3_534430: 3
conv2d_transpose_4_534433: '
conv2d_transpose_4_534435:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_534407dense_1_534409*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_5340272!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5340472
reshape/PartitionedCall?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_534413conv2d_transpose_534415*
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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5340722*
(conv2d_transpose/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_534418conv2d_transpose_1_534420*
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5341012,
*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_534423conv2d_transpose_2_534425*
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5341302,
*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_534428conv2d_transpose_3_534430*
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5341592,
*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_534433conv2d_transpose_4_534435*
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5341872,
*conv2d_transpose_4/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:?????????@
!
_user_specified_name	input_2
??
?
__forward_decode_536989
z_0F
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity(
$sequential_1_conv2d_transpose_3_reluC
?sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop(
$sequential_1_conv2d_transpose_2_reluC
?sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop(
$sequential_1_conv2d_transpose_1_reluC
?sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop&
"sequential_1_conv2d_transpose_reluC
?sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop 
sequential_1_reshape_reshapeA
=sequential_1_conv2d_transpose_conv2d_transpose_readvariableop
sequential_1_dense_1_relu.
*sequential_1_dense_1_matmul_readvariableop
z??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz_02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"?
?sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_1_relu2sequential_1/conv2d_transpose_1/Relu:activations:0"?
?sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_2_relu2sequential_1/conv2d_transpose_2/Relu:activations:0"?
?sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_3_relu2sequential_1/conv2d_transpose_3/Relu:activations:0"?
?sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0"?
=sequential_1_conv2d_transpose_conv2d_transpose_readvariableopEsequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0"V
"sequential_1_conv2d_transpose_relu0sequential_1/conv2d_transpose/Relu:activations:0"`
*sequential_1_dense_1_matmul_readvariableop2sequential_1/dense_1/MatMul/ReadVariableOp:value:0"D
sequential_1_dense_1_relu'sequential_1/dense_1/Relu:activations:0"E
sequential_1_reshape_reshape%sequential_1/reshape/Reshape:output:0"
zz_0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : *G
backward_function_name-+__inference___backward_decode_536929_5369902l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
?
D
(__inference_flatten_layer_call_fn_537868

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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5333082
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
?
?
3__inference_conv2d_transpose_1_layer_call_fn_538026

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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5341012
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
?
?
3__inference_conv2d_transpose_4_layer_call_fn_538254

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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5341872
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
?~
?
+__inference___backward_decode_536929_536990
placeholder}
ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu?
?gradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop}
ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu?
?gradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop}
ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu?
?gradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop{
wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu?
?gradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableops
ogradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_reshape_reshape?
?gradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_conv2d_transpose_readvariableopO
Kgradients_sequential_1_dense_1_relu_grad_relugrad_sequential_1_dense_1_relu`
\gradients_sequential_1_dense_1_matmul_grad_matmul_sequential_1_dense_1_matmul_readvariableop9
5gradients_sequential_1_dense_1_matmul_grad_matmul_1_z
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
Bgradients/sequential_1/conv2d_transpose_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:2D
Bgradients/sequential_1/conv2d_transpose_4/BiasAdd_grad/BiasAddGrad?
Egradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2G
Egradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Shape?
Tgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFiltergradients/grad_ys_0:output:0Ngradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu*
T0*&
_output_shapes
: *
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilter?
Fgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DConv2Dgradients/grad_ys_0:output:0?gradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2D?
<gradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu*
T0*(
_output_shapes
:?? 2>
<gradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad?
Bgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2D
Bgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGrad?
Egradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   2G
Egradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Shape?
Tgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu*
T0*&
_output_shapes
: @*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilter?
Fgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0?gradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2D?
<gradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu*
T0*'
_output_shapes
:X?@2>
<gradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad?
Bgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2D
Bgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGrad?
Egradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @   ?   2G
Egradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Shape?
Tgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu*
T0*'
_output_shapes
:@?*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilter?
Fgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0?gradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2D?
<gradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu*
T0*'
_output_shapes
:,@?2>
<gradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad?
Bgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2D
Bgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGrad?
Egradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      ?      2G
Egradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Shape?
Tgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Shape:output:0wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu*
T0*(
_output_shapes
:??*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilter?
Fgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0?gradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2D?
:gradients/sequential_1/conv2d_transpose/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2D:output:0wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu*
T0*'
_output_shapes
: ?2<
:gradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad?
@gradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGradBiasAddGradFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?2B
@gradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGrad?
Cgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2E
Cgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Shape?
Rgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0Lgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Shape:output:0ogradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_reshape_reshape*
T0*'
_output_shapes
:? *
paddingSAME*
strides
2T
Rgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilter?
Dgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DConv2DFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0?gradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_conv2d_transpose_readvariableop*
T0*&
_output_shapes
: *
paddingSAME*
strides
2F
Dgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2D?
1gradients/sequential_1/reshape/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1gradients/sequential_1/reshape/Reshape_grad/Shape?
3gradients/sequential_1/reshape/Reshape_grad/ReshapeReshapeMgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2D:output:0:gradients/sequential_1/reshape/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?,25
3gradients/sequential_1/reshape/Reshape_grad/Reshape?
1gradients/sequential_1/dense_1/Relu_grad/ReluGradReluGrad<gradients/sequential_1/reshape/Reshape_grad/Reshape:output:0Kgradients_sequential_1_dense_1_relu_grad_relugrad_sequential_1_dense_1_relu*
T0*
_output_shapes
:	?,23
1gradients/sequential_1/dense_1/Relu_grad/ReluGrad?
7gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?,29
7gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGrad?
1gradients/sequential_1/dense_1/MatMul_grad/MatMulMatMul=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0\gradients_sequential_1_dense_1_matmul_grad_matmul_sequential_1_dense_1_matmul_readvariableop*
T0*
_output_shapes

:@*
transpose_b(23
1gradients/sequential_1/dense_1/MatMul_grad/MatMul?
3gradients/sequential_1/dense_1/MatMul_grad/MatMul_1MatMul5gradients_sequential_1_dense_1_matmul_grad_matmul_1_z=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:	@?,*
transpose_a(25
3gradients/sequential_1/dense_1/MatMul_grad/MatMul_1?
IdentityIdentity;gradients/sequential_1/dense_1/MatMul_grad/MatMul:product:0*
T0*
_output_shapes

:@2

Identity?

Identity_1Identity=gradients/sequential_1/dense_1/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	@?,2

Identity_1?

Identity_2Identity@gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?,2

Identity_2?

Identity_3Identity[gradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:? 2

Identity_3?

Identity_4IdentityIgradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_4?

Identity_5Identity]gradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_5?

Identity_6IdentityKgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7Identity]gradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_7?

Identity_8IdentityKgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_8?

Identity_9Identity]gradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_9?
Identity_10IdentityKgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11Identity]gradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2
Identity_11?
Identity_12IdentityKgradients/sequential_1/conv2d_transpose_4/BiasAdd_grad/BiasAddGrad:output:0*
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
?:??:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	@?,:@*2
forward_function_name__forward_decode_536989:. *
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
:	@?,:$ 

_output_shapes

:@
?
?
D__inference_conv2d_1_layer_call_and_return_conditional_losses_537823

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
?L
?
__forward_encode_537128
x_0J
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1
split_split_dim*
&sequential_dense_matmul_readvariableop
sequential_flatten_reshape
sequential_conv2d_3_relu
sequential_conv2d_2_relu-
)sequential_conv2d_3_conv2d_readvariableop
sequential_conv2d_1_relu-
)sequential_conv2d_2_conv2d_readvariableop
sequential_conv2d_relu-
)sequential_conv2d_1_conv2d_readvariableop
x+
'sequential_conv2d_conv2d_readvariableop??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx_0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
??2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:@:@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"^
)sequential_conv2d_1_conv2d_readvariableop1sequential/conv2d_1/Conv2D/ReadVariableOp:value:0"B
sequential_conv2d_1_relu&sequential/conv2d_1/Relu:activations:0"^
)sequential_conv2d_2_conv2d_readvariableop1sequential/conv2d_2/Conv2D/ReadVariableOp:value:0"B
sequential_conv2d_2_relu&sequential/conv2d_2/Relu:activations:0"^
)sequential_conv2d_3_conv2d_readvariableop1sequential/conv2d_3/Conv2D/ReadVariableOp:value:0"B
sequential_conv2d_3_relu&sequential/conv2d_3/Relu:activations:0"Z
'sequential_conv2d_conv2d_readvariableop/sequential/conv2d/Conv2D/ReadVariableOp:value:0">
sequential_conv2d_relu$sequential/conv2d/Relu:activations:0"X
&sequential_dense_matmul_readvariableop.sequential/dense/MatMul/ReadVariableOp:value:0"A
sequential_flatten_reshape#sequential/flatten/Reshape:output:0"+
split_split_dimsplit/split_dim:output:0"
xx_0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : *G
backward_function_name-+__inference___backward_encode_537069_5371292T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?
?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_534130

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
?
?
%__inference_cvae_layer_call_fn_535124
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_cvae_layer_call_and_return_conditional_losses_5346922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
?
-__inference_sequential_1_layer_call_fn_537514

inputs
unknown:	@?,
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_5341942
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
+:?????????@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_dense_1_layer_call_and_return_conditional_losses_537913

inputs1
matmul_readvariableop_resource:	@?,.
biasadd_readvariableop_resource:	?,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?,*
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
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?@
?
__inference_compute_loss_536709
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
:@:@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5354392
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5354772
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
GPU2*0J 8? *"
fR
__inference_decode_5355982
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

:@2
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

:@2
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

:@2
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

:@2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:@2
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

:@2
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

:@2
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

:@2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:@2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:@2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:@2
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

:@2
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
?
?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_534072

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
?&
?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538136

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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_533262

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
?
?
@__inference_cvae_layer_call_and_return_conditional_losses_534532
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
@__inference_cvae_layer_call_and_return_conditional_losses_534692
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
3__inference_conv2d_transpose_2_layer_call_fn_538093

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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5337852
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
?
?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_538008

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
?
?
)__inference_conv2d_3_layer_call_fn_537852

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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_5332962
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
?
?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538236

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
?%
?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538287

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
?
D__inference_conv2d_3_layer_call_and_return_conditional_losses_533296

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
?&
?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_533785

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
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_533308

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
??
?
__inference_decode_536425
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeShape0sequential_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeShape2sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????@

_user_specified_namez
?
?
3__inference_conv2d_transpose_3_layer_call_fn_538169

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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5338732
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
?
?
-__inference_sequential_1_layer_call_fn_534221
input_2
unknown:	@?,
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
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_5341942
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
+:?????????@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????@
!
_user_specified_name	input_2
?
J
!__inference_reparameterize_536573
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2
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

:@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@2
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

:@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@:@:D @

_output_shapes

:@

_user_specified_namemean:FB

_output_shapes

:@
 
_user_specified_namelogvar
?
?
__inference_call_535627
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
:@:@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5354392
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5354772
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
GPU2*0J 8? *"
fR
__inference_decode_5355982
StatefulPartitionedCall_2r
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@2

Identityv

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes

:@2

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
__inference_compute_loss_535783
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
:@:@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5354392
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5354772
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
GPU2*0J 8? *"
fR
__inference_decode_5355982
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

:@2
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

:@2
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

:@2
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

:@2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:@2
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

:@2
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

:@2
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

:@2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:@2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:@2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:@2
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

:@2
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
?B
?	
__inference_encode_536469
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
??2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:@:@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?
?
@__inference_cvae_layer_call_and_return_conditional_losses_535285
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
+__inference_sequential_layer_call_fn_537380

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5333272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
+__inference_sequential_layer_call_fn_533350
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5333272
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?&
?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537984

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
J
!__inference_reparameterize_536605
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
:?????????@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????@2
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
:?????????@2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:?????????@2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:?????????@2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:?????????@2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:M I
'
_output_shapes
:?????????@

_user_specified_namemean:OK
'
_output_shapes
:?????????@
 
_user_specified_namelogvar
?B
?	
__inference_encode_535439
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:?2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
??2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:@:@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:??: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:K G
(
_output_shapes
:??

_user_specified_namex
?^
?
__forward_compute_loss_537189
x_0!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
?:@:@: :???:
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
fR
__forward_encode_5371282
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout	
2*
_collective_manager_ids
 *>
_output_shapes,
*:@:@:@: :@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__forward_reparameterize_5370552
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
?:??:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	@?,:@*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? * 
fR
__forward_decode_5369892
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

:@2
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

:@2
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

:@2
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

:@2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:@2
Exp_1V
mul_2Mulpow_1_0:z:0	Exp_1:y:0*
T0*
_output_shapes

:@2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@2
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

:@2
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
@:??: : : : : : : : : : : : : : : : : : : : : : *M
backward_function_name31__inference___backward_compute_loss_536756_53719022
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:??

_user_specified_namex
?
_
C__inference_reshape_layer_call_and_return_conditional_losses_537932

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
??
?
1__inference___backward_compute_loss_536756_537190
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
valueB"   @   2!
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
valueB"   @   2%
#gradients/Sum_2_grad/Tile/multiples?
gradients/Sum_2_grad/TileTile%gradients/Sum_2_grad/Reshape:output:0,gradients/Sum_2_grad/Tile/multiples:output:0*
T0*
_output_shapes

:@2
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
valueB"   @   2%
#gradients/Sum_1_grad/Tile/multiples?
gradients/Sum_1_grad/TileTile%gradients/Sum_1_grad/Reshape:output:0,gradients/Sum_1_grad/Tile/multiples:output:0*
T0*
_output_shapes

:@2
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
valueB"   @   2/
-gradients/mul_3_grad/BroadcastGradientArgs/s1?
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/mul_3_grad/BroadcastGradientArgs/s0_1:output:06gradients/mul_3_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:?????????:?????????2,
*gradients/mul_3_grad/BroadcastGradientArgs?
gradients/mul_3_grad/MulMul"gradients/Sum_2_grad/Tile:output:0gradients_mul_3_grad_mul_add_3*
T0*
_output_shapes

:@2
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

:@2
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

:@2
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

:@2
gradients/mul_1_grad/Mul_1?
-gradients/add_3_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"   @   2/
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

:@2
gradients/mul_2_grad/Mul?
gradients/mul_2_grad/Mul_1Mulgradients/mul_3_grad/Mul_1:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:@2
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

:@2
gradients/mul_grad/Mul?
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_powgradients/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes

:@2
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

:@2
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

:@2
gradients/pow_1_grad/Pow?
gradients/pow_1_grad/mul_1Mulgradients/pow_1_grad/mul:z:0gradients/pow_1_grad/Pow:z:0*
T0*
_output_shapes

:@2
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

:@2
gradients/pow_1_grad/Greater?
$gradients/pow_1_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2&
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

:@2 
gradients/pow_1_grad/ones_like?
gradients/pow_1_grad/SelectSelect gradients/pow_1_grad/Greater:z:0gradients_pow_1_grad_pow_sub_1'gradients/pow_1_grad/ones_like:output:0*
T0*
_output_shapes

:@2
gradients/pow_1_grad/Select?
gradients/pow_1_grad/LogLog$gradients/pow_1_grad/Select:output:0*
T0*
_output_shapes

:@2
gradients/pow_1_grad/Log?
/gradients/pow_1_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"   @   21
/gradients/pow_1_grad/zeros_like/shape_as_tensor?
%gradients/pow_1_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%gradients/pow_1_grad/zeros_like/Const?
gradients/pow_1_grad/zeros_likeFill8gradients/pow_1_grad/zeros_like/shape_as_tensor:output:0.gradients/pow_1_grad/zeros_like/Const:output:0*
T0*
_output_shapes

:@2!
gradients/pow_1_grad/zeros_like?
gradients/pow_1_grad/Select_1Select gradients/pow_1_grad/Greater:z:0gradients/pow_1_grad/Log:y:0(gradients/pow_1_grad/zeros_like:output:0*
T0*
_output_shapes

:@2
gradients/pow_1_grad/Select_1?
gradients/pow_1_grad/mul_2Mulgradients/mul_2_grad/Mul:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:@2
gradients/pow_1_grad/mul_2?
gradients/pow_1_grad/mul_3Mulgradients/pow_1_grad/mul_2:z:0&gradients/pow_1_grad/Select_1:output:0*
T0*
_output_shapes

:@2
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

:@2
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

:@2
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

:@2
gradients/pow_grad/Pow?
gradients/pow_grad/mul_1Mulgradients/pow_grad/mul:z:0gradients/pow_grad/Pow:z:0*
T0*
_output_shapes

:@2
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

:@2
gradients/pow_grad/Greater?
"gradients/pow_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2$
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

:@2
gradients/pow_grad/ones_like?
gradients/pow_grad/SelectSelectgradients/pow_grad/Greater:z:0gradients_pow_grad_pow_sub%gradients/pow_grad/ones_like:output:0*
T0*
_output_shapes

:@2
gradients/pow_grad/Select?
gradients/pow_grad/LogLog"gradients/pow_grad/Select:output:0*
T0*
_output_shapes

:@2
gradients/pow_grad/Log?
-gradients/pow_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB"   @   2/
-gradients/pow_grad/zeros_like/shape_as_tensor?
#gradients/pow_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#gradients/pow_grad/zeros_like/Const?
gradients/pow_grad/zeros_likeFill6gradients/pow_grad/zeros_like/shape_as_tensor:output:0,gradients/pow_grad/zeros_like/Const:output:0*
T0*
_output_shapes

:@2
gradients/pow_grad/zeros_like?
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greater:z:0gradients/pow_grad/Log:y:0&gradients/pow_grad/zeros_like:output:0*
T0*
_output_shapes

:@2
gradients/pow_grad/Select_1?
gradients/pow_grad/mul_2Mulgradients/mul_grad/Mul:z:0gradients_mul_grad_mul_1_pow*
T0*
_output_shapes

:@2
gradients/pow_grad/mul_2?
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2:z:0$gradients/pow_grad/Select_1:output:0*
T0*
_output_shapes

:@2
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

:@2
gradients/sub_1_grad/Neg?
gradients/Neg_1_grad/NegNeggradients/Exp_1_grad/mul:z:0*
T0*
_output_shapes

:@2
gradients/Neg_1_grad/Neg?
$gradients/logistic_loss/Neg_grad/NegNeg5gradients/logistic_loss/Select_1_grad/Select:output:0*
T0*(
_output_shapes
:??2&
$gradients/logistic_loss/Neg_grad/Neg~
gradients/sub_grad/NegNeggradients/pow_grad/mul_1:z:0*
T0*
_output_shapes

:@2
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
?:@:	@?,:?,:? :?:??:?:@?:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference___backward_decode_536929_5369902:
8gradients/StatefulPartitionedCall_2_grad/PartitionedCall?
gradients/AddN_1AddNgradients/pow_1_grad/mul_1:z:0gradients/pow_grad/mul_1:z:0Agradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:0*
N*
T0*-
_class#
!loc:@gradients/pow_1_grad/mul_1*
_output_shapes

:@2
gradients/AddN_1?
8gradients/StatefulPartitionedCall_1_grad/PartitionedCallPartitionedCallgradients/AddN_1:sum:0Bgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_1Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_2Dgradients_statefulpartitionedcall_1_grad_statefulpartitionedcall_1_3*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:@:@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *<
f7R5
3__inference___backward_reparameterize_537031_5370562:
8gradients/StatefulPartitionedCall_1_grad/PartitionedCall?
gradients/AddN_2AddNgradients/sub_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:0*
N*
T0*+
_class!
loc:@gradients/sub_1_grad/Neg*
_output_shapes

:@2
gradients/AddN_2?
gradients/AddN_3AddNgradients/mul_3_grad/Mul_1:z:0gradients/Neg_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:1*
N*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1*
_output_shapes

:@2
gradients/AddN_3?

6gradients/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0gradients/AddN_3:sum:0>gradients_statefulpartitionedcall_grad_statefulpartitionedcall@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_1@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_2@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_3@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_4@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_5@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_6@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_7@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_8@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_9Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_10Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:??: : : @:@:@?:?:??:?:???:?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *4
f/R-
+__inference___backward_encode_537069_53712928
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
T0*!
_output_shapes
:???2

Identity_9?
Identity_10Identity@gradients/StatefulPartitionedCall_grad/PartitionedCall:output:10*
T0*
_output_shapes	
:?2
Identity_10?
Identity_11IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	@?,2
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
?: :@: :@: :??:@:@:??:??:??: :@: :@: :@:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	@?,:@:@:@: :@: :???:
??:
?:?:??:+?@:@?:W : @:??: *8
forward_function_name__forward_compute_loss_537189: 

_output_shapes
: :$ 

_output_shapes

:@:

_output_shapes
: :$ 

_output_shapes

:@:

_output_shapes
: :.*
(
_output_shapes
:??:$ 

_output_shapes

:@:$ 

_output_shapes

:@:.*
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

:@:

_output_shapes
: :$ 

_output_shapes

:@:

_output_shapes
: :$ 

_output_shapes

:@:.*
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
:	@?,:$ 

_output_shapes

:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@: 

_output_shapes
: :$! 

_output_shapes

:@:"

_output_shapes
: :'##
!
_output_shapes
:???:&$"
 
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
?
?
(__inference_dense_1_layer_call_fn_537902

inputs
unknown:	@?,
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
C__inference_dense_1_layer_call_and_return_conditional_losses_5340272
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
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538310

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
?@
?
__inference_compute_loss_536065
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
:@@:@@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5358292
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5358672
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
GPU2*0J 8? *"
fR
__inference_decode_5359882
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

:@@2
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

:@@2
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

:@@2
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

:@@2
addR
add_1AddV2add:z:0Log:y:0*
T0*
_output_shapes

:@@2
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

:@@2
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

:@@2
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

:@@2
pow_1`
Neg_1Neg StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@@2
Neg_1I
Exp_1Exp	Neg_1:y:0*
T0*
_output_shapes

:@@2
Exp_1T
mul_2Mul	pow_1:z:0	Exp_1:y:0*
T0*
_output_shapes

:@@2
mul_2m
add_2AddV2	mul_2:z:0 StatefulPartitionedCall:output:1*
T0*
_output_shapes

:@@2
add_2V
add_3AddV2	add_2:z:0	Log_1:y:0*
T0*
_output_shapes

:@@2
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

:@@2
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
?
?
3__inference___backward_reparameterize_537031_537056
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

:@2
gradients/grad_ys_0?
gradients/mul_1_grad/MulMulgradients/grad_ys_0:output:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:@2
gradients/mul_1_grad/Mul?
gradients/mul_1_grad/Mul_1Mulgradients/grad_ys_0:output:0(gradients_mul_1_grad_mul_1_random_normal*
T0*
_output_shapes

:@2
gradients/mul_1_grad/Mul_1?
gradients/Exp_grad/mulMulgradients/mul_1_grad/Mul_1:z:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:@2
gradients/Exp_grad/mul?
+gradients/mul_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"   @   2-
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

:@2
gradients/mul_grad/Mul?
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_logvargradients/Exp_grad/mul:z:0*
T0*
_output_shapes

:@2
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

:@2

Identityi

Identity_1Identitygradients/mul_grad/Mul:z:0*
T0*
_output_shapes

:@2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:@:@:@: :@*:
forward_function_name!__forward_reparameterize_537055:$  

_output_shapes

:@:$ 

_output_shapes

:@:$ 

_output_shapes

:@:

_output_shapes
: :$ 

_output_shapes

:@
??
?
__inference_decode_536305
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
:@ ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
:@ ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:@,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:@,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @   ?   2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:@X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:@X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X   ?   @   2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:@?? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@?? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:@?? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ?          2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:@??*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@??2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@??2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@@

_user_specified_namez
?
?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538084

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
3__inference_conv2d_transpose_2_layer_call_fn_538102

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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5341302
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
?
J
!__inference_reparameterize_535477
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"   @   2
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

:@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@2
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

:@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@:@:D @

_output_shapes

:@

_user_specified_namemean:FB

_output_shapes

:@
 
_user_specified_namelogvar
?&
?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_533609

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
?B
?	
__inference_encode_535829
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:@?2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:@
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
@??2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:@@:@@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@??: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:K G
(
_output_shapes
:@??

_user_specified_namex
?
?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_534101

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
C__inference_dense_1_layer_call_and_return_conditional_losses_534027

inputs1
matmul_readvariableop_resource:	@?,.
biasadd_readvariableop_resource:	?,
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?,*
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
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
3__inference_conv2d_transpose_1_layer_call_fn_538017

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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5336972
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
?
J
!__inference_reparameterize_535867
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
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

:@@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@@2
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

:@@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@:@@:D @

_output_shapes

:@@

_user_specified_namemean:FB

_output_shapes

:@@
 
_user_specified_namelogvar
??
?/
"__inference__traced_restore_538771
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: :
 assignvariableop_5_conv2d_kernel: ,
assignvariableop_6_conv2d_bias: <
"assignvariableop_7_conv2d_1_kernel: @.
 assignvariableop_8_conv2d_1_bias:@=
"assignvariableop_9_conv2d_2_kernel:@?0
!assignvariableop_10_conv2d_2_bias:	??
#assignvariableop_11_conv2d_3_kernel:??0
!assignvariableop_12_conv2d_3_bias:	?5
 assignvariableop_13_dense_kernel:???-
assignvariableop_14_dense_bias:	?5
"assignvariableop_15_dense_1_kernel:	@?,/
 assignvariableop_16_dense_1_bias:	?,F
+assignvariableop_17_conv2d_transpose_kernel:? 8
)assignvariableop_18_conv2d_transpose_bias:	?I
-assignvariableop_19_conv2d_transpose_1_kernel:??:
+assignvariableop_20_conv2d_transpose_1_bias:	?H
-assignvariableop_21_conv2d_transpose_2_kernel:@?9
+assignvariableop_22_conv2d_transpose_2_bias:@G
-assignvariableop_23_conv2d_transpose_3_kernel: @9
+assignvariableop_24_conv2d_transpose_3_bias: G
-assignvariableop_25_conv2d_transpose_4_kernel: 9
+assignvariableop_26_conv2d_transpose_4_bias:B
(assignvariableop_27_adam_conv2d_kernel_m: 4
&assignvariableop_28_adam_conv2d_bias_m: D
*assignvariableop_29_adam_conv2d_1_kernel_m: @6
(assignvariableop_30_adam_conv2d_1_bias_m:@E
*assignvariableop_31_adam_conv2d_2_kernel_m:@?7
(assignvariableop_32_adam_conv2d_2_bias_m:	?F
*assignvariableop_33_adam_conv2d_3_kernel_m:??7
(assignvariableop_34_adam_conv2d_3_bias_m:	?<
'assignvariableop_35_adam_dense_kernel_m:???4
%assignvariableop_36_adam_dense_bias_m:	?<
)assignvariableop_37_adam_dense_1_kernel_m:	@?,6
'assignvariableop_38_adam_dense_1_bias_m:	?,M
2assignvariableop_39_adam_conv2d_transpose_kernel_m:? ?
0assignvariableop_40_adam_conv2d_transpose_bias_m:	?P
4assignvariableop_41_adam_conv2d_transpose_1_kernel_m:??A
2assignvariableop_42_adam_conv2d_transpose_1_bias_m:	?O
4assignvariableop_43_adam_conv2d_transpose_2_kernel_m:@?@
2assignvariableop_44_adam_conv2d_transpose_2_bias_m:@N
4assignvariableop_45_adam_conv2d_transpose_3_kernel_m: @@
2assignvariableop_46_adam_conv2d_transpose_3_bias_m: N
4assignvariableop_47_adam_conv2d_transpose_4_kernel_m: @
2assignvariableop_48_adam_conv2d_transpose_4_bias_m:B
(assignvariableop_49_adam_conv2d_kernel_v: 4
&assignvariableop_50_adam_conv2d_bias_v: D
*assignvariableop_51_adam_conv2d_1_kernel_v: @6
(assignvariableop_52_adam_conv2d_1_bias_v:@E
*assignvariableop_53_adam_conv2d_2_kernel_v:@?7
(assignvariableop_54_adam_conv2d_2_bias_v:	?F
*assignvariableop_55_adam_conv2d_3_kernel_v:??7
(assignvariableop_56_adam_conv2d_3_bias_v:	?<
'assignvariableop_57_adam_dense_kernel_v:???4
%assignvariableop_58_adam_dense_bias_v:	?<
)assignvariableop_59_adam_dense_1_kernel_v:	@?,6
'assignvariableop_60_adam_dense_1_bias_v:	?,M
2assignvariableop_61_adam_conv2d_transpose_kernel_v:? ?
0assignvariableop_62_adam_conv2d_transpose_bias_v:	?P
4assignvariableop_63_adam_conv2d_transpose_1_kernel_v:??A
2assignvariableop_64_adam_conv2d_transpose_1_bias_v:	?O
4assignvariableop_65_adam_conv2d_transpose_2_kernel_v:@?@
2assignvariableop_66_adam_conv2d_transpose_2_bias_v:@N
4assignvariableop_67_adam_conv2d_transpose_3_kernel_v: @@
2assignvariableop_68_adam_conv2d_transpose_3_bias_v: N
4assignvariableop_69_adam_conv2d_transpose_4_kernel_v: @
2assignvariableop_70_adam_conv2d_transpose_4_bias_v:
identity_72??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_8?AssignVariableOp_9?!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*? 
value? B? HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_conv2d_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv2d_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_dense_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_conv2d_transpose_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_conv2d_transpose_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_conv2d_transpose_1_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_conv2d_transpose_1_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_conv2d_transpose_2_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_conv2d_transpose_2_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_conv2d_transpose_3_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_conv2d_transpose_3_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_conv2d_transpose_4_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_conv2d_transpose_4_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_dense_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_conv2d_transpose_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_conv2d_transpose_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_conv2d_transpose_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_conv2d_transpose_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_conv2d_transpose_2_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_conv2d_transpose_2_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_conv2d_transpose_3_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_conv2d_transpose_3_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_conv2d_transpose_4_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_conv2d_transpose_4_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv2d_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv2d_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_conv2d_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_conv2d_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_dense_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_conv2d_transpose_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_conv2d_transpose_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp4assignvariableop_63_adam_conv2d_transpose_1_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_conv2d_transpose_1_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp4assignvariableop_65_adam_conv2d_transpose_2_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp2assignvariableop_66_adam_conv2d_transpose_2_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp4assignvariableop_67_adam_conv2d_transpose_3_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp2assignvariableop_68_adam_conv2d_transpose_3_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp4assignvariableop_69_adam_conv2d_transpose_4_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp2assignvariableop_70_adam_conv2d_transpose_4_bias_vIdentity_70:output:0"/device:CPU:0*
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
?
?
B__inference_conv2d_layer_call_and_return_conditional_losses_533245

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
?
}
__forward_reparameterize_537055
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
valueB"   @   2
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

:@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
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

:@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@2
Exp\
mul_1Mulrandom_normal_0:z:0Exp:y:0*
T0*
_output_shapes

:@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@2

Identity"
expExp:y:0"
identityIdentity:output:0"
logvarlogvar_0"
mul_ymul/y:output:0"$
random_normalrandom_normal_0:z:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@:@*O
backward_function_name53__inference___backward_reparameterize_537031_537056:D @

_output_shapes

:@

_user_specified_namemean:FB

_output_shapes

:@
 
_user_specified_namelogvar
?
J
!__inference_reparameterize_533026
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
:?????????@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:?????????@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:?????????@2
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
:?????????@2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:?????????@2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:?????????@2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:?????????@2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????@:M I
'
_output_shapes
:?????????@

_user_specified_namemean:OK
'
_output_shapes
:?????????@
 
_user_specified_namelogvar
?
?
&__inference_dense_layer_call_fn_537883

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5333202
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
?&
?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_533873

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
?
F__inference_sequential_layer_call_and_return_conditional_losses_533327

inputs'
conv2d_533246: 
conv2d_533248: )
conv2d_1_533263: @
conv2d_1_533265:@*
conv2d_2_533280:@?
conv2d_2_533282:	?+
conv2d_3_533297:??
conv2d_3_533299:	?!
dense_533321:???
dense_533323:	?
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_533246conv2d_533248*
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
GPU2*0J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_5332452 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_533263conv2d_1_533265*
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_5332622"
 conv2d_1/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_533280conv2d_2_533282*
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_5332792"
 conv2d_2/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_533297conv2d_3_533299*
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_5332962"
 conv2d_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5333082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_533321dense_533323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5333202
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_533697

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
?d
?	
+__inference___backward_encode_537069_537129
placeholder
placeholder_1/
+gradients_split_grad_concat_split_split_dimX
Tgradients_sequential_dense_matmul_grad_matmul_sequential_dense_matmul_readvariableopN
Jgradients_sequential_dense_matmul_grad_matmul_1_sequential_flatten_reshapeM
Igradients_sequential_conv2d_3_relu_grad_relugrad_sequential_conv2d_3_reluM
Igradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_relu^
Zgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_3_conv2d_readvariableopM
Igradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_relu^
Zgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_2_conv2d_readvariableopK
Ggradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_relu^
Zgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_1_conv2d_readvariableop4
0gradients_sequential_conv2d_conv2d_grad_shapen_xZ
Vgradients_sequential_conv2d_conv2d_grad_shapen_sequential_conv2d_conv2d_readvariableop
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

:@2
gradients/grad_ys_0n
gradients/grad_ys_1Identityplaceholder_1*
T0*
_output_shapes

:@2
gradients/grad_ys_1?
gradients/split_grad/concatConcatV2gradients/grad_ys_0:output:0gradients/grad_ys_1:output:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
3gradients/sequential/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/split_grad/concat:output:0*
T0*
_output_shapes	
:?25
3gradients/sequential/dense/BiasAdd_grad/BiasAddGrad?
-gradients/sequential/dense/MatMul_grad/MatMulMatMul$gradients/split_grad/concat:output:0Tgradients_sequential_dense_matmul_grad_matmul_sequential_dense_matmul_readvariableop*
T0* 
_output_shapes
:
??*
transpose_b(2/
-gradients/sequential/dense/MatMul_grad/MatMul?
/gradients/sequential/dense/MatMul_grad/MatMul_1MatMulJgradients_sequential_dense_matmul_grad_matmul_1_sequential_flatten_reshape$gradients/split_grad/concat:output:0*
T0*!
_output_shapes
:???*
transpose_a(21
/gradients/sequential/dense/MatMul_grad/MatMul_1?
/gradients/sequential/flatten/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   
         21
/gradients/sequential/flatten/Reshape_grad/Shape?
1gradients/sequential/flatten/Reshape_grad/ReshapeReshape7gradients/sequential/dense/MatMul_grad/MatMul:product:08gradients/sequential/flatten/Reshape_grad/Shape:output:0*
T0*'
_output_shapes
:
?23
1gradients/sequential/flatten/Reshape_grad/Reshape?
0gradients/sequential/conv2d_3/Relu_grad/ReluGradReluGrad:gradients/sequential/flatten/Reshape_grad/Reshape:output:0Igradients_sequential_conv2d_3_relu_grad_relugrad_sequential_conv2d_3_relu*
T0*'
_output_shapes
:
?22
0gradients/sequential/conv2d_3/Relu_grad/ReluGrad?
6gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?28
6gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGrad?
0gradients/sequential/conv2d_3/Conv2D_grad/ShapeNShapeNIgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_reluZgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_3_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_3/Conv2D_grad/ShapeN?
=gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_3/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_3_conv2d_readvariableop<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:?*
paddingVALID*
strides
2?
=gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInput?
>gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterIgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_relu9gradients/sequential/conv2d_3/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilter?
0gradients/sequential/conv2d_2/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInput:output:0Igradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_relu*
T0*'
_output_shapes
:?22
0gradients/sequential/conv2d_2/Relu_grad/ReluGrad?
6gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:?28
6gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGrad?
0gradients/sequential/conv2d_2/Conv2D_grad/ShapeNShapeNIgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_reluZgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_2_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_2/Conv2D_grad/ShapeN?
=gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_2/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_2_conv2d_readvariableop<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2?
=gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInput?
>gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterIgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_relu9gradients/sequential/conv2d_2/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilter?
0gradients/sequential/conv2d_1/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInput:output:0Igradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_relu*
T0*&
_output_shapes
:+?@22
0gradients/sequential/conv2d_1/Relu_grad/ReluGrad?
6gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@28
6gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGrad?
0gradients/sequential/conv2d_1/Conv2D_grad/ShapeNShapeNGgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_reluZgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_1_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_1/Conv2D_grad/ShapeN?
=gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_1/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_1_conv2d_readvariableop<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2?
=gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInput?
>gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterGgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_relu9gradients/sequential/conv2d_1/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: @*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilter?
.gradients/sequential/conv2d/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInput:output:0Ggradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_relu*
T0*&
_output_shapes
:W 20
.gradients/sequential/conv2d/Relu_grad/ReluGrad?
4gradients/sequential/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 26
4gradients/sequential/conv2d/BiasAdd_grad/BiasAddGrad?
.gradients/sequential/conv2d/Conv2D_grad/ShapeNShapeN0gradients_sequential_conv2d_conv2d_grad_shapen_xVgradients_sequential_conv2d_conv2d_grad_shapen_sequential_conv2d_conv2d_readvariableop*
N*
T0* 
_output_shapes
::20
.gradients/sequential/conv2d/Conv2D_grad/ShapeN?
;gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7gradients/sequential/conv2d/Conv2D_grad/ShapeN:output:0Vgradients_sequential_conv2d_conv2d_grad_shapen_sequential_conv2d_conv2d_readvariableop:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:??*
paddingVALID*
strides
2=
;gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInput?
<gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter0gradients_sequential_conv2d_conv2d_grad_shapen_x7gradients/sequential/conv2d/Conv2D_grad/ShapeN:output:1:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2>
<gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilter?
IdentityIdentityDgradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:??2

Identity?

Identity_1IdentityEgradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2

Identity_1?

Identity_2Identity=gradients/sequential/conv2d/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2

Identity_2?

Identity_3IdentityGgradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_3?

Identity_4Identity?gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_4?

Identity_5IdentityGgradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@?2

Identity_5?

Identity_6Identity?gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_6?

Identity_7IdentityGgradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:??2

Identity_7?

Identity_8Identity?gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2

Identity_8?

Identity_9Identity9gradients/sequential/dense/MatMul_grad/MatMul_1:product:0*
T0*!
_output_shapes
:???2

Identity_9?
Identity_10Identity<gradients/sequential/dense/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:?2
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
?:@:@: :???:
??:
?:?:??:+?@:@?:W : @:??: *2
forward_function_name__forward_encode_537128:$  

_output_shapes

:@:$ 

_output_shapes

:@:

_output_shapes
: :'#
!
_output_shapes
:???:&"
 
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
?
?
'__inference_conv2d_layer_call_fn_537792

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
GPU2*0J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_5332452
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
?
B__inference_conv2d_layer_call_and_return_conditional_losses_537803

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
J
!__inference_reparameterize_536589
mean

logvar
identity?_
ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   2
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

:@@*
dtype02$
"random_normal/RandomStandardNormal?
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@@2
random_normal/mul?
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*
_output_shapes

:@@2
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

:@@2
mulC
ExpExpmul:z:0*
T0*
_output_shapes

:@@2
ExpZ
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*
_output_shapes

:@@2
mul_1M
addAddV2	mul_1:z:0mean*
T0*
_output_shapes

:@@2
addR
IdentityIdentityadd:z:0*
T0*
_output_shapes

:@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@:@@:D @

_output_shapes

:@@

_user_specified_namemean:FB

_output_shapes

:@@
 
_user_specified_namelogvar
?
?
3__inference_conv2d_transpose_3_layer_call_fn_538178

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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5341592
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
??
?
__inference_decode_535988
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	@?,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
:@ ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
:@ ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:@,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:@,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @   ?   2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:@X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:@X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X   ?   @   2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:@?? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@?? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:@?? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ?          2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:@??*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@??2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@??2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@@

_user_specified_namez
?
D
(__inference_reshape_layer_call_fn_537918

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
GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5340472
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
?*
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534194

inputs!
dense_1_534028:	@?,
dense_1_534030:	?,2
conv2d_transpose_534073:? &
conv2d_transpose_534075:	?5
conv2d_transpose_1_534102:??(
conv2d_transpose_1_534104:	?4
conv2d_transpose_2_534131:@?'
conv2d_transpose_2_534133:@3
conv2d_transpose_3_534160: @'
conv2d_transpose_3_534162: 3
conv2d_transpose_4_534188: '
conv2d_transpose_4_534190:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_534028dense_1_534030*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_5340272!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5340472
reshape/PartitionedCall?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_534073conv2d_transpose_534075*
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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5340722*
(conv2d_transpose/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_534102conv2d_transpose_1_534104*
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5341012,
*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_534131conv2d_transpose_2_534133*
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5341302,
*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_534160conv2d_transpose_3_534162*
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5341592,
*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_534188conv2d_transpose_4_534190*
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5341872,
*conv2d_transpose_4/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_537843

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
?
?
__inference_call_533176
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
F__inference_sequential_layer_call_and_return_conditional_losses_533571
input_1'
conv2d_533544: 
conv2d_533546: )
conv2d_1_533549: @
conv2d_1_533551:@*
conv2d_2_533554:@?
conv2d_2_533556:	?+
conv2d_3_533559:??
conv2d_3_533561:	?!
dense_533565:???
dense_533567:	?
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_533544conv2d_533546*
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
GPU2*0J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_5332452 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_533549conv2d_1_533551*
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_5332622"
 conv2d_1/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_533554conv2d_2_533556*
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_5332792"
 conv2d_2/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_533559conv2d_3_533561*
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_5332962"
 conv2d_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5333082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_533565dense_533567*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5333202
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
__inference_call_535681
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
1__inference_conv2d_transpose_layer_call_fn_537941

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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5336092
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
?
+__inference_sequential_layer_call_fn_537405

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5334632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
?
?
!__inference__wrapped_model_533227
input_1%
cvae_533177: 
cvae_533179: %
cvae_533181: @
cvae_533183:@&
cvae_533185:@?
cvae_533187:	?'
cvae_533189:??
cvae_533191:	? 
cvae_533193:???
cvae_533195:	?
cvae_533197:	@?,
cvae_533199:	?,&
cvae_533201:? 
cvae_533203:	?'
cvae_533205:??
cvae_533207:	?&
cvae_533209:@?
cvae_533211:@%
cvae_533213: @
cvae_533215: %
cvae_533217: 
cvae_533219:
identity

identity_1

identity_2??cvae/StatefulPartitionedCall?
cvae/StatefulPartitionedCallStatefulPartitionedCallinput_1cvae_533177cvae_533179cvae_533181cvae_533183cvae_533185cvae_533187cvae_533189cvae_533191cvae_533193cvae_533195cvae_533197cvae_533199cvae_533201cvae_533203cvae_533205cvae_533207cvae_533209cvae_533211cvae_533213cvae_533215cvae_533217cvae_533219*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? * 
fR
__inference_call_5331762
cvae/StatefulPartitionedCall?
IdentityIdentity%cvae/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?

Identity_1Identity%cvae/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?

Identity_2Identity%cvae/StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:???????????2

Identity_2m
NoOpNoOp^cvae/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:???????????: : : : : : : : : : : : : : : : : : : : : : 2<
cvae/StatefulPartitionedCallcvae/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?B
?	
__inference_encode_536513
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@?2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:@?2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:@
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
@??2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@?2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:@@:@@*
	num_split2
split`
IdentityIdentitysplit:output:0^NoOp*
T0*
_output_shapes

:@@2

Identityd

Identity_1Identitysplit:output:1^NoOp*
T0*
_output_shapes

:@@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@??: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:K G
(
_output_shapes
:@??

_user_specified_namex
?
?
%__inference_cvae_layer_call_fn_535018
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_cvae_layer_call_and_return_conditional_losses_5345322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?C
?	
__inference_encode_536557
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*:
_output_shapes(
&:?????????@:?????????@*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
??
?
__inference__traced_save_538548
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop8
4savev2_conv2d_transpose_3_kernel_read_readvariableop6
2savev2_conv2d_transpose_3_bias_read_readvariableop8
4savev2_conv2d_transpose_4_kernel_read_readvariableop6
2savev2_conv2d_transpose_4_bias_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop=
9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop;
7savev2_adam_conv2d_transpose_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableop
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
ShardedFilename?!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*? 
value? B? HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*?
value?B?HB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop2savev2_conv2d_transpose_3_bias_read_readvariableop4savev2_conv2d_transpose_4_kernel_read_readvariableop2savev2_conv2d_transpose_4_bias_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: : : : : : : : : @:@:@?:?:??:?:???:?:	@?,:?,:? :?:??:?:@?:@: @: : :: : : @:@:@?:?:??:?:???:?:	@?,:?,:? :?:??:?:@?:@: @: : :: : : @:@:@?:?:??:?:???:?:	@?,:?,:? :?:??:?:@?:@: @: : :: 2(
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
:?:'#
!
_output_shapes
:???:!

_output_shapes	
:?:%!

_output_shapes
:	@?,:!
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
:?:'$#
!
_output_shapes
:???:!%

_output_shapes	
:?:%&!

_output_shapes
:	@?,:!'
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
:?:':#
!
_output_shapes
:???:!;

_output_shapes	
:?:%<!

_output_shapes
:	@?,:!=
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
??
?
__inference_decode_536185
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
?4
?
F__inference_sequential_layer_call_and_return_conditional_losses_537445

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?9
$dense_matmul_readvariableop_resource:???4
%dense_biasadd_readvariableop_resource:	?
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d/Relu?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_1/Relu?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten/Const?
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddr
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
1__inference_conv2d_transpose_layer_call_fn_537950

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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5340722
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
?
?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_533279

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
?
?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_534187

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
?*
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534474
input_2!
dense_1_534442:	@?,
dense_1_534444:	?,2
conv2d_transpose_534448:? &
conv2d_transpose_534450:	?5
conv2d_transpose_1_534453:??(
conv2d_transpose_1_534455:	?4
conv2d_transpose_2_534458:@?'
conv2d_transpose_2_534460:@3
conv2d_transpose_3_534463: @'
conv2d_transpose_3_534465: 3
conv2d_transpose_4_534468: '
conv2d_transpose_4_534470:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_534442dense_1_534444*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_5340272!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5340472
reshape/PartitionedCall?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_534448conv2d_transpose_534450*
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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5340722*
(conv2d_transpose/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_534453conv2d_transpose_1_534455*
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5341012,
*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_534458conv2d_transpose_2_534460*
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5341302,
*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_534463conv2d_transpose_3_534465*
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5341592,
*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_534468conv2d_transpose_4_534470*
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5341872,
*conv2d_transpose_4/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:?????????@
!
_user_specified_name	input_2
?
?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_534159

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
?
F__inference_sequential_layer_call_and_return_conditional_losses_533541
input_1'
conv2d_533514: 
conv2d_533516: )
conv2d_1_533519: @
conv2d_1_533521:@*
conv2d_2_533524:@?
conv2d_2_533526:	?+
conv2d_3_533529:??
conv2d_3_533531:	?!
dense_533535:???
dense_533537:	?
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_533514conv2d_533516*
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
GPU2*0J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_5332452 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_533519conv2d_1_533521*
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_5332622"
 conv2d_1/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_533524conv2d_2_533526*
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_5332792"
 conv2d_2/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_533529conv2d_3_533531*
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_5332962"
 conv2d_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5333082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_533535dense_533537*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5333202
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
)__inference_conv2d_1_layer_call_fn_537812

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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_5332622
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
?*
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534348

inputs!
dense_1_534316:	@?,
dense_1_534318:	?,2
conv2d_transpose_534322:? &
conv2d_transpose_534324:	?5
conv2d_transpose_1_534327:??(
conv2d_transpose_1_534329:	?4
conv2d_transpose_2_534332:@?'
conv2d_transpose_2_534334:@3
conv2d_transpose_3_534337: @'
conv2d_transpose_3_534339: 3
conv2d_transpose_4_534342: '
conv2d_transpose_4_534344:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?*conv2d_transpose_4/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_534316dense_1_534318*
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
C__inference_dense_1_layer_call_and_return_conditional_losses_5340272!
dense_1/StatefulPartitionedCall?
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_5340472
reshape/PartitionedCall?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_534322conv2d_transpose_534324*
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
GPU2*0J 8? *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_5340722*
(conv2d_transpose/StatefulPartitionedCall?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_534327conv2d_transpose_1_534329*
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_5341012,
*conv2d_transpose_1/StatefulPartitionedCall?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_534332conv2d_transpose_2_534334*
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_5341302,
*conv2d_transpose_2/StatefulPartitionedCall?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_534337conv2d_transpose_3_534339*
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_5341592,
*conv2d_transpose_3/StatefulPartitionedCall?
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_534342conv2d_transpose_4_534344*
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5341872,
*conv2d_transpose_4/StatefulPartitionedCall?
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_2_layer_call_fn_537832

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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_5332792
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
?4
?
F__inference_sequential_layer_call_and_return_conditional_losses_537485

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@?7
(conv2d_2_biasadd_readvariableop_resource:	?C
'conv2d_3_conv2d_readvariableop_resource:??7
(conv2d_3_biasadd_readvariableop_resource:	?9
$dense_matmul_readvariableop_resource:???4
%dense_biasadd_readvariableop_resource:	?
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?conv2d_2/BiasAdd/ReadVariableOp?conv2d_2/Conv2D/ReadVariableOp?conv2d_3/BiasAdd/ReadVariableOp?conv2d_3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
conv2d/Relu?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
conv2d_1/Relu?
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02 
conv2d_2/Conv2D/ReadVariableOp?
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_2/Conv2D?
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp?
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_2/Relu?
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02 
conv2d_3/Conv2D/ReadVariableOp?
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
conv2d_3/Conv2D?
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp?
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
conv2d_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
flatten/Const?
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddr
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
__inference_decode_535598
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	?,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @   ?   2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X   ?   @   2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:?? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:?? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ?          2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:??*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
?&
?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538212

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
3__inference_conv2d_transpose_4_layer_call_fn_538245

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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_5339602
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
?
?
%__inference_cvae_layer_call_fn_535071
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_cvae_layer_call_and_return_conditional_losses_5345322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
?
D__inference_conv2d_3_layer_call_and_return_conditional_losses_537863

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
??
?
__inference_decode_533147
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	@?,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	?,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource:? L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	?d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	?c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity??4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp??sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?+sequential_1/dense_1/BiasAdd/ReadVariableOp?*sequential_1/dense_1/MatMul/ReadVariableOp?
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp?
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/MatMul?
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOp?
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/BiasAdd?
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
sequential_1/dense_1/Relu?
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape?
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack?
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1?
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2?
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice?
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1?
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2?
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3?
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape?
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
sequential_1/reshape/Reshape?
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/Shape?
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack?
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1?
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2?
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice?
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1?
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2?
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_1/conv2d_transpose/stack/3?
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack?
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stack?
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1?
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2?
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp?
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transpose?
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp?
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2'
%sequential_1/conv2d_transpose/BiasAdd?
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2$
"sequential_1/conv2d_transpose/Relu?
%sequential_1/conv2d_transpose_1/ShapeShape0sequential_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/Shape?
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stack?
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1?
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2?
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice?
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1?
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2?
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_1/stack/3?
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stack?
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transpose?
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2)
'sequential_1/conv2d_transpose_1/BiasAdd?
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2&
$sequential_1/conv2d_transpose_1/Relu?
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/Shape?
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stack?
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1?
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2?
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice?
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1?
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_2/stack/2?
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3?
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stack?
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transpose?
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2)
'sequential_1/conv2d_transpose_2/BiasAdd?
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2&
$sequential_1/conv2d_transpose_2/Relu?
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/Shape?
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stack?
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1?
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2?
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice?
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/1?
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_3/stack/2?
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3?
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stack?
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transpose?
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2)
'sequential_1/conv2d_transpose_3/BiasAdd?
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2&
$sequential_1/conv2d_transpose_3/Relu?
%sequential_1/conv2d_transpose_4/ShapeShape2sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/Shape?
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stack?
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1?
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2?
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice?
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/1?
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2)
'sequential_1/conv2d_transpose_4/stack/2?
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3?
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stack?
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1?
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2?
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transpose?
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp?
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2)
'sequential_1/conv2d_transpose_4/BiasAdd?
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2?
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:J F
'
_output_shapes
:?????????@

_user_specified_namez
?
_
C__inference_flatten_layer_call_and_return_conditional_losses_537874

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
Ǹ
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_537663

inputs9
&dense_1_matmul_readvariableop_resource:	@?,6
'dense_1_biasadd_readvariableop_resource:	?,T
9conv2d_transpose_conv2d_transpose_readvariableop_resource:? ?
0conv2d_transpose_biasadd_readvariableop_resource:	?W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?V
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?@
2conv2d_transpose_2_biasadd_readvariableop_resource:@U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_3_biasadd_readvariableop_resource: U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_4_biasadd_readvariableop_resource:
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOp?)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?)conv2d_transpose_3/BiasAdd/ReadVariableOp?2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?)conv2d_transpose_4/BiasAdd/ReadVariableOp?2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape?
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack?
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1?
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose/stack/2w
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose/stack/3?
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack?
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack?
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1?
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOp?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose/BiasAdd?
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose/Relu?
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape?
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack?
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1?
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_1/stack/2{
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_1/stack/3?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack?
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack?
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1?
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOp?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_1/BiasAdd?
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_1/Relu?
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape?
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack?
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1?
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_2/stack/1{
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_2/stack/3?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack?
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack?
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1?
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transpose?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOp?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_2/BiasAdd?
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_2/Relu?
conv2d_transpose_3/ShapeShape%conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape?
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack?
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1?
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slice{
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_3/stack/3?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack?
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack?
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1?
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transpose?
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOp?
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_3/BiasAdd?
conv2d_transpose_3/ReluRelu#conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_3/Relu?
conv2d_transpose_4/ShapeShape%conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape?
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack?
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1?
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2?
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slice{
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3?
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack?
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack?
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1?
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2?
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1?
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transpose?
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOp?
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_4/BiasAdd?
IdentityIdentity#conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
? 
?
F__inference_sequential_layer_call_and_return_conditional_losses_533463

inputs'
conv2d_533436: 
conv2d_533438: )
conv2d_1_533441: @
conv2d_1_533443:@*
conv2d_2_533446:@?
conv2d_2_533448:	?+
conv2d_3_533451:??
conv2d_3_533453:	?!
dense_533457:???
dense_533459:	?
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall? conv2d_2/StatefulPartitionedCall? conv2d_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_533436conv2d_533438*
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
GPU2*0J 8? *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_5332452 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_533441conv2d_1_533443*
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_5332622"
 conv2d_1/StatefulPartitionedCall?
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_533446conv2d_2_533448*
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_5332792"
 conv2d_2/StatefulPartitionedCall?
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_533451conv2d_3_533453*
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_5332962"
 conv2d_3/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
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
GPU2*0J 8? *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_5333082
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_533457dense_533459*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_5333202
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity?
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
@__inference_cvae_layer_call_and_return_conditional_losses_535339
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
+__inference_sequential_layer_call_fn_533511
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_5334632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?

?
A__inference_dense_layer_call_and_return_conditional_losses_533320

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
_
C__inference_reshape_layer_call_and_return_conditional_losses_534047

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
$__inference_signature_wrapper_534965
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_5332272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
?
%__inference_cvae_layer_call_fn_535177
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
C:?????????@:?????????@:???????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_cvae_layer_call_and_return_conditional_losses_5346922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?%
?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_533960

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
?C
?	
__inference_encode_532988
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@?B
3sequential_conv2d_2_biasadd_readvariableop_resource:	?N
2sequential_conv2d_3_conv2d_readvariableop_resource:??B
3sequential_conv2d_3_biasadd_readvariableop_resource:	?D
/sequential_dense_matmul_readvariableop_resource:????
0sequential_dense_biasadd_readvariableop_resource:	?
identity

identity_1??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?*sequential/conv2d_2/BiasAdd/ReadVariableOp?)sequential/conv2d_2/Conv2D/ReadVariableOp?*sequential/conv2d_3/BiasAdd/ReadVariableOp?)sequential/conv2d_3/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W *
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????W 2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????W 2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????+?@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????+?@2
sequential/conv2d_1/Relu?
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp?
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2D?
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOp?
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d_2/BiasAdd?
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d_2/Relu?
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp?
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2D?
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOp?
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????
?2
sequential/conv2d_3/BiasAdd?
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????
?2
sequential/conv2d_3/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ?  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:???????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*:
_output_shapes(
&:?????????@:?????????@*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

Identity_1?
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:???????????: : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:T P
1
_output_shapes
:???????????

_user_specified_namex
?

?
A__inference_dense_layer_call_and_return_conditional_losses_537893

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddl
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????2

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
Ǹ
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_537783

inputs9
&dense_1_matmul_readvariableop_resource:	@?,6
'dense_1_biasadd_readvariableop_resource:	?,T
9conv2d_transpose_conv2d_transpose_readvariableop_resource:? ?
0conv2d_transpose_biasadd_readvariableop_resource:	?W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_1_biasadd_readvariableop_resource:	?V
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@?@
2conv2d_transpose_2_biasadd_readvariableop_resource:@U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_3_biasadd_readvariableop_resource: U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_4_biasadd_readvariableop_resource:
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOp?)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?)conv2d_transpose_3/BiasAdd/ReadVariableOp?2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?)conv2d_transpose_4/BiasAdd/ReadVariableOp?2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@?,*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?,*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????,2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????,2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape?
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack?
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1?
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape/strided_slicet
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/1t
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape/Reshape/shape/2t
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape/Reshape/shape/3?
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape?
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:????????? 2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape?
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack?
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1?
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2 
conv2d_transpose/strided_slicev
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose/stack/1v
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose/stack/2w
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose/stack/3?
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack?
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack?
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1?
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
:? *
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOp?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:????????? ?*
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transpose?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose/BiasAdd?
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:????????? ?2
conv2d_transpose/Relu?
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape?
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack?
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1?
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_1/strided_slicez
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2
conv2d_transpose_1/stack/1z
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_1/stack/2{
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_1/stack/3?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack?
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack?
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1?
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:?????????,@?*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transpose?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOp?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_1/BiasAdd?
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????,@?2
conv2d_transpose_1/Relu?
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape?
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack?
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1?
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_2/strided_slicez
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_2/stack/1{
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_2/stack/3?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack?
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack?
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1?
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:?????????X?@*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transpose?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOp?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_2/BiasAdd?
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????X?@2
conv2d_transpose_2/Relu?
conv2d_transpose_3/ShapeShape%conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape?
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack?
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1?
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_3/strided_slice{
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_3/stack/3?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack?
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack?
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1?
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transpose?
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOp?
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_3/BiasAdd?
conv2d_transpose_3/ReluRelu#conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_transpose_3/Relu?
conv2d_transpose_4/ShapeShape%conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape?
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack?
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1?
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2?
 conv2d_transpose_4/strided_sliceStridedSlice!conv2d_transpose_4/Shape:output:0/conv2d_transpose_4/strided_slice/stack:output:01conv2d_transpose_4/strided_slice/stack_1:output:01conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_4/strided_slice{
conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3?
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack?
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack?
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1?
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2?
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1?
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp?
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transpose?
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOp?
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_transpose_4/BiasAdd?
IdentityIdentity#conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity?
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????@: : : : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_4/BiasAdd/ReadVariableOp)conv2d_transpose_4/BiasAdd/ReadVariableOp2h
2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2conv2d_transpose_4/conv2d_transpose/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?&
?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538060

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
?
?
-__inference_sequential_1_layer_call_fn_534404
input_2
unknown:	@?,
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
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_5343482
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
+:?????????@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????@
!
_user_specified_name	input_2
?
?
@__inference_cvae_layer_call_and_return_conditional_losses_535231
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
@__inference_cvae_layer_call_and_return_conditional_losses_535393
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&:?????????@:?????????@*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *"
fR
__inference_encode_5329882
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference_reparameterize_5330262
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
GPU2*0J 8? *"
fR
__inference_decode_5331472
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????@2

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
?
?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538160

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
??
?$
__inference_train_step_537355
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?%
	unknown_5:??
	unknown_6:	?
	unknown_7:???
	unknown_8:	?
	unknown_9:	@?,

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
&adam_adam_update_7_resourceapplyadam_v:	?;
&adam_adam_update_8_resourceapplyadam_m:???;
&adam_adam_update_8_resourceapplyadam_v:???5
&adam_adam_update_9_resourceapplyadam_m:	?5
&adam_adam_update_9_resourceapplyadam_v:	?:
'adam_adam_update_10_resourceapplyadam_m:	@?,:
'adam_adam_update_10_resourceapplyadam_v:	@?,6
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
?: :@: :@: :??:@:@:??:??:??: :@: :@: :@:?? : :X?@: @:,@?:@?: ?:??: :? :	?,:	@?,:@:@:@: :@: :???:
??:
?:?:??:+?@:@?:W : @:??: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *&
f!R
__forward_compute_loss_5371892
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
?:??: : : @:@:@?:?:??:?:???:?:	@?,:?,:? :?:??:?:@?:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *:
f5R3
1__inference___backward_compute_loss_536756_5371902
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
T0*
_class
loc:@536710*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdam?
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam	unknown_0&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536712*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdam?
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam	unknown_1&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:3^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536714*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdam?
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam	unknown_2&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:4^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536716*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdam?
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam	unknown_3&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:5^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536718*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_4/ResourceApplyAdam?
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam	unknown_4&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:6^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536720*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_5/ResourceApplyAdam?
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam	unknown_5&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:7^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536722*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_6/ResourceApplyAdam?
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam	unknown_6&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:8^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536724*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_7/ResourceApplyAdam?
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam	unknown_7&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:9^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536726*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_8/ResourceApplyAdam?
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam	unknown_8&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:10^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536728*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_9/ResourceApplyAdam?
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam	unknown_9'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:11^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536730*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_10/ResourceApplyAdam?
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam
unknown_10'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:12^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536732*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_11/ResourceApplyAdam?
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam
unknown_11'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:13^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536734*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_12/ResourceApplyAdam?
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam
unknown_12'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:14^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536736*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_13/ResourceApplyAdam?
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam
unknown_13'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:15^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536738*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_14/ResourceApplyAdam?
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam
unknown_14'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:16^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536740*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_15/ResourceApplyAdam?
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam
unknown_15'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:17^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536742*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_16/ResourceApplyAdam?
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam
unknown_16'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:18^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536744*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_17/ResourceApplyAdam?
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdam
unknown_17'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:19^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536746*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_18/ResourceApplyAdam?
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdam
unknown_18'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:20^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536748*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_19/ResourceApplyAdam?
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam
unknown_19'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:21^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536750*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_20/ResourceApplyAdam?
%Adam/Adam/update_21/ResourceApplyAdamResourceApplyAdam
unknown_20'adam_adam_update_21_resourceapplyadam_m'adam_adam_update_21_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:22^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class
loc:@536752*
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
_user_specified_namex:

_class
loc:@536710:

_class
loc:@536710:

_class
loc:@536712:

_class
loc:@536712:

_class
loc:@536714: 

_class
loc:@536714:!

_class
loc:@536716:"

_class
loc:@536716:#

_class
loc:@536718:$

_class
loc:@536718:%

_class
loc:@536720:&

_class
loc:@536720:'

_class
loc:@536722:(

_class
loc:@536722:)

_class
loc:@536724:*

_class
loc:@536724:+

_class
loc:@536726:,

_class
loc:@536726:-

_class
loc:@536728:.

_class
loc:@536728:/

_class
loc:@536730:0

_class
loc:@536730:1

_class
loc:@536732:2

_class
loc:@536732:3

_class
loc:@536734:4

_class
loc:@536734:5

_class
loc:@536736:6

_class
loc:@536736:7

_class
loc:@536738:8

_class
loc:@536738:9

_class
loc:@536740::

_class
loc:@536740:;

_class
loc:@536742:<

_class
loc:@536742:=

_class
loc:@536744:>

_class
loc:@536744:?

_class
loc:@536746:@

_class
loc:@536746:A

_class
loc:@536748:B

_class
loc:@536748:C

_class
loc:@536750:D

_class
loc:@536750:E

_class
loc:@536752:F

_class
loc:@536752"?L
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
StatefulPartitionedCall:0?????????@<
output_20
StatefulPartitionedCall:1?????????@F
output_3:
StatefulPartitionedCall:2???????????tensorflow/serving/predict:??
?
encoder
decoder
	optimizer
loss
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature
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
	variables
trainable_variables
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
	variables
trainable_variables
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
;layer_regularization_losses
	variables
trainable_variables
<non_trainable_variables
=layer_metrics

>layers
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
@	variables
Atrainable_variables
B	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
Gregularization_losses
H	variables
Itrainable_variables
J	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

,kernel
-bias
Sregularization_losses
T	variables
Utrainable_variables
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
Xlayer_regularization_losses
	variables
trainable_variables
Ynon_trainable_variables
Zlayer_metrics

[layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

.kernel
/bias
\regularization_losses
]	variables
^trainable_variables
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
`regularization_losses
a	variables
btrainable_variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
lregularization_losses
m	variables
ntrainable_variables
o	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
tregularization_losses
u	variables
vtrainable_variables
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
ylayer_regularization_losses
	variables
trainable_variables
znon_trainable_variables
{layer_metrics

|layers
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
':% 2conv2d/kernel
: 2conv2d/bias
):' @2conv2d_1/kernel
:@2conv2d_1/bias
*:(@?2conv2d_2/kernel
:?2conv2d_2/bias
+:)??2conv2d_3/kernel
:?2conv2d_3/bias
!:???2dense/kernel
:?2
dense/bias
!:	@?,2dense_1/kernel
:?,2dense_1/bias
2:0? 2conv2d_transpose/kernel
$:"?2conv2d_transpose/bias
5:3??2conv2d_transpose_1/kernel
&:$?2conv2d_transpose_1/bias
4:2@?2conv2d_transpose_2/kernel
%:#@2conv2d_transpose_2/bias
3:1 @2conv2d_transpose_3/kernel
%:# 2conv2d_transpose_3/bias
3:1 2conv2d_transpose_4/kernel
%:#2conv2d_transpose_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
~layer_regularization_losses
@	variables
Atrainable_variables
non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
D	variables
Etrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
H	variables
Itrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
L	variables
Mtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
P	variables
Qtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
T	variables
Utrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 "
trackable_dict_wrapper
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
 ?layer_regularization_losses
]	variables
^trainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
a	variables
btrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
e	variables
ftrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
i	variables
jtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
m	variables
ntrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
q	variables
rtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 ?layer_regularization_losses
u	variables
vtrainable_variables
?non_trainable_variables
?layer_metrics
?layers
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
 "
trackable_dict_wrapper
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
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
/:-@?2Adam/conv2d_2/kernel/m
!:?2Adam/conv2d_2/bias/m
0:.??2Adam/conv2d_3/kernel/m
!:?2Adam/conv2d_3/bias/m
&:$???2Adam/dense/kernel/m
:?2Adam/dense/bias/m
&:$	@?,2Adam/dense_1/kernel/m
 :?,2Adam/dense_1/bias/m
7:5? 2Adam/conv2d_transpose/kernel/m
):'?2Adam/conv2d_transpose/bias/m
::8??2 Adam/conv2d_transpose_1/kernel/m
+:)?2Adam/conv2d_transpose_1/bias/m
9:7@?2 Adam/conv2d_transpose_2/kernel/m
*:(@2Adam/conv2d_transpose_2/bias/m
8:6 @2 Adam/conv2d_transpose_3/kernel/m
*:( 2Adam/conv2d_transpose_3/bias/m
8:6 2 Adam/conv2d_transpose_4/kernel/m
*:(2Adam/conv2d_transpose_4/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
/:-@?2Adam/conv2d_2/kernel/v
!:?2Adam/conv2d_2/bias/v
0:.??2Adam/conv2d_3/kernel/v
!:?2Adam/conv2d_3/bias/v
&:$???2Adam/dense/kernel/v
:?2Adam/dense/bias/v
&:$	@?,2Adam/dense_1/kernel/v
 :?,2Adam/dense_1/bias/v
7:5? 2Adam/conv2d_transpose/kernel/v
):'?2Adam/conv2d_transpose/bias/v
::8??2 Adam/conv2d_transpose_1/kernel/v
+:)?2Adam/conv2d_transpose_1/bias/v
9:7@?2 Adam/conv2d_transpose_2/kernel/v
*:(@2Adam/conv2d_transpose_2/bias/v
8:6 @2 Adam/conv2d_transpose_3/kernel/v
*:( 2Adam/conv2d_transpose_3/bias/v
8:6 2 Adam/conv2d_transpose_4/kernel/v
*:(2Adam/conv2d_transpose_4/bias/v
?2?
%__inference_cvae_layer_call_fn_535018
%__inference_cvae_layer_call_fn_535071
%__inference_cvae_layer_call_fn_535124
%__inference_cvae_layer_call_fn_535177?
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
?2?
@__inference_cvae_layer_call_and_return_conditional_losses_535231
@__inference_cvae_layer_call_and_return_conditional_losses_535285
@__inference_cvae_layer_call_and_return_conditional_losses_535339
@__inference_cvae_layer_call_and_return_conditional_losses_535393?
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
!__inference__wrapped_model_533227input_1"?
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
?2?
__inference_call_535627
__inference_call_535681?
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
__inference_compute_loss_535783
__inference_compute_loss_536065?
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
__inference_decode_536185
__inference_decode_536305
__inference_decode_536425?
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
__inference_encode_536469
__inference_encode_536513
__inference_encode_536557?
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
!__inference_reparameterize_536573
!__inference_reparameterize_536589
!__inference_reparameterize_536605?
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
__inference_train_step_537355?
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
+__inference_sequential_layer_call_fn_533350
+__inference_sequential_layer_call_fn_537380
+__inference_sequential_layer_call_fn_537405
+__inference_sequential_layer_call_fn_533511?
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
F__inference_sequential_layer_call_and_return_conditional_losses_537445
F__inference_sequential_layer_call_and_return_conditional_losses_537485
F__inference_sequential_layer_call_and_return_conditional_losses_533541
F__inference_sequential_layer_call_and_return_conditional_losses_533571?
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
-__inference_sequential_1_layer_call_fn_534221
-__inference_sequential_1_layer_call_fn_537514
-__inference_sequential_1_layer_call_fn_537543
-__inference_sequential_1_layer_call_fn_534404?
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_537663
H__inference_sequential_1_layer_call_and_return_conditional_losses_537783
H__inference_sequential_1_layer_call_and_return_conditional_losses_534439
H__inference_sequential_1_layer_call_and_return_conditional_losses_534474?
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
$__inference_signature_wrapper_534965input_1"?
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
'__inference_conv2d_layer_call_fn_537792?
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
B__inference_conv2d_layer_call_and_return_conditional_losses_537803?
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
)__inference_conv2d_1_layer_call_fn_537812?
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_537823?
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
)__inference_conv2d_2_layer_call_fn_537832?
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_537843?
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
)__inference_conv2d_3_layer_call_fn_537852?
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_537863?
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
(__inference_flatten_layer_call_fn_537868?
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
C__inference_flatten_layer_call_and_return_conditional_losses_537874?
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
&__inference_dense_layer_call_fn_537883?
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
A__inference_dense_layer_call_and_return_conditional_losses_537893?
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
(__inference_dense_1_layer_call_fn_537902?
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
C__inference_dense_1_layer_call_and_return_conditional_losses_537913?
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
(__inference_reshape_layer_call_fn_537918?
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
C__inference_reshape_layer_call_and_return_conditional_losses_537932?
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
1__inference_conv2d_transpose_layer_call_fn_537941
1__inference_conv2d_transpose_layer_call_fn_537950?
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
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537984
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_538008?
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
3__inference_conv2d_transpose_1_layer_call_fn_538017
3__inference_conv2d_transpose_1_layer_call_fn_538026?
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
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538060
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538084?
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
3__inference_conv2d_transpose_2_layer_call_fn_538093
3__inference_conv2d_transpose_2_layer_call_fn_538102?
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
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538136
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538160?
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
3__inference_conv2d_transpose_3_layer_call_fn_538169
3__inference_conv2d_transpose_3_layer_call_fn_538178?
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
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538212
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538236?
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
3__inference_conv2d_transpose_4_layer_call_fn_538245
3__inference_conv2d_transpose_4_layer_call_fn_538254?
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
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538287
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538310?
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
!__inference__wrapped_model_533227?$%&'()*+,-./0123456789:?7
0?-
+?(
input_1???????????
? "???
.
output_1"?
output_1?????????@
.
output_2"?
output_2?????????@
8
output_3,?)
output_3????????????
__inference_call_535627?$%&'()*+,-./0123456789+?(
!?
?
x??
? "I?F
?
0@
?
1@
?
2???
__inference_call_535681?$%&'()*+,-./01234567894?1
*?'
%?"
x???????????
? "d?a
?
0?????????@
?
1?????????@
%?"
2???????????q
__inference_compute_loss_535783N$%&'()*+,-./0123456789+?(
!?
?
x??
? "? q
__inference_compute_loss_536065N$%&'()*+,-./0123456789+?(
!?
?
x@??
? "? ?
D__inference_conv2d_1_layer_call_and_return_conditional_losses_537823l&'7?4
-?*
(?%
inputs?????????W 
? "-?*
#? 
0?????????+?@
? ?
)__inference_conv2d_1_layer_call_fn_537812_&'7?4
-?*
(?%
inputs?????????W 
? " ??????????+?@?
D__inference_conv2d_2_layer_call_and_return_conditional_losses_537843m()7?4
-?*
(?%
inputs?????????+?@
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_2_layer_call_fn_537832`()7?4
-?*
(?%
inputs?????????+?@
? "!????????????
D__inference_conv2d_3_layer_call_and_return_conditional_losses_537863n*+8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????
?
? ?
)__inference_conv2d_3_layer_call_fn_537852a*+8?5
.?+
)?&
inputs??????????
? "!??????????
??
B__inference_conv2d_layer_call_and_return_conditional_losses_537803n$%9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????W 
? ?
'__inference_conv2d_layer_call_fn_537792a$%9?6
/?,
*?'
inputs???????????
? " ??????????W ?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538060?23J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_538084n238?5
.?+
)?&
inputs????????? ?
? ".?+
$?!
0?????????,@?
? ?
3__inference_conv2d_transpose_1_layer_call_fn_538017?23J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
3__inference_conv2d_transpose_1_layer_call_fn_538026a238?5
.?+
)?&
inputs????????? ?
? "!??????????,@??
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538136?45J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_538160n458?5
.?+
)?&
inputs?????????,@?
? ".?+
$?!
0?????????X?@
? ?
3__inference_conv2d_transpose_2_layer_call_fn_538093?45J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
3__inference_conv2d_transpose_2_layer_call_fn_538102a458?5
.?+
)?&
inputs?????????,@?
? "!??????????X?@?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538212?67I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
N__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_538236o678?5
.?+
)?&
inputs?????????X?@
? "/?,
%?"
0??????????? 
? ?
3__inference_conv2d_transpose_3_layer_call_fn_538169?67I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
3__inference_conv2d_transpose_3_layer_call_fn_538178b678?5
.?+
)?&
inputs?????????X?@
? ""???????????? ?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538287?89I?F
??<
:?7
inputs+??????????????????????????? 
? "??<
5?2
0+???????????????????????????
? ?
N__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_538310p899?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
3__inference_conv2d_transpose_4_layer_call_fn_538245?89I?F
??<
:?7
inputs+??????????????????????????? 
? "2?/+????????????????????????????
3__inference_conv2d_transpose_4_layer_call_fn_538254c899?6
/?,
*?'
inputs??????????? 
? ""?????????????
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_537984?01I?F
??<
:?7
inputs+??????????????????????????? 
? "@?=
6?3
0,????????????????????????????
? ?
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_538008m017?4
-?*
(?%
inputs????????? 
? ".?+
$?!
0????????? ?
? ?
1__inference_conv2d_transpose_layer_call_fn_537941?01I?F
??<
:?7
inputs+??????????????????????????? 
? "3?0,?????????????????????????????
1__inference_conv2d_transpose_layer_call_fn_537950`017?4
-?*
(?%
inputs????????? 
? "!?????????? ??
@__inference_cvae_layer_call_and_return_conditional_losses_535231?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p 
? "t?q
j?g
?
0/0?????????@
?
0/1?????????@
'?$
0/2???????????
? ?
@__inference_cvae_layer_call_and_return_conditional_losses_535285?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p
? "t?q
j?g
?
0/0?????????@
?
0/1?????????@
'?$
0/2???????????
? ?
@__inference_cvae_layer_call_and_return_conditional_losses_535339?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p 
? "t?q
j?g
?
0/0?????????@
?
0/1?????????@
'?$
0/2???????????
? ?
@__inference_cvae_layer_call_and_return_conditional_losses_535393?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p
? "t?q
j?g
?
0/0?????????@
?
0/1?????????@
'?$
0/2???????????
? ?
%__inference_cvae_layer_call_fn_535018?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p 
? "d?a
?
0?????????@
?
1?????????@
%?"
2????????????
%__inference_cvae_layer_call_fn_535071?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p 
? "d?a
?
0?????????@
?
1?????????@
%?"
2????????????
%__inference_cvae_layer_call_fn_535124?$%&'()*+,-./01234567898?5
.?+
%?"
x???????????
p
? "d?a
?
0?????????@
?
1?????????@
%?"
2????????????
%__inference_cvae_layer_call_fn_535177?$%&'()*+,-./0123456789>?;
4?1
+?(
input_1???????????
p
? "d?a
?
0?????????@
?
1?????????@
%?"
2???????????m
__inference_decode_536185P./0123456789%?"
?
?
z@
p 
? "???m
__inference_decode_536305P./0123456789%?"
?
?
z@@
p 
? "?@??
__inference_decode_536425b./0123456789.?+
$?!
?
z?????????@
p 
? ""?????????????
C__inference_dense_1_layer_call_and_return_conditional_losses_537913].//?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????,
? |
(__inference_dense_1_layer_call_fn_537902P.//?,
%?"
 ?
inputs?????????@
? "???????????,?
A__inference_dense_layer_call_and_return_conditional_losses_537893_,-1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? |
&__inference_dense_layer_call_fn_537883R,-1?.
'?$
"?
inputs???????????
? "????????????
__inference_encode_536469f
$%&'()*+,-+?(
!?
?
x??
? "+?(
?
0@
?
1@?
__inference_encode_536513f
$%&'()*+,-+?(
!?
?
x@??
? "+?(
?
0@@
?
1@@?
__inference_encode_536557?
$%&'()*+,-4?1
*?'
%?"
x???????????
? "=?:
?
0?????????@
?
1?????????@?
C__inference_flatten_layer_call_and_return_conditional_losses_537874c8?5
.?+
)?&
inputs?????????
?
? "'?$
?
0???????????
? ?
(__inference_flatten_layer_call_fn_537868V8?5
.?+
)?&
inputs?????????
?
? "????????????u
!__inference_reparameterize_536573P=?:
3?0
?
mean@
?
logvar@
? "?@u
!__inference_reparameterize_536589P=?:
3?0
?
mean@@
?
logvar@@
? "?@@?
!__inference_reparameterize_536605kO?L
E?B
?
mean?????????@
 ?
logvar?????????@
? "??????????@?
C__inference_reshape_layer_call_and_return_conditional_losses_537932a0?-
&?#
!?
inputs??????????,
? "-?*
#? 
0????????? 
? ?
(__inference_reshape_layer_call_fn_537918T0?-
&?#
!?
inputs??????????,
? " ?????????? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534439y./01234567898?5
.?+
!?
input_2?????????@
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_534474y./01234567898?5
.?+
!?
input_2?????????@
p

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_537663x./01234567897?4
-?*
 ?
inputs?????????@
p 

 
? "/?,
%?"
0???????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_537783x./01234567897?4
-?*
 ?
inputs?????????@
p

 
? "/?,
%?"
0???????????
? ?
-__inference_sequential_1_layer_call_fn_534221l./01234567898?5
.?+
!?
input_2?????????@
p 

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_534404l./01234567898?5
.?+
!?
input_2?????????@
p

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_537514k./01234567897?4
-?*
 ?
inputs?????????@
p 

 
? ""?????????????
-__inference_sequential_1_layer_call_fn_537543k./01234567897?4
-?*
 ?
inputs?????????@
p

 
? ""?????????????
F__inference_sequential_layer_call_and_return_conditional_losses_533541x
$%&'()*+,-B??
8?5
+?(
input_1???????????
p 

 
? "&?#
?
0??????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_533571x
$%&'()*+,-B??
8?5
+?(
input_1???????????
p

 
? "&?#
?
0??????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_537445w
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p 

 
? "&?#
?
0??????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_537485w
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p

 
? "&?#
?
0??????????
? ?
+__inference_sequential_layer_call_fn_533350k
$%&'()*+,-B??
8?5
+?(
input_1???????????
p 

 
? "????????????
+__inference_sequential_layer_call_fn_533511k
$%&'()*+,-B??
8?5
+?(
input_1???????????
p

 
? "????????????
+__inference_sequential_layer_call_fn_537380j
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p 

 
? "????????????
+__inference_sequential_layer_call_fn_537405j
$%&'()*+,-A?>
7?4
*?'
inputs???????????
p

 
? "????????????
$__inference_signature_wrapper_534965?$%&'()*+,-./0123456789E?B
? 
;?8
6
input_1+?(
input_1???????????"???
.
output_1"?
output_1?????????@
.
output_2"?
output_2?????????@
8
output_3,?)
output_3????????????
__inference_train_step_537355?r$%&'()*+,-./0123456789# !????????????????????????????????????????????+?(
!?
?
x??
? "?

loss?

loss 