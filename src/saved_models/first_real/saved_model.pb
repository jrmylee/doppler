’2
Õ¦
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
Ą
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8¬0
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

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

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
¬*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	,*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	,*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:,*
dtype0

conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameconv2d_transpose/kernel

+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*'
_output_shapes
: *
dtype0

conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_1/kernel

-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_2/kernel

-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*'
_output_shapes
:@*
dtype0

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

conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @**
shared_nameconv2d_transpose_3/kernel

-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
: @*
dtype0

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

conv2d_transpose_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_4/kernel

-conv2d_transpose_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_4/kernel*&
_output_shapes
: *
dtype0

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

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/m

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

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0

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

Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_2/kernel/m

*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/m
z
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
¬*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	,*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	,*
dtype0

Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*$
shared_nameAdam/dense_1/bias/m
x
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes	
:,*
dtype0
”
Adam/conv2d_transpose/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose/kernel/m

2Adam/conv2d_transpose/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/m*'
_output_shapes
: *
dtype0

Adam/conv2d_transpose/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/m

0Adam/conv2d_transpose/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/m*
_output_shapes	
:*
dtype0
¦
 Adam/conv2d_transpose_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/m

4Adam/conv2d_transpose_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv2d_transpose_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/m

2Adam/conv2d_transpose_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/m*
_output_shapes	
:*
dtype0
„
 Adam/conv2d_transpose_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_2/kernel/m

4Adam/conv2d_transpose_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv2d_transpose_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/m

2Adam/conv2d_transpose_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/m*
_output_shapes
:@*
dtype0
¤
 Adam/conv2d_transpose_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_3/kernel/m

4Adam/conv2d_transpose_3/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_transpose_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_3/bias/m

2Adam/conv2d_transpose_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/m*
_output_shapes
: *
dtype0
¤
 Adam/conv2d_transpose_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_4/kernel/m

4Adam/conv2d_transpose_4/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_transpose_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/m

2Adam/conv2d_transpose_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv2d/kernel/v

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

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0

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

Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_2/kernel/v

*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_2/bias/v
z
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
¬*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	,*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	,*
dtype0

Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:,*$
shared_nameAdam/dense_1/bias/v
x
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes	
:,*
dtype0
”
Adam/conv2d_transpose/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose/kernel/v

2Adam/conv2d_transpose/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/kernel/v*'
_output_shapes
: *
dtype0

Adam/conv2d_transpose/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/conv2d_transpose/bias/v

0Adam/conv2d_transpose/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose/bias/v*
_output_shapes	
:*
dtype0
¦
 Adam/conv2d_transpose_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_1/kernel/v

4Adam/conv2d_transpose_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_1/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv2d_transpose_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_1/bias/v

2Adam/conv2d_transpose_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_1/bias/v*
_output_shapes	
:*
dtype0
„
 Adam/conv2d_transpose_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_2/kernel/v

4Adam/conv2d_transpose_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_2/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv2d_transpose_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name Adam/conv2d_transpose_2/bias/v

2Adam/conv2d_transpose_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_2/bias/v*
_output_shapes
:@*
dtype0
¤
 Adam/conv2d_transpose_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*1
shared_name" Adam/conv2d_transpose_3/kernel/v

4Adam/conv2d_transpose_3/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_3/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_transpose_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/conv2d_transpose_3/bias/v

2Adam/conv2d_transpose_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_3/bias/v*
_output_shapes
: *
dtype0
¤
 Adam/conv2d_transpose_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_4/kernel/v

4Adam/conv2d_transpose_4/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_4/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_transpose_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/conv2d_transpose_4/bias/v

2Adam/conv2d_transpose_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_4/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
šs
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*«s
value”sBs Bs

encoder
decoder
	optimizer
loss
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
¢
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
trainable_variables
	variables
regularization_losses
	keras_api
É
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
trainable_variables
	variables
regularization_losses
	keras_api
ų
iter

 beta_1

!beta_2
	"decay
#learning_rate$m¾%mæ&mĄ'mĮ(mĀ)mĆ*mÄ+mÅ,mĘ-mĒ.mČ/mÉ0mŹ1mĖ2mĢ3mĶ4mĪ5mĻ6mŠ7mŃ8mŅ9mÓ$vŌ%vÕ&vÖ'v×(vŲ)vŁ*vŚ+vŪ,vÜ-vŻ.vŽ/vß0vą1vį2vā3vć4vä5vå6vę7vē8vč9vé
 
¦
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
¦
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
 
­
trainable_variables
:layer_regularization_losses
;metrics
<layer_metrics
	variables

=layers
regularization_losses
>non_trainable_variables
 
h

$kernel
%bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
h

&kernel
'bias
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
h

(kernel
)bias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
h

*kernel
+bias
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
R
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
h

,kernel
-bias
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
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
 
­
trainable_variables
Wlayer_regularization_losses
Xmetrics
Ylayer_metrics
	variables

Zlayers
regularization_losses
[non_trainable_variables
h

.kernel
/bias
\trainable_variables
]	variables
^regularization_losses
_	keras_api
R
`trainable_variables
a	variables
bregularization_losses
c	keras_api
h

0kernel
1bias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
h

2kernel
3bias
htrainable_variables
i	variables
jregularization_losses
k	keras_api
h

4kernel
5bias
ltrainable_variables
m	variables
nregularization_losses
o	keras_api
h

6kernel
7bias
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
h

8kernel
9bias
ttrainable_variables
u	variables
vregularization_losses
w	keras_api
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
 
­
trainable_variables
xlayer_regularization_losses
ymetrics
zlayer_metrics
	variables

{layers
regularization_losses
|non_trainable_variables
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
SQ
VARIABLE_VALUEconv2d/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEconv2d/bias0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_1/kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_1/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_2/kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_2/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d_3/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEconv2d_3/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEdense/kernel0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUE
dense/bias0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_1/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_1/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEconv2d_transpose/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_1/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_1/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_2/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_2/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_3/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_3/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEconv2d_transpose_4/kernel1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEconv2d_transpose_4/bias1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
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
 
Æ
?trainable_variables
}layer_regularization_losses
~metrics
layer_metrics
@	variables
layers
Aregularization_losses
non_trainable_variables

&0
'1

&0
'1
 
²
Ctrainable_variables
 layer_regularization_losses
metrics
layer_metrics
D	variables
layers
Eregularization_losses
non_trainable_variables

(0
)1

(0
)1
 
²
Gtrainable_variables
 layer_regularization_losses
metrics
layer_metrics
H	variables
layers
Iregularization_losses
non_trainable_variables

*0
+1

*0
+1
 
²
Ktrainable_variables
 layer_regularization_losses
metrics
layer_metrics
L	variables
layers
Mregularization_losses
non_trainable_variables
 
 
 
²
Otrainable_variables
 layer_regularization_losses
metrics
layer_metrics
P	variables
layers
Qregularization_losses
non_trainable_variables

,0
-1

,0
-1
 
²
Strainable_variables
 layer_regularization_losses
metrics
layer_metrics
T	variables
layers
Uregularization_losses
non_trainable_variables
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
 
²
\trainable_variables
 layer_regularization_losses
metrics
layer_metrics
]	variables
layers
^regularization_losses
non_trainable_variables
 
 
 
²
`trainable_variables
  layer_regularization_losses
”metrics
¢layer_metrics
a	variables
£layers
bregularization_losses
¤non_trainable_variables

00
11

00
11
 
²
dtrainable_variables
 „layer_regularization_losses
¦metrics
§layer_metrics
e	variables
Ølayers
fregularization_losses
©non_trainable_variables

20
31

20
31
 
²
htrainable_variables
 Ŗlayer_regularization_losses
«metrics
¬layer_metrics
i	variables
­layers
jregularization_losses
®non_trainable_variables

40
51

40
51
 
²
ltrainable_variables
 Ælayer_regularization_losses
°metrics
±layer_metrics
m	variables
²layers
nregularization_losses
³non_trainable_variables

60
71

60
71
 
²
ptrainable_variables
 “layer_regularization_losses
µmetrics
¶layer_metrics
q	variables
·layers
rregularization_losses
ønon_trainable_variables

80
91

80
91
 
²
ttrainable_variables
 ¹layer_regularization_losses
ŗmetrics
»layer_metrics
u	variables
¼layers
vregularization_losses
½non_trainable_variables
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
 
vt
VARIABLE_VALUEAdam/conv2d/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_3/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_3/bias/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense/kernel/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense/bias/mLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_1/kernel/mMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_1/bias/mMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose/kernel/mMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_transpose/bias/mMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/mMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/mMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/mMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/mMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/mMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_3/bias/mMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/mMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_4/bias/mMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/conv2d/bias/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_1/kernel/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_1/bias/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_2/kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_2/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d_3/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/conv2d_3/bias/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/dense/kernel/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdam/dense/bias/vLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense_1/kernel/vMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/dense_1/bias/vMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose/kernel/vMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_transpose/bias/vMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_1/kernel/vMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_1/bias/vMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_2/kernel/vMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_2/bias/vMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_3/kernel/vMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_3/bias/vMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_4/kernel/vMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/conv2d_transpose_4/bias/vMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*1
_output_shapes
:’’’’’’’’’°*
dtype0*&
shape:’’’’’’’’’°
Ę
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasconv2d_transpose/kernelconv2d_transpose/biasconv2d_transpose_1/kernelconv2d_transpose_1/biasconv2d_transpose_2/kernelconv2d_transpose_2/biasconv2d_transpose_3/kernelconv2d_transpose_3/biasconv2d_transpose_4/kernelconv2d_transpose_4/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_14777
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

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
GPU2*0J 8 *'
f"R 
__inference__traced_save_18356
ō
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_18579Ų-
&

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17944

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¦ 
ģ
E__inference_sequential_layer_call_and_return_conditional_losses_13353
input_1&
conv2d_13326: 
conv2d_13328: (
conv2d_1_13331: @
conv2d_1_13333:@)
conv2d_2_13336:@
conv2d_2_13338:	*
conv2d_3_13341:
conv2d_3_13343:	
dense_13347:
¬
dense_13349:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_13326conv2d_13328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_130572 
conv2d/StatefulPartitionedCall½
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_13331conv2d_1_13333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_130742"
 conv2d_1/StatefulPartitionedCallĄ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_13336conv2d_2_13338*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_130912"
 conv2d_2/StatefulPartitionedCallĄ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_13341conv2d_3_13343*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_131082"
 conv2d_3/StatefulPartitionedCallų
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:’’’’’’’’’¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_131202
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13347dense_13349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_131322
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityų
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
£

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17968

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’X@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’,@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’,@
 
_user_specified_nameinputs
²*
õ
G__inference_sequential_1_layer_call_and_return_conditional_losses_14160

inputs 
dense_1_14128:	,
dense_1_14130:	,1
conv2d_transpose_14134: %
conv2d_transpose_14136:	4
conv2d_transpose_1_14139:'
conv2d_transpose_1_14141:	3
conv2d_transpose_2_14144:@&
conv2d_transpose_2_14146:@2
conv2d_transpose_3_14149: @&
conv2d_transpose_3_14151: 2
conv2d_transpose_4_14154: &
conv2d_transpose_4_14156:
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall¢*conv2d_transpose_3/StatefulPartitionedCall¢*conv2d_transpose_4/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_14128dense_1_14130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_138392!
dense_1/StatefulPartitionedCallż
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_138592
reshape/PartitionedCallß
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_14134conv2d_transpose_14136*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_138842*
(conv2d_transpose/StatefulPartitionedCallś
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_14139conv2d_transpose_1_14141*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_139132,
*conv2d_transpose_1/StatefulPartitionedCallü
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_14144conv2d_transpose_2_14146*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’X@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_139422,
*conv2d_transpose_2/StatefulPartitionedCallż
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_14149conv2d_transpose_3_14151*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’° *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_139712,
*conv2d_transpose_3/StatefulPartitionedCallż
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_14154conv2d_transpose_4_14156*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_139992,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

IdentityĻ
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¶
Ō
__inference_call_15493
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
¶
Ŗ
2__inference_conv2d_transpose_1_layer_call_fn_17834

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_139132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’,@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs

ł
1__inference___backward_reparameterize_16839_16864
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
gradients/grad_ys_0 
gradients/mul_1_grad/MulMulgradients/grad_ys_0:output:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul°
gradients/mul_1_grad/Mul_1Mulgradients/grad_ys_0:output:0(gradients_mul_1_grad_mul_1_random_normal*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul_1
gradients/Exp_grad/mulMulgradients/mul_1_grad/Mul_1:z:0gradients_mul_1_grad_mul_exp*
T0*
_output_shapes

:2
gradients/Exp_grad/mul«
+gradients/mul_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      2-
+gradients/mul_grad/BroadcastGradientArgs/s0
+gradients/mul_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2-
+gradients/mul_grad/BroadcastGradientArgs/s1
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgs4gradients/mul_grad/BroadcastGradientArgs/s0:output:04gradients/mul_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’2*
(gradients/mul_grad/BroadcastGradientArgs
gradients/mul_grad/MulMulgradients/Exp_grad/mul:z:0gradients_mul_grad_mul_mul_y*
T0*
_output_shapes

:2
gradients/mul_grad/Mul”
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_logvargradients/Exp_grad/mul:z:0*
T0*
_output_shapes

:2
gradients/mul_grad/Mul_1„
(gradients/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/mul_grad/Sum/reduction_indices©
gradients/mul_grad/SumSumgradients/mul_grad/Mul_1:z:01gradients/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Sum
 gradients/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/mul_grad/Reshape/shape
"gradients/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_grad/Reshape/shape_1²
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
forward_function_name __forward_reparameterize_16863:$  

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
īķ
ó
__forward_decode_16797
z_0F
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
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
z¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp§
sequential_1/dense_1/MatMulMatMulz_02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpĶ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeĪ
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape£
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpķ
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: 2'
%sequential_1/conv2d_transpose/BiasAdd²
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: 2$
"sequential_1/conv2d_transpose/Relu§
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@2)
'sequential_1/conv2d_transpose_1/BiasAddø
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@2&
$sequential_1/conv2d_transpose_1/Relu§
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @      2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X@2)
'sequential_1/conv2d_transpose_2/BiasAddø
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X@2&
$sequential_1/conv2d_transpose_2/Relu§
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X      @   2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:° 2)
'sequential_1/conv2d_transpose_3/BiasAdd¹
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:° 2&
$sequential_1/conv2d_transpose_3/Relu§
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   °          2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"
?sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_1_relu2sequential_1/conv2d_transpose_1/Relu:activations:0"
?sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_2_relu2sequential_1/conv2d_transpose_2/Relu:activations:0"
?sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0"Z
$sequential_1_conv2d_transpose_3_relu2sequential_1/conv2d_transpose_3/Relu:activations:0"
?sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableopGsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0"
=sequential_1_conv2d_transpose_conv2d_transpose_readvariableopEsequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0"V
"sequential_1_conv2d_transpose_relu0sequential_1/conv2d_transpose/Relu:activations:0"`
*sequential_1_dense_1_matmul_readvariableop2sequential_1/dense_1/MatMul/ReadVariableOp:value:0"D
sequential_1_dense_1_relu'sequential_1/dense_1/Relu:activations:0"E
sequential_1_reshape_reshape%sequential_1/reshape/Reshape:output:0"
zz_0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : *E
backward_function_name+)__inference___backward_decode_16737_167982l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
¦

M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_18044

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :°2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpą
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’° 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’X@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’X@
 
_user_specified_nameinputs
ģ^
Ä
__forward_compute_loss_16997
x_0!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

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
statefulpartitionedcall_12¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2
StatefulPartitionedCallStatefulPartitionedCallx_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *ķ
_output_shapesŚ
×::: :
¬:
¬:
:::+?@:@:W : @:°: *,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__forward_encode_169362
StatefulPartitionedCall
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
GPU2*0J 8 *'
f"R 
__forward_reparameterize_168632
StatefulPartitionedCall_1ę
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
 *
_output_shapesō
ń:°:° : :X@: @:,@:@: :: : :	,:	,:*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__forward_decode_167972
StatefulPartitionedCall_2­
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   °         2*
(logistic_loss/zeros_like/shape_as_tensor
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/ConstĖ
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:°2
logistic_loss/zeros_likeĀ
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/GreaterEqualŠ
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/NegČ
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select_1
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x_0*
T0*(
_output_shapes
:°2
logistic_loss/mul
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:°2
logistic_loss/sub
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:°2
logistic_loss/Log1p
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:°2
logistic_loss
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
 *ŪÉ@2
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
 *   2
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
 *   æ2	
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
 *ŪÉ@2	
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
 *   æ2	
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

Identity 
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
@:°: : : : : : : : : : : : : : : : : : : : : : *K
backward_function_name1/__inference___backward_compute_loss_16568_1699822
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:°

_user_specified_namex
č
^
B__inference_flatten_layer_call_and_return_conditional_losses_13120

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’
:X T
0
_output_shapes
:’’’’’’’’’

 
_user_specified_nameinputs
ń

?__inference_cvae_layer_call_and_return_conditional_losses_15205
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Č
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
Ęø
ś
G__inference_sequential_1_layer_call_and_return_conditional_losses_17471

inputs9
&dense_1_matmul_readvariableop_resource:	,6
'dense_1_biasadd_readvariableop_resource:	,T
9conv2d_transpose_conv2d_transpose_readvariableop_resource: ?
0conv2d_transpose_biasadd_readvariableop_resource:	W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_1_biasadd_readvariableop_resource:	V
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@@
2conv2d_transpose_2_biasadd_readvariableop_resource:@U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_3_biasadd_readvariableop_resource: U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_2/BiasAdd/ReadVariableOp¢2conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_3/BiasAdd/ReadVariableOp¢2conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_4/BiasAdd/ReadVariableOp¢2conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/MatMul„
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
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
reshape/Reshape/shape/3ź
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape£
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2Č
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
B :2
conv2d_transpose/stack/3ų
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2Ņ
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ē
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpµ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transposeĄ
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp×
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
conv2d_transpose/BiasAdd
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
conv2d_transpose/Relu
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ō
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
B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Ž
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ī
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpČ
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeĘ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpß
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
conv2d_transpose_1/BiasAdd
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
conv2d_transpose_1/Relu
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2Ō
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
B :2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_2/stack/3
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack¢
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1¢
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2Ž
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1ķ
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpŹ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transposeÅ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOpß
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
conv2d_transpose_2/BiasAdd
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
conv2d_transpose_2/Relu
conv2d_transpose_3/ShapeShape%conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2Ō
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
B :°2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_3/stack/3
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack¢
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1¢
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2Ž
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1ģ
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpĖ
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transposeÅ
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOpą
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
conv2d_transpose_3/BiasAdd
conv2d_transpose_3/ReluRelu#conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
conv2d_transpose_3/Relu
conv2d_transpose_4/ShapeShape%conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2Ō
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
B :°2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack¢
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1¢
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2Ž
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ģ
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpĖ
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeÅ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpą
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2
conv2d_transpose_4/BiasAdd
IdentityIdentity#conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityš
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2R
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
:’’’’’’’’’
 
_user_specified_nameinputs
”

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17816

inputsC
(conv2d_transpose_readvariableop_resource: .
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
ģ
ś
A__inference_conv2d_layer_call_and_return_conditional_losses_17611

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’W 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’°: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
ź
ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17631

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’+?@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’W 
 
_user_specified_nameinputs
Ā

M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_18118

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :°2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpą
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’° : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’° 
 
_user_specified_nameinputs
»
Æ
#__inference_signature_wrapper_14777
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall
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
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_130392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
¶
Ō
__inference_call_12988
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
&

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_13597

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ļß
ž
__inference_decode_12959
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp®
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpÖ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape×
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2
sequential_1/reshape/Reshape
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpö
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2'
%sequential_1/conv2d_transpose/BiasAdd»
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2$
"sequential_1/conv2d_transpose/Relu®
%sequential_1/conv2d_transpose_1/ShapeShape0sequential_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2)
'sequential_1/conv2d_transpose_1/BiasAddĮ
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2&
$sequential_1/conv2d_transpose_1/Relu°
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2)
'sequential_1/conv2d_transpose_2/BiasAddĮ
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2&
$sequential_1/conv2d_transpose_2/Relu°
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2)
'sequential_1/conv2d_transpose_3/BiasAddĀ
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2&
$sequential_1/conv2d_transpose_3/Relu°
%sequential_1/conv2d_transpose_4/ShapeShape2sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:J F
'
_output_shapes
:’’’’’’’’’

_user_specified_namez
Äd
Å	
)__inference___backward_encode_16877_16937
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

:2
gradients/grad_ys_0n
gradients/grad_ys_1Identityplaceholder_1*
T0*
_output_shapes

:2
gradients/grad_ys_1į
gradients/split_grad/concatConcatV2gradients/grad_ys_0:output:0gradients/grad_ys_1:output:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_grad/concatÄ
3gradients/sequential/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:25
3gradients/sequential/dense/BiasAdd_grad/BiasAddGrad¢
-gradients/sequential/dense/MatMul_grad/MatMulMatMul$gradients/split_grad/concat:output:0Tgradients_sequential_dense_matmul_grad_matmul_sequential_dense_matmul_readvariableop*
T0* 
_output_shapes
:
¬*
transpose_b(2/
-gradients/sequential/dense/MatMul_grad/MatMul
/gradients/sequential/dense/MatMul_grad/MatMul_1MatMulJgradients_sequential_dense_matmul_grad_matmul_1_sequential_flatten_reshape$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
¬*
transpose_a(21
/gradients/sequential/dense/MatMul_grad/MatMul_1»
/gradients/sequential/flatten/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   
         21
/gradients/sequential/flatten/Reshape_grad/Shape
1gradients/sequential/flatten/Reshape_grad/ReshapeReshape7gradients/sequential/dense/MatMul_grad/MatMul:product:08gradients/sequential/flatten/Reshape_grad/Shape:output:0*
T0*'
_output_shapes
:
23
1gradients/sequential/flatten/Reshape_grad/Reshape©
0gradients/sequential/conv2d_3/Relu_grad/ReluGradReluGrad:gradients/sequential/flatten/Reshape_grad/Reshape:output:0Igradients_sequential_conv2d_3_relu_grad_relugrad_sequential_conv2d_3_relu*
T0*'
_output_shapes
:
22
0gradients/sequential/conv2d_3/Relu_grad/ReluGradć
6gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:28
6gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGradÉ
0gradients/sequential/conv2d_3/Conv2D_grad/ShapeNShapeNIgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_reluZgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_3_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_3/Conv2D_grad/ShapeNÅ
=gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_3/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_3_conv2d_readvariableop<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:*
paddingVALID*
strides
2?
=gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInputø
>gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterIgradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_relu9gradients/sequential/conv2d_3/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_3/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilterµ
0gradients/sequential/conv2d_2/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropInput:output:0Igradients_sequential_conv2d_3_conv2d_grad_shapen_sequential_conv2d_2_relu*
T0*'
_output_shapes
:22
0gradients/sequential/conv2d_2/Relu_grad/ReluGradć
6gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:28
6gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGradÉ
0gradients/sequential/conv2d_2/Conv2D_grad/ShapeNShapeNIgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_reluZgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_2_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_2/Conv2D_grad/ShapeNÄ
=gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_2/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_2_conv2d_readvariableop<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2?
=gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInput·
>gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterIgradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_relu9gradients/sequential/conv2d_2/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_2/Relu_grad/ReluGrad:backprops:0*
T0*'
_output_shapes
:@*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilter“
0gradients/sequential/conv2d_1/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropInput:output:0Igradients_sequential_conv2d_2_conv2d_grad_shapen_sequential_conv2d_1_relu*
T0*&
_output_shapes
:+?@22
0gradients/sequential/conv2d_1/Relu_grad/ReluGradā
6gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@28
6gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGradĒ
0gradients/sequential/conv2d_1/Conv2D_grad/ShapeNShapeNGgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_reluZgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_1_conv2d_readvariableop*
N*
T0* 
_output_shapes
::22
0gradients/sequential/conv2d_1/Conv2D_grad/ShapeNÄ
=gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput9gradients/sequential/conv2d_1/Conv2D_grad/ShapeN:output:0Zgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_1_conv2d_readvariableop<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2?
=gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInput“
>gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterGgradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_relu9gradients/sequential/conv2d_1/Conv2D_grad/ShapeN:output:1<gradients/sequential/conv2d_1/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: @*
paddingVALID*
strides
2@
>gradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilter®
.gradients/sequential/conv2d/Relu_grad/ReluGradReluGradFgradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropInput:output:0Ggradients_sequential_conv2d_1_conv2d_grad_shapen_sequential_conv2d_relu*
T0*&
_output_shapes
:W 20
.gradients/sequential/conv2d/Relu_grad/ReluGradÜ
4gradients/sequential/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 26
4gradients/sequential/conv2d/BiasAdd_grad/BiasAddGradØ
.gradients/sequential/conv2d/Conv2D_grad/ShapeNShapeN0gradients_sequential_conv2d_conv2d_grad_shapen_xVgradients_sequential_conv2d_conv2d_grad_shapen_sequential_conv2d_conv2d_readvariableop*
N*
T0* 
_output_shapes
::20
.gradients/sequential/conv2d/Conv2D_grad/ShapeNŗ
;gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput7gradients/sequential/conv2d/Conv2D_grad/ShapeN:output:0Vgradients_sequential_conv2d_conv2d_grad_shapen_sequential_conv2d_conv2d_readvariableop:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*(
_output_shapes
:°*
paddingVALID*
strides
2=
;gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInput
<gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter0gradients_sequential_conv2d_conv2d_grad_shapen_x7gradients/sequential/conv2d/Conv2D_grad/ShapeN:output:1:gradients/sequential/conv2d/Relu_grad/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
2>
<gradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilter
IdentityIdentityDgradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:°2

Identity

Identity_1IdentityEgradients/sequential/conv2d/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2

Identity_1

Identity_2Identity=gradients/sequential/conv2d/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2

Identity_2

Identity_3IdentityGgradients/sequential/conv2d_1/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_3

Identity_4Identity?gradients/sequential/conv2d_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_4

Identity_5IdentityGgradients/sequential/conv2d_2/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@2

Identity_5

Identity_6Identity?gradients/sequential/conv2d_2/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:2

Identity_6 

Identity_7IdentityGgradients/sequential/conv2d_3/Conv2D_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:2

Identity_7

Identity_8Identity?gradients/sequential/conv2d_3/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:2

Identity_8

Identity_9Identity9gradients/sequential/dense/MatMul_grad/MatMul_1:product:0*
T0* 
_output_shapes
:
¬2

Identity_9
Identity_10Identity<gradients/sequential/dense/BiasAdd_grad/BiasAddGrad:output:0*
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
_construction_contextkEagerRuntime*ģ
_input_shapesŚ
×::: :
¬:
¬:
:::+?@:@:W : @:°: *1
forward_function_name__forward_encode_16936:$  

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :&"
 
_output_shapes
:
¬:&"
 
_output_shapes
:
¬:-)
'
_output_shapes
:
:-)
'
_output_shapes
::.*
(
_output_shapes
::,(
&
_output_shapes
:+?@:-	)
'
_output_shapes
:@:,
(
&
_output_shapes
:W :,(
&
_output_shapes
: @:.*
(
_output_shapes
:°:,(
&
_output_shapes
: 
Š
I
 __inference_reparameterize_16385
mean

logvar
identity_
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
 *  ?2
random_normal/stddev¦
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal¢
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:2
random_normal/mul
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

^
B__inference_reshape_layer_call_and_return_conditional_losses_17740

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
strided_slice/stack_2ā
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
Reshape/shape/3ŗ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’,:P L
(
_output_shapes
:’’’’’’’’’,
 
_user_specified_nameinputs
ž
Ŗ
2__inference_conv2d_transpose_1_layer_call_fn_17825

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_135092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¢
 
(__inference_conv2d_3_layer_call_fn_17660

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_131082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

õ
B__inference_dense_1_layer_call_and_return_conditional_losses_13839

inputs1
matmul_readvariableop_resource:	,.
biasadd_readvariableop_resource:	,
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	,*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ö
’
C__inference_conv2d_3_layer_call_and_return_conditional_losses_13108

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp„
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ŗ

ó
@__inference_dense_layer_call_and_return_conditional_losses_13132

inputs2
matmul_readvariableop_resource:
¬-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:’’’’’’’’’¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:’’’’’’’’’¬
 
_user_specified_nameinputs


(__inference_conv2d_2_layer_call_fn_17640

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCall’
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_130912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’+?@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’+?@
 
_user_specified_nameinputs
Ū
°
$__inference_cvae_layer_call_fn_14989
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall“
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
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_cvae_layer_call_and_return_conditional_losses_145042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
ś
Ø
2__inference_conv2d_transpose_2_layer_call_fn_17901

inputs"
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_135972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs

õ
B__inference_dense_1_layer_call_and_return_conditional_losses_17721

inputs1
matmul_readvariableop_resource:	,.
biasadd_readvariableop_resource:	,
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	,*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’,2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ō

'__inference_dense_1_layer_call_fn_17710

inputs
unknown:	,
	unknown_0:	,
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_138392
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’,2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ŗ

ó
@__inference_dense_layer_call_and_return_conditional_losses_17701

inputs2
matmul_readvariableop_resource:
¬-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:’’’’’’’’’¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:’’’’’’’’’¬
 
_user_specified_nameinputs
“
Ø
2__inference_conv2d_transpose_2_layer_call_fn_17910

inputs"
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’X@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_139422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’X@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’,@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’,@
 
_user_specified_nameinputs
ń

?__inference_cvae_layer_call_and_return_conditional_losses_15151
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Č
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
Š
I
 __inference_reparameterize_15289
mean

logvar
identity_
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
 *  ?2
random_normal/stddev¦
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal¢
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:2
random_normal/mul
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
Ž4

E__inference_sequential_layer_call_and_return_conditional_losses_17293

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@7
(conv2d_2_biasadd_readvariableop_resource:	C
'conv2d_3_conv2d_readvariableop_resource:7
(conv2d_3_biasadd_readvariableop_resource:	8
$dense_matmul_readvariableop_resource:
¬3
%dense_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpŖ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
conv2d/Conv2D”
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
conv2d/Relu°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOpŅ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
conv2d_1/Conv2D§
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp¬
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
conv2d_1/Relu±
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
conv2d_2/Conv2DØ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
conv2d_2/Relu²
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÕ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
conv2d_3/Conv2DØ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp­
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
conv2d_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
flatten/Const
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2
flatten/Reshape”
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense/BiasAddq
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2>
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
:’’’’’’’’’°
 
_user_specified_nameinputs
¦

M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_13971

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :°2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpą
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’° 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’X@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’X@
 
_user_specified_nameinputs
%

M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_18095

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs

I
 __inference_reparameterize_12838
mean

logvar
identityB
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
 *  ?2
random_normal/stddevÆ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:’’’’’’’’’*
dtype02$
"random_normal/RandomStandardNormal«
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:’’’’’’’’’2
random_normal/mul
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:’’’’’’’’’2
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
:’’’’’’’’’2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:’’’’’’’’’2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:’’’’’’’’’2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:’’’’’’’’’2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’:’’’’’’’’’:M I
'
_output_shapes
:’’’’’’’’’

_user_specified_namemean:OK
'
_output_shapes
:’’’’’’’’’
 
_user_specified_namelogvar


*__inference_sequential_layer_call_fn_13323
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
identity¢StatefulPartitionedCallį
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_132752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
Ęø
ś
G__inference_sequential_1_layer_call_and_return_conditional_losses_17591

inputs9
&dense_1_matmul_readvariableop_resource:	,6
'dense_1_biasadd_readvariableop_resource:	,T
9conv2d_transpose_conv2d_transpose_readvariableop_resource: ?
0conv2d_transpose_biasadd_readvariableop_resource:	W
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:A
2conv2d_transpose_1_biasadd_readvariableop_resource:	V
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@@
2conv2d_transpose_2_biasadd_readvariableop_resource:@U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @@
2conv2d_transpose_3_biasadd_readvariableop_resource: U
;conv2d_transpose_4_conv2d_transpose_readvariableop_resource: @
2conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢'conv2d_transpose/BiasAdd/ReadVariableOp¢0conv2d_transpose/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_1/BiasAdd/ReadVariableOp¢2conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_2/BiasAdd/ReadVariableOp¢2conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_3/BiasAdd/ReadVariableOp¢2conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢)conv2d_transpose_4/BiasAdd/ReadVariableOp¢2conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulinputs%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/MatMul„
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/BiasAddq
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
dense_1/Reluh
reshape/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
reshape/Shape
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape/strided_slice/stack
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_1
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
reshape/strided_slice/stack_2
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
reshape/Reshape/shape/3ź
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape/Reshape/shape£
reshape/ReshapeReshapedense_1/Relu:activations:0reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2
reshape/Reshapex
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose/Shape
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2&
$conv2d_transpose/strided_slice/stack
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_1
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2(
&conv2d_transpose/strided_slice/stack_2Č
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
B :2
conv2d_transpose/stack/3ų
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose/stack
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose/strided_slice_1/stack
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_1
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose/strided_slice_1/stack_2Ņ
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose/strided_slice_1ē
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype022
0conv2d_transpose/conv2d_transpose/ReadVariableOpµ
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
2#
!conv2d_transpose/conv2d_transposeĄ
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'conv2d_transpose/BiasAdd/ReadVariableOp×
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
conv2d_transpose/BiasAdd
conv2d_transpose/ReluRelu!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
conv2d_transpose/Relu
conv2d_transpose_1/ShapeShape#conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_1/Shape
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_1/strided_slice/stack
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_1
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_1/strided_slice/stack_2Ō
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
B :2
conv2d_transpose_1/stack/3
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_1/stack
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_1/strided_slice_1/stack¢
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_1¢
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_1/strided_slice_1/stack_2Ž
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_1/strided_slice_1ī
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype024
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpČ
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0#conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
2%
#conv2d_transpose_1/conv2d_transposeĘ
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02+
)conv2d_transpose_1/BiasAdd/ReadVariableOpß
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
conv2d_transpose_1/BiasAdd
conv2d_transpose_1/ReluRelu#conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
conv2d_transpose_1/Relu
conv2d_transpose_2/ShapeShape%conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_2/Shape
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_2/strided_slice/stack
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_1
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_2/strided_slice/stack_2Ō
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
B :2
conv2d_transpose_2/stack/2z
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_2/stack/3
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_2/stack
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_2/strided_slice_1/stack¢
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_1¢
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_2/strided_slice_1/stack_2Ž
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_2/strided_slice_1ķ
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype024
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpŹ
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
2%
#conv2d_transpose_2/conv2d_transposeÅ
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_2/BiasAdd/ReadVariableOpß
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
conv2d_transpose_2/BiasAdd
conv2d_transpose_2/ReluRelu#conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
conv2d_transpose_2/Relu
conv2d_transpose_3/ShapeShape%conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_3/Shape
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_3/strided_slice/stack
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_1
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_3/strided_slice/stack_2Ō
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
B :°2
conv2d_transpose_3/stack/1{
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_3/stack/2z
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_3/stack/3
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_3/stack
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_3/strided_slice_1/stack¢
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_1¢
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_3/strided_slice_1/stack_2Ž
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_3/strided_slice_1ģ
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype024
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpĖ
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
2%
#conv2d_transpose_3/conv2d_transposeÅ
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)conv2d_transpose_3/BiasAdd/ReadVariableOpą
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
conv2d_transpose_3/BiasAdd
conv2d_transpose_3/ReluRelu#conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2
conv2d_transpose_3/Relu
conv2d_transpose_4/ShapeShape%conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_4/Shape
&conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_4/strided_slice/stack
(conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_1
(conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_4/strided_slice/stack_2Ō
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
B :°2
conv2d_transpose_4/stack/1{
conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_4/stack/2z
conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_4/stack/3
conv2d_transpose_4/stackPack)conv2d_transpose_4/strided_slice:output:0#conv2d_transpose_4/stack/1:output:0#conv2d_transpose_4/stack/2:output:0#conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_4/stack
(conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_4/strided_slice_1/stack¢
*conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_1¢
*conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_4/strided_slice_1/stack_2Ž
"conv2d_transpose_4/strided_slice_1StridedSlice!conv2d_transpose_4/stack:output:01conv2d_transpose_4/strided_slice_1/stack:output:03conv2d_transpose_4/strided_slice_1/stack_1:output:03conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_4/strided_slice_1ģ
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype024
2conv2d_transpose_4/conv2d_transpose/ReadVariableOpĖ
#conv2d_transpose_4/conv2d_transposeConv2DBackpropInput!conv2d_transpose_4/stack:output:0:conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:0%conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
2%
#conv2d_transpose_4/conv2d_transposeÅ
)conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)conv2d_transpose_4/BiasAdd/ReadVariableOpą
conv2d_transpose_4/BiasAddBiasAdd,conv2d_transpose_4/conv2d_transpose:output:01conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2
conv2d_transpose_4/BiasAdd
IdentityIdentity#conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityš
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp*^conv2d_transpose_4/BiasAdd/ReadVariableOp3^conv2d_transpose_4/conv2d_transpose/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2R
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
:’’’’’’’’’
 
_user_specified_nameinputs

I
 __inference_reparameterize_16417
mean

logvar
identityB
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
 *  ?2
random_normal/stddevÆ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*'
_output_shapes
:’’’’’’’’’*
dtype02$
"random_normal/RandomStandardNormal«
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*'
_output_shapes
:’’’’’’’’’2
random_normal/mul
random_normalAddV2random_normal/mul:z:0random_normal/mean:output:0*
T0*'
_output_shapes
:’’’’’’’’’2
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
:’’’’’’’’’2
mulL
ExpExpmul:z:0*
T0*'
_output_shapes
:’’’’’’’’’2
Expc
mul_1Mulrandom_normal:z:0Exp:y:0*
T0*'
_output_shapes
:’’’’’’’’’2
mul_1V
addAddV2	mul_1:z:0mean*
T0*'
_output_shapes
:’’’’’’’’’2
add[
IdentityIdentityadd:z:0*
T0*'
_output_shapes
:’’’’’’’’’2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’:’’’’’’’’’:M I
'
_output_shapes
:’’’’’’’’’

_user_specified_namemean:OK
'
_output_shapes
:’’’’’’’’’
 
_user_specified_namelogvar
ß
ż
?__inference_cvae_layer_call_and_return_conditional_losses_15097
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
µ*
ö
G__inference_sequential_1_layer_call_and_return_conditional_losses_14251
input_2 
dense_1_14219:	,
dense_1_14221:	,1
conv2d_transpose_14225: %
conv2d_transpose_14227:	4
conv2d_transpose_1_14230:'
conv2d_transpose_1_14232:	3
conv2d_transpose_2_14235:@&
conv2d_transpose_2_14237:@2
conv2d_transpose_3_14240: @&
conv2d_transpose_3_14242: 2
conv2d_transpose_4_14245: &
conv2d_transpose_4_14247:
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall¢*conv2d_transpose_3/StatefulPartitionedCall¢*conv2d_transpose_4/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_14219dense_1_14221*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_138392!
dense_1/StatefulPartitionedCallż
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_138592
reshape/PartitionedCallß
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_14225conv2d_transpose_14227*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_138842*
(conv2d_transpose/StatefulPartitionedCallś
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_14230conv2d_transpose_1_14232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_139132,
*conv2d_transpose_1/StatefulPartitionedCallü
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_14235conv2d_transpose_2_14237*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’X@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_139422,
*conv2d_transpose_2/StatefulPartitionedCallż
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_14240conv2d_transpose_3_14242*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’° *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_139712,
*conv2d_transpose_3/StatefulPartitionedCallż
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_14245conv2d_transpose_4_14247*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_139992,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

IdentityĻ
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2
&

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17792

inputsC
(conv2d_transpose_readvariableop_resource: .
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
B :2	
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpń
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp„
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs
å
Ų
,__inference_sequential_1_layer_call_fn_17322

inputs
unknown:	,
	unknown_0:	,$
	unknown_1: 
	unknown_2:	%
	unknown_3:
	unknown_4:	$
	unknown_5:@
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_140062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
’%

M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_18020

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
 
_user_specified_nameinputs
Æā
$
__inference_train_step_17163
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

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
&adam_adam_update_4_resourceapplyadam_m:@A
&adam_adam_update_4_resourceapplyadam_v:@5
&adam_adam_update_5_resourceapplyadam_m:	5
&adam_adam_update_5_resourceapplyadam_v:	B
&adam_adam_update_6_resourceapplyadam_m:B
&adam_adam_update_6_resourceapplyadam_v:5
&adam_adam_update_7_resourceapplyadam_m:	5
&adam_adam_update_7_resourceapplyadam_v:	:
&adam_adam_update_8_resourceapplyadam_m:
¬:
&adam_adam_update_8_resourceapplyadam_v:
¬4
&adam_adam_update_9_resourceapplyadam_m:4
&adam_adam_update_9_resourceapplyadam_v::
'adam_adam_update_10_resourceapplyadam_m:	,:
'adam_adam_update_10_resourceapplyadam_v:	,6
'adam_adam_update_11_resourceapplyadam_m:	,6
'adam_adam_update_11_resourceapplyadam_v:	,B
'adam_adam_update_12_resourceapplyadam_m: B
'adam_adam_update_12_resourceapplyadam_v: 6
'adam_adam_update_13_resourceapplyadam_m:	6
'adam_adam_update_13_resourceapplyadam_v:	C
'adam_adam_update_14_resourceapplyadam_m:C
'adam_adam_update_14_resourceapplyadam_v:6
'adam_adam_update_15_resourceapplyadam_m:	6
'adam_adam_update_15_resourceapplyadam_v:	B
'adam_adam_update_16_resourceapplyadam_m:@B
'adam_adam_update_16_resourceapplyadam_v:@5
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
identity¢Adam/Adam/AssignAddVariableOp¢"Adam/Adam/update/ResourceApplyAdam¢$Adam/Adam/update_1/ResourceApplyAdam¢%Adam/Adam/update_10/ResourceApplyAdam¢%Adam/Adam/update_11/ResourceApplyAdam¢%Adam/Adam/update_12/ResourceApplyAdam¢%Adam/Adam/update_13/ResourceApplyAdam¢%Adam/Adam/update_14/ResourceApplyAdam¢%Adam/Adam/update_15/ResourceApplyAdam¢%Adam/Adam/update_16/ResourceApplyAdam¢%Adam/Adam/update_17/ResourceApplyAdam¢%Adam/Adam/update_18/ResourceApplyAdam¢%Adam/Adam/update_19/ResourceApplyAdam¢$Adam/Adam/update_2/ResourceApplyAdam¢%Adam/Adam/update_20/ResourceApplyAdam¢%Adam/Adam/update_21/ResourceApplyAdam¢$Adam/Adam/update_3/ResourceApplyAdam¢$Adam/Adam/update_4/ResourceApplyAdam¢$Adam/Adam/update_5/ResourceApplyAdam¢$Adam/Adam/update_6/ResourceApplyAdam¢$Adam/Adam/update_7/ResourceApplyAdam¢$Adam/Adam/update_8/ResourceApplyAdam¢$Adam/Adam/update_9/ResourceApplyAdam¢Adam/Cast/ReadVariableOp¢Adam/Cast_2/ReadVariableOp¢Adam/Cast_3/ReadVariableOp¢Adam/ReadVariableOp¢StatefulPartitionedCallŲ	
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
 *ų
_output_shapeså
ā: :: :: :°:::°:°:°: :: :: ::° : :X@: @:,@:@: :: : :	,:	,:::: :: :
¬:
¬:
:::+?@:@:W : @:°: *8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *%
f R
__forward_compute_loss_169972
StatefulPartitionedCallQ
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones£
PartitionedCallPartitionedCallones:output:0 StatefulPartitionedCall:output:1 StatefulPartitionedCall:output:2 StatefulPartitionedCall:output:3 StatefulPartitionedCall:output:4 StatefulPartitionedCall:output:5 StatefulPartitionedCall:output:6 StatefulPartitionedCall:output:7 StatefulPartitionedCall:output:8 StatefulPartitionedCall:output:9!StatefulPartitionedCall:output:10!StatefulPartitionedCall:output:11!StatefulPartitionedCall:output:12!StatefulPartitionedCall:output:13!StatefulPartitionedCall:output:14!StatefulPartitionedCall:output:15!StatefulPartitionedCall:output:16!StatefulPartitionedCall:output:17!StatefulPartitionedCall:output:18!StatefulPartitionedCall:output:19!StatefulPartitionedCall:output:20!StatefulPartitionedCall:output:21!StatefulPartitionedCall:output:22!StatefulPartitionedCall:output:23!StatefulPartitionedCall:output:24!StatefulPartitionedCall:output:25!StatefulPartitionedCall:output:26!StatefulPartitionedCall:output:27!StatefulPartitionedCall:output:28!StatefulPartitionedCall:output:29!StatefulPartitionedCall:output:30!StatefulPartitionedCall:output:31!StatefulPartitionedCall:output:32!StatefulPartitionedCall:output:33!StatefulPartitionedCall:output:34!StatefulPartitionedCall:output:35!StatefulPartitionedCall:output:36!StatefulPartitionedCall:output:37!StatefulPartitionedCall:output:38!StatefulPartitionedCall:output:39!StatefulPartitionedCall:output:40!StatefulPartitionedCall:output:41!StatefulPartitionedCall:output:42!StatefulPartitionedCall:output:43!StatefulPartitionedCall:output:44!StatefulPartitionedCall:output:45*9
Tin2
02.
*#
Tout
2*
_collective_manager_ids
 *±
_output_shapes
:°: : : @:@:@::::
¬::	,:,: ::::@:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *8
f3R1
/__inference___backward_compute_loss_16568_169982
PartitionedCall
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast/ReadVariableOp
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	2
Adam/ReadVariableOp

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 R2

Adam/add/y
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 2

Adam/add
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Adam/Cast_1
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_2/ReadVariableOp”
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_1
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype02
Adam/Cast_3/ReadVariableOp”
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/Identity_2
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/Pow_1

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2

Adam/sub/x
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub{
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
	Adam/Sqrt
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Adam/sub_1/x

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_1
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2
Adam/truediv
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/mul

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *æÖ32

Adam/Const
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Adam/sub_2/x

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_2
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?2
Adam/sub_3/x

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 2

Adam/sub_3ß
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamunknown$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:1^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16522*
_output_shapes
 *
use_locking(2$
"Adam/Adam/update/ResourceApplyAdamé
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam	unknown_0&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:2^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16524*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_1/ResourceApplyAdamé
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam	unknown_1&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:3^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16526*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_2/ResourceApplyAdamé
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam	unknown_2&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:4^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16528*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_3/ResourceApplyAdamé
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam	unknown_3&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:5^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16530*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_4/ResourceApplyAdamé
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam	unknown_4&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:6^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16532*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_5/ResourceApplyAdamé
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam	unknown_5&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:7^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16534*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_6/ResourceApplyAdamé
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam	unknown_6&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:8^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16536*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_7/ResourceApplyAdamé
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam	unknown_7&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:9^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16538*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_8/ResourceApplyAdamź
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam	unknown_8&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:10^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16540*
_output_shapes
 *
use_locking(2&
$Adam/Adam/update_9/ResourceApplyAdamī
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam	unknown_9'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:11^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16542*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_10/ResourceApplyAdamļ
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam
unknown_10'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:12^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16544*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_11/ResourceApplyAdamļ
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam
unknown_11'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:13^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16546*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_12/ResourceApplyAdamļ
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam
unknown_12'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:14^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16548*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_13/ResourceApplyAdamļ
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam
unknown_13'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:15^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16550*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_14/ResourceApplyAdamļ
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam
unknown_14'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:16^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16552*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_15/ResourceApplyAdamļ
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdam
unknown_15'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:17^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16554*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_16/ResourceApplyAdamļ
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam
unknown_16'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:18^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16556*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_17/ResourceApplyAdamļ
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdam
unknown_17'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:19^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16558*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_18/ResourceApplyAdamļ
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdam
unknown_18'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:20^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16560*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_19/ResourceApplyAdamļ
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam
unknown_19'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:21^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16562*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_20/ResourceApplyAdamļ
%Adam/Adam/update_21/ResourceApplyAdamResourceApplyAdam
unknown_20'adam_adam_update_21_resourceapplyadam_m'adam_adam_update_21_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0PartitionedCall:output:22^StatefulPartitionedCall",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_class

loc:@16564*
_output_shapes
 *
use_locking(2'
%Adam/Adam/update_21/ResourceApplyAdamÜ
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam&^Adam/Adam/update_21/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 2
Adam/Adam/group_deps{
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R2
Adam/Adam/ConstĘ
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	2
Adam/Adam/AssignAddVariableOpj
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: 2

Identity×
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam&^Adam/Adam/update_21/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*µ
_input_shapes£
 :°: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
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
:°

_user_specified_namex:

_class

loc:@16522:

_class

loc:@16522:

_class

loc:@16524:

_class

loc:@16524:

_class

loc:@16526: 

_class

loc:@16526:!

_class

loc:@16528:"

_class

loc:@16528:#

_class

loc:@16530:$

_class

loc:@16530:%

_class

loc:@16532:&

_class

loc:@16532:'

_class

loc:@16534:(

_class

loc:@16534:)

_class

loc:@16536:*

_class

loc:@16536:+

_class

loc:@16538:,

_class

loc:@16538:-

_class

loc:@16540:.

_class

loc:@16540:/

_class

loc:@16542:0

_class

loc:@16542:1

_class

loc:@16544:2

_class

loc:@16544:3

_class

loc:@16546:4

_class

loc:@16546:5

_class

loc:@16548:6

_class

loc:@16548:7

_class

loc:@16550:8

_class

loc:@16550:9

_class

loc:@16552::

_class

loc:@16552:;

_class

loc:@16554:<

_class

loc:@16554:=

_class

loc:@16556:>

_class

loc:@16556:?

_class

loc:@16558:@

_class

loc:@16558:A

_class

loc:@16560:B

_class

loc:@16560:C

_class

loc:@16562:D

_class

loc:@16562:E

_class

loc:@16564:F

_class

loc:@16564
Ā

M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_13999

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :°2	
stack/1U
stack/2Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpą
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2	
BiasAddu
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’° : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’° 
 
_user_specified_nameinputs
·
§
2__inference_conv2d_transpose_4_layer_call_fn_18062

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_139992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’° : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’° 
 
_user_specified_nameinputs
£

M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_13942

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’X@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’,@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’,@
 
_user_specified_nameinputs
÷
¾
 __inference__wrapped_model_13039
input_1$

cvae_12989: 

cvae_12991: $

cvae_12993: @

cvae_12995:@%

cvae_12997:@

cvae_12999:	&

cvae_13001:

cvae_13003:	

cvae_13005:
¬

cvae_13007:

cvae_13009:	,

cvae_13011:	,%

cvae_13013: 

cvae_13015:	&

cvae_13017:

cvae_13019:	%

cvae_13021:@

cvae_13023:@$

cvae_13025: @

cvae_13027: $

cvae_13029: 

cvae_13031:
identity

identity_1

identity_2¢cvae/StatefulPartitionedCall¢
cvae/StatefulPartitionedCallStatefulPartitionedCallinput_1
cvae_12989
cvae_12991
cvae_12993
cvae_12995
cvae_12997
cvae_12999
cvae_13001
cvae_13003
cvae_13005
cvae_13007
cvae_13009
cvae_13011
cvae_13013
cvae_13015
cvae_13017
cvae_13019
cvae_13021
cvae_13023
cvae_13025
cvae_13027
cvae_13029
cvae_13031*"
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *
fR
__inference_call_129882
cvae/StatefulPartitionedCall
IdentityIdentity%cvae/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity%cvae/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity%cvae/StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 2<
cvae/StatefulPartitionedCallcvae/StatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
å
Ų
,__inference_sequential_1_layer_call_fn_17351

inputs
unknown:	,
	unknown_0:	,$
	unknown_1: 
	unknown_2:	%
	unknown_3:
	unknown_4:	$
	unknown_5:@
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_141602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ń
C
'__inference_flatten_layer_call_fn_17676

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:’’’’’’’’’¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_131202
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’
:X T
0
_output_shapes
:’’’’’’’’’

 
_user_specified_nameinputs
ß
ż
?__inference_cvae_layer_call_and_return_conditional_losses_14344
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex


*__inference_sequential_layer_call_fn_13162
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
identity¢StatefulPartitionedCallį
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_131392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1


__inference__traced_save_18356
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

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameŽ&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*š%
valueę%Bć%HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*„
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop2savev2_conv2d_transpose_3_bias_read_readvariableop4savev2_conv2d_transpose_4_kernel_read_readvariableop2savev2_conv2d_transpose_4_bias_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop9savev2_adam_conv2d_transpose_kernel_m_read_readvariableop7savev2_adam_conv2d_transpose_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop9savev2_adam_conv2d_transpose_kernel_v_read_readvariableop7savev2_adam_conv2d_transpose_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_1_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_1_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_2_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_2_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_3_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_3_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_4_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	2
SaveV2ŗ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes”
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

identity_1Identity_1:output:0*ø
_input_shapes¦
£: : : : : : : : : @:@:@::::
¬::	,:,: ::::@:@: @: : :: : : @:@:@::::
¬::	,:,: ::::@:@: @: : :: : : @:@:@::::
¬::	,:,: ::::@:@: @: : :: 2(
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
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::&"
 
_output_shapes
:
¬: 

_output_shapes
::%!

_output_shapes
:	,:!

_output_shapes	
:,:-)
'
_output_shapes
: :!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:@: 
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
:@:!!

_output_shapes	
::."*
(
_output_shapes
::!#

_output_shapes	
::&$"
 
_output_shapes
:
¬: %

_output_shapes
::%&!

_output_shapes
:	,:!'

_output_shapes	
:,:-()
'
_output_shapes
: :!)

_output_shapes	
::.**
(
_output_shapes
::!+

_output_shapes	
::-,)
'
_output_shapes
:@: -
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
:@:!7

_output_shapes	
::.8*
(
_output_shapes
::!9

_output_shapes	
::&:"
 
_output_shapes
:
¬: ;

_output_shapes
::%<!

_output_shapes
:	,:!=

_output_shapes	
:,:->)
'
_output_shapes
: :!?

_output_shapes	
::.@*
(
_output_shapes
::!A

_output_shapes	
::-B)
'
_output_shapes
:@: C
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
ö³
Ā/
!__inference__traced_restore_18579
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
"assignvariableop_9_conv2d_2_kernel:@0
!assignvariableop_10_conv2d_2_bias:	?
#assignvariableop_11_conv2d_3_kernel:0
!assignvariableop_12_conv2d_3_bias:	4
 assignvariableop_13_dense_kernel:
¬,
assignvariableop_14_dense_bias:5
"assignvariableop_15_dense_1_kernel:	,/
 assignvariableop_16_dense_1_bias:	,F
+assignvariableop_17_conv2d_transpose_kernel: 8
)assignvariableop_18_conv2d_transpose_bias:	I
-assignvariableop_19_conv2d_transpose_1_kernel::
+assignvariableop_20_conv2d_transpose_1_bias:	H
-assignvariableop_21_conv2d_transpose_2_kernel:@9
+assignvariableop_22_conv2d_transpose_2_bias:@G
-assignvariableop_23_conv2d_transpose_3_kernel: @9
+assignvariableop_24_conv2d_transpose_3_bias: G
-assignvariableop_25_conv2d_transpose_4_kernel: 9
+assignvariableop_26_conv2d_transpose_4_bias:B
(assignvariableop_27_adam_conv2d_kernel_m: 4
&assignvariableop_28_adam_conv2d_bias_m: D
*assignvariableop_29_adam_conv2d_1_kernel_m: @6
(assignvariableop_30_adam_conv2d_1_bias_m:@E
*assignvariableop_31_adam_conv2d_2_kernel_m:@7
(assignvariableop_32_adam_conv2d_2_bias_m:	F
*assignvariableop_33_adam_conv2d_3_kernel_m:7
(assignvariableop_34_adam_conv2d_3_bias_m:	;
'assignvariableop_35_adam_dense_kernel_m:
¬3
%assignvariableop_36_adam_dense_bias_m:<
)assignvariableop_37_adam_dense_1_kernel_m:	,6
'assignvariableop_38_adam_dense_1_bias_m:	,M
2assignvariableop_39_adam_conv2d_transpose_kernel_m: ?
0assignvariableop_40_adam_conv2d_transpose_bias_m:	P
4assignvariableop_41_adam_conv2d_transpose_1_kernel_m:A
2assignvariableop_42_adam_conv2d_transpose_1_bias_m:	O
4assignvariableop_43_adam_conv2d_transpose_2_kernel_m:@@
2assignvariableop_44_adam_conv2d_transpose_2_bias_m:@N
4assignvariableop_45_adam_conv2d_transpose_3_kernel_m: @@
2assignvariableop_46_adam_conv2d_transpose_3_bias_m: N
4assignvariableop_47_adam_conv2d_transpose_4_kernel_m: @
2assignvariableop_48_adam_conv2d_transpose_4_bias_m:B
(assignvariableop_49_adam_conv2d_kernel_v: 4
&assignvariableop_50_adam_conv2d_bias_v: D
*assignvariableop_51_adam_conv2d_1_kernel_v: @6
(assignvariableop_52_adam_conv2d_1_bias_v:@E
*assignvariableop_53_adam_conv2d_2_kernel_v:@7
(assignvariableop_54_adam_conv2d_2_bias_v:	F
*assignvariableop_55_adam_conv2d_3_kernel_v:7
(assignvariableop_56_adam_conv2d_3_bias_v:	;
'assignvariableop_57_adam_dense_kernel_v:
¬3
%assignvariableop_58_adam_dense_bias_v:<
)assignvariableop_59_adam_dense_1_kernel_v:	,6
'assignvariableop_60_adam_dense_1_bias_v:	,M
2assignvariableop_61_adam_conv2d_transpose_kernel_v: ?
0assignvariableop_62_adam_conv2d_transpose_bias_v:	P
4assignvariableop_63_adam_conv2d_transpose_1_kernel_v:A
2assignvariableop_64_adam_conv2d_transpose_1_bias_v:	O
4assignvariableop_65_adam_conv2d_transpose_2_kernel_v:@@
2assignvariableop_66_adam_conv2d_transpose_2_bias_v:@N
4assignvariableop_67_adam_conv2d_transpose_3_kernel_v: @@
2assignvariableop_68_adam_conv2d_transpose_3_bias_v: N
4assignvariableop_69_adam_conv2d_transpose_4_kernel_v: @
2assignvariableop_70_adam_conv2d_transpose_4_bias_v:
identity_72¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_8¢AssignVariableOp_9ä&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*š%
valueę%Bć%HB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBMtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names”
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*„
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¢
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ŗ
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5„
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv2d_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7§
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8„
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9§
AssignVariableOp_9AssignVariableOp"assignvariableop_9_conv2d_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_conv2d_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11«
AssignVariableOp_11AssignVariableOp#assignvariableop_11_conv2d_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12©
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv2d_3_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ø
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¦
AssignVariableOp_14AssignVariableOpassignvariableop_14_dense_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ŗ
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Ø
AssignVariableOp_16AssignVariableOp assignvariableop_16_dense_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17³
AssignVariableOp_17AssignVariableOp+assignvariableop_17_conv2d_transpose_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18±
AssignVariableOp_18AssignVariableOp)assignvariableop_18_conv2d_transpose_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19µ
AssignVariableOp_19AssignVariableOp-assignvariableop_19_conv2d_transpose_1_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20³
AssignVariableOp_20AssignVariableOp+assignvariableop_20_conv2d_transpose_1_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21µ
AssignVariableOp_21AssignVariableOp-assignvariableop_21_conv2d_transpose_2_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22³
AssignVariableOp_22AssignVariableOp+assignvariableop_22_conv2d_transpose_2_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23µ
AssignVariableOp_23AssignVariableOp-assignvariableop_23_conv2d_transpose_3_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24³
AssignVariableOp_24AssignVariableOp+assignvariableop_24_conv2d_transpose_3_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25µ
AssignVariableOp_25AssignVariableOp-assignvariableop_25_conv2d_transpose_4_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26³
AssignVariableOp_26AssignVariableOp+assignvariableop_26_conv2d_transpose_4_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27°
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv2d_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28®
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Æ
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_dense_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36­
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_dense_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37±
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Æ
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39ŗ
AssignVariableOp_39AssignVariableOp2assignvariableop_39_adam_conv2d_transpose_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ø
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_conv2d_transpose_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¼
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adam_conv2d_transpose_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42ŗ
AssignVariableOp_42AssignVariableOp2assignvariableop_42_adam_conv2d_transpose_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43¼
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_conv2d_transpose_2_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44ŗ
AssignVariableOp_44AssignVariableOp2assignvariableop_44_adam_conv2d_transpose_2_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¼
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_conv2d_transpose_3_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46ŗ
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_conv2d_transpose_3_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¼
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_conv2d_transpose_4_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ŗ
AssignVariableOp_48AssignVariableOp2assignvariableop_48_adam_conv2d_transpose_4_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49°
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv2d_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50®
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv2d_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51²
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_conv2d_1_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52°
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_conv2d_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53²
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55²
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_conv2d_3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56°
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_conv2d_3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57Æ
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_dense_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58­
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_dense_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59±
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Æ
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61ŗ
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_conv2d_transpose_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62ø
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_conv2d_transpose_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63¼
AssignVariableOp_63AssignVariableOp4assignvariableop_63_adam_conv2d_transpose_1_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64ŗ
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_conv2d_transpose_1_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65¼
AssignVariableOp_65AssignVariableOp4assignvariableop_65_adam_conv2d_transpose_2_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66ŗ
AssignVariableOp_66AssignVariableOp2assignvariableop_66_adam_conv2d_transpose_2_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67¼
AssignVariableOp_67AssignVariableOp4assignvariableop_67_adam_conv2d_transpose_3_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68ŗ
AssignVariableOp_68AssignVariableOp2assignvariableop_68_adam_conv2d_transpose_3_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69¼
AssignVariableOp_69AssignVariableOp4assignvariableop_69_adam_conv2d_transpose_4_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70ŗ
AssignVariableOp_70AssignVariableOp2assignvariableop_70_adam_conv2d_transpose_4_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_709
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpų
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_71f
Identity_72IdentityIdentity_71:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_72ą
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_72Identity_72:output:0*„
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
Š
I
 __inference_reparameterize_15679
mean

logvar
identity_
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
 *  ?2
random_normal/stddev¦
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:@*
dtype02$
"random_normal/RandomStandardNormal¢
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul
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
²*
õ
G__inference_sequential_1_layer_call_and_return_conditional_losses_14006

inputs 
dense_1_13840:	,
dense_1_13842:	,1
conv2d_transpose_13885: %
conv2d_transpose_13887:	4
conv2d_transpose_1_13914:'
conv2d_transpose_1_13916:	3
conv2d_transpose_2_13943:@&
conv2d_transpose_2_13945:@2
conv2d_transpose_3_13972: @&
conv2d_transpose_3_13974: 2
conv2d_transpose_4_14000: &
conv2d_transpose_4_14002:
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall¢*conv2d_transpose_3/StatefulPartitionedCall¢*conv2d_transpose_4/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_13840dense_1_13842*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_138392!
dense_1/StatefulPartitionedCallż
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_138592
reshape/PartitionedCallß
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_13885conv2d_transpose_13887*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_138842*
(conv2d_transpose/StatefulPartitionedCallś
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_13914conv2d_transpose_1_13916*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_139132,
*conv2d_transpose_1/StatefulPartitionedCallü
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_13943conv2d_transpose_2_13945*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’X@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_139422,
*conv2d_transpose_2/StatefulPartitionedCallż
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_13972conv2d_transpose_3_13974*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’° *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_139712,
*conv2d_transpose_3/StatefulPartitionedCallż
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_14000conv2d_transpose_4_14002*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_139992,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

IdentityĻ
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
å
Ō
__inference_call_15439
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2°
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
GPU2*0J 8 *!
fR
__inference_encode_152512
StatefulPartitionedCallń
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
GPU2*0J 8 *)
f$R"
 __inference_reparameterize_152892
StatefulPartitionedCall_1ū
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
:°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_154102
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

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*(
_output_shapes
:°2

Identity_2 
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
@:°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:°

_user_specified_namex
Ķ
C
'__inference_reshape_layer_call_fn_17726

inputs
identityĖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_138592
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’,:P L
(
_output_shapes
:’’’’’’’’’,
 
_user_specified_nameinputs
&

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17868

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
B :2	
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpń
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp„
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ß
ż
?__inference_cvae_layer_call_and_return_conditional_losses_14504
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
&

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_13509

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
B :2	
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpń
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp„
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,’’’’’’’’’’’’’’’’’’’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
§

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17892

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’,@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs

|
__forward_reparameterize_16863
mean
logvar_0
identity
exp
random_normal	
mul_y

logvar_
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
 *  ?2
random_normal/stddev¦
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:*
dtype02$
"random_normal/RandomStandardNormal¢
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
backward_function_name31__inference___backward_reparameterize_16839_16864:D @

_output_shapes

:

_user_specified_namemean:FB

_output_shapes

:
 
_user_specified_namelogvar
ö
’
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17671

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp„
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ž
ž
__inference_decode_15997
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp„
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpĶ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeĪ
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape£
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpķ
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: 2'
%sequential_1/conv2d_transpose/BiasAdd²
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: 2$
"sequential_1/conv2d_transpose/Relu§
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@2)
'sequential_1/conv2d_transpose_1/BiasAddø
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@2&
$sequential_1/conv2d_transpose_1/Relu§
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @      2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X@2)
'sequential_1/conv2d_transpose_2/BiasAddø
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X@2&
$sequential_1/conv2d_transpose_2/Relu§
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X      @   2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:° 2)
'sequential_1/conv2d_transpose_3/BiasAdd¹
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:° 2&
$sequential_1/conv2d_transpose_3/Relu§
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   °          2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
·C
æ	
__inference_encode_16369
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpÕ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpŠ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpž
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpŲ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŁ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŁ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/ConstĀ
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpĆ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpÅ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimŖ
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2T
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
:’’’’’’’’’°

_user_specified_namex
£ 
ė
E__inference_sequential_layer_call_and_return_conditional_losses_13139

inputs&
conv2d_13058: 
conv2d_13060: (
conv2d_1_13075: @
conv2d_1_13077:@)
conv2d_2_13092:@
conv2d_2_13094:	*
conv2d_3_13109:
conv2d_3_13111:	
dense_13133:
¬
dense_13135:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13058conv2d_13060*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_130572 
conv2d/StatefulPartitionedCall½
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_13075conv2d_1_13077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_130742"
 conv2d_1/StatefulPartitionedCallĄ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_13092conv2d_2_13094*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_130912"
 conv2d_2/StatefulPartitionedCallĄ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_13109conv2d_3_13111*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_131082"
 conv2d_3/StatefulPartitionedCallų
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:’’’’’’’’’¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_131202
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13133dense_13135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_131322
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityų
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
&

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_13421

inputsC
(conv2d_transpose_readvariableop_resource: .
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
B :2	
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpń
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp„
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs
µ*
ö
G__inference_sequential_1_layer_call_and_return_conditional_losses_14286
input_2 
dense_1_14254:	,
dense_1_14256:	,1
conv2d_transpose_14260: %
conv2d_transpose_14262:	4
conv2d_transpose_1_14265:'
conv2d_transpose_1_14267:	3
conv2d_transpose_2_14270:@&
conv2d_transpose_2_14272:@2
conv2d_transpose_3_14275: @&
conv2d_transpose_3_14277: 2
conv2d_transpose_4_14280: &
conv2d_transpose_4_14282:
identity¢(conv2d_transpose/StatefulPartitionedCall¢*conv2d_transpose_1/StatefulPartitionedCall¢*conv2d_transpose_2/StatefulPartitionedCall¢*conv2d_transpose_3/StatefulPartitionedCall¢*conv2d_transpose_4/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_14254dense_1_14256*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’,*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_138392!
dense_1/StatefulPartitionedCallż
reshape/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_138592
reshape/PartitionedCallß
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_14260conv2d_transpose_14262*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_138842*
(conv2d_transpose/StatefulPartitionedCallś
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0conv2d_transpose_1_14265conv2d_transpose_1_14267*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_139132,
*conv2d_transpose_1/StatefulPartitionedCallü
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0conv2d_transpose_2_14270conv2d_transpose_2_14272*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’X@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_139422,
*conv2d_transpose_2/StatefulPartitionedCallż
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0conv2d_transpose_3_14275conv2d_transpose_3_14277*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’° *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_139712,
*conv2d_transpose_3/StatefulPartitionedCallż
*conv2d_transpose_4/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_3/StatefulPartitionedCall:output:0conv2d_transpose_4_14280conv2d_transpose_4_14282*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_139992,
*conv2d_transpose_4/StatefulPartitionedCall
IdentityIdentity3conv2d_transpose_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

IdentityĻ
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall+^conv2d_transpose_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2X
*conv2d_transpose_4/StatefulPartitionedCall*conv2d_transpose_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2


&__inference_conv2d_layer_call_fn_17600

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_130572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’W 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’°: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs


*__inference_sequential_layer_call_fn_17213

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
identity¢StatefulPartitionedCallą
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_132752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
ß
ż
?__inference_cvae_layer_call_and_return_conditional_losses_15043
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2Ā
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_encode_128002
StatefulPartitionedCallś
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference_reparameterize_128382
StatefulPartitionedCall_1
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
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_129592
StatefulPartitionedCall_2{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity"StatefulPartitionedCall_2:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity_2 
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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
Æ
§
0__inference_conv2d_transpose_layer_call_fn_17758

inputs"
unknown: 
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_138842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
Ž
ž
__inference_decode_15410
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp„
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpĶ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeĪ
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
: 2
sequential_1/reshape/Reshape£
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpķ
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
: *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
: 2'
%sequential_1/conv2d_transpose/BiasAdd²
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
: 2$
"sequential_1/conv2d_transpose/Relu§
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:,@2)
'sequential_1/conv2d_transpose_1/BiasAddø
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:,@2&
$sequential_1/conv2d_transpose_1/Relu§
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   ,   @      2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:X@2)
'sequential_1/conv2d_transpose_2/BiasAddø
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:X@2&
$sequential_1/conv2d_transpose_2/Relu§
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   X      @   2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:° 2)
'sequential_1/conv2d_transpose_3/BiasAdd¹
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:° 2&
$sequential_1/conv2d_transpose_3/Relu§
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   °          2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:

_user_specified_namez
į¾

/__inference___backward_compute_loss_16568_16998
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
gradients/Neg_2_grad/Neg
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:2#
!gradients/Mean_grad/Reshape/shape“
gradients/Mean_grad/ReshapeReshapegradients/Neg_2_grad/Neg:y:0*gradients/Mean_grad/Reshape/shape:output:0*
T0*
_output_shapes
:2
gradients/Mean_grad/Reshape
gradients/Mean_grad/ConstConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/Mean_grad/Const«
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
 *  A2
gradients/Mean_grad/Const_1³
gradients/Mean_grad/truedivRealDiv!gradients/Mean_grad/Tile:output:0$gradients/Mean_grad/Const_1:output:0*
T0*
_output_shapes
:2
gradients/Mean_grad/truediv
gradients/sub_2_grad/NegNeggradients/Mean_grad/truediv:z:0*
T0*
_output_shapes
:2
gradients/sub_2_grad/Neg
gradients/Sum_2_grad/Maximum/xConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Sum_2_grad/Maximum/x
gradients/Sum_2_grad/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :2 
gradients/Sum_2_grad/Maximum/y¾
gradients/Sum_2_grad/MaximumMaximum'gradients/Sum_2_grad/Maximum/x:output:0'gradients/Sum_2_grad/Maximum/y:output:0*
T0*
_output_shapes
:2
gradients/Sum_2_grad/Maximum
gradients/Sum_2_grad/floordiv/xConst*
_output_shapes
:*
dtype0*
valueB"      2!
gradients/Sum_2_grad/floordiv/x»
gradients/Sum_2_grad/floordivFloorDiv(gradients/Sum_2_grad/floordiv/x:output:0 gradients/Sum_2_grad/Maximum:z:0*
T0*
_output_shapes
:2
gradients/Sum_2_grad/floordiv
"gradients/Sum_2_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/Sum_2_grad/Reshape/shape»
gradients/Sum_2_grad/ReshapeReshapegradients/sub_2_grad/Neg:y:0+gradients/Sum_2_grad/Reshape/shape:output:0*
T0*
_output_shapes

:2
gradients/Sum_2_grad/Reshape
#gradients/Sum_2_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gradients/Sum_2_grad/Tile/multiples¼
gradients/Sum_2_grad/TileTile%gradients/Sum_2_grad/Reshape:output:0,gradients/Sum_2_grad/Tile/multiples:output:0*
T0*
_output_shapes

:2
gradients/Sum_2_grad/Tile}
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv:z:0*
T0*
_output_shapes
:2
gradients/Neg_grad/Neg
"gradients/Sum_1_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/Sum_1_grad/Reshape/shape¾
gradients/Sum_1_grad/ReshapeReshapegradients/Mean_grad/truediv:z:0+gradients/Sum_1_grad/Reshape/shape:output:0*
T0*
_output_shapes

:2
gradients/Sum_1_grad/Reshape
#gradients/Sum_1_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gradients/Sum_1_grad/Tile/multiples¼
gradients/Sum_1_grad/TileTile%gradients/Sum_1_grad/Reshape:output:0,gradients/Sum_1_grad/Tile/multiples:output:0*
T0*
_output_shapes

:2
gradients/Sum_1_grad/Tile”
-gradients/mul_3_grad/BroadcastGradientArgs/s0Const*
_output_shapes
: *
dtype0*
valueB 2/
-gradients/mul_3_grad/BroadcastGradientArgs/s0„
/gradients/mul_3_grad/BroadcastGradientArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB 21
/gradients/mul_3_grad/BroadcastGradientArgs/s0_1Æ
-gradients/mul_3_grad/BroadcastGradientArgs/s1Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gradients/mul_3_grad/BroadcastGradientArgs/s1
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/mul_3_grad/BroadcastGradientArgs/s0_1:output:06gradients/mul_3_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’2,
*gradients/mul_3_grad/BroadcastGradientArgsØ
gradients/mul_3_grad/MulMul"gradients/Sum_2_grad/Tile:output:0gradients_mul_3_grad_mul_add_3*
T0*
_output_shapes

:2
gradients/mul_3_grad/Mul©
*gradients/mul_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/mul_3_grad/Sum/reduction_indicesÆ
gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul:z:03gradients/mul_3_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_3_grad/Sum
"gradients/mul_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_3_grad/Reshape/shape
$gradients/mul_3_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/mul_3_grad/Reshape/shape_1ŗ
gradients/mul_3_grad/ReshapeReshape!gradients/mul_3_grad/Sum:output:0-gradients/mul_3_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_3_grad/Reshape°
gradients/mul_3_grad/Mul_1Mul"gradients_mul_3_grad_mul_1_mul_3_x"gradients/Sum_2_grad/Tile:output:0*
T0*
_output_shapes

:2
gradients/mul_3_grad/Mul_1
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
gradients/Sum_grad/Maximum/y¶
gradients/Sum_grad/MaximumMaximum%gradients/Sum_grad/Maximum/x:output:0%gradients/Sum_grad/Maximum/y:output:0*
T0*
_output_shapes
:2
gradients/Sum_grad/Maximum
gradients/Sum_grad/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   °         2
gradients/Sum_grad/floordiv/x³
gradients/Sum_grad/floordivFloorDiv&gradients/Sum_grad/floordiv/x:output:0gradients/Sum_grad/Maximum:z:0*
T0*
_output_shapes
:2
gradients/Sum_grad/floordiv
 gradients/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2"
 gradients/Sum_grad/Reshape/shape»
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg:y:0)gradients/Sum_grad/Reshape/shape:output:0*
T0*&
_output_shapes
:2
gradients/Sum_grad/Reshape
!gradients/Sum_grad/Tile/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   °         2#
!gradients/Sum_grad/Tile/multiples¾
gradients/Sum_grad/TileTile#gradients/Sum_grad/Reshape:output:0*gradients/Sum_grad/Tile/multiples:output:0*
T0*(
_output_shapes
:°2
gradients/Sum_grad/TileØ
gradients/mul_1_grad/MulMul"gradients/Sum_1_grad/Tile:output:0gradients_mul_1_grad_mul_add_1*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul©
*gradients/mul_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/mul_1_grad/Sum/reduction_indicesÆ
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul:z:03gradients/mul_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_1_grad/Sum
"gradients/mul_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_1_grad/Reshape/shape
$gradients/mul_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/mul_1_grad/Reshape/shape_1ŗ
gradients/mul_1_grad/ReshapeReshape!gradients/mul_1_grad/Sum:output:0-gradients/mul_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_1_grad/Reshape°
gradients/mul_1_grad/Mul_1Mul"gradients_mul_1_grad_mul_1_mul_1_x"gradients/Sum_1_grad/Tile:output:0*
T0*
_output_shapes

:2
gradients/mul_1_grad/Mul_1Æ
-gradients/add_3_grad/BroadcastGradientArgs/s0Const*
_output_shapes
:*
dtype0*
valueB"      2/
-gradients/add_3_grad/BroadcastGradientArgs/s0”
-gradients/add_3_grad/BroadcastGradientArgs/s1Const*
_output_shapes
: *
dtype0*
valueB 2/
-gradients/add_3_grad/BroadcastGradientArgs/s1
*gradients/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs6gradients/add_3_grad/BroadcastGradientArgs/s0:output:06gradients/add_3_grad/BroadcastGradientArgs/s1:output:0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’2,
*gradients/add_3_grad/BroadcastGradientArgs©
*gradients/add_3_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/add_3_grad/Sum/reduction_indices±
gradients/add_3_grad/SumSumgradients/mul_3_grad/Mul_1:z:03gradients/add_3_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_3_grad/Sum
"gradients/add_3_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_3_grad/Reshape/shape
$gradients/add_3_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/add_3_grad/Reshape/shape_1ŗ
gradients/add_3_grad/ReshapeReshape!gradients/add_3_grad/Sum:output:0-gradients/add_3_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_3_grad/Reshape©
*gradients/add_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/add_1_grad/Sum/reduction_indices±
gradients/add_1_grad/SumSumgradients/mul_1_grad/Mul_1:z:03gradients/add_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_1_grad/Sum
"gradients/add_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_1_grad/Reshape/shape
$gradients/add_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/add_1_grad/Reshape/shape_1ŗ
gradients/add_1_grad/ReshapeReshape!gradients/add_1_grad/Sum:output:0-gradients/add_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_1_grad/ReshapeØ
$gradients/logistic_loss/sub_grad/NegNeg gradients/Sum_grad/Tile:output:0*
T0*(
_output_shapes
:°2&
$gradients/logistic_loss/sub_grad/Neg³
(gradients/logistic_loss/Log1p_grad/add/xConst^gradients/Sum_grad/Tile*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(gradients/logistic_loss/Log1p_grad/add/xł
&gradients/logistic_loss/Log1p_grad/addAddV21gradients/logistic_loss/Log1p_grad/add/x:output:08gradients_logistic_loss_log1p_grad_add_logistic_loss_exp*
T0*(
_output_shapes
:°2(
&gradients/logistic_loss/Log1p_grad/addĖ
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal*gradients/logistic_loss/Log1p_grad/add:z:0*
T0*(
_output_shapes
:°2/
-gradients/logistic_loss/Log1p_grad/Reciprocalß
&gradients/logistic_loss/Log1p_grad/mulMul gradients/Sum_grad/Tile:output:01gradients/logistic_loss/Log1p_grad/Reciprocal:y:0*
T0*(
_output_shapes
:°2(
&gradients/logistic_loss/Log1p_grad/mul„
(gradients/add_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/add_grad/Sum/reduction_indices«
gradients/add_grad/SumSumgradients/mul_1_grad/Mul_1:z:01gradients/add_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/add_grad/Sum
 gradients/add_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/add_grad/Reshape/shape
"gradients/add_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/add_grad/Reshape/shape_1²
gradients/add_grad/ReshapeReshapegradients/add_grad/Sum:output:0+gradients/add_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/add_grad/Reshape¤
gradients/mul_2_grad/MulMulgradients/mul_3_grad/Mul_1:z:0gradients_mul_2_grad_mul_exp_1*
T0*
_output_shapes

:2
gradients/mul_2_grad/MulŖ
gradients/mul_2_grad/Mul_1Mulgradients/mul_3_grad/Mul_1:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:2
gradients/mul_2_grad/Mul_1Ł
>gradients/logistic_loss/Select_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   °         2@
>gradients/logistic_loss/Select_grad/zeros_like/shape_as_tensor±
4gradients/logistic_loss/Select_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4gradients/logistic_loss/Select_grad/zeros_like/Const£
.gradients/logistic_loss/Select_grad/zeros_likeFillGgradients/logistic_loss/Select_grad/zeros_like/shape_as_tensor:output:0=gradients/logistic_loss/Select_grad/zeros_like/Const:output:0*
T0*(
_output_shapes
:°20
.gradients/logistic_loss/Select_grad/zeros_like·
*gradients/logistic_loss/Select_grad/SelectSelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal gradients/Sum_grad/Tile:output:07gradients/logistic_loss/Select_grad/zeros_like:output:0*
T0*(
_output_shapes
:°2,
*gradients/logistic_loss/Select_grad/Select»
,gradients/logistic_loss/Select_grad/Select_1SelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal7gradients/logistic_loss/Select_grad/zeros_like:output:0 gradients/Sum_grad/Tile:output:0*
T0*(
_output_shapes
:°2.
,gradients/logistic_loss/Select_grad/Select_1Ų
$gradients/logistic_loss/mul_grad/MulMul(gradients/logistic_loss/sub_grad/Neg:y:0&gradients_logistic_loss_mul_grad_mul_x*
T0*(
_output_shapes
:°2&
$gradients/logistic_loss/mul_grad/Mulö
&gradients/logistic_loss/mul_grad/Mul_1Mul(gradients/logistic_loss/sub_grad/Neg:y:0@gradients_logistic_loss_mul_grad_mul_1_statefulpartitionedcall_2*
T0*(
_output_shapes
:°2(
&gradients/logistic_loss/mul_grad/Mul_1ģ
$gradients/logistic_loss/Exp_grad/mulMul*gradients/logistic_loss/Log1p_grad/mul:z:08gradients_logistic_loss_log1p_grad_add_logistic_loss_exp*
T0*(
_output_shapes
:°2&
$gradients/logistic_loss/Exp_grad/mul
gradients/mul_grad/MulMulgradients/mul_1_grad/Mul_1:z:0gradients_mul_grad_mul_exp*
T0*
_output_shapes

:2
gradients/mul_grad/Mul¢
gradients/mul_grad/Mul_1Mulgradients_mul_grad_mul_1_powgradients/mul_1_grad/Mul_1:z:0*
T0*
_output_shapes

:2
gradients/mul_grad/Mul_1„
(gradients/mul_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/mul_grad/Sum/reduction_indices©
gradients/mul_grad/SumSumgradients/mul_grad/Mul_1:z:01gradients/mul_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Sum
 gradients/mul_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/mul_grad/Reshape/shape
"gradients/mul_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/mul_grad/Reshape/shape_1²
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sum:output:0+gradients/mul_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/mul_grad/Reshape¤
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
 *  ?2
gradients/pow_1_grad/sub/y£
gradients/pow_1_grad/subSub gradients_pow_1_grad_mul_pow_1_y#gradients/pow_1_grad/sub/y:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/sub¢
gradients/pow_1_grad/PowPowgradients_pow_1_grad_pow_sub_1gradients/pow_1_grad/sub:z:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Pow¤
gradients/pow_1_grad/mul_1Mulgradients/pow_1_grad/mul:z:0gradients/pow_1_grad/Pow:z:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_1
gradients/pow_1_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
gradients/pow_1_grad/Greater/y¹
gradients/pow_1_grad/GreaterGreatergradients_pow_1_grad_pow_sub_1'gradients/pow_1_grad/Greater/y:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Greater
$gradients/pow_1_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$gradients/pow_1_grad/ones_like/Shape
$gradients/pow_1_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$gradients/pow_1_grad/ones_like/ConstĻ
gradients/pow_1_grad/ones_likeFill-gradients/pow_1_grad/ones_like/Shape:output:0-gradients/pow_1_grad/ones_like/Const:output:0*
T0*
_output_shapes

:2 
gradients/pow_1_grad/ones_likeŲ
gradients/pow_1_grad/SelectSelect gradients/pow_1_grad/Greater:z:0gradients_pow_1_grad_pow_sub_1'gradients/pow_1_grad/ones_like:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Select
gradients/pow_1_grad/LogLog$gradients/pow_1_grad/Select:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Log
gradients/pow_1_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    2!
gradients/pow_1_grad/zeros_likeŪ
gradients/pow_1_grad/Select_1Select gradients/pow_1_grad/Greater:z:0gradients/pow_1_grad/Log:y:0(gradients/pow_1_grad/zeros_like:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/Select_1Ø
gradients/pow_1_grad/mul_2Mulgradients/mul_2_grad/Mul:z:0 gradients_mul_2_grad_mul_1_pow_1*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_2°
gradients/pow_1_grad/mul_3Mulgradients/pow_1_grad/mul_2:z:0&gradients/pow_1_grad/Select_1:output:0*
T0*
_output_shapes

:2
gradients/pow_1_grad/mul_3©
*gradients/pow_1_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2,
*gradients/pow_1_grad/Sum/reduction_indices±
gradients/pow_1_grad/SumSumgradients/pow_1_grad/mul_3:z:03gradients/pow_1_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/Sum
"gradients/pow_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/pow_1_grad/Reshape/shape
$gradients/pow_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2&
$gradients/pow_1_grad/Reshape/shape_1ŗ
gradients/pow_1_grad/ReshapeReshape!gradients/pow_1_grad/Sum:output:0-gradients/pow_1_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/pow_1_grad/Reshape¤
gradients/Exp_1_grad/mulMulgradients/mul_2_grad/Mul_1:z:0gradients_mul_2_grad_mul_exp_1*
T0*
_output_shapes

:2
gradients/Exp_1_grad/mulŻ
@gradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   °         2B
@gradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensorµ
6gradients/logistic_loss/Select_1_grad/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    28
6gradients/logistic_loss/Select_1_grad/zeros_like/Const«
0gradients/logistic_loss/Select_1_grad/zeros_likeFillIgradients/logistic_loss/Select_1_grad/zeros_like/shape_as_tensor:output:0?gradients/logistic_loss/Select_1_grad/zeros_like/Const:output:0*
T0*(
_output_shapes
:°22
0gradients/logistic_loss/Select_1_grad/zeros_likeÅ
,gradients/logistic_loss/Select_1_grad/SelectSelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal(gradients/logistic_loss/Exp_grad/mul:z:09gradients/logistic_loss/Select_1_grad/zeros_like:output:0*
T0*(
_output_shapes
:°2.
,gradients/logistic_loss/Select_1_grad/SelectÉ
.gradients/logistic_loss/Select_1_grad/Select_1SelectEgradients_logistic_loss_select_grad_select_logistic_loss_greaterequal9gradients/logistic_loss/Select_1_grad/zeros_like:output:0(gradients/logistic_loss/Exp_grad/mul:z:0*
T0*(
_output_shapes
:°20
.gradients/logistic_loss/Select_1_grad/Select_1
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
 *  ?2
gradients/pow_grad/sub/y
gradients/pow_grad/subSubgradients_pow_grad_mul_pow_y!gradients/pow_grad/sub/y:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/sub
gradients/pow_grad/PowPowgradients_pow_grad_pow_subgradients/pow_grad/sub:z:0*
T0*
_output_shapes

:2
gradients/pow_grad/Pow
gradients/pow_grad/mul_1Mulgradients/pow_grad/mul:z:0gradients/pow_grad/Pow:z:0*
T0*
_output_shapes

:2
gradients/pow_grad/mul_1
gradients/pow_grad/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gradients/pow_grad/Greater/yÆ
gradients/pow_grad/GreaterGreatergradients_pow_grad_pow_sub%gradients/pow_grad/Greater/y:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Greater
"gradients/pow_grad/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gradients/pow_grad/ones_like/Shape
"gradients/pow_grad/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"gradients/pow_grad/ones_like/ConstĒ
gradients/pow_grad/ones_likeFill+gradients/pow_grad/ones_like/Shape:output:0+gradients/pow_grad/ones_like/Const:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/ones_likeĢ
gradients/pow_grad/SelectSelectgradients/pow_grad/Greater:z:0gradients_pow_grad_pow_sub%gradients/pow_grad/ones_like:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Select
gradients/pow_grad/LogLog"gradients/pow_grad/Select:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Log
gradients/pow_grad/zeros_likeConst*
_output_shapes

:*
dtype0*
valueB*    2
gradients/pow_grad/zeros_likeŃ
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greater:z:0gradients/pow_grad/Log:y:0&gradients/pow_grad/zeros_like:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/Select_1
gradients/pow_grad/mul_2Mulgradients/mul_grad/Mul:z:0gradients_mul_grad_mul_1_pow*
T0*
_output_shapes

:2
gradients/pow_grad/mul_2Ø
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2:z:0$gradients/pow_grad/Select_1:output:0*
T0*
_output_shapes

:2
gradients/pow_grad/mul_3„
(gradients/pow_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/pow_grad/Sum/reduction_indices©
gradients/pow_grad/SumSumgradients/pow_grad/mul_3:z:01gradients/pow_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/Sum
 gradients/pow_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/pow_grad/Reshape/shape
"gradients/pow_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/pow_grad/Reshape/shape_1²
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sum:output:0+gradients/pow_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/pow_grad/Reshape
gradients/sub_1_grad/NegNeggradients/pow_1_grad/mul_1:z:0*
T0*
_output_shapes

:2
gradients/sub_1_grad/Neg
gradients/Neg_1_grad/NegNeggradients/Exp_1_grad/mul:z:0*
T0*
_output_shapes

:2
gradients/Neg_1_grad/Neg½
$gradients/logistic_loss/Neg_grad/NegNeg5gradients/logistic_loss/Select_1_grad/Select:output:0*
T0*(
_output_shapes
:°2&
$gradients/logistic_loss/Neg_grad/Neg~
gradients/sub_grad/NegNeggradients/pow_grad/mul_1:z:0*
T0*
_output_shapes

:2
gradients/sub_grad/Neg„
(gradients/sub_grad/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2*
(gradients/sub_grad/Sum/reduction_indices§
gradients/sub_grad/SumSumgradients/sub_grad/Neg:y:01gradients/sub_grad/Sum/reduction_indices:output:0*
T0*
_output_shapes
: 2
gradients/sub_grad/Sum
 gradients/sub_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2"
 gradients/sub_grad/Reshape/shape
"gradients/sub_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2$
"gradients/sub_grad/Reshape/shape_1²
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sum:output:0+gradients/sub_grad/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2
gradients/sub_grad/Reshapeå
gradients/AddNAddN3gradients/logistic_loss/Select_grad/Select:output:0(gradients/logistic_loss/mul_grad/Mul:z:07gradients/logistic_loss/Select_1_grad/Select_1:output:0(gradients/logistic_loss/Neg_grad/Neg:y:0*
N*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*(
_output_shapes
:°2
gradients/AddN¼
8gradients/StatefulPartitionedCall_2_grad/PartitionedCallPartitionedCallgradients/AddN:sum:0Bgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_1Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_2Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_3Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_4Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_5Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_6Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_7Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_8Dgradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_9Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_10Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_11Egradients_statefulpartitionedcall_2_grad_statefulpartitionedcall_2_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *°
_output_shapes
::	,:,: ::::@:@: @: : :* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *2
f-R+
)__inference___backward_decode_16737_167982:
8gradients/StatefulPartitionedCall_2_grad/PartitionedCall
gradients/AddN_1AddNgradients/pow_1_grad/mul_1:z:0gradients/pow_grad/mul_1:z:0Agradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:0*
N*
T0*-
_class#
!loc:@gradients/pow_1_grad/mul_1*
_output_shapes

:2
gradients/AddN_1°
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
GPU2*0J 8 *:
f5R3
1__inference___backward_reparameterize_16839_168642:
8gradients/StatefulPartitionedCall_1_grad/PartitionedCallģ
gradients/AddN_2AddNgradients/sub_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:0*
N*
T0*+
_class!
loc:@gradients/sub_1_grad/Neg*
_output_shapes

:2
gradients/AddN_2
gradients/AddN_3AddNgradients/mul_3_grad/Mul_1:z:0gradients/Neg_1_grad/Neg:y:0Agradients/StatefulPartitionedCall_1_grad/PartitionedCall:output:1*
N*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1*
_output_shapes

:2
gradients/AddN_3Ź

6gradients/StatefulPartitionedCall_grad/PartitionedCallPartitionedCallgradients/AddN_2:sum:0gradients/AddN_3:sum:0>gradients_statefulpartitionedcall_grad_statefulpartitionedcall@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_1@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_2@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_3@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_4@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_5@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_6@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_7@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_8@gradients_statefulpartitionedcall_grad_statefulpartitionedcall_9Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_10Agradients_statefulpartitionedcall_grad_statefulpartitionedcall_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *”
_output_shapes
:°: : : @:@:@::::
¬:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *2
f-R+
)__inference___backward_encode_16877_1693728
6gradients/StatefulPartitionedCall_grad/PartitionedCall
gradients/AddN_4AddN*gradients/logistic_loss/mul_grad/Mul_1:z:0?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:0*
N*
T0*9
_class/
-+loc:@gradients/logistic_loss/mul_grad/Mul_1*(
_output_shapes
:°2
gradients/AddN_4k
IdentityIdentitygradients/AddN_4:sum:0*
T0*(
_output_shapes
:°2

Identity

Identity_1Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:1*
T0*&
_output_shapes
: 2

Identity_1

Identity_2Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:2*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:3*
T0*&
_output_shapes
: @2

Identity_3

Identity_4Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:4*
T0*
_output_shapes
:@2

Identity_4

Identity_5Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:5*
T0*'
_output_shapes
:@2

Identity_5

Identity_6Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:6*
T0*
_output_shapes	
:2

Identity_6

Identity_7Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:7*
T0*(
_output_shapes
:2

Identity_7

Identity_8Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:8*
T0*
_output_shapes	
:2

Identity_8

Identity_9Identity?gradients/StatefulPartitionedCall_grad/PartitionedCall:output:9*
T0* 
_output_shapes
:
¬2

Identity_9
Identity_10Identity@gradients/StatefulPartitionedCall_grad/PartitionedCall:output:10*
T0*
_output_shapes
:2
Identity_10
Identity_11IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:1*
T0*
_output_shapes
:	,2
Identity_11
Identity_12IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:2*
T0*
_output_shapes	
:,2
Identity_12
Identity_13IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:3*
T0*'
_output_shapes
: 2
Identity_13
Identity_14IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:4*
T0*
_output_shapes	
:2
Identity_14
Identity_15IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:5*
T0*(
_output_shapes
:2
Identity_15
Identity_16IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:6*
T0*
_output_shapes	
:2
Identity_16
Identity_17IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:7*
T0*'
_output_shapes
:@2
Identity_17
Identity_18IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:8*
T0*
_output_shapes
:@2
Identity_18
Identity_19IdentityAgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:9*
T0*&
_output_shapes
: @2
Identity_19
Identity_20IdentityBgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:10*
T0*
_output_shapes
: 2
Identity_20
Identity_21IdentityBgradients/StatefulPartitionedCall_2_grad/PartitionedCall:output:11*
T0*&
_output_shapes
: 2
Identity_21
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
_construction_contextkEagerRuntime*÷
_input_shapeså
ā: :: :: :°:::°:°:°: :: :: ::° : :X@: @:,@:@: :: : :	,:	,:::: :: :
¬:
¬:
:::+?@:@:W : @:°: *7
forward_function_name__forward_compute_loss_16997: 
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
:°:$ 

_output_shapes

::$ 

_output_shapes

::.*
(
_output_shapes
:°:.	*
(
_output_shapes
:°:.
*
(
_output_shapes
:°:
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
:° :,(
&
_output_shapes
: :-)
'
_output_shapes
:X@:,(
&
_output_shapes
: @:-)
'
_output_shapes
:,@:-)
'
_output_shapes
:@:-)
'
_output_shapes
: :.*
(
_output_shapes
::,(
&
_output_shapes
: :-)
'
_output_shapes
: :%!

_output_shapes
:	,:%!

_output_shapes
:	,:$ 

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
¬:&$"
 
_output_shapes
:
¬:-%)
'
_output_shapes
:
:-&)
'
_output_shapes
::.'*
(
_output_shapes
::,((
&
_output_shapes
:+?@:-))
'
_output_shapes
:@:,*(
&
_output_shapes
:W :,+(
&
_output_shapes
: @:.,*
(
_output_shapes
:°:,-(
&
_output_shapes
: 
É
Ŗ
$__inference_cvae_layer_call_fn_14883
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_cvae_layer_call_and_return_conditional_losses_143442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
©@
¼
__inference_compute_loss_15595
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2°
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
GPU2*0J 8 *!
fR
__inference_encode_152512
StatefulPartitionedCallń
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
GPU2*0J 8 *)
f$R"
 __inference_reparameterize_152892
StatefulPartitionedCall_1ū
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
:°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_154102
StatefulPartitionedCall_2­
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   °         2*
(logistic_loss/zeros_like/shape_as_tensor
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/ConstĖ
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:°2
logistic_loss/zeros_likeĀ
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/GreaterEqualŠ
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/NegČ
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select_1
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:°2
logistic_loss/mul
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:°2
logistic_loss/sub
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:°2
logistic_loss/Log1p
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:°2
logistic_loss
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
 *ŪÉ@2
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
 *   2
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
 *   æ2	
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
 *ŪÉ@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1
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
 *   æ2	
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

Identity 
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:°

_user_specified_namex
·L
×
__forward_encode_16936
x_0J
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
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
'sequential_conv2d_conv2d_readvariableop¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpĪ
sequential/conv2d/Conv2DConv2Dx_0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpĒ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpõ
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpĻ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpų
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŠ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpų
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŠ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/Const¹
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpŗ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp¼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
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

Identity_1
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
(:°: : : : : : : : : : *E
backward_function_name+)__inference___backward_encode_16877_169372T
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
:°

_user_specified_namex
²~
¬
)__inference___backward_decode_16737_16798
placeholder}
ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu
gradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop}
ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu
gradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop}
ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu
gradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop{
wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu
gradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableops
ogradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_reshape_reshape
gradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_conv2d_transpose_readvariableopO
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
:°2
gradients/grad_ys_0Ś
Bgradients/sequential_1/conv2d_transpose_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/grad_ys_0:output:0*
T0*
_output_shapes
:2D
Bgradients/sequential_1/conv2d_transpose_4/BiasAdd_grad/BiasAddGradē
Egradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2G
Egradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Shape
Tgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFiltergradients/grad_ys_0:output:0Ngradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu*
T0*&
_output_shapes
: *
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilter
Fgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DConv2Dgradients/grad_ys_0:output:0gradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop*
T0*(
_output_shapes
:° *
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2D
<gradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_4_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_3_relu*
T0*(
_output_shapes
:° 2>
<gradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad
Bgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
: 2D
Bgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGradē
Egradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   2G
Egradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Shape²
Tgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu*
T0*&
_output_shapes
: @*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilterĒ
Fgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_3/Relu_grad/ReluGrad:backprops:0gradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:X@*
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2D
<gradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_3_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_2_relu*
T0*'
_output_shapes
:X@2>
<gradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad
Bgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:@2D
Bgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGradē
Egradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      2G
Egradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Shape³
Tgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Shape:output:0ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu*
T0*'
_output_shapes
:@*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilterĒ
Fgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_2/Relu_grad/ReluGrad:backprops:0gradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop*
T0*'
_output_shapes
:,@*
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2D
<gradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2D:output:0ygradients_sequential_1_conv2d_transpose_2_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_1_relu*
T0*'
_output_shapes
:,@2>
<gradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad
Bgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGradBiasAddGradHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:2D
Bgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGradē
Egradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            2G
Egradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Shape²
Tgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0Ngradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Shape:output:0wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu*
T0*(
_output_shapes
:*
paddingSAME*
strides
2V
Tgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilterĒ
Fgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DConv2DHgradients/sequential_1/conv2d_transpose_1/Relu_grad/ReluGrad:backprops:0gradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop*
T0*'
_output_shapes
: *
paddingSAME*
strides
2H
Fgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2D
:gradients/sequential_1/conv2d_transpose/Relu_grad/ReluGradReluGradOgradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2D:output:0wgradients_sequential_1_conv2d_transpose_1_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_conv2d_transpose_relu*
T0*'
_output_shapes
: 2<
:gradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad
@gradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGradBiasAddGradFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:2B
@gradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGradć
Cgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             2E
Cgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Shape”
Rgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilterConv2DBackpropFilterFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0Lgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Shape:output:0ogradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2dbackpropfilter_sequential_1_reshape_reshape*
T0*'
_output_shapes
: *
paddingSAME*
strides
2T
Rgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilter¼
Dgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DConv2DFgradients/sequential_1/conv2d_transpose/Relu_grad/ReluGrad:backprops:0gradients_sequential_1_conv2d_transpose_conv2d_transpose_grad_conv2d_sequential_1_conv2d_transpose_conv2d_transpose_readvariableop*
T0*&
_output_shapes
: *
paddingSAME*
strides
2F
Dgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2D·
1gradients/sequential_1/reshape/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      23
1gradients/sequential_1/reshape/Reshape_grad/ShapeŖ
3gradients/sequential_1/reshape/Reshape_grad/ReshapeReshapeMgradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2D:output:0:gradients/sequential_1/reshape/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	,25
3gradients/sequential_1/reshape/Reshape_grad/Reshape§
1gradients/sequential_1/dense_1/Relu_grad/ReluGradReluGrad<gradients/sequential_1/reshape/Reshape_grad/Reshape:output:0Kgradients_sequential_1_dense_1_relu_grad_relugrad_sequential_1_dense_1_relu*
T0*
_output_shapes
:	,23
1gradients/sequential_1/dense_1/Relu_grad/ReluGradę
7gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes	
:,29
7gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGradÉ
1gradients/sequential_1/dense_1/MatMul_grad/MatMulMatMul=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0\gradients_sequential_1_dense_1_matmul_grad_matmul_sequential_1_dense_1_matmul_readvariableop*
T0*
_output_shapes

:*
transpose_b(23
1gradients/sequential_1/dense_1/MatMul_grad/MatMul§
3gradients/sequential_1/dense_1/MatMul_grad/MatMul_1MatMul5gradients_sequential_1_dense_1_matmul_grad_matmul_1_z=gradients/sequential_1/dense_1/Relu_grad/ReluGrad:backprops:0*
T0*
_output_shapes
:	,*
transpose_a(25
3gradients/sequential_1/dense_1/MatMul_grad/MatMul_1
IdentityIdentity;gradients/sequential_1/dense_1/MatMul_grad/MatMul:product:0*
T0*
_output_shapes

:2

Identity

Identity_1Identity=gradients/sequential_1/dense_1/MatMul_grad/MatMul_1:product:0*
T0*
_output_shapes
:	,2

Identity_1

Identity_2Identity@gradients/sequential_1/dense_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:,2

Identity_2³

Identity_3Identity[gradients/sequential_1/conv2d_transpose/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
: 2

Identity_3

Identity_4IdentityIgradients/sequential_1/conv2d_transpose/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:2

Identity_4¶

Identity_5Identity]gradients/sequential_1/conv2d_transpose_1/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*(
_output_shapes
:2

Identity_5

Identity_6IdentityKgradients/sequential_1/conv2d_transpose_1/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes	
:2

Identity_6µ

Identity_7Identity]gradients/sequential_1/conv2d_transpose_2/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*'
_output_shapes
:@2

Identity_7

Identity_8IdentityKgradients/sequential_1/conv2d_transpose_2/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
:@2

Identity_8“

Identity_9Identity]gradients/sequential_1/conv2d_transpose_3/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: @2

Identity_9
Identity_10IdentityKgradients/sequential_1/conv2d_transpose_3/BiasAdd_grad/BiasAddGrad:output:0*
T0*
_output_shapes
: 2
Identity_10¶
Identity_11Identity]gradients/sequential_1/conv2d_transpose_4/conv2d_transpose_grad/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: 2
Identity_11
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
_construction_contextkEagerRuntime*
_input_shapesō
ń:°:° : :X@: @:,@:@: :: : :	,:	,:*1
forward_function_name__forward_decode_16797:. *
(
_output_shapes
:°:.*
(
_output_shapes
:° :,(
&
_output_shapes
: :-)
'
_output_shapes
:X@:,(
&
_output_shapes
: @:-)
'
_output_shapes
:,@:-)
'
_output_shapes
:@:-)
'
_output_shapes
: :.*
(
_output_shapes
::,	(
&
_output_shapes
: :-
)
'
_output_shapes
: :%!

_output_shapes
:	,:%!

_output_shapes
:	,:$ 

_output_shapes

:
č
Ł
,__inference_sequential_1_layer_call_fn_14033
input_2
unknown:	,
	unknown_0:	,$
	unknown_1: 
	unknown_2:	%
	unknown_3:
	unknown_4:	$
	unknown_5:@
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_140062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2
÷
§
2__inference_conv2d_transpose_3_layer_call_fn_17977

inputs!
unknown: @
	unknown_0: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_136852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
 
_user_specified_nameinputs
Ū
°
$__inference_cvae_layer_call_fn_14830
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall“
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
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_cvae_layer_call_and_return_conditional_losses_143442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1
č
^
B__inference_flatten_layer_call_and_return_conditional_losses_17682

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’
:X T
0
_output_shapes
:’’’’’’’’’

 
_user_specified_nameinputs
ģ
ś
A__inference_conv2d_layer_call_and_return_conditional_losses_13057

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’W 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’°: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
©@
¼
__inference_compute_loss_15877
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2°
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
GPU2*0J 8 *!
fR
__inference_encode_156412
StatefulPartitionedCallń
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
GPU2*0J 8 *)
f$R"
 __inference_reparameterize_156792
StatefulPartitionedCall_1ū
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
:@°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_158002
StatefulPartitionedCall_2­
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"@   °         2*
(logistic_loss/zeros_like/shape_as_tensor
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/ConstĖ
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/zeros_likeĀ
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/GreaterEqualŠ
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/Select
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/NegČ
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/Select_1
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:@°2
logistic_loss/mul
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:@°2
logistic_loss/sub
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:@°2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:@°2
logistic_loss/Log1p
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:@°2
logistic_loss
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
 *ŪÉ@2
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
 *   2
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
 *   æ2	
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
 *ŪÉ@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1
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
 *   æ2	
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

Identity 
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:@°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:@°

_user_specified_namex
§

M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_13913

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’,@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
śA
æ	
__inference_encode_16281
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpĢ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpĒ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpõ
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpĻ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpų
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŠ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpų
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŠ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/Const¹
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpŗ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp¼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
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

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:°: : : : : : : : : : 2T
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
:°

_user_specified_namex
Ž
ž
__inference_decode_15800
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp„
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpĶ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeĪ
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2
sequential_1/reshape/Reshape£
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpķ
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
:@ *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ 2'
%sequential_1/conv2d_transpose/BiasAdd²
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
:@ 2$
"sequential_1/conv2d_transpose/Relu§
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:@,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@2)
'sequential_1/conv2d_transpose_1/BiasAddø
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:@,@2&
$sequential_1/conv2d_transpose_1/Relu§
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @      2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:@X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X@2)
'sequential_1/conv2d_transpose_2/BiasAddø
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:@X@2&
$sequential_1/conv2d_transpose_2/Relu§
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X      @   2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:@° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@° 2)
'sequential_1/conv2d_transpose_3/BiasAdd¹
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:@° 2&
$sequential_1/conv2d_transpose_3/Relu§
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   °          2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:@°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez
śA
æ	
__inference_encode_15641
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpĢ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpĒ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpõ
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpĻ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpų
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŠ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:@2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpų
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŠ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:@
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/Const¹
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
@¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpŗ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp¼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
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

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@°: : : : : : : : : : 2T
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
:@°

_user_specified_namex
÷
§
2__inference_conv2d_transpose_4_layer_call_fn_18053

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_137722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs
śA
æ	
__inference_encode_15251
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpĢ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpĒ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpõ
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpĻ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpų
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŠ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpų
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŠ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/Const¹
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpŗ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp¼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
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

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:°: : : : : : : : : : 2T
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
:°

_user_specified_namex


*__inference_sequential_layer_call_fn_17188

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
identity¢StatefulPartitionedCallą
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_131392
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
č
Ł
,__inference_sequential_1_layer_call_fn_14216
input_2
unknown:	,
	unknown_0:	,$
	unknown_1: 
	unknown_2:	%
	unknown_3:
	unknown_4:	$
	unknown_5:@
	unknown_6:@#
	unknown_7: @
	unknown_8: #
	unknown_9: 

unknown_10:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_141602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:’’’’’’’’’
!
_user_specified_name	input_2
Ž
ž
__inference_decode_16117
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp„
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpĶ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
:	@,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@      2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shapeĪ
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*&
_output_shapes
:@ 2
sequential_1/reshape/Reshape£
#sequential_1/conv2d_transpose/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpķ
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*'
_output_shapes
:@ *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@ 2'
%sequential_1/conv2d_transpose/BiasAdd²
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*'
_output_shapes
:@ 2$
"sequential_1/conv2d_transpose/Relu§
%sequential_1/conv2d_transpose_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@             2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*'
_output_shapes
:@,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@,@2)
'sequential_1/conv2d_transpose_1/BiasAddø
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*'
_output_shapes
:@,@2&
$sequential_1/conv2d_transpose_1/Relu§
%sequential_1/conv2d_transpose_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   ,   @      2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*'
_output_shapes
:@X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@X@2)
'sequential_1/conv2d_transpose_2/BiasAddø
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*'
_output_shapes
:@X@2&
$sequential_1/conv2d_transpose_2/Relu§
%sequential_1/conv2d_transpose_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   X      @   2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*(
_output_shapes
:@° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@° 2)
'sequential_1/conv2d_transpose_3/BiasAdd¹
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*(
_output_shapes
:@° 2&
$sequential_1/conv2d_transpose_3/Relu§
%sequential_1/conv2d_transpose_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"@   °          2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*(
_output_shapes
:@°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:@°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*(
_output_shapes
:@°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":@: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:A =

_output_shapes

:@

_user_specified_namez


(__inference_conv2d_1_layer_call_fn_17620

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallž
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_130742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’+?@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’W : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’W 
 
_user_specified_nameinputs
·C
æ	
__inference_encode_12800
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpÕ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpŠ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpž
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpŲ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOp
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŁ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOp
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŁ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/ConstĀ
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpĆ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOpÅ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimŖ
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
T0*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*
	num_split2
spliti
IdentityIdentitysplit:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identitym

Identity_1Identitysplit:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2T
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
:’’’’’’’’’°

_user_specified_namex
£ 
ė
E__inference_sequential_layer_call_and_return_conditional_losses_13275

inputs&
conv2d_13248: 
conv2d_13250: (
conv2d_1_13253: @
conv2d_1_13255:@)
conv2d_2_13258:@
conv2d_2_13260:	*
conv2d_3_13263:
conv2d_3_13265:	
dense_13269:
¬
dense_13271:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_13248conv2d_13250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_130572 
conv2d/StatefulPartitionedCall½
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_13253conv2d_1_13255*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_130742"
 conv2d_1/StatefulPartitionedCallĄ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_13258conv2d_2_13260*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_130912"
 conv2d_2/StatefulPartitionedCallĄ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_13263conv2d_3_13265*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_131082"
 conv2d_3/StatefulPartitionedCallų
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:’’’’’’’’’¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_131202
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13269dense_13271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_131322
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityų
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’°
 
_user_specified_nameinputs
÷
§
0__inference_conv2d_transpose_layer_call_fn_17749

inputs"
unknown: 
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_134212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs
ņ
ž
C__inference_conv2d_2_layer_call_and_return_conditional_losses_13091

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp„
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’+?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’+?@
 
_user_specified_nameinputs
”

K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_13884

inputsC
(conv2d_transpose_readvariableop_resource: .
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
B :2	
stack/3
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
strided_slice_1/stack_2ģ
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1“
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’ 
 
_user_specified_nameinputs
’%

M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_13685

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
 
_user_specified_nameinputs
ņ
ž
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17651

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp„
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’+?@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’+?@
 
_user_specified_nameinputs
É
Ŗ
$__inference_cvae_layer_call_fn_14936
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
C:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’°*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_cvae_layer_call_and_return_conditional_losses_145042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

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
I:’’’’’’’’’°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
1
_output_shapes
:’’’’’’’’’°

_user_specified_namex
ļß
ž
__inference_decode_16237
zF
3sequential_1_dense_1_matmul_readvariableop_resource:	,C
4sequential_1_dense_1_biasadd_readvariableop_resource:	,a
Fsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource: L
=sequential_1_conv2d_transpose_biasadd_readvariableop_resource:	d
Hsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:N
?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource:	c
Hsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:@M
?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource:@b
Hsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource: @M
?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource: b
Hsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource: M
?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource:
identity¢4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp¢=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp¢6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp¢?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOpĶ
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	,*
dtype02,
*sequential_1/dense_1/MatMul/ReadVariableOp®
sequential_1/dense_1/MatMulMatMulz2sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/MatMulĢ
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:,*
dtype02-
+sequential_1/dense_1/BiasAdd/ReadVariableOpÖ
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/BiasAdd
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’,2
sequential_1/dense_1/Relu
sequential_1/reshape/ShapeShape'sequential_1/dense_1/Relu:activations:0*
T0*
_output_shapes
:2
sequential_1/reshape/Shape
(sequential_1/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_1/reshape/strided_slice/stack¢
*sequential_1/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_1¢
*sequential_1/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_1/reshape/strided_slice/stack_2ą
"sequential_1/reshape/strided_sliceStridedSlice#sequential_1/reshape/Shape:output:01sequential_1/reshape/strided_slice/stack:output:03sequential_1/reshape/strided_slice/stack_1:output:03sequential_1/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_1/reshape/strided_slice
$sequential_1/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/1
$sequential_1/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_1/reshape/Reshape/shape/2
$sequential_1/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2&
$sequential_1/reshape/Reshape/shape/3ø
"sequential_1/reshape/Reshape/shapePack+sequential_1/reshape/strided_slice:output:0-sequential_1/reshape/Reshape/shape/1:output:0-sequential_1/reshape/Reshape/shape/2:output:0-sequential_1/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2$
"sequential_1/reshape/Reshape/shape×
sequential_1/reshape/ReshapeReshape'sequential_1/dense_1/Relu:activations:0+sequential_1/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2
sequential_1/reshape/Reshape
#sequential_1/conv2d_transpose/ShapeShape%sequential_1/reshape/Reshape:output:0*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/Shape°
1sequential_1/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1sequential_1/conv2d_transpose/strided_slice/stack“
3sequential_1/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_1“
3sequential_1/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3sequential_1/conv2d_transpose/strided_slice/stack_2
+sequential_1/conv2d_transpose/strided_sliceStridedSlice,sequential_1/conv2d_transpose/Shape:output:0:sequential_1/conv2d_transpose/strided_slice/stack:output:0<sequential_1/conv2d_transpose/strided_slice/stack_1:output:0<sequential_1/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+sequential_1/conv2d_transpose/strided_slice
%sequential_1/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_1/conv2d_transpose/stack/1
%sequential_1/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_1/conv2d_transpose/stack/2
%sequential_1/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2'
%sequential_1/conv2d_transpose/stack/3Ę
#sequential_1/conv2d_transpose/stackPack4sequential_1/conv2d_transpose/strided_slice:output:0.sequential_1/conv2d_transpose/stack/1:output:0.sequential_1/conv2d_transpose/stack/2:output:0.sequential_1/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:2%
#sequential_1/conv2d_transpose/stack“
3sequential_1/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose/strided_slice_1/stackø
5sequential_1/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_1ø
5sequential_1/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose/strided_slice_1/stack_2 
-sequential_1/conv2d_transpose/strided_slice_1StridedSlice,sequential_1/conv2d_transpose/stack:output:0<sequential_1/conv2d_transpose/strided_slice_1/stack:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_1:output:0>sequential_1/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose/strided_slice_1
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_1_conv2d_transpose_conv2d_transpose_readvariableop_resource*'
_output_shapes
: *
dtype02?
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOpö
.sequential_1/conv2d_transpose/conv2d_transposeConv2DBackpropInput,sequential_1/conv2d_transpose/stack:output:0Esequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0%sequential_1/reshape/Reshape:output:0*
T0*0
_output_shapes
:’’’’’’’’’ *
paddingSAME*
strides
20
.sequential_1/conv2d_transpose/conv2d_transposeē
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp=sequential_1_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype026
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp
%sequential_1/conv2d_transpose/BiasAddBiasAdd7sequential_1/conv2d_transpose/conv2d_transpose:output:0<sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’ 2'
%sequential_1/conv2d_transpose/BiasAdd»
"sequential_1/conv2d_transpose/ReluRelu.sequential_1/conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’ 2$
"sequential_1/conv2d_transpose/Relu®
%sequential_1/conv2d_transpose_1/ShapeShape0sequential_1/conv2d_transpose/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/Shape“
3sequential_1/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_1/strided_slice/stackø
5sequential_1/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_1/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_1/strided_sliceStridedSlice.sequential_1/conv2d_transpose_1/Shape:output:0<sequential_1/conv2d_transpose_1/strided_slice/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_1/strided_slice
'sequential_1/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :,2)
'sequential_1/conv2d_transpose_1/stack/1
'sequential_1/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_1/stack/2
'sequential_1/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_1/stack/3Ņ
%sequential_1/conv2d_transpose_1/stackPack6sequential_1/conv2d_transpose_1/strided_slice:output:00sequential_1/conv2d_transpose_1/stack/1:output:00sequential_1/conv2d_transpose_1/stack/2:output:00sequential_1/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_1/stackø
5sequential_1/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_1/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_1/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_1/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_1/stack:output:0>sequential_1/conv2d_transpose_1/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_1/strided_slice_1
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02A
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_1/stack:output:0Gsequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:00sequential_1/conv2d_transpose/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’,@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_1/conv2d_transposeķ
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_1/BiasAddBiasAdd9sequential_1/conv2d_transpose_1/conv2d_transpose:output:0>sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’,@2)
'sequential_1/conv2d_transpose_1/BiasAddĮ
$sequential_1/conv2d_transpose_1/ReluRelu0sequential_1/conv2d_transpose_1/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’,@2&
$sequential_1/conv2d_transpose_1/Relu°
%sequential_1/conv2d_transpose_2/ShapeShape2sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/Shape“
3sequential_1/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_2/strided_slice/stackø
5sequential_1/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_2/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_2/strided_sliceStridedSlice.sequential_1/conv2d_transpose_2/Shape:output:0<sequential_1/conv2d_transpose_2/strided_slice/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_2/strided_slice
'sequential_1/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :X2)
'sequential_1/conv2d_transpose_2/stack/1
'sequential_1/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_2/stack/2
'sequential_1/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2)
'sequential_1/conv2d_transpose_2/stack/3Ņ
%sequential_1/conv2d_transpose_2/stackPack6sequential_1/conv2d_transpose_2/strided_slice:output:00sequential_1/conv2d_transpose_2/stack/1:output:00sequential_1/conv2d_transpose_2/stack/2:output:00sequential_1/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_2/stackø
5sequential_1/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_2/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_2/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_2/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_2/stack:output:0>sequential_1/conv2d_transpose_2/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_2/strided_slice_1
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02A
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_2/stack:output:0Gsequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_1/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’X@*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_2/conv2d_transposeģ
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype028
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_2/BiasAddBiasAdd9sequential_1/conv2d_transpose_2/conv2d_transpose:output:0>sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’X@2)
'sequential_1/conv2d_transpose_2/BiasAddĮ
$sequential_1/conv2d_transpose_2/ReluRelu0sequential_1/conv2d_transpose_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’X@2&
$sequential_1/conv2d_transpose_2/Relu°
%sequential_1/conv2d_transpose_3/ShapeShape2sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/Shape“
3sequential_1/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_3/strided_slice/stackø
5sequential_1/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_3/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_3/strided_sliceStridedSlice.sequential_1/conv2d_transpose_3/Shape:output:0<sequential_1/conv2d_transpose_3/strided_slice/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_3/strided_slice
'sequential_1/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_3/stack/1
'sequential_1/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_3/stack/2
'sequential_1/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_1/conv2d_transpose_3/stack/3Ņ
%sequential_1/conv2d_transpose_3/stackPack6sequential_1/conv2d_transpose_3/strided_slice:output:00sequential_1/conv2d_transpose_3/stack/1:output:00sequential_1/conv2d_transpose_3/stack/2:output:00sequential_1/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_3/stackø
5sequential_1/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_3/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_3/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_3/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_3/stack:output:0>sequential_1/conv2d_transpose_3/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_3/strided_slice_1
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02A
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_3/stack:output:0Gsequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_2/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’° *
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_3/conv2d_transposeģ
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype028
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_3/BiasAddBiasAdd9sequential_1/conv2d_transpose_3/conv2d_transpose:output:0>sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’° 2)
'sequential_1/conv2d_transpose_3/BiasAddĀ
$sequential_1/conv2d_transpose_3/ReluRelu0sequential_1/conv2d_transpose_3/BiasAdd:output:0*
T0*1
_output_shapes
:’’’’’’’’’° 2&
$sequential_1/conv2d_transpose_3/Relu°
%sequential_1/conv2d_transpose_4/ShapeShape2sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/Shape“
3sequential_1/conv2d_transpose_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_1/conv2d_transpose_4/strided_slice/stackø
5sequential_1/conv2d_transpose_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_1ø
5sequential_1/conv2d_transpose_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_1/conv2d_transpose_4/strided_slice/stack_2¢
-sequential_1/conv2d_transpose_4/strided_sliceStridedSlice.sequential_1/conv2d_transpose_4/Shape:output:0<sequential_1/conv2d_transpose_4/strided_slice/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_1:output:0>sequential_1/conv2d_transpose_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_1/conv2d_transpose_4/strided_slice
'sequential_1/conv2d_transpose_4/stack/1Const*
_output_shapes
: *
dtype0*
value
B :°2)
'sequential_1/conv2d_transpose_4/stack/1
'sequential_1/conv2d_transpose_4/stack/2Const*
_output_shapes
: *
dtype0*
value
B :2)
'sequential_1/conv2d_transpose_4/stack/2
'sequential_1/conv2d_transpose_4/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_1/conv2d_transpose_4/stack/3Ņ
%sequential_1/conv2d_transpose_4/stackPack6sequential_1/conv2d_transpose_4/strided_slice:output:00sequential_1/conv2d_transpose_4/stack/1:output:00sequential_1/conv2d_transpose_4/stack/2:output:00sequential_1/conv2d_transpose_4/stack/3:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/conv2d_transpose_4/stackø
5sequential_1/conv2d_transpose_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5sequential_1/conv2d_transpose_4/strided_slice_1/stack¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_1¼
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_1/conv2d_transpose_4/strided_slice_1/stack_2¬
/sequential_1/conv2d_transpose_4/strided_slice_1StridedSlice.sequential_1/conv2d_transpose_4/stack:output:0>sequential_1/conv2d_transpose_4/strided_slice_1/stack:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_1:output:0@sequential_1/conv2d_transpose_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_1/conv2d_transpose_4/strided_slice_1
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_1_conv2d_transpose_4_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02A
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp
0sequential_1/conv2d_transpose_4/conv2d_transposeConv2DBackpropInput.sequential_1/conv2d_transpose_4/stack:output:0Gsequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp:value:02sequential_1/conv2d_transpose_3/Relu:activations:0*
T0*1
_output_shapes
:’’’’’’’’’°*
paddingSAME*
strides
22
0sequential_1/conv2d_transpose_4/conv2d_transposeģ
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOpReadVariableOp?sequential_1_conv2d_transpose_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp
'sequential_1/conv2d_transpose_4/BiasAddBiasAdd9sequential_1/conv2d_transpose_4/conv2d_transpose:output:0>sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:’’’’’’’’’°2)
'sequential_1/conv2d_transpose_4/BiasAdd
IdentityIdentity0sequential_1/conv2d_transpose_4/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’°2

Identity
NoOpNoOp5^sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp>^sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp7^sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp@^sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:’’’’’’’’’: : : : : : : : : : : : 2l
4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp4sequential_1/conv2d_transpose/BiasAdd/ReadVariableOp2~
=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp=sequential_1/conv2d_transpose/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_1/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_2/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_3/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2p
6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp6sequential_1/conv2d_transpose_4/BiasAdd/ReadVariableOp2
?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp?sequential_1/conv2d_transpose_4/conv2d_transpose/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp:J F
'
_output_shapes
:’’’’’’’’’

_user_specified_namez
ņ

%__inference_dense_layer_call_fn_17691

inputs
unknown:
¬
	unknown_0:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_131322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:’’’’’’’’’¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:’’’’’’’’’¬
 
_user_specified_nameinputs
Ž4

E__inference_sequential_layer_call_and_return_conditional_losses_17253

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource: @6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@7
(conv2d_2_biasadd_readvariableop_resource:	C
'conv2d_3_conv2d_readvariableop_resource:7
(conv2d_3_biasadd_readvariableop_resource:	8
$dense_matmul_readvariableop_resource:
¬3
%dense_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOpŖ
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
conv2d/Conv2D/ReadVariableOp¹
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W *
paddingVALID*
strides
2
conv2d/Conv2D”
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
conv2d/BiasAddu
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’W 2
conv2d/Relu°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_1/Conv2D/ReadVariableOpŅ
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
conv2d_1/Conv2D§
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp¬
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
conv2d_1/Relu±
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02 
conv2d_2/Conv2D/ReadVariableOpÕ
conv2d_2/Conv2DConv2Dconv2d_1/Relu:activations:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
2
conv2d_2/Conv2DØ
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp­
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’2
conv2d_2/Relu²
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02 
conv2d_3/Conv2D/ReadVariableOpÕ
conv2d_3/Conv2DConv2Dconv2d_2/Relu:activations:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
*
paddingVALID*
strides
2
conv2d_3/Conv2DØ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp­
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’
2
conv2d_3/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
flatten/Const
flatten/ReshapeReshapeconv2d_3/Relu:activations:0flatten/Const:output:0*
T0*)
_output_shapes
:’’’’’’’’’¬2
flatten/Reshape”
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’2
dense/BiasAddq
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identity
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2>
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
:’’’’’’’’’°
 
_user_specified_nameinputs
¦ 
ģ
E__inference_sequential_layer_call_and_return_conditional_losses_13383
input_1&
conv2d_13356: 
conv2d_13358: (
conv2d_1_13361: @
conv2d_1_13363:@)
conv2d_2_13366:@
conv2d_2_13368:	*
conv2d_3_13371:
conv2d_3_13373:	
dense_13377:
¬
dense_13379:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢dense/StatefulPartitionedCall
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_13356conv2d_13358*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’W *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_130572 
conv2d/StatefulPartitionedCall½
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_13361conv2d_1_13363*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’+?@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_130742"
 conv2d_1/StatefulPartitionedCallĄ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0conv2d_2_13366conv2d_2_13368*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_130912"
 conv2d_2/StatefulPartitionedCallĄ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0conv2d_3_13371conv2d_3_13373*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_131082"
 conv2d_3/StatefulPartitionedCallų
flatten/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:’’’’’’’’’¬* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_131202
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_13377dense_13379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_131322
dense/StatefulPartitionedCall
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’2

Identityų
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:’’’’’’’’’°: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:’’’’’’’’’°
!
_user_specified_name	input_1

^
B__inference_reshape_layer_call_and_return_conditional_losses_13859

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
strided_slice/stack_2ā
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
Reshape/shape/3ŗ
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:’’’’’’’’’ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:’’’’’’’’’,:P L
(
_output_shapes
:’’’’’’’’’,
 
_user_specified_nameinputs
Š
I
 __inference_reparameterize_16401
mean

logvar
identity_
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
 *  ?2
random_normal/stddev¦
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*
_output_shapes

:@*
dtype02$
"random_normal/RandomStandardNormal¢
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*
_output_shapes

:@2
random_normal/mul
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
śA
æ	
__inference_encode_16325
xJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource: @A
3sequential_conv2d_1_biasadd_readvariableop_resource:@M
2sequential_conv2d_2_conv2d_readvariableop_resource:@B
3sequential_conv2d_2_biasadd_readvariableop_resource:	N
2sequential_conv2d_3_conv2d_readvariableop_resource:B
3sequential_conv2d_3_biasadd_readvariableop_resource:	C
/sequential_dense_matmul_readvariableop_resource:
¬>
0sequential_dense_biasadd_readvariableop_resource:
identity

identity_1¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢*sequential/conv2d_3/BiasAdd/ReadVariableOp¢)sequential/conv2d_3/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOpĖ
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOpĢ
sequential/conv2d/Conv2DConv2Dx/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W *
paddingVALID*
strides
2
sequential/conv2d/Conv2DĀ
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOpĒ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/BiasAdd
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*&
_output_shapes
:@W 2
sequential/conv2d/ReluŃ
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOpõ
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2DČ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOpĻ
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/BiasAdd
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*&
_output_shapes
:@+?@2
sequential/conv2d_1/ReluŅ
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02+
)sequential/conv2d_2/Conv2D/ReadVariableOpų
sequential/conv2d_2/Conv2DConv2D&sequential/conv2d_1/Relu:activations:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@*
paddingVALID*
strides
2
sequential/conv2d_2/Conv2DÉ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_2/BiasAdd/ReadVariableOpŠ
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@2
sequential/conv2d_2/BiasAdd
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*'
_output_shapes
:@2
sequential/conv2d_2/ReluÓ
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02+
)sequential/conv2d_3/Conv2D/ReadVariableOpų
sequential/conv2d_3/Conv2DConv2D&sequential/conv2d_2/Relu:activations:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
*
paddingVALID*
strides
2
sequential/conv2d_3/Conv2DÉ
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02,
*sequential/conv2d_3/BiasAdd/ReadVariableOpŠ
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@
2
sequential/conv2d_3/BiasAdd
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*'
_output_shapes
:@
2
sequential/conv2d_3/Relu
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   2
sequential/flatten/Const¹
sequential/flatten/ReshapeReshape&sequential/conv2d_3/Relu:activations:0!sequential/flatten/Const:output:0*
T0* 
_output_shapes
:
@¬2
sequential/flatten/ReshapeĀ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02(
&sequential/dense/MatMul/ReadVariableOpŗ
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential/dense/MatMulæ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp¼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@2
sequential/dense/BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
splitSplitsplit/split_dim:output:0!sequential/dense/BiasAdd:output:0*
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

Identity_1
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:@°: : : : : : : : : : 2T
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
:@°

_user_specified_namex
µ
§
2__inference_conv2d_transpose_3_layer_call_fn_17986

inputs!
unknown: @
	unknown_0: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’° *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_139712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:’’’’’’’’’° 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’X@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’X@
 
_user_specified_nameinputs
%

M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_13772

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
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
strided_slice/stack_2ā
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
strided_slice_1/stack_2ģ
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
strided_slice_2/stack_2ģ
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
stack/3
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
strided_slice_3/stack_2ģ
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpš
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2	
BiasAdd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 
_user_specified_nameinputs
©@
¼
__inference_compute_loss_16521
x!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@
	unknown_4:	%
	unknown_5:
	unknown_6:	
	unknown_7:
¬
	unknown_8:
	unknown_9:	,

unknown_10:	,%

unknown_11: 

unknown_12:	&

unknown_13:

unknown_14:	%

unknown_15:@

unknown_16:@$

unknown_17: @

unknown_18: $

unknown_19: 

unknown_20:
identity¢StatefulPartitionedCall¢StatefulPartitionedCall_1¢StatefulPartitionedCall_2°
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
GPU2*0J 8 *!
fR
__inference_encode_152512
StatefulPartitionedCallń
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
GPU2*0J 8 *)
f$R"
 __inference_reparameterize_152892
StatefulPartitionedCall_1ū
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
:°*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *!
fR
__inference_decode_154102
StatefulPartitionedCall_2­
(logistic_loss/zeros_like/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"   °         2*
(logistic_loss/zeros_like/shape_as_tensor
logistic_loss/zeros_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
logistic_loss/zeros_like/ConstĖ
logistic_loss/zeros_likeFill1logistic_loss/zeros_like/shape_as_tensor:output:0'logistic_loss/zeros_like/Const:output:0*
T0*(
_output_shapes
:°2
logistic_loss/zeros_likeĀ
logistic_loss/GreaterEqualGreaterEqual"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/GreaterEqualŠ
logistic_loss/SelectSelectlogistic_loss/GreaterEqual:z:0"StatefulPartitionedCall_2:output:0!logistic_loss/zeros_like:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select
logistic_loss/NegNeg"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/NegČ
logistic_loss/Select_1Selectlogistic_loss/GreaterEqual:z:0logistic_loss/Neg:y:0"StatefulPartitionedCall_2:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Select_1
logistic_loss/mulMul"StatefulPartitionedCall_2:output:0x*
T0*(
_output_shapes
:°2
logistic_loss/mul
logistic_loss/subSublogistic_loss/Select:output:0logistic_loss/mul:z:0*
T0*(
_output_shapes
:°2
logistic_loss/sub
logistic_loss/ExpExplogistic_loss/Select_1:output:0*
T0*(
_output_shapes
:°2
logistic_loss/Exp}
logistic_loss/Log1pLog1plogistic_loss/Exp:y:0*
T0*(
_output_shapes
:°2
logistic_loss/Log1p
logistic_lossAddV2logistic_loss/sub:z:0logistic_loss/Log1p:y:0*
T0*(
_output_shapes
:°2
logistic_loss
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
 *ŪÉ@2
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
 *   2
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
 *   æ2	
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
 *ŪÉ@2	
Log_1/xH
Log_1LogLog_1/x:output:0*
T0*
_output_shapes
: 2
Log_1
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
 *   æ2	
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

Identity 
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:°: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:K G
(
_output_shapes
:°

_user_specified_namex
ź
ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_13074

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’+?@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’+?@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’W : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’W 
 
_user_specified_nameinputs"ØL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
E
input_1:
serving_default_input_1:0’’’’’’’’’°<
output_10
StatefulPartitionedCall:0’’’’’’’’’<
output_20
StatefulPartitionedCall:1’’’’’’’’’F
output_3:
StatefulPartitionedCall:2’’’’’’’’’°tensorflow/serving/predict:Ģ
ó
encoder
decoder
	optimizer
loss
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
ź__call__
ė_default_save_signature
+ģ&call_and_return_all_conditional_losses
	ķcall
īcompute_loss
ļdecode
šencode
ńreparameterize
ņsample
ó
train_step"
_tf_keras_model
ü
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
trainable_variables
	variables
regularization_losses
	keras_api
ō__call__
+õ&call_and_return_all_conditional_losses"
_tf_keras_sequential
£
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
trainable_variables
	variables
regularization_losses
	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_sequential

iter

 beta_1

!beta_2
	"decay
#learning_rate$m¾%mæ&mĄ'mĮ(mĀ)mĆ*mÄ+mÅ,mĘ-mĒ.mČ/mÉ0mŹ1mĖ2mĢ3mĶ4mĪ5mĻ6mŠ7mŃ8mŅ9mÓ$vŌ%vÕ&vÖ'v×(vŲ)vŁ*vŚ+vŪ,vÜ-vŻ.vŽ/vß0vą1vį2vā3vć4vä5vå6vę7vē8vč9vé"
	optimizer
 "
trackable_dict_wrapper
Ę
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
Ę
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
 "
trackable_list_wrapper
Ī
trainable_variables
:layer_regularization_losses
;metrics
<layer_metrics
	variables

=layers
regularization_losses
>non_trainable_variables
ź__call__
ė_default_save_signature
+ģ&call_and_return_all_conditional_losses
'ģ"call_and_return_conditional_losses"
_generic_user_object
-
ųserving_default"
signature_map
½

$kernel
%bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
ł__call__
+ś&call_and_return_all_conditional_losses"
_tf_keras_layer
½

&kernel
'bias
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
ū__call__
+ü&call_and_return_all_conditional_losses"
_tf_keras_layer
½

(kernel
)bias
Gtrainable_variables
H	variables
Iregularization_losses
J	keras_api
ż__call__
+ž&call_and_return_all_conditional_losses"
_tf_keras_layer
½

*kernel
+bias
Ktrainable_variables
L	variables
Mregularization_losses
N	keras_api
’__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
§
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

,kernel
-bias
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
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
 "
trackable_list_wrapper
°
trainable_variables
Wlayer_regularization_losses
Xmetrics
Ylayer_metrics
	variables

Zlayers
regularization_losses
[non_trainable_variables
ō__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
½

.kernel
/bias
\trainable_variables
]	variables
^regularization_losses
_	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
§
`trainable_variables
a	variables
bregularization_losses
c	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

0kernel
1bias
dtrainable_variables
e	variables
fregularization_losses
g	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

2kernel
3bias
htrainable_variables
i	variables
jregularization_losses
k	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

4kernel
5bias
ltrainable_variables
m	variables
nregularization_losses
o	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

6kernel
7bias
ptrainable_variables
q	variables
rregularization_losses
s	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
½

8kernel
9bias
ttrainable_variables
u	variables
vregularization_losses
w	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
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
 "
trackable_list_wrapper
°
trainable_variables
xlayer_regularization_losses
ymetrics
zlayer_metrics
	variables

{layers
regularization_losses
|non_trainable_variables
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
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
*:(@2conv2d_2/kernel
:2conv2d_2/bias
+:)2conv2d_3/kernel
:2conv2d_3/bias
 :
¬2dense/kernel
:2
dense/bias
!:	,2dense_1/kernel
:,2dense_1/bias
2:0 2conv2d_transpose/kernel
$:"2conv2d_transpose/bias
5:32conv2d_transpose_1/kernel
&:$2conv2d_transpose_1/bias
4:2@2conv2d_transpose_2/kernel
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
 "
trackable_list_wrapper
²
?trainable_variables
}layer_regularization_losses
~metrics
layer_metrics
@	variables
layers
Aregularization_losses
non_trainable_variables
ł__call__
+ś&call_and_return_all_conditional_losses
'ś"call_and_return_conditional_losses"
_generic_user_object
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ctrainable_variables
 layer_regularization_losses
metrics
layer_metrics
D	variables
layers
Eregularization_losses
non_trainable_variables
ū__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Gtrainable_variables
 layer_regularization_losses
metrics
layer_metrics
H	variables
layers
Iregularization_losses
non_trainable_variables
ż__call__
+ž&call_and_return_all_conditional_losses
'ž"call_and_return_conditional_losses"
_generic_user_object
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ktrainable_variables
 layer_regularization_losses
metrics
layer_metrics
L	variables
layers
Mregularization_losses
non_trainable_variables
’__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Otrainable_variables
 layer_regularization_losses
metrics
layer_metrics
P	variables
layers
Qregularization_losses
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Strainable_variables
 layer_regularization_losses
metrics
layer_metrics
T	variables
layers
Uregularization_losses
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
µ
\trainable_variables
 layer_regularization_losses
metrics
layer_metrics
]	variables
layers
^regularization_losses
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
`trainable_variables
  layer_regularization_losses
”metrics
¢layer_metrics
a	variables
£layers
bregularization_losses
¤non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
dtrainable_variables
 „layer_regularization_losses
¦metrics
§layer_metrics
e	variables
Ølayers
fregularization_losses
©non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
htrainable_variables
 Ŗlayer_regularization_losses
«metrics
¬layer_metrics
i	variables
­layers
jregularization_losses
®non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ltrainable_variables
 Ælayer_regularization_losses
°metrics
±layer_metrics
m	variables
²layers
nregularization_losses
³non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ptrainable_variables
 “layer_regularization_losses
µmetrics
¶layer_metrics
q	variables
·layers
rregularization_losses
ønon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ttrainable_variables
 ¹layer_regularization_losses
ŗmetrics
»layer_metrics
u	variables
¼layers
vregularization_losses
½non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
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
 "
trackable_list_wrapper
,:* 2Adam/conv2d/kernel/m
: 2Adam/conv2d/bias/m
.:, @2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
/:-@2Adam/conv2d_2/kernel/m
!:2Adam/conv2d_2/bias/m
0:.2Adam/conv2d_3/kernel/m
!:2Adam/conv2d_3/bias/m
%:#
¬2Adam/dense/kernel/m
:2Adam/dense/bias/m
&:$	,2Adam/dense_1/kernel/m
 :,2Adam/dense_1/bias/m
7:5 2Adam/conv2d_transpose/kernel/m
):'2Adam/conv2d_transpose/bias/m
::82 Adam/conv2d_transpose_1/kernel/m
+:)2Adam/conv2d_transpose_1/bias/m
9:7@2 Adam/conv2d_transpose_2/kernel/m
*:(@2Adam/conv2d_transpose_2/bias/m
8:6 @2 Adam/conv2d_transpose_3/kernel/m
*:( 2Adam/conv2d_transpose_3/bias/m
8:6 2 Adam/conv2d_transpose_4/kernel/m
*:(2Adam/conv2d_transpose_4/bias/m
,:* 2Adam/conv2d/kernel/v
: 2Adam/conv2d/bias/v
.:, @2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
/:-@2Adam/conv2d_2/kernel/v
!:2Adam/conv2d_2/bias/v
0:.2Adam/conv2d_3/kernel/v
!:2Adam/conv2d_3/bias/v
%:#
¬2Adam/dense/kernel/v
:2Adam/dense/bias/v
&:$	,2Adam/dense_1/kernel/v
 :,2Adam/dense_1/bias/v
7:5 2Adam/conv2d_transpose/kernel/v
):'2Adam/conv2d_transpose/bias/v
::82 Adam/conv2d_transpose_1/kernel/v
+:)2Adam/conv2d_transpose_1/bias/v
9:7@2 Adam/conv2d_transpose_2/kernel/v
*:(@2Adam/conv2d_transpose_2/bias/v
8:6 @2 Adam/conv2d_transpose_3/kernel/v
*:( 2Adam/conv2d_transpose_3/bias/v
8:6 2 Adam/conv2d_transpose_4/kernel/v
*:(2Adam/conv2d_transpose_4/bias/v
Ģ2É
$__inference_cvae_layer_call_fn_14830
$__inference_cvae_layer_call_fn_14883
$__inference_cvae_layer_call_fn_14936
$__inference_cvae_layer_call_fn_14989®
„²”
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ĖBČ
 __inference__wrapped_model_13039input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ø2µ
?__inference_cvae_layer_call_and_return_conditional_losses_15043
?__inference_cvae_layer_call_and_return_conditional_losses_15097
?__inference_cvae_layer_call_and_return_conditional_losses_15151
?__inference_cvae_layer_call_and_return_conditional_losses_15205®
„²”
FullArgSpec$
args
jself
jx

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ó2Š
__inference_call_15439
__inference_call_15493
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ć2ą
__inference_compute_loss_15595
__inference_compute_loss_15877
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
__inference_decode_15997
__inference_decode_16117
__inference_decode_16237³
Ŗ²¦
FullArgSpec)
args!
jself
jz
japply_sigmoid
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ń2ī
__inference_encode_16281
__inference_encode_16325
__inference_encode_16369
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
 __inference_reparameterize_16385
 __inference_reparameterize_16401
 __inference_reparameterize_16417Ŗ
”²
FullArgSpec%
args
jself
jmean
jlogvar
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ŗ2§¤
²
FullArgSpec
args
jself
jeps
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Į2¾
__inference_train_step_17163
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ö2ó
*__inference_sequential_layer_call_fn_13162
*__inference_sequential_layer_call_fn_17188
*__inference_sequential_layer_call_fn_17213
*__inference_sequential_layer_call_fn_13323Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ā2ß
E__inference_sequential_layer_call_and_return_conditional_losses_17253
E__inference_sequential_layer_call_and_return_conditional_losses_17293
E__inference_sequential_layer_call_and_return_conditional_losses_13353
E__inference_sequential_layer_call_and_return_conditional_losses_13383Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ž2ū
,__inference_sequential_1_layer_call_fn_14033
,__inference_sequential_1_layer_call_fn_17322
,__inference_sequential_1_layer_call_fn_17351
,__inference_sequential_1_layer_call_fn_14216Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ź2ē
G__inference_sequential_1_layer_call_and_return_conditional_losses_17471
G__inference_sequential_1_layer_call_and_return_conditional_losses_17591
G__inference_sequential_1_layer_call_and_return_conditional_losses_14251
G__inference_sequential_1_layer_call_and_return_conditional_losses_14286Ą
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsŖ 
annotationsŖ *
 
ŹBĒ
#__inference_signature_wrapper_14777input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Š2Ķ
&__inference_conv2d_layer_call_fn_17600¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ė2č
A__inference_conv2d_layer_call_and_return_conditional_losses_17611¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ņ2Ļ
(__inference_conv2d_1_layer_call_fn_17620¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķ2ź
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17631¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ņ2Ļ
(__inference_conv2d_2_layer_call_fn_17640¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķ2ź
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17651¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ņ2Ļ
(__inference_conv2d_3_layer_call_fn_17660¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ķ2ź
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17671¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_flatten_layer_call_fn_17676¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_flatten_layer_call_and_return_conditional_losses_17682¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ļ2Ģ
%__inference_dense_layer_call_fn_17691¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ź2ē
@__inference_dense_layer_call_and_return_conditional_losses_17701¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_dense_1_layer_call_fn_17710¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_dense_1_layer_call_and_return_conditional_losses_17721¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ń2Ī
'__inference_reshape_layer_call_fn_17726¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ģ2é
B__inference_reshape_layer_call_and_return_conditional_losses_17740¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
0__inference_conv2d_transpose_layer_call_fn_17749
0__inference_conv2d_transpose_layer_call_fn_17758¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ā2æ
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17792
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17816¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
2__inference_conv2d_transpose_1_layer_call_fn_17825
2__inference_conv2d_transpose_1_layer_call_fn_17834¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ę2Ć
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17868
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17892¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
2__inference_conv2d_transpose_2_layer_call_fn_17901
2__inference_conv2d_transpose_2_layer_call_fn_17910¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ę2Ć
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17944
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
2__inference_conv2d_transpose_3_layer_call_fn_17977
2__inference_conv2d_transpose_3_layer_call_fn_17986¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ę2Ć
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_18020
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_18044¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
2
2__inference_conv2d_transpose_4_layer_call_fn_18053
2__inference_conv2d_transpose_4_layer_call_fn_18062¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
Ę2Ć
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_18095
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_18118¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 __inference__wrapped_model_13039õ$%&'()*+,-./0123456789:¢7
0¢-
+(
input_1’’’’’’’’’°
Ŗ "Ŗ
.
output_1"
output_1’’’’’’’’’
.
output_2"
output_2’’’’’’’’’
8
output_3,)
output_3’’’’’’’’’°«
__inference_call_15439$%&'()*+,-./0123456789+¢(
!¢

x°
Ŗ "I¢F

0

1

2°Ļ
__inference_call_15493“$%&'()*+,-./01234567894¢1
*¢'
%"
x’’’’’’’’’°
Ŗ "d¢a

0’’’’’’’’’

1’’’’’’’’’
%"
2’’’’’’’’’°p
__inference_compute_loss_15595N$%&'()*+,-./0123456789+¢(
!¢

x°
Ŗ " p
__inference_compute_loss_15877N$%&'()*+,-./0123456789+¢(
!¢

x@°
Ŗ " ³
C__inference_conv2d_1_layer_call_and_return_conditional_losses_17631l&'7¢4
-¢*
(%
inputs’’’’’’’’’W 
Ŗ "-¢*
# 
0’’’’’’’’’+?@
 
(__inference_conv2d_1_layer_call_fn_17620_&'7¢4
-¢*
(%
inputs’’’’’’’’’W 
Ŗ " ’’’’’’’’’+?@“
C__inference_conv2d_2_layer_call_and_return_conditional_losses_17651m()7¢4
-¢*
(%
inputs’’’’’’’’’+?@
Ŗ ".¢+
$!
0’’’’’’’’’
 
(__inference_conv2d_2_layer_call_fn_17640`()7¢4
-¢*
(%
inputs’’’’’’’’’+?@
Ŗ "!’’’’’’’’’µ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_17671n*+8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ ".¢+
$!
0’’’’’’’’’

 
(__inference_conv2d_3_layer_call_fn_17660a*+8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "!’’’’’’’’’
³
A__inference_conv2d_layer_call_and_return_conditional_losses_17611n$%9¢6
/¢,
*'
inputs’’’’’’’’’°
Ŗ "-¢*
# 
0’’’’’’’’’W 
 
&__inference_conv2d_layer_call_fn_17600a$%9¢6
/¢,
*'
inputs’’’’’’’’’°
Ŗ " ’’’’’’’’’W ä
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_1786823J¢G
@¢=
;8
inputs,’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "@¢=
63
0,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 æ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_17892n238¢5
.¢+
)&
inputs’’’’’’’’’ 
Ŗ ".¢+
$!
0’’’’’’’’’,@
 ¼
2__inference_conv2d_transpose_1_layer_call_fn_1782523J¢G
@¢=
;8
inputs,’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "30,’’’’’’’’’’’’’’’’’’’’’’’’’’’
2__inference_conv2d_transpose_1_layer_call_fn_17834a238¢5
.¢+
)&
inputs’’’’’’’’’ 
Ŗ "!’’’’’’’’’,@ć
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_1794445J¢G
@¢=
;8
inputs,’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "?¢<
52
0+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
 æ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_17968n458¢5
.¢+
)&
inputs’’’’’’’’’,@
Ŗ ".¢+
$!
0’’’’’’’’’X@
 »
2__inference_conv2d_transpose_2_layer_call_fn_1790145J¢G
@¢=
;8
inputs,’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "2/+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
2__inference_conv2d_transpose_2_layer_call_fn_17910a458¢5
.¢+
)&
inputs’’’’’’’’’,@
Ŗ "!’’’’’’’’’X@ā
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_1802067I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
Ŗ "?¢<
52
0+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
 Ą
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_18044o678¢5
.¢+
)&
inputs’’’’’’’’’X@
Ŗ "/¢,
%"
0’’’’’’’’’° 
 ŗ
2__inference_conv2d_transpose_3_layer_call_fn_1797767I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’@
Ŗ "2/+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
2__inference_conv2d_transpose_3_layer_call_fn_17986b678¢5
.¢+
)&
inputs’’’’’’’’’X@
Ŗ ""’’’’’’’’’° ā
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_1809589I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
Ŗ "?¢<
52
0+’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Į
M__inference_conv2d_transpose_4_layer_call_and_return_conditional_losses_18118p899¢6
/¢,
*'
inputs’’’’’’’’’° 
Ŗ "/¢,
%"
0’’’’’’’’’°
 ŗ
2__inference_conv2d_transpose_4_layer_call_fn_1805389I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
Ŗ "2/+’’’’’’’’’’’’’’’’’’’’’’’’’’’
2__inference_conv2d_transpose_4_layer_call_fn_18062c899¢6
/¢,
*'
inputs’’’’’’’’’° 
Ŗ ""’’’’’’’’’°į
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_1779201I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
Ŗ "@¢=
63
0,’’’’’’’’’’’’’’’’’’’’’’’’’’’
 ¼
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_17816m017¢4
-¢*
(%
inputs’’’’’’’’’ 
Ŗ ".¢+
$!
0’’’’’’’’’ 
 ¹
0__inference_conv2d_transpose_layer_call_fn_1774901I¢F
?¢<
:7
inputs+’’’’’’’’’’’’’’’’’’’’’’’’’’’ 
Ŗ "30,’’’’’’’’’’’’’’’’’’’’’’’’’’’
0__inference_conv2d_transpose_layer_call_fn_17758`017¢4
-¢*
(%
inputs’’’’’’’’’ 
Ŗ "!’’’’’’’’’ 
?__inference_cvae_layer_call_and_return_conditional_losses_15043Č$%&'()*+,-./01234567898¢5
.¢+
%"
x’’’’’’’’’°
p 
Ŗ "t¢q
j¢g

0/0’’’’’’’’’

0/1’’’’’’’’’
'$
0/2’’’’’’’’’°
 
?__inference_cvae_layer_call_and_return_conditional_losses_15097Č$%&'()*+,-./01234567898¢5
.¢+
%"
x’’’’’’’’’°
p
Ŗ "t¢q
j¢g

0/0’’’’’’’’’

0/1’’’’’’’’’
'$
0/2’’’’’’’’’°
 
?__inference_cvae_layer_call_and_return_conditional_losses_15151Ī$%&'()*+,-./0123456789>¢;
4¢1
+(
input_1’’’’’’’’’°
p 
Ŗ "t¢q
j¢g

0/0’’’’’’’’’

0/1’’’’’’’’’
'$
0/2’’’’’’’’’°
 
?__inference_cvae_layer_call_and_return_conditional_losses_15205Ī$%&'()*+,-./0123456789>¢;
4¢1
+(
input_1’’’’’’’’’°
p
Ŗ "t¢q
j¢g

0/0’’’’’’’’’

0/1’’’’’’’’’
'$
0/2’’’’’’’’’°
 ē
$__inference_cvae_layer_call_fn_14830¾$%&'()*+,-./0123456789>¢;
4¢1
+(
input_1’’’’’’’’’°
p 
Ŗ "d¢a

0’’’’’’’’’

1’’’’’’’’’
%"
2’’’’’’’’’°į
$__inference_cvae_layer_call_fn_14883ø$%&'()*+,-./01234567898¢5
.¢+
%"
x’’’’’’’’’°
p 
Ŗ "d¢a

0’’’’’’’’’

1’’’’’’’’’
%"
2’’’’’’’’’°į
$__inference_cvae_layer_call_fn_14936ø$%&'()*+,-./01234567898¢5
.¢+
%"
x’’’’’’’’’°
p
Ŗ "d¢a

0’’’’’’’’’

1’’’’’’’’’
%"
2’’’’’’’’’°ē
$__inference_cvae_layer_call_fn_14989¾$%&'()*+,-./0123456789>¢;
4¢1
+(
input_1’’’’’’’’’°
p
Ŗ "d¢a

0’’’’’’’’’

1’’’’’’’’’
%"
2’’’’’’’’’°l
__inference_decode_15997P./0123456789%¢"
¢

z
p 
Ŗ "°l
__inference_decode_16117P./0123456789%¢"
¢

z@
p 
Ŗ "@°~
__inference_decode_16237b./0123456789.¢+
$¢!

z’’’’’’’’’
p 
Ŗ ""’’’’’’’’’°£
B__inference_dense_1_layer_call_and_return_conditional_losses_17721].//¢,
%¢"
 
inputs’’’’’’’’’
Ŗ "&¢#

0’’’’’’’’’,
 {
'__inference_dense_1_layer_call_fn_17710P.//¢,
%¢"
 
inputs’’’’’’’’’
Ŗ "’’’’’’’’’,¢
@__inference_dense_layer_call_and_return_conditional_losses_17701^,-1¢.
'¢$
"
inputs’’’’’’’’’¬
Ŗ "%¢"

0’’’’’’’’’
 z
%__inference_dense_layer_call_fn_17691Q,-1¢.
'¢$
"
inputs’’’’’’’’’¬
Ŗ "’’’’’’’’’
__inference_encode_16281f
$%&'()*+,-+¢(
!¢

x°
Ŗ "+¢(

0

1
__inference_encode_16325f
$%&'()*+,-+¢(
!¢

x@°
Ŗ "+¢(

0@

1@
__inference_encode_16369
$%&'()*+,-4¢1
*¢'
%"
x’’’’’’’’’°
Ŗ "=¢:

0’’’’’’’’’

1’’’’’’’’’©
B__inference_flatten_layer_call_and_return_conditional_losses_17682c8¢5
.¢+
)&
inputs’’’’’’’’’

Ŗ "'¢$

0’’’’’’’’’¬
 
'__inference_flatten_layer_call_fn_17676V8¢5
.¢+
)&
inputs’’’’’’’’’

Ŗ "’’’’’’’’’¬t
 __inference_reparameterize_16385P=¢:
3¢0

mean

logvar
Ŗ "t
 __inference_reparameterize_16401P=¢:
3¢0

mean@

logvar@
Ŗ "@
 __inference_reparameterize_16417kO¢L
E¢B

mean’’’’’’’’’
 
logvar’’’’’’’’’
Ŗ "’’’’’’’’’§
B__inference_reshape_layer_call_and_return_conditional_losses_17740a0¢-
&¢#
!
inputs’’’’’’’’’,
Ŗ "-¢*
# 
0’’’’’’’’’ 
 
'__inference_reshape_layer_call_fn_17726T0¢-
&¢#
!
inputs’’’’’’’’’,
Ŗ " ’’’’’’’’’ Ä
G__inference_sequential_1_layer_call_and_return_conditional_losses_14251y./01234567898¢5
.¢+
!
input_2’’’’’’’’’
p 

 
Ŗ "/¢,
%"
0’’’’’’’’’°
 Ä
G__inference_sequential_1_layer_call_and_return_conditional_losses_14286y./01234567898¢5
.¢+
!
input_2’’’’’’’’’
p

 
Ŗ "/¢,
%"
0’’’’’’’’’°
 Ć
G__inference_sequential_1_layer_call_and_return_conditional_losses_17471x./01234567897¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "/¢,
%"
0’’’’’’’’’°
 Ć
G__inference_sequential_1_layer_call_and_return_conditional_losses_17591x./01234567897¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "/¢,
%"
0’’’’’’’’’°
 
,__inference_sequential_1_layer_call_fn_14033l./01234567898¢5
.¢+
!
input_2’’’’’’’’’
p 

 
Ŗ ""’’’’’’’’’°
,__inference_sequential_1_layer_call_fn_14216l./01234567898¢5
.¢+
!
input_2’’’’’’’’’
p

 
Ŗ ""’’’’’’’’’°
,__inference_sequential_1_layer_call_fn_17322k./01234567897¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ ""’’’’’’’’’°
,__inference_sequential_1_layer_call_fn_17351k./01234567897¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ ""’’’’’’’’’°Ą
E__inference_sequential_layer_call_and_return_conditional_losses_13353w
$%&'()*+,-B¢?
8¢5
+(
input_1’’’’’’’’’°
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ą
E__inference_sequential_layer_call_and_return_conditional_losses_13383w
$%&'()*+,-B¢?
8¢5
+(
input_1’’’’’’’’’°
p

 
Ŗ "%¢"

0’’’’’’’’’
 æ
E__inference_sequential_layer_call_and_return_conditional_losses_17253v
$%&'()*+,-A¢>
7¢4
*'
inputs’’’’’’’’’°
p 

 
Ŗ "%¢"

0’’’’’’’’’
 æ
E__inference_sequential_layer_call_and_return_conditional_losses_17293v
$%&'()*+,-A¢>
7¢4
*'
inputs’’’’’’’’’°
p

 
Ŗ "%¢"

0’’’’’’’’’
 
*__inference_sequential_layer_call_fn_13162j
$%&'()*+,-B¢?
8¢5
+(
input_1’’’’’’’’’°
p 

 
Ŗ "’’’’’’’’’
*__inference_sequential_layer_call_fn_13323j
$%&'()*+,-B¢?
8¢5
+(
input_1’’’’’’’’’°
p

 
Ŗ "’’’’’’’’’
*__inference_sequential_layer_call_fn_17188i
$%&'()*+,-A¢>
7¢4
*'
inputs’’’’’’’’’°
p 

 
Ŗ "’’’’’’’’’
*__inference_sequential_layer_call_fn_17213i
$%&'()*+,-A¢>
7¢4
*'
inputs’’’’’’’’’°
p

 
Ŗ "’’’’’’’’’Ø
#__inference_signature_wrapper_14777$%&'()*+,-./0123456789E¢B
¢ 
;Ŗ8
6
input_1+(
input_1’’’’’’’’’°"Ŗ
.
output_1"
output_1’’’’’’’’’
.
output_2"
output_2’’’’’’’’’
8
output_3,)
output_3’’’’’’’’’°Ž
__inference_train_step_17163½r$%&'()*+,-./0123456789# !¾ŌæÕĄÖĮ×ĀŲĆŁÄŚÅŪĘÜĒŻČŽÉßŹąĖįĢāĶćĪäĻåŠęŃēŅčÓé+¢(
!¢

x°
Ŗ "Ŗ

loss

loss 