??"
?;?:
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
?
BatchDatasetV2
input_dataset

batch_size	
drop_remainder


handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FilterDataset
input_dataset
other_arguments2
Targuments

handle"
	predicatefunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0

GRUBlockCell
x"T
h_prev"T	
w_ru"T
w_c"T	
b_ru"T
b_c"T
r"T
u"T
c"T
h"T"
Ttype:
2
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0?
?
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0?
C
IteratorToStringHandle
resource_handle
string_handle?
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
$

LogicalAnd
x

y

z
?
!
LoopCond	
input


output

,
MakeIterator
dataset
iterator?
?

MapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
;
Minimum
x"T
y"T
z"T"
Ttype:

2	?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
ParallelMapDataset
input_dataset
other_arguments2
Targuments
num_parallel_calls

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
?
PrefetchDataset
input_dataset
buffer_size	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:?
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype?
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype?
9
TensorArraySizeV3

handle
flow_in
size?
?
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring ?
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype?
?
TensorSliceDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0?
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?"serve*1.10.02v1.10.0-0-g656e7a2b34??
r
input/feeder_vars/ConstConst*
dtype0*!
_output_shapes
:???* 
valueB???*    
?

input/hits
VariableV2*
shared_name *
dtype0*!
_output_shapes
:???*
	container *
shape:???
?
input/hits/AssignAssign
input/hitsinput/feeder_vars/Const*!
_output_shapes
:???*
use_locking(*
T0*
_class
loc:@input/hits*
validate_shape(
r
input/hits/readIdentity
input/hits*!
_output_shapes
:???*
T0*
_class
loc:@input/hits
m
input/feeder_vars/Const_1Const*
valueB	?: *
dtype0*
_output_shapes
:	?
?
input/lagged_ix
VariableV2*
dtype0*
_output_shapes
:	?*
	container *
shape:	?*
shared_name 
?
input/lagged_ix/AssignAssigninput/lagged_ixinput/feeder_vars/Const_1*
T0*"
_class
loc:@input/lagged_ix*
validate_shape(*
_output_shapes
:	?*
use_locking(

input/lagged_ix/readIdentityinput/lagged_ix*
T0*"
_class
loc:@input/lagged_ix*
_output_shapes
:	?
o
input/feeder_vars/Const_2Const*
valueB
??: *
dtype0* 
_output_shapes
:
??
?
input/page_map
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
??*
	container *
shape:
??
?
input/page_map/AssignAssigninput/page_mapinput/feeder_vars/Const_2*
T0*!
_class
loc:@input/page_map*
validate_shape(* 
_output_shapes
:
??*
use_locking(
}
input/page_map/readIdentityinput/page_map*
T0*!
_class
loc:@input/page_map* 
_output_shapes
:
??
f
input/feeder_vars/Const_3Const*
valueB??B *
dtype0*
_output_shapes

:??
}
input/page_ix
VariableV2*
shared_name *
dtype0*
_output_shapes

:??*
	container *
shape:??
?
input/page_ix/AssignAssigninput/page_ixinput/feeder_vars/Const_3*
use_locking(*
T0* 
_class
loc:@input/page_ix*
validate_shape(*
_output_shapes

:??
v
input/page_ix/readIdentityinput/page_ix*
T0* 
_class
loc:@input/page_ix*
_output_shapes

:??
r
input/feeder_vars/Const_4Const*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
input/pf_agent
VariableV2* 
_output_shapes
:
??*
	container *
shape:
??*
shared_name *
dtype0
?
input/pf_agent/AssignAssigninput/pf_agentinput/feeder_vars/Const_4*!
_class
loc:@input/pf_agent*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
}
input/pf_agent/readIdentityinput/pf_agent*!
_class
loc:@input/pf_agent* 
_output_shapes
:
??*
T0
r
input/feeder_vars/Const_5Const*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
input/pf_country
VariableV2*
dtype0* 
_output_shapes
:
??*
	container *
shape:
??*
shared_name 
?
input/pf_country/AssignAssigninput/pf_countryinput/feeder_vars/Const_5*
use_locking(*
T0*#
_class
loc:@input/pf_country*
validate_shape(* 
_output_shapes
:
??
?
input/pf_country/readIdentityinput/pf_country*
T0*#
_class
loc:@input/pf_country* 
_output_shapes
:
??
r
input/feeder_vars/Const_6Const*
dtype0* 
_output_shapes
:
??*
valueB
??*    
?
input/pf_site
VariableV2*
shape:
??*
shared_name *
dtype0* 
_output_shapes
:
??*
	container 
?
input/pf_site/AssignAssigninput/pf_siteinput/feeder_vars/Const_6*
use_locking(*
T0* 
_class
loc:@input/pf_site*
validate_shape(* 
_output_shapes
:
??
z
input/pf_site/readIdentityinput/pf_site*
T0* 
_class
loc:@input/pf_site* 
_output_shapes
:
??
j
input/feeder_vars/Const_7Const*
valueB??*    *
dtype0*
_output_shapes

:??
?
input/page_popularity
VariableV2*
_output_shapes

:??*
	container *
shape:??*
shared_name *
dtype0
?
input/page_popularity/AssignAssigninput/page_popularityinput/feeder_vars/Const_7*
_output_shapes

:??*
use_locking(*
T0*(
_class
loc:@input/page_popularity*
validate_shape(
?
input/page_popularity/readIdentityinput/page_popularity*(
_class
loc:@input/page_popularity*
_output_shapes

:??*
T0
j
input/feeder_vars/Const_8Const*
valueB??*    *
dtype0*
_output_shapes

:??
?
input/year_autocorr
VariableV2*
shape:??*
shared_name *
dtype0*
_output_shapes

:??*
	container 
?
input/year_autocorr/AssignAssigninput/year_autocorrinput/feeder_vars/Const_8*
use_locking(*
T0*&
_class
loc:@input/year_autocorr*
validate_shape(*
_output_shapes

:??
?
input/year_autocorr/readIdentityinput/year_autocorr*
T0*&
_class
loc:@input/year_autocorr*
_output_shapes

:??
j
input/feeder_vars/Const_9Const*
valueB??*    *
dtype0*
_output_shapes

:??
?
input/quarter_autocorr
VariableV2*
dtype0*
_output_shapes

:??*
	container *
shape:??*
shared_name 
?
input/quarter_autocorr/AssignAssigninput/quarter_autocorrinput/feeder_vars/Const_9*
use_locking(*
T0*)
_class
loc:@input/quarter_autocorr*
validate_shape(*
_output_shapes

:??
?
input/quarter_autocorr/readIdentityinput/quarter_autocorr*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes

:??
q
input/feeder_vars/Const_10Const*
valueB	?*    *
dtype0*
_output_shapes
:	?

	input/dow
VariableV2*
shape:	?*
shared_name *
dtype0*
_output_shapes
:	?*
	container 
?
input/dow/AssignAssign	input/dowinput/feeder_vars/Const_10*
use_locking(*
T0*
_class
loc:@input/dow*
validate_shape(*
_output_shapes
:	?
m
input/dow/readIdentity	input/dow*
T0*
_class
loc:@input/dow*
_output_shapes
:	?
a
input/varfeeder_saver/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
)input/varfeeder_saver/SaveV2/tensor_namesConst*
_output_shapes
:*?
value?B?BdowBhitsB	lagged_ixBpage_ixBpage_mapBpage_popularityBpf_agentB
pf_countryBpf_siteBquarter_autocorrByear_autocorr*
dtype0
?
-input/varfeeder_saver/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*)
value BB B B B B B B B B B B 
?
input/varfeeder_saver/SaveV2SaveV2input/varfeeder_saver/Const)input/varfeeder_saver/SaveV2/tensor_names-input/varfeeder_saver/SaveV2/shape_and_slices	input/dow
input/hitsinput/lagged_ixinput/page_ixinput/page_mapinput/page_popularityinput/pf_agentinput/pf_countryinput/pf_siteinput/quarter_autocorrinput/year_autocorr*
dtypes
2
?
(input/varfeeder_saver/control_dependencyIdentityinput/varfeeder_saver/Const^input/varfeeder_saver/SaveV2*
T0*.
_class$
" loc:@input/varfeeder_saver/Const*
_output_shapes
: 
?
,input/varfeeder_saver/RestoreV2/tensor_namesConst*?
value?B?BdowBhitsB	lagged_ixBpage_ixBpage_mapBpage_popularityBpf_agentB
pf_countryBpf_siteBquarter_autocorrByear_autocorr*
dtype0*
_output_shapes
:
?
0input/varfeeder_saver/RestoreV2/shape_and_slicesConst*)
value BB B B B B B B B B B B *
dtype0*
_output_shapes
:
?
input/varfeeder_saver/RestoreV2	RestoreV2input/varfeeder_saver/Const,input/varfeeder_saver/RestoreV2/tensor_names0input/varfeeder_saver/RestoreV2/shape_and_slices*
dtypes
2*@
_output_shapes.
,:::::::::::
?
input/varfeeder_saver/AssignAssign	input/dowinput/varfeeder_saver/RestoreV2*
use_locking(*
T0*
_class
loc:@input/dow*
validate_shape(*
_output_shapes
:	?
?
input/varfeeder_saver/Assign_1Assign
input/hits!input/varfeeder_saver/RestoreV2:1*
_class
loc:@input/hits*
validate_shape(*!
_output_shapes
:???*
use_locking(*
T0
?
input/varfeeder_saver/Assign_2Assigninput/lagged_ix!input/varfeeder_saver/RestoreV2:2*
use_locking(*
T0*"
_class
loc:@input/lagged_ix*
validate_shape(*
_output_shapes
:	?
?
input/varfeeder_saver/Assign_3Assigninput/page_ix!input/varfeeder_saver/RestoreV2:3* 
_class
loc:@input/page_ix*
validate_shape(*
_output_shapes

:??*
use_locking(*
T0
?
input/varfeeder_saver/Assign_4Assigninput/page_map!input/varfeeder_saver/RestoreV2:4*
T0*!
_class
loc:@input/page_map*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
input/varfeeder_saver/Assign_5Assigninput/page_popularity!input/varfeeder_saver/RestoreV2:5*
use_locking(*
T0*(
_class
loc:@input/page_popularity*
validate_shape(*
_output_shapes

:??
?
input/varfeeder_saver/Assign_6Assigninput/pf_agent!input/varfeeder_saver/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@input/pf_agent*
validate_shape(* 
_output_shapes
:
??
?
input/varfeeder_saver/Assign_7Assigninput/pf_country!input/varfeeder_saver/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@input/pf_country*
validate_shape(* 
_output_shapes
:
??
?
input/varfeeder_saver/Assign_8Assigninput/pf_site!input/varfeeder_saver/RestoreV2:8*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0* 
_class
loc:@input/pf_site
?
input/varfeeder_saver/Assign_9Assigninput/quarter_autocorr!input/varfeeder_saver/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@input/quarter_autocorr*
validate_shape(*
_output_shapes

:??
?
input/varfeeder_saver/Assign_10Assigninput/year_autocorr"input/varfeeder_saver/RestoreV2:10*
validate_shape(*
_output_shapes

:??*
use_locking(*
T0*&
_class
loc:@input/year_autocorr
?
!input/varfeeder_saver/restore_allNoOp^input/varfeeder_saver/Assign^input/varfeeder_saver/Assign_1 ^input/varfeeder_saver/Assign_10^input/varfeeder_saver/Assign_2^input/varfeeder_saver/Assign_3^input/varfeeder_saver/Assign_4^input/varfeeder_saver/Assign_5^input/varfeeder_saver/Assign_6^input/varfeeder_saver/Assign_7^input/varfeeder_saver/Assign_8^input/varfeeder_saver/Assign_9
M
input/countConst*
dtype0	*
_output_shapes
: *
value	B	 R
Z
input/num_parallel_callsConst*
value	B :*
dtype0*
_output_shapes
: 
S
input/batch_sizeConst*
dtype0	*
_output_shapes
: *
value
B	 R?
V
input/drop_remainderConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
S
input/buffer_sizeConst*
value	B	 R*
dtype0	*
_output_shapes
: 
?
input/IteratorIterator*
_output_shapes
: *
	container *
output_types
2*
shared_name *?
output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:?????????:?????????:?????????:?????????
?
input/TensorSliceDatasetTensorSliceDatasetinput/hits/readinput/pf_agent/readinput/pf_country/readinput/pf_site/readinput/page_ix/readinput/page_popularity/readinput/year_autocorr/readinput/quarter_autocorr/read*4
output_shapes#
!:?:::: : : : *!
_class
loc:@input/Iterator*
Toutput_types

2*
_output_shapes
: 
?
input/RepeatDatasetRepeatDatasetinput/TensorSliceDatasetinput/count*
output_types

2*4
output_shapes#
!:?:::: : : : *!
_class
loc:@input/Iterator*
_output_shapes
: 
?
input/MapDataset
MapDatasetinput/RepeatDatasetinput/dow/readinput/lagged_ix/read*P
output_shapes?
=:?:?:	?:	?:::: : : : *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_QiAPwAETA28*
output_types
2*

Targuments
2*
_output_shapes
: 
?
input/FilterDatasetFilterDatasetinput/MapDataset*
output_types
2*

Targuments
 *@
	predicate3R1
/tf_data_structured_function_wrapper_AntZNmXvL6g*
_output_shapes
: *P
output_shapes?
=:?:?:	?:	?:::: : : : *!
_class
loc:@input/Iterator
?
input/ParallelMapDatasetParallelMapDatasetinput/FilterDatasetinput/num_parallel_calls*
_output_shapes
: *Y
output_shapesH
F:?:	?:?:	?:?:?:?: : :: *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_PYLQn2090Ew*
output_types
2*

Targuments
 
?
input/BatchDatasetV2BatchDatasetV2input/ParallelMapDatasetinput/batch_sizeinput/drop_remainder*?
output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:?????????:?????????:?????????:?????????*!
_class
loc:@input/Iterator*
_output_shapes
: *
output_types
2
?
input/PrefetchDatasetPrefetchDatasetinput/BatchDatasetV2input/buffer_size*
_output_shapes
: *
output_types
2*?
output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:?????????:?????????:?????????:?????????*!
_class
loc:@input/Iterator
l
input/MakeIteratorMakeIteratorinput/PrefetchDatasetinput/Iterator*!
_class
loc:@input/Iterator
^
input/IteratorToStringHandleIteratorToStringHandleinput/Iterator*
_output_shapes
: 
?
input/IteratorGetNextIteratorGetNextinput/Iterator*?
output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:?????????:?????????:?????????:?????????*?
_output_shapes?
?:??????????:??????????:??????????:??????????:??????????:??????????:??????????:?????????:?????????:?????????:?????????*
output_types
2
g
m_0/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_0/transpose	Transposeinput/IteratorGetNext:1m_0/transpose/perm*
Tperm0*
T0*,
_output_shapes
:??????????
X
m_0/cudnn_gru/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
_
m_0/cudnn_gru/rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
_
m_0/cudnn_gru/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/rangeRangem_0/cudnn_gru/rnn/range/startm_0/cudnn_gru/rnn/Rankm_0/cudnn_gru/rnn/range/delta*
_output_shapes
:*

Tidx0
r
!m_0/cudnn_gru/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
_
m_0/cudnn_gru/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/concatConcatV2!m_0/cudnn_gru/rnn/concat/values_0m_0/cudnn_gru/rnn/rangem_0/cudnn_gru/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
m_0/cudnn_gru/rnn/transpose	Transposeinput/IteratorGetNext:1m_0/cudnn_gru/rnn/concat*,
_output_shapes
:??????????*
Tperm0*
T0
r
m_0/cudnn_gru/rnn/ShapeShapem_0/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
o
%m_0/cudnn_gru/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
q
'm_0/cudnn_gru/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'm_0/cudnn_gru/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_0/cudnn_gru/rnn/strided_sliceStridedSlicem_0/cudnn_gru/rnn/Shape%m_0/cudnn_gru/rnn/strided_slice/stack'm_0/cudnn_gru/rnn/strided_slice/stack_1'm_0/cudnn_gru/rnn/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
?
Vm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
Rm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims
ExpandDimsm_0/cudnn_gru/rnn/strided_sliceVm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
?
Mm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
?
Sm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Nm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatConcatV2Rm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDimsMm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstSm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
Sm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
Mm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zerosFillNm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatSm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/Const*(
_output_shapes
:??????????*
T0*

index_type0
?
Xm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
Tm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1
ExpandDimsm_0/cudnn_gru/rnn/strided_sliceXm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
?
Om_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
t
m_0/cudnn_gru/rnn/Shape_1Shapem_0/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'm_0/cudnn_gru/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)m_0/cudnn_gru/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)m_0/cudnn_gru/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!m_0/cudnn_gru/rnn/strided_slice_1StridedSlicem_0/cudnn_gru/rnn/Shape_1'm_0/cudnn_gru/rnn/strided_slice_1/stack)m_0/cudnn_gru/rnn/strided_slice_1/stack_1)m_0/cudnn_gru/rnn/strided_slice_1/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
t
m_0/cudnn_gru/rnn/Shape_2Shapem_0/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'm_0/cudnn_gru/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
s
)m_0/cudnn_gru/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)m_0/cudnn_gru/rnn/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
!m_0/cudnn_gru/rnn/strided_slice_2StridedSlicem_0/cudnn_gru/rnn/Shape_2'm_0/cudnn_gru/rnn/strided_slice_2/stack)m_0/cudnn_gru/rnn/strided_slice_2/stack_1)m_0/cudnn_gru/rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
 m_0/cudnn_gru/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/ExpandDims
ExpandDims!m_0/cudnn_gru/rnn/strided_slice_2 m_0/cudnn_gru/rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
b
m_0/cudnn_gru/rnn/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
a
m_0/cudnn_gru/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/concat_1ConcatV2m_0/cudnn_gru/rnn/ExpandDimsm_0/cudnn_gru/rnn/Constm_0/cudnn_gru/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
b
m_0/cudnn_gru/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/zerosFillm_0/cudnn_gru/rnn/concat_1m_0/cudnn_gru/rnn/zeros/Const*

index_type0*(
_output_shapes
:??????????*
T0
X
m_0/cudnn_gru/rnn/timeConst*
_output_shapes
: *
value	B : *
dtype0
?
m_0/cudnn_gru/rnn/TensorArrayTensorArrayV3!m_0/cudnn_gru/rnn/strided_slice_1*%
element_shape:??????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*=
tensor_array_name(&m_0/cudnn_gru/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
?
m_0/cudnn_gru/rnn/TensorArray_1TensorArrayV3!m_0/cudnn_gru/rnn/strided_slice_1*$
element_shape:?????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*<
tensor_array_name'%m_0/cudnn_gru/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
?
*m_0/cudnn_gru/rnn/TensorArrayUnstack/ShapeShapem_0/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
?
8m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
:m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
:m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
2m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice*m_0/cudnn_gru/rnn/TensorArrayUnstack/Shape8m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack:m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1:m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
r
0m_0/cudnn_gru/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0m_0/cudnn_gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
*m_0/cudnn_gru/rnn/TensorArrayUnstack/rangeRange0m_0/cudnn_gru/rnn/TensorArrayUnstack/range/start2m_0/cudnn_gru/rnn/TensorArrayUnstack/strided_slice0m_0/cudnn_gru/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????*

Tidx0
?
Lm_0/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3m_0/cudnn_gru/rnn/TensorArray_1*m_0/cudnn_gru/rnn/TensorArrayUnstack/rangem_0/cudnn_gru/rnn/transpose!m_0/cudnn_gru/rnn/TensorArray_1:1*
T0*.
_class$
" loc:@m_0/cudnn_gru/rnn/transpose*
_output_shapes
: 
]
m_0/cudnn_gru/rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
?
m_0/cudnn_gru/rnn/MaximumMaximumm_0/cudnn_gru/rnn/Maximum/x!m_0/cudnn_gru/rnn/strided_slice_1*
T0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/MinimumMinimum!m_0/cudnn_gru/rnn/strided_slice_1m_0/cudnn_gru/rnn/Maximum*
_output_shapes
: *
T0
k
)m_0/cudnn_gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/while/EnterEnter)m_0/cudnn_gru/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/Enter_1Enterm_0/cudnn_gru/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/Enter_2Enterm_0/cudnn_gru/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/Enter_3EnterMm_0/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *(
_output_shapes
:??????????*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/MergeMergem_0/cudnn_gru/rnn/while/Enter%m_0/cudnn_gru/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_0/cudnn_gru/rnn/while/Merge_1Mergem_0/cudnn_gru/rnn/while/Enter_1'm_0/cudnn_gru/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
?
m_0/cudnn_gru/rnn/while/Merge_2Mergem_0/cudnn_gru/rnn/while/Enter_2'm_0/cudnn_gru/rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
?
m_0/cudnn_gru/rnn/while/Merge_3Mergem_0/cudnn_gru/rnn/while/Enter_3'm_0/cudnn_gru/rnn/while/NextIteration_3**
_output_shapes
:??????????: *
T0*
N
?
m_0/cudnn_gru/rnn/while/LessLessm_0/cudnn_gru/rnn/while/Merge"m_0/cudnn_gru/rnn/while/Less/Enter*
_output_shapes
: *
T0
?
"m_0/cudnn_gru/rnn/while/Less/EnterEnter!m_0/cudnn_gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/Less_1Lessm_0/cudnn_gru/rnn/while/Merge_1$m_0/cudnn_gru/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
?
$m_0/cudnn_gru/rnn/while/Less_1/EnterEnterm_0/cudnn_gru/rnn/Minimum*
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
"m_0/cudnn_gru/rnn/while/LogicalAnd
LogicalAndm_0/cudnn_gru/rnn/while/Lessm_0/cudnn_gru/rnn/while/Less_1*
_output_shapes
: 
h
 m_0/cudnn_gru/rnn/while/LoopCondLoopCond"m_0/cudnn_gru/rnn/while/LogicalAnd*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/while/SwitchSwitchm_0/cudnn_gru/rnn/while/Merge m_0/cudnn_gru/rnn/while/LoopCond*
T0*0
_class&
$"loc:@m_0/cudnn_gru/rnn/while/Merge*
_output_shapes
: : 
?
 m_0/cudnn_gru/rnn/while/Switch_1Switchm_0/cudnn_gru/rnn/while/Merge_1 m_0/cudnn_gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@m_0/cudnn_gru/rnn/while/Merge_1*
_output_shapes
: : 
?
 m_0/cudnn_gru/rnn/while/Switch_2Switchm_0/cudnn_gru/rnn/while/Merge_2 m_0/cudnn_gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@m_0/cudnn_gru/rnn/while/Merge_2*
_output_shapes
: : 
?
 m_0/cudnn_gru/rnn/while/Switch_3Switchm_0/cudnn_gru/rnn/while/Merge_3 m_0/cudnn_gru/rnn/while/LoopCond*<
_output_shapes*
(:??????????:??????????*
T0*2
_class(
&$loc:@m_0/cudnn_gru/rnn/while/Merge_3
o
 m_0/cudnn_gru/rnn/while/IdentityIdentity m_0/cudnn_gru/rnn/while/Switch:1*
T0*
_output_shapes
: 
s
"m_0/cudnn_gru/rnn/while/Identity_1Identity"m_0/cudnn_gru/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
s
"m_0/cudnn_gru/rnn/while/Identity_2Identity"m_0/cudnn_gru/rnn/while/Switch_2:1*
_output_shapes
: *
T0
?
"m_0/cudnn_gru/rnn/while/Identity_3Identity"m_0/cudnn_gru/rnn/while/Switch_3:1*
T0*(
_output_shapes
:??????????
?
m_0/cudnn_gru/rnn/while/add/yConst!^m_0/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/while/addAdd m_0/cudnn_gru/rnn/while/Identitym_0/cudnn_gru/rnn/while/add/y*
T0*
_output_shapes
: 
?
)m_0/cudnn_gru/rnn/while/TensorArrayReadV3TensorArrayReadV3/m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter"m_0/cudnn_gru/rnn/while/Identity_11m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
/m_0/cudnn_gru/rnn/while/TensorArrayReadV3/EnterEnterm_0/cudnn_gru/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
1m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1EnterLm_0/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0
?
om_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB"#    *
dtype0*
_output_shapes
:
?
mm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/minConst*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
mm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L=
?
wm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformom_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shape*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
seed2*
dtype0* 
_output_shapes
:
??*
seed???)
?
mm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/subSubmm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxmm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
?
mm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulMulwm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformmm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformAddmm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulmm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Nm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
VariableV2*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignAssignNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelim_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/readIdentityNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??*
T0
?
^m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/ConstConst*_
_classU
SQloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Lm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
VariableV2*
_output_shapes	
:?*
shared_name *_
_classU
SQloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
	container *
shape:?*
dtype0
?
Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignAssignLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias^m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const*
use_locking(*
T0*_
_classU
SQloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
Qm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/readIdentityLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shapeConst*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/minConst*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/maxConst*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shape*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
seed2*
dtype0*
_output_shapes
:	?*
seed???)*
T0
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/subSub?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/max?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mulMul?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniform?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/sub*
T0*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
~m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformAdd?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mul?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
cm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
VariableV2*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name 
?
jm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/AssignAssigncm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel~m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
?
hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/readIdentitycm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
T0*
_output_shapes
:	?
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shapeConst*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB"    *
dtype0*
_output_shapes
:
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L?*
dtype0
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L=*
dtype0
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shape*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
seed2*
dtype0* 
_output_shapes
:
??*
seed???)
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/subSub?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/max?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
?
?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulMul?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniform?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/sub*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformAdd?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mul?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??*
T0
?
dm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
VariableV2*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name 
?
km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/AssignAssigndm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/readIdentitydm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
T0* 
_output_shapes
:
??
?
sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zerosConst*t
_classj
hfloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
am_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
VariableV2*
shared_name *t
_classj
hfloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/AssignAssignam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*t
_classj
hfloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
?
fm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/readIdentityam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
T0*
_output_shapes	
:?
?
tm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zerosConst*u
_classk
igloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
bm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
VariableV2*
shared_name *u
_classk
igloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/AssignAssignbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biastm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*u
_classk
igloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(
?
gm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/readIdentitybm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
T0*
_output_shapes	
:?
?
Wm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axisConst!^m_0/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Rm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatConcatV2)m_0/cudnn_gru/rnn/while/TensorArrayReadV3"m_0/cudnn_gru/rnn/while/Identity_3Wm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
Rm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulMatMulRm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatXm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
?
Xm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/EnterEnterSm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read* 
_output_shapes
:
??*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAddBiasAddRm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulYm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
Ym_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/EnterEnterQm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/SigmoidSigmoidSm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd*
T0*(
_output_shapes
:??????????
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/ConstConst!^m_0/cudnn_gru/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
?
[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimConst!^m_0/cudnn_gru/rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitSplit[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimSm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid*
T0*<
_output_shapes*
(:??????????:??????????*
	num_split
?
Tm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1MatMul)m_0/cudnn_gru/rnn/while/TensorArrayReadV3Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/EnterEnterhm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	?*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
Um_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1BiasAddTm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter*(
_output_shapes
:??????????*
T0*
data_formatNHWC
?
[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/EnterEnterfm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
Tm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2MatMul"m_0/cudnn_gru/rnn/while/Identity_3Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
?
Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/EnterEnterim_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0
?
Um_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2BiasAddTm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter*
data_formatNHWC*(
_output_shapes
:??????????*
T0
?
[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/EnterEntergm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
Om_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mulMulQm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitUm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2*(
_output_shapes
:??????????*
T0
?
Om_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/addAddUm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1Om_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul*(
_output_shapes
:??????????*
T0
?
Pm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/TanhTanhOm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add*(
_output_shapes
:??????????*
T0
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xConst!^m_0/cudnn_gru/rnn/while/Identity*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Om_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subSubQm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xSm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1MulOm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subPm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh*
T0*(
_output_shapes
:??????????
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2MulSm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1"m_0/cudnn_gru/rnn/while/Identity_3*
T0*(
_output_shapes
:??????????
?
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1AddQm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2*
T0*(
_output_shapes
:??????????
?
;m_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Am_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter"m_0/cudnn_gru/rnn/while/Identity_1Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1"m_0/cudnn_gru/rnn/while/Identity_2*d
_classZ
XVloc:@m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
_output_shapes
: *
T0
?
Am_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_0/cudnn_gru/rnn/TensorArray*
T0*d
_classZ
XVloc:@m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
parallel_iterations *
is_constant(*
_output_shapes
:*5

frame_name'%m_0/cudnn_gru/rnn/while/while_context
?
m_0/cudnn_gru/rnn/while/add_1/yConst!^m_0/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/while/add_1Add"m_0/cudnn_gru/rnn/while/Identity_1m_0/cudnn_gru/rnn/while/add_1/y*
T0*
_output_shapes
: 
t
%m_0/cudnn_gru/rnn/while/NextIterationNextIterationm_0/cudnn_gru/rnn/while/add*
T0*
_output_shapes
: 
x
'm_0/cudnn_gru/rnn/while/NextIteration_1NextIterationm_0/cudnn_gru/rnn/while/add_1*
_output_shapes
: *
T0
?
'm_0/cudnn_gru/rnn/while/NextIteration_2NextIteration;m_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
?
'm_0/cudnn_gru/rnn/while/NextIteration_3NextIterationQm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*(
_output_shapes
:??????????*
T0
e
m_0/cudnn_gru/rnn/while/ExitExitm_0/cudnn_gru/rnn/while/Switch*
T0*
_output_shapes
: 
i
m_0/cudnn_gru/rnn/while/Exit_1Exit m_0/cudnn_gru/rnn/while/Switch_1*
_output_shapes
: *
T0
i
m_0/cudnn_gru/rnn/while/Exit_2Exit m_0/cudnn_gru/rnn/while/Switch_2*
T0*
_output_shapes
: 
{
m_0/cudnn_gru/rnn/while/Exit_3Exit m_0/cudnn_gru/rnn/while/Switch_3*
T0*(
_output_shapes
:??????????
?
4m_0/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_0/cudnn_gru/rnn/TensorArraym_0/cudnn_gru/rnn/while/Exit_2*
_output_shapes
: *0
_class&
$"loc:@m_0/cudnn_gru/rnn/TensorArray
?
.m_0/cudnn_gru/rnn/TensorArrayStack/range/startConst*0
_class&
$"loc:@m_0/cudnn_gru/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
?
.m_0/cudnn_gru/rnn/TensorArrayStack/range/deltaConst*
_output_shapes
: *0
_class&
$"loc:@m_0/cudnn_gru/rnn/TensorArray*
value	B :*
dtype0
?
(m_0/cudnn_gru/rnn/TensorArrayStack/rangeRange.m_0/cudnn_gru/rnn/TensorArrayStack/range/start4m_0/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3.m_0/cudnn_gru/rnn/TensorArrayStack/range/delta*

Tidx0*0
_class&
$"loc:@m_0/cudnn_gru/rnn/TensorArray*#
_output_shapes
:?????????
?
6m_0/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_0/cudnn_gru/rnn/TensorArray(m_0/cudnn_gru/rnn/TensorArrayStack/rangem_0/cudnn_gru/rnn/while/Exit_2*%
element_shape:??????????*0
_class&
$"loc:@m_0/cudnn_gru/rnn/TensorArray*
dtype0*-
_output_shapes
:???????????
d
m_0/cudnn_gru/rnn/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
Z
m_0/cudnn_gru/rnn/Rank_1Const*
_output_shapes
: *
value	B :*
dtype0
a
m_0/cudnn_gru/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
a
m_0/cudnn_gru/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/range_1Rangem_0/cudnn_gru/rnn/range_1/startm_0/cudnn_gru/rnn/Rank_1m_0/cudnn_gru/rnn/range_1/delta*
_output_shapes
:*

Tidx0
t
#m_0/cudnn_gru/rnn/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
a
m_0/cudnn_gru/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_0/cudnn_gru/rnn/concat_2ConcatV2#m_0/cudnn_gru/rnn/concat_2/values_0m_0/cudnn_gru/rnn/range_1m_0/cudnn_gru/rnn/concat_2/axis*
_output_shapes
:*

Tidx0*
T0*
N
?
m_0/cudnn_gru/rnn/transpose_1	Transpose6m_0/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3m_0/cudnn_gru/rnn/concat_2*
T0*-
_output_shapes
:???????????*
Tperm0
q
m_0/cudnn_gru/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_0/cudnn_gru/transpose	Transposem_0/cudnn_gru/rnn/transpose_1m_0/cudnn_gru/transpose/perm*
T0*-
_output_shapes
:???????????*
Tperm0
^
m_0/cudnn_gru/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
m_0/cudnn_gru/ExpandDims
ExpandDimsm_0/cudnn_gru/rnn/while/Exit_3m_0/cudnn_gru/ExpandDims/dim*

Tdim0*
T0*,
_output_shapes
:??????????
N

m_0/L2LossL2Lossm_0/cudnn_gru/transpose*
T0*
_output_shapes
: 
N
	m_0/mul/yConst*
valueB
 *4?r1*
dtype0*
_output_shapes
: 
F
m_0/mulMul
m_0/L2Loss	m_0/mul/y*
T0*
_output_shapes
: 
y
m_0/unstackUnpackm_0/cudnn_gru/ExpandDims*	
num*
T0*

axis *(
_output_shapes
:??????????
?
>m_0/compress_readout/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*.
_class$
" loc:@m_0/compress_readout/kernel*
valueB"  @   *
dtype0
?
=m_0/compress_readout/kernel/Initializer/truncated_normal/meanConst*.
_class$
" loc:@m_0/compress_readout/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?m_0/compress_readout/kernel/Initializer/truncated_normal/stddevConst*.
_class$
" loc:@m_0/compress_readout/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Hm_0/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>m_0/compress_readout/kernel/Initializer/truncated_normal/shape*
seed2*
dtype0*
_output_shapes
:	?@*
seed???)*
T0*.
_class$
" loc:@m_0/compress_readout/kernel
?
<m_0/compress_readout/kernel/Initializer/truncated_normal/mulMulHm_0/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormal?m_0/compress_readout/kernel/Initializer/truncated_normal/stddev*.
_class$
" loc:@m_0/compress_readout/kernel*
_output_shapes
:	?@*
T0
?
8m_0/compress_readout/kernel/Initializer/truncated_normalAdd<m_0/compress_readout/kernel/Initializer/truncated_normal/mul=m_0/compress_readout/kernel/Initializer/truncated_normal/mean*
T0*.
_class$
" loc:@m_0/compress_readout/kernel*
_output_shapes
:	?@
?
m_0/compress_readout/kernel
VariableV2*
shared_name *.
_class$
" loc:@m_0/compress_readout/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
:	?@
?
"m_0/compress_readout/kernel/AssignAssignm_0/compress_readout/kernel8m_0/compress_readout/kernel/Initializer/truncated_normal*
T0*.
_class$
" loc:@m_0/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@*
use_locking(
?
 m_0/compress_readout/kernel/readIdentitym_0/compress_readout/kernel*
_output_shapes
:	?@*
T0*.
_class$
" loc:@m_0/compress_readout/kernel
?
+m_0/compress_readout/bias/Initializer/zerosConst*,
_class"
 loc:@m_0/compress_readout/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
m_0/compress_readout/bias
VariableV2*
shared_name *,
_class"
 loc:@m_0/compress_readout/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
?
 m_0/compress_readout/bias/AssignAssignm_0/compress_readout/bias+m_0/compress_readout/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*,
_class"
 loc:@m_0/compress_readout/bias*
validate_shape(
?
m_0/compress_readout/bias/readIdentitym_0/compress_readout/bias*
T0*,
_class"
 loc:@m_0/compress_readout/bias*
_output_shapes
:@
{
$m_0/compress_readout/Tensordot/ShapeShapem_0/cudnn_gru/transpose*
_output_shapes
:*
T0*
out_type0
e
#m_0/compress_readout/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
m
#m_0/compress_readout/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
o
-m_0/compress_readout/Tensordot/GreaterEqual/yConst*
dtype0*
_output_shapes
: *
value	B : 
?
+m_0/compress_readout/Tensordot/GreaterEqualGreaterEqual#m_0/compress_readout/Tensordot/axes-m_0/compress_readout/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
?
#m_0/compress_readout/Tensordot/CastCast+m_0/compress_readout/Tensordot/GreaterEqual*
_output_shapes
:*

DstT0*

SrcT0

?
"m_0/compress_readout/Tensordot/mulMul#m_0/compress_readout/Tensordot/Cast#m_0/compress_readout/Tensordot/axes*
T0*
_output_shapes
:
g
%m_0/compress_readout/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
?
#m_0/compress_readout/Tensordot/LessLess#m_0/compress_readout/Tensordot/axes%m_0/compress_readout/Tensordot/Less/y*
T0*
_output_shapes
:
?
%m_0/compress_readout/Tensordot/Cast_1Cast#m_0/compress_readout/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
?
"m_0/compress_readout/Tensordot/addAdd#m_0/compress_readout/Tensordot/axes#m_0/compress_readout/Tensordot/Rank*
T0*
_output_shapes
:
?
$m_0/compress_readout/Tensordot/mul_1Mul%m_0/compress_readout/Tensordot/Cast_1"m_0/compress_readout/Tensordot/add*
_output_shapes
:*
T0
?
$m_0/compress_readout/Tensordot/add_1Add"m_0/compress_readout/Tensordot/mul$m_0/compress_readout/Tensordot/mul_1*
T0*
_output_shapes
:
l
*m_0/compress_readout/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
l
*m_0/compress_readout/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
$m_0/compress_readout/Tensordot/rangeRange*m_0/compress_readout/Tensordot/range/start#m_0/compress_readout/Tensordot/Rank*m_0/compress_readout/Tensordot/range/delta*

Tidx0*
_output_shapes
:
?
'm_0/compress_readout/Tensordot/ListDiffListDiff$m_0/compress_readout/Tensordot/range$m_0/compress_readout/Tensordot/add_1*
out_idx0*
T0*2
_output_shapes 
:?????????:?????????
n
,m_0/compress_readout/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_0/compress_readout/Tensordot/GatherV2GatherV2$m_0/compress_readout/Tensordot/Shape'm_0/compress_readout/Tensordot/ListDiff,m_0/compress_readout/Tensordot/GatherV2/axis*#
_output_shapes
:?????????*
Taxis0*
Tindices0*
Tparams0
p
.m_0/compress_readout/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
)m_0/compress_readout/Tensordot/GatherV2_1GatherV2$m_0/compress_readout/Tensordot/Shape$m_0/compress_readout/Tensordot/add_1.m_0/compress_readout/Tensordot/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
n
$m_0/compress_readout/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
#m_0/compress_readout/Tensordot/ProdProd'm_0/compress_readout/Tensordot/GatherV2$m_0/compress_readout/Tensordot/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
p
&m_0/compress_readout/Tensordot/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
?
%m_0/compress_readout/Tensordot/Prod_1Prod)m_0/compress_readout/Tensordot/GatherV2_1&m_0/compress_readout/Tensordot/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
l
*m_0/compress_readout/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%m_0/compress_readout/Tensordot/concatConcatV2)m_0/compress_readout/Tensordot/GatherV2_1'm_0/compress_readout/Tensordot/GatherV2*m_0/compress_readout/Tensordot/concat/axis*
N*#
_output_shapes
:?????????*

Tidx0*
T0
n
,m_0/compress_readout/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_0/compress_readout/Tensordot/concat_1ConcatV2'm_0/compress_readout/Tensordot/ListDiff$m_0/compress_readout/Tensordot/add_1,m_0/compress_readout/Tensordot/concat_1/axis*

Tidx0*
T0*
N*#
_output_shapes
:?????????
?
$m_0/compress_readout/Tensordot/stackPack#m_0/compress_readout/Tensordot/Prod%m_0/compress_readout/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
?
(m_0/compress_readout/Tensordot/transpose	Transposem_0/cudnn_gru/transpose'm_0/compress_readout/Tensordot/concat_1*
Tperm0*
T0*-
_output_shapes
:???????????
?
&m_0/compress_readout/Tensordot/ReshapeReshape(m_0/compress_readout/Tensordot/transpose$m_0/compress_readout/Tensordot/stack*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
/m_0/compress_readout/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
*m_0/compress_readout/Tensordot/transpose_1	Transpose m_0/compress_readout/kernel/read/m_0/compress_readout/Tensordot/transpose_1/perm*
_output_shapes
:	?@*
Tperm0*
T0

.m_0/compress_readout/Tensordot/Reshape_1/shapeConst*
valueB"  @   *
dtype0*
_output_shapes
:
?
(m_0/compress_readout/Tensordot/Reshape_1Reshape*m_0/compress_readout/Tensordot/transpose_1.m_0/compress_readout/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	?@
?
%m_0/compress_readout/Tensordot/MatMulMatMul&m_0/compress_readout/Tensordot/Reshape(m_0/compress_readout/Tensordot/Reshape_1*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( *
T0
p
&m_0/compress_readout/Tensordot/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
n
,m_0/compress_readout/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_0/compress_readout/Tensordot/concat_2ConcatV2'm_0/compress_readout/Tensordot/GatherV2&m_0/compress_readout/Tensordot/Const_2,m_0/compress_readout/Tensordot/concat_2/axis*#
_output_shapes
:?????????*

Tidx0*
T0*
N
?
m_0/compress_readout/TensordotReshape%m_0/compress_readout/Tensordot/MatMul'm_0/compress_readout/Tensordot/concat_2*
T0*
Tshape0*,
_output_shapes
:??????????@
?
m_0/compress_readout/BiasAddBiasAddm_0/compress_readout/Tensordotm_0/compress_readout/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????@
l
'm_0/compress_readout/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
%m_0/compress_readout/elu/GreaterEqualGreaterEqualm_0/compress_readout/BiasAdd'm_0/compress_readout/elu/GreaterEqual/y*,
_output_shapes
:??????????@*
T0
x
m_0/compress_readout/elu/EluElum_0/compress_readout/BiasAdd*
T0*,
_output_shapes
:??????????@
c
m_0/compress_readout/elu/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *}-??
?
m_0/compress_readout/elu/mulMulm_0/compress_readout/elu/mul/xm_0/compress_readout/elu/Elu*
T0*,
_output_shapes
:??????????@
?
m_0/compress_readout/elu/SelectSelect%m_0/compress_readout/elu/GreaterEqualm_0/compress_readout/BiasAddm_0/compress_readout/elu/mul*
T0*,
_output_shapes
:??????????@
e
 m_0/compress_readout/elu/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *_}??
?
m_0/compress_readout/elu/mul_1Mul m_0/compress_readout/elu/mul_1/xm_0/compress_readout/elu/Select*
T0*,
_output_shapes
:??????????@
]
m_0/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_0/ExpandDims
ExpandDimsinput/IteratorGetNext:2m_0/ExpandDims/dim*,
_output_shapes
:??????????*

Tdim0*
T0
Z
m_0/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?

m_0/concatConcatV2input/IteratorGetNext:3m_0/ExpandDimsm_0/concat/axis*
T0*
N*,
_output_shapes
:??????????*

Tidx0
?
Gm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*!
valueB"         
?
Fm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
valueB
 *5??>*
dtype0*
_output_shapes
: 
?
Qm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shape*"
_output_shapes
:*
seed???)*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
seed2*
dtype0
?
Em_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulMulQm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalHm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
:*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel
?
Am_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normalAddEm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulFm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
$m_0/fingerpint/convnet/conv1d/kernel
VariableV2*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
	container *
shape:*
dtype0*"
_output_shapes
:*
shared_name 
?
+m_0/fingerpint/convnet/conv1d/kernel/AssignAssign$m_0/fingerpint/convnet/conv1d/kernelAm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:
?
)m_0/fingerpint/convnet/conv1d/kernel/readIdentity$m_0/fingerpint/convnet/conv1d/kernel*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
4m_0/fingerpint/convnet/conv1d/bias/Initializer/zerosConst*5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias*
valueB*    *
dtype0*
_output_shapes
:
?
"m_0/fingerpint/convnet/conv1d/bias
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias*
	container 
?
)m_0/fingerpint/convnet/conv1d/bias/AssignAssign"m_0/fingerpint/convnet/conv1d/bias4m_0/fingerpint/convnet/conv1d/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias
?
'm_0/fingerpint/convnet/conv1d/bias/readIdentity"m_0/fingerpint/convnet/conv1d/bias*
T0*5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias*
_output_shapes
:
u
+m_0/fingerpint/convnet/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
u
3m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
/m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims
ExpandDims
m_0/concat3m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:??????????
w
5m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims_1
ExpandDims)m_0/fingerpint/convnet/conv1d/kernel/read5m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:
?
+m_0/fingerpint/convnet/conv1d/conv1d/Conv2DConv2D/m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims1m_0/fingerpint/convnet/conv1d/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:??????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
,m_0/fingerpint/convnet/conv1d/conv1d/SqueezeSqueeze+m_0/fingerpint/convnet/conv1d/conv1d/Conv2D*,
_output_shapes
:??????????*
squeeze_dims
*
T0
?
%m_0/fingerpint/convnet/conv1d/BiasAddBiasAdd,m_0/fingerpint/convnet/conv1d/conv1d/Squeeze'm_0/fingerpint/convnet/conv1d/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????
?
"m_0/fingerpint/convnet/conv1d/ReluRelu%m_0/fingerpint/convnet/conv1d/BiasAdd*
T0*,
_output_shapes
:??????????
?
Im_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*!
valueB"         *
dtype0
?
Hm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
valueB
 *?Rn>*
dtype0*
_output_shapes
: 
?
Sm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shape*
seed???)*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
seed2*
dtype0*"
_output_shapes
:
?
Gm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulMulSm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalJm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*"
_output_shapes
:
?
Cm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normalAddGm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulHm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mean*"
_output_shapes
:*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel
?
&m_0/fingerpint/convnet/conv1d_1/kernel
VariableV2*
shape:*
dtype0*"
_output_shapes
:*
shared_name *9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
	container 
?
-m_0/fingerpint/convnet/conv1d_1/kernel/AssignAssign&m_0/fingerpint/convnet/conv1d_1/kernelCm_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:
?
+m_0/fingerpint/convnet/conv1d_1/kernel/readIdentity&m_0/fingerpint/convnet/conv1d_1/kernel*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*"
_output_shapes
:
?
6m_0/fingerpint/convnet/conv1d_1/bias/Initializer/zerosConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
?
$m_0/fingerpint/convnet/conv1d_1/bias
VariableV2*
shared_name *7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
+m_0/fingerpint/convnet/conv1d_1/bias/AssignAssign$m_0/fingerpint/convnet/conv1d_1/bias6m_0/fingerpint/convnet/conv1d_1/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias*
validate_shape(
?
)m_0/fingerpint/convnet/conv1d_1/bias/readIdentity$m_0/fingerpint/convnet/conv1d_1/bias*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias*
_output_shapes
:
w
-m_0/fingerpint/convnet/conv1d_1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
1m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims
ExpandDims"m_0/fingerpint/convnet/conv1d/Relu5m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:??????????*

Tdim0
y
7m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1
ExpandDims+m_0/fingerpint/convnet/conv1d_1/kernel/read7m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dim*&
_output_shapes
:*

Tdim0*
T0
?
-m_0/fingerpint/convnet/conv1d_1/conv1d/Conv2DConv2D1m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims3m_0/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:??????????*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
.m_0/fingerpint/convnet/conv1d_1/conv1d/SqueezeSqueeze-m_0/fingerpint/convnet/conv1d_1/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:??????????
?
'm_0/fingerpint/convnet/conv1d_1/BiasAddBiasAdd.m_0/fingerpint/convnet/conv1d_1/conv1d/Squeeze)m_0/fingerpint/convnet/conv1d_1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????
?
$m_0/fingerpint/convnet/conv1d_1/ReluRelu'm_0/fingerpint/convnet/conv1d_1/BiasAdd*
T0*,
_output_shapes
:??????????
u
3m_0/fingerpint/convnet/max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
/m_0/fingerpint/convnet/max_pooling1d/ExpandDims
ExpandDims$m_0/fingerpint/convnet/conv1d_1/Relu3m_0/fingerpint/convnet/max_pooling1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:??????????
?
,m_0/fingerpint/convnet/max_pooling1d/MaxPoolMaxPool/m_0/fingerpint/convnet/max_pooling1d/ExpandDims*0
_output_shapes
:??????????*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
?
,m_0/fingerpint/convnet/max_pooling1d/SqueezeSqueeze,m_0/fingerpint/convnet/max_pooling1d/MaxPool*,
_output_shapes
:??????????*
squeeze_dims
*
T0
?
Im_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*!
valueB"          *
dtype0*
_output_shapes
:
?
Hm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
valueB
 *?Rn>*
dtype0*
_output_shapes
: 
?
Sm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
: *
seed???)*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
seed2
?
Gm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulMulSm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalJm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddev*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: *
T0
?
Cm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normalAddGm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulHm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
&m_0/fingerpint/convnet/conv1d_2/kernel
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
	container *
shape: 
?
-m_0/fingerpint/convnet/conv1d_2/kernel/AssignAssign&m_0/fingerpint/convnet/conv1d_2/kernelCm_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
validate_shape(*"
_output_shapes
: 
?
+m_0/fingerpint/convnet/conv1d_2/kernel/readIdentity&m_0/fingerpint/convnet/conv1d_2/kernel*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
6m_0/fingerpint/convnet/conv1d_2/bias/Initializer/zerosConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
$m_0/fingerpint/convnet/conv1d_2/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
	container *
shape: 
?
+m_0/fingerpint/convnet/conv1d_2/bias/AssignAssign$m_0/fingerpint/convnet/conv1d_2/bias6m_0/fingerpint/convnet/conv1d_2/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
)m_0/fingerpint/convnet/conv1d_2/bias/readIdentity$m_0/fingerpint/convnet/conv1d_2/bias*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
_output_shapes
: 
w
-m_0/fingerpint/convnet/conv1d_2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims
ExpandDims,m_0/fingerpint/convnet/max_pooling1d/Squeeze5m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:??????????
y
7m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1
ExpandDims+m_0/fingerpint/convnet/conv1d_2/kernel/read7m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dim*&
_output_shapes
: *

Tdim0*
T0
?
-m_0/fingerpint/convnet/conv1d_2/conv1d/Conv2DConv2D1m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims3m_0/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:?????????? *
	dilations
*
T0*
data_formatNHWC*
strides

?
.m_0/fingerpint/convnet/conv1d_2/conv1d/SqueezeSqueeze-m_0/fingerpint/convnet/conv1d_2/conv1d/Conv2D*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
?
'm_0/fingerpint/convnet/conv1d_2/BiasAddBiasAdd.m_0/fingerpint/convnet/conv1d_2/conv1d/Squeeze)m_0/fingerpint/convnet/conv1d_2/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:?????????? 
?
$m_0/fingerpint/convnet/conv1d_2/ReluRelu'm_0/fingerpint/convnet/conv1d_2/BiasAdd*
T0*,
_output_shapes
:?????????? 
?
Im_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*!
valueB"           *
dtype0*
_output_shapes
:
?
Hm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shape*
seed???)*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
seed2*
dtype0*"
_output_shapes
:  
?
Gm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulMulSm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalJm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
Cm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normalAddGm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulHm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
&m_0/fingerpint/convnet/conv1d_3/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel
?
-m_0/fingerpint/convnet/conv1d_3/kernel/AssignAssign&m_0/fingerpint/convnet/conv1d_3/kernelCm_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  
?
+m_0/fingerpint/convnet/conv1d_3/kernel/readIdentity&m_0/fingerpint/convnet/conv1d_3/kernel*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
6m_0/fingerpint/convnet/conv1d_3/bias/Initializer/zerosConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
$m_0/fingerpint/convnet/conv1d_3/bias
VariableV2*
shared_name *7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
?
+m_0/fingerpint/convnet/conv1d_3/bias/AssignAssign$m_0/fingerpint/convnet/conv1d_3/bias6m_0/fingerpint/convnet/conv1d_3/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: 
?
)m_0/fingerpint/convnet/conv1d_3/bias/readIdentity$m_0/fingerpint/convnet/conv1d_3/bias*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
_output_shapes
: 
w
-m_0/fingerpint/convnet/conv1d_3/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims
ExpandDims$m_0/fingerpint/convnet/conv1d_2/Relu5m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:?????????? *

Tdim0
y
7m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1
ExpandDims+m_0/fingerpint/convnet/conv1d_3/kernel/read7m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dim*&
_output_shapes
:  *

Tdim0*
T0
?
-m_0/fingerpint/convnet/conv1d_3/conv1d/Conv2DConv2D1m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims3m_0/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:?????????? *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
?
.m_0/fingerpint/convnet/conv1d_3/conv1d/SqueezeSqueeze-m_0/fingerpint/convnet/conv1d_3/conv1d/Conv2D*
T0*,
_output_shapes
:?????????? *
squeeze_dims

?
'm_0/fingerpint/convnet/conv1d_3/BiasAddBiasAdd.m_0/fingerpint/convnet/conv1d_3/conv1d/Squeeze)m_0/fingerpint/convnet/conv1d_3/bias/read*
data_formatNHWC*,
_output_shapes
:?????????? *
T0
?
$m_0/fingerpint/convnet/conv1d_3/ReluRelu'm_0/fingerpint/convnet/conv1d_3/BiasAdd*
T0*,
_output_shapes
:?????????? 
w
5m_0/fingerpint/convnet/max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/max_pooling1d_1/ExpandDims
ExpandDims$m_0/fingerpint/convnet/conv1d_3/Relu5m_0/fingerpint/convnet/max_pooling1d_1/ExpandDims/dim*
T0*0
_output_shapes
:?????????? *

Tdim0
?
.m_0/fingerpint/convnet/max_pooling1d_1/MaxPoolMaxPool1m_0/fingerpint/convnet/max_pooling1d_1/ExpandDims*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:?????????G 
?
.m_0/fingerpint/convnet/max_pooling1d_1/SqueezeSqueeze.m_0/fingerpint/convnet/max_pooling1d_1/MaxPool*+
_output_shapes
:?????????G *
squeeze_dims
*
T0
?
Im_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*!
valueB"       @   *
dtype0*
_output_shapes
:
?
Hm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shape*
seed2*
dtype0*"
_output_shapes
: @*
seed???)*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel
?
Gm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulMulSm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalJm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
Cm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normalAddGm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulHm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
&m_0/fingerpint/convnet/conv1d_4/kernel
VariableV2*
shape: @*
dtype0*"
_output_shapes
: @*
shared_name *9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
	container 
?
-m_0/fingerpint/convnet/conv1d_4/kernel/AssignAssign&m_0/fingerpint/convnet/conv1d_4/kernelCm_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal*"
_output_shapes
: @*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
validate_shape(
?
+m_0/fingerpint/convnet/conv1d_4/kernel/readIdentity&m_0/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel
?
6m_0/fingerpint/convnet/conv1d_4/bias/Initializer/zerosConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
$m_0/fingerpint/convnet/conv1d_4/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias*
	container 
?
+m_0/fingerpint/convnet/conv1d_4/bias/AssignAssign$m_0/fingerpint/convnet/conv1d_4/bias6m_0/fingerpint/convnet/conv1d_4/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@
?
)m_0/fingerpint/convnet/conv1d_4/bias/readIdentity$m_0/fingerpint/convnet/conv1d_4/bias*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias*
_output_shapes
:@*
T0
w
-m_0/fingerpint/convnet/conv1d_4/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims
ExpandDims.m_0/fingerpint/convnet/max_pooling1d_1/Squeeze5m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dim*/
_output_shapes
:?????????G *

Tdim0*
T0
y
7m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1
ExpandDims+m_0/fingerpint/convnet/conv1d_4/kernel/read7m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dim*&
_output_shapes
: @*

Tdim0*
T0
?
-m_0/fingerpint/convnet/conv1d_4/conv1d/Conv2DConv2D1m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims3m_0/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????G@
?
.m_0/fingerpint/convnet/conv1d_4/conv1d/SqueezeSqueeze-m_0/fingerpint/convnet/conv1d_4/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:?????????G@
?
'm_0/fingerpint/convnet/conv1d_4/BiasAddBiasAdd.m_0/fingerpint/convnet/conv1d_4/conv1d/Squeeze)m_0/fingerpint/convnet/conv1d_4/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????G@
?
$m_0/fingerpint/convnet/conv1d_4/ReluRelu'm_0/fingerpint/convnet/conv1d_4/BiasAdd*+
_output_shapes
:?????????G@*
T0
?
Im_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*!
valueB"   @   @   *
dtype0*
_output_shapes
:
?
Hm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
valueB
 *?R?=*
dtype0*
_output_shapes
: 
?
Sm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
:@@*
seed???)*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
seed2
?
Gm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulMulSm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalJm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@
?
Cm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normalAddGm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulHm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@
?
&m_0/fingerpint/convnet/conv1d_5/kernel
VariableV2*
dtype0*"
_output_shapes
:@@*
shared_name *9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
	container *
shape:@@
?
-m_0/fingerpint/convnet/conv1d_5/kernel/AssignAssign&m_0/fingerpint/convnet/conv1d_5/kernelCm_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal*
validate_shape(*"
_output_shapes
:@@*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel
?
+m_0/fingerpint/convnet/conv1d_5/kernel/readIdentity&m_0/fingerpint/convnet/conv1d_5/kernel*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@
?
6m_0/fingerpint/convnet/conv1d_5/bias/Initializer/zerosConst*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
$m_0/fingerpint/convnet/conv1d_5/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias*
	container *
shape:@
?
+m_0/fingerpint/convnet/conv1d_5/bias/AssignAssign$m_0/fingerpint/convnet/conv1d_5/bias6m_0/fingerpint/convnet/conv1d_5/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias
?
)m_0/fingerpint/convnet/conv1d_5/bias/readIdentity$m_0/fingerpint/convnet/conv1d_5/bias*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias*
_output_shapes
:@
w
-m_0/fingerpint/convnet/conv1d_5/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
?
1m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims
ExpandDims$m_0/fingerpint/convnet/conv1d_4/Relu5m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:?????????G@
y
7m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1
ExpandDims+m_0/fingerpint/convnet/conv1d_5/kernel/read7m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:@@*

Tdim0
?
-m_0/fingerpint/convnet/conv1d_5/conv1d/Conv2DConv2D1m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims3m_0/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1*
paddingSAME*/
_output_shapes
:?????????G@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
.m_0/fingerpint/convnet/conv1d_5/conv1d/SqueezeSqueeze-m_0/fingerpint/convnet/conv1d_5/conv1d/Conv2D*+
_output_shapes
:?????????G@*
squeeze_dims
*
T0
?
'm_0/fingerpint/convnet/conv1d_5/BiasAddBiasAdd.m_0/fingerpint/convnet/conv1d_5/conv1d/Squeeze)m_0/fingerpint/convnet/conv1d_5/bias/read*
data_formatNHWC*+
_output_shapes
:?????????G@*
T0
?
$m_0/fingerpint/convnet/conv1d_5/ReluRelu'm_0/fingerpint/convnet/conv1d_5/BiasAdd*+
_output_shapes
:?????????G@*
T0
w
5m_0/fingerpint/convnet/max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_0/fingerpint/convnet/max_pooling1d_2/ExpandDims
ExpandDims$m_0/fingerpint/convnet/conv1d_5/Relu5m_0/fingerpint/convnet/max_pooling1d_2/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:?????????G@
?
.m_0/fingerpint/convnet/max_pooling1d_2/MaxPoolMaxPool1m_0/fingerpint/convnet/max_pooling1d_2/ExpandDims*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:?????????$@
?
.m_0/fingerpint/convnet/max_pooling1d_2/SqueezeSqueeze.m_0/fingerpint/convnet/max_pooling1d_2/MaxPool*
T0*+
_output_shapes
:?????????$@*
squeeze_dims

u
$m_0/fingerpint/convnet/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"???? 	  
?
m_0/fingerpint/convnet/ReshapeReshape.m_0/fingerpint/convnet/max_pooling1d_2/Squeeze$m_0/fingerpint/convnet/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:??????????
?
Nm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shapeConst*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
valueB" 	     *
dtype0*
_output_shapes
:
?
Mm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/meanConst*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Om_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *??<*
dtype0
?
Xm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalNm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
seed2
?
Lm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMulXm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalOm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
??*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel
?
Hm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normalAddLm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mean*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??
?
+m_0/fingerpint/fc_convnet/fc_encoder/kernel
VariableV2*
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
	container 
?
2m_0/fingerpint/fc_convnet/fc_encoder/kernel/AssignAssign+m_0/fingerpint/fc_convnet/fc_encoder/kernelHm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
0m_0/fingerpint/fc_convnet/fc_encoder/kernel/readIdentity+m_0/fingerpint/fc_convnet/fc_encoder/kernel*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??
?
;m_0/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zerosConst*<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
)m_0/fingerpint/fc_convnet/fc_encoder/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias*
	container *
shape:?
?
0m_0/fingerpint/fc_convnet/fc_encoder/bias/AssignAssign)m_0/fingerpint/fc_convnet/fc_encoder/bias;m_0/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(
?
.m_0/fingerpint/fc_convnet/fc_encoder/bias/readIdentity)m_0/fingerpint/fc_convnet/fc_encoder/bias*
T0*<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias*
_output_shapes	
:?
?
+m_0/fingerpint/fc_convnet/fc_encoder/MatMulMatMulm_0/fingerpint/convnet/Reshape0m_0/fingerpint/fc_convnet/fc_encoder/kernel/read*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
,m_0/fingerpint/fc_convnet/fc_encoder/BiasAddBiasAdd+m_0/fingerpint/fc_convnet/fc_encoder/MatMul.m_0/fingerpint/fc_convnet/fc_encoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
|
7m_0/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
5m_0/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqualGreaterEqual,m_0/fingerpint/fc_convnet/fc_encoder/BiasAdd7m_0/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/y*(
_output_shapes
:??????????*
T0
?
,m_0/fingerpint/fc_convnet/fc_encoder/elu/EluElu,m_0/fingerpint/fc_convnet/fc_encoder/BiasAdd*
T0*(
_output_shapes
:??????????
s
.m_0/fingerpint/fc_convnet/fc_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
,m_0/fingerpint/fc_convnet/fc_encoder/elu/mulMul.m_0/fingerpint/fc_convnet/fc_encoder/elu/mul/x,m_0/fingerpint/fc_convnet/fc_encoder/elu/Elu*
T0*(
_output_shapes
:??????????
?
/m_0/fingerpint/fc_convnet/fc_encoder/elu/SelectSelect5m_0/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual,m_0/fingerpint/fc_convnet/fc_encoder/BiasAdd,m_0/fingerpint/fc_convnet/fc_encoder/elu/mul*(
_output_shapes
:??????????*
T0
u
0m_0/fingerpint/fc_convnet/fc_encoder/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
.m_0/fingerpint/fc_convnet/fc_encoder/elu/mul_1Mul0m_0/fingerpint/fc_convnet/fc_encoder/elu/mul_1/x/m_0/fingerpint/fc_convnet/fc_encoder/elu/Select*
T0*(
_output_shapes
:??????????
?
Om_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shapeConst*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Nm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/meanConst*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Pm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddevConst*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *?dN=*
dtype0*
_output_shapes
: 
?
Ym_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalOm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
seed2
?
Mm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulMulYm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalPm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddev*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
Im_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normalAddMm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulNm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mean*
_output_shapes
:	?*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel
?
,m_0/fingerpint/fc_convnet/out_encoder/kernel
VariableV2*
shared_name *?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?
?
3m_0/fingerpint/fc_convnet/out_encoder/kernel/AssignAssign,m_0/fingerpint/fc_convnet/out_encoder/kernelIm_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal*
use_locking(*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
1m_0/fingerpint/fc_convnet/out_encoder/kernel/readIdentity,m_0/fingerpint/fc_convnet/out_encoder/kernel*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
<m_0/fingerpint/fc_convnet/out_encoder/bias/Initializer/zerosConst*=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias*
valueB*    *
dtype0*
_output_shapes
:
?
*m_0/fingerpint/fc_convnet/out_encoder/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias*
	container *
shape:
?
1m_0/fingerpint/fc_convnet/out_encoder/bias/AssignAssign*m_0/fingerpint/fc_convnet/out_encoder/bias<m_0/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros*
T0*=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
/m_0/fingerpint/fc_convnet/out_encoder/bias/readIdentity*m_0/fingerpint/fc_convnet/out_encoder/bias*
T0*=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias*
_output_shapes
:
?
,m_0/fingerpint/fc_convnet/out_encoder/MatMulMatMul.m_0/fingerpint/fc_convnet/fc_encoder/elu/mul_11m_0/fingerpint/fc_convnet/out_encoder/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
-m_0/fingerpint/fc_convnet/out_encoder/BiasAddBiasAdd,m_0/fingerpint/fc_convnet/out_encoder/MatMul/m_0/fingerpint/fc_convnet/out_encoder/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????
}
8m_0/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
6m_0/fingerpint/fc_convnet/out_encoder/elu/GreaterEqualGreaterEqual-m_0/fingerpint/fc_convnet/out_encoder/BiasAdd8m_0/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/y*
T0*'
_output_shapes
:?????????
?
-m_0/fingerpint/fc_convnet/out_encoder/elu/EluElu-m_0/fingerpint/fc_convnet/out_encoder/BiasAdd*
T0*'
_output_shapes
:?????????
t
/m_0/fingerpint/fc_convnet/out_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
-m_0/fingerpint/fc_convnet/out_encoder/elu/mulMul/m_0/fingerpint/fc_convnet/out_encoder/elu/mul/x-m_0/fingerpint/fc_convnet/out_encoder/elu/Elu*
T0*'
_output_shapes
:?????????
?
0m_0/fingerpint/fc_convnet/out_encoder/elu/SelectSelect6m_0/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual-m_0/fingerpint/fc_convnet/out_encoder/BiasAdd-m_0/fingerpint/fc_convnet/out_encoder/elu/mul*'
_output_shapes
:?????????*
T0
v
1m_0/fingerpint/fc_convnet/out_encoder/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
/m_0/fingerpint/fc_convnet/out_encoder/elu/mul_1Mul1m_0/fingerpint/fc_convnet/out_encoder/elu/mul_1/x0m_0/fingerpint/fc_convnet/out_encoder/elu/Select*'
_output_shapes
:?????????*
T0
i
m_0/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_0/transpose_1	Transposem_0/compress_readout/elu/mul_1m_0/transpose_1/perm*
T0*,
_output_shapes
:@??????????*
Tperm0
p
m_0/strided_slice/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
r
m_0/strided_slice/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
r
m_0/strided_slice/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
m_0/strided_sliceStridedSlicem_0/transpose_1m_0/strided_slice/stackm_0/strided_slice/stack_1m_0/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*0
_output_shapes
:@??????????
?
6m_0/attn_focus/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*(
_class
loc:@m_0/attn_focus/kernel*
valueB"   ?   
?
4m_0/attn_focus/kernel/Initializer/random_uniform/minConst*(
_class
loc:@m_0/attn_focus/kernel*
valueB
 *?"?*
dtype0*
_output_shapes
: 
?
4m_0/attn_focus/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@m_0/attn_focus/kernel*
valueB
 *?">*
dtype0*
_output_shapes
: 
?
>m_0/attn_focus/kernel/Initializer/random_uniform/RandomUniformRandomUniform6m_0/attn_focus/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*(
_class
loc:@m_0/attn_focus/kernel*
seed2
?
4m_0/attn_focus/kernel/Initializer/random_uniform/subSub4m_0/attn_focus/kernel/Initializer/random_uniform/max4m_0/attn_focus/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@m_0/attn_focus/kernel
?
4m_0/attn_focus/kernel/Initializer/random_uniform/mulMul>m_0/attn_focus/kernel/Initializer/random_uniform/RandomUniform4m_0/attn_focus/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*(
_class
loc:@m_0/attn_focus/kernel
?
0m_0/attn_focus/kernel/Initializer/random_uniformAdd4m_0/attn_focus/kernel/Initializer/random_uniform/mul4m_0/attn_focus/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@m_0/attn_focus/kernel*
_output_shapes
:	?
?
m_0/attn_focus/kernel
VariableV2*(
_class
loc:@m_0/attn_focus/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name 
?
m_0/attn_focus/kernel/AssignAssignm_0/attn_focus/kernel0m_0/attn_focus/kernel/Initializer/random_uniform*(
_class
loc:@m_0/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
m_0/attn_focus/kernel/readIdentitym_0/attn_focus/kernel*
T0*(
_class
loc:@m_0/attn_focus/kernel*
_output_shapes
:	?
?
%m_0/attn_focus/bias/Initializer/zerosConst*
_output_shapes	
:?*&
_class
loc:@m_0/attn_focus/bias*
valueB?*    *
dtype0
?
m_0/attn_focus/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *&
_class
loc:@m_0/attn_focus/bias*
	container *
shape:?
?
m_0/attn_focus/bias/AssignAssignm_0/attn_focus/bias%m_0/attn_focus/bias/Initializer/zeros*
T0*&
_class
loc:@m_0/attn_focus/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
m_0/attn_focus/bias/readIdentitym_0/attn_focus/bias*
_output_shapes	
:?*
T0*&
_class
loc:@m_0/attn_focus/bias
?
m_0/attn_focus/MatMulMatMul/m_0/fingerpint/fc_convnet/out_encoder/elu/mul_1m_0/attn_focus/kernel/read*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
m_0/attn_focus/BiasAddBiasAddm_0/attn_focus/MatMulm_0/attn_focus/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
f
m_0/Reshape/shapeConst*!
valueB"?????      *
dtype0*
_output_shapes
:
?
m_0/ReshapeReshapem_0/attn_focus/BiasAddm_0/Reshape/shape*
T0*
Tshape0*,
_output_shapes
:??????????
[
m_0/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
?
m_0/SumSumm_0/Reshapem_0/Sum/reduction_indices*
T0*+
_output_shapes
:?????????*
	keep_dims(*

Tidx0
c
m_0/truedivRealDivm_0/Reshapem_0/Sum*,
_output_shapes
:??????????*
T0
i
m_0/transpose_2/permConst*
dtype0*
_output_shapes
:*!
valueB"          
?
m_0/transpose_2	Transposem_0/truedivm_0/transpose_2/perm*
T0*,
_output_shapes
:??????????*
Tperm0
r
m_0/strided_slice_1/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
t
m_0/strided_slice_1/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
t
m_0/strided_slice_1/stack_2Const*
_output_shapes
:*%
valueB"            *
dtype0
?
m_0/strided_slice_1StridedSlicem_0/transpose_2m_0/strided_slice_1/stackm_0/strided_slice_1/stack_1m_0/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask*
end_mask*0
_output_shapes
:??????????
?
m_0/DepthwiseConv2dNativeDepthwiseConv2dNativem_0/strided_slicem_0/strided_slice_1*
paddingVALID*/
_output_shapes
:@??????????*
	dilations
*
T0*
strides
*
data_formatNHWC
~
m_0/SqueezeSqueezem_0/DepthwiseConv2dNative*+
_output_shapes
:@??????????*
squeeze_dims
*
T0
i
m_0/transpose_3/permConst*
_output_shapes
:*!
valueB"          *
dtype0
?
m_0/transpose_3	Transposem_0/Squeezem_0/transpose_3/perm*
Tperm0*
T0*+
_output_shapes
:??????????@
c
m_0/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
m_0/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
e
m_0/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_0/strided_slice_2StridedSlicem_0/transpose_3m_0/strided_slice_2/stackm_0/strided_slice_2/stack_1m_0/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*+
_output_shapes
:??????????@
b
m_0/concat_1/concat_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
c
m_0/concat_1Identitym_0/strided_slice_2*
T0*+
_output_shapes
:??????????@
j
m_0/strided_slice_3/stackConst*
_output_shapes
:*
valueB"    ????*
dtype0
l
m_0/strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
l
m_0/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
m_0/strided_slice_3StridedSliceinput/IteratorGetNext:2m_0/strided_slice_3/stackm_0/strided_slice_3/stack_1m_0/strided_slice_3/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:?????????*
Index0*
T0*
shrink_axis_mask
i
m_0/transpose_4/permConst*
dtype0*
_output_shapes
:*!
valueB"          
?
m_0/transpose_4	Transposeinput/IteratorGetNext:5m_0/transpose_4/perm*
T0*+
_output_shapes
:??????????*
Tperm0
K
	m_0/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
_
m_0/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_0/ExpandDims_1
ExpandDimsm_0/strided_slice_3m_0/ExpandDims_1/dim*
T0*'
_output_shapes
:?????????*

Tdim0
V
m_0/TensorArray/sizeConst*
dtype0*
_output_shapes
: *
value	B :?
?
m_0/TensorArrayTensorArrayV3m_0/TensorArray/size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
X
m_0/TensorArray_1/sizeConst*
dtype0*
_output_shapes
: *
value	B :?
?
m_0/TensorArray_1TensorArrayV3m_0/TensorArray_1/size*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:
?
m_0/while/EnterEnter	m_0/Const*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_0/while/while_context
?
m_0/while/Enter_1Enterm_0/ExpandDims_1*
T0*
is_constant( *
parallel_iterations
*'
_output_shapes
:?????????*'

frame_namem_0/while/while_context
?
m_0/while/Enter_2Enterm_0/unstack*(
_output_shapes
:??????????*'

frame_namem_0/while/while_context*
T0*
is_constant( *
parallel_iterations

?
m_0/while/Enter_3Enterm_0/TensorArray:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_0/while/while_context
?
m_0/while/Enter_4Enterm_0/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_0/while/while_context
n
m_0/while/MergeMergem_0/while/Enterm_0/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_0/while/Merge_1Mergem_0/while/Enter_1m_0/while/NextIteration_1*
T0*
N*)
_output_shapes
:?????????: 
?
m_0/while/Merge_2Mergem_0/while/Enter_2m_0/while/NextIteration_2*
T0*
N**
_output_shapes
:??????????: 
t
m_0/while/Merge_3Mergem_0/while/Enter_3m_0/while/NextIteration_3*
N*
_output_shapes
: : *
T0
t
m_0/while/Merge_4Mergem_0/while/Enter_4m_0/while/NextIteration_4*
N*
_output_shapes
: : *
T0
d
m_0/while/Less/yConst^m_0/while/Merge*
value	B :?*
dtype0*
_output_shapes
: 
Z
m_0/while/LessLessm_0/while/Mergem_0/while/Less/y*
T0*
_output_shapes
: 
F
m_0/while/LoopCondLoopCondm_0/while/Less*
_output_shapes
: 
?
m_0/while/SwitchSwitchm_0/while/Mergem_0/while/LoopCond*
T0*"
_class
loc:@m_0/while/Merge*
_output_shapes
: : 
?
m_0/while/Switch_1Switchm_0/while/Merge_1m_0/while/LoopCond*
T0*$
_class
loc:@m_0/while/Merge_1*:
_output_shapes(
&:?????????:?????????
?
m_0/while/Switch_2Switchm_0/while/Merge_2m_0/while/LoopCond*
T0*$
_class
loc:@m_0/while/Merge_2*<
_output_shapes*
(:??????????:??????????
?
m_0/while/Switch_3Switchm_0/while/Merge_3m_0/while/LoopCond*
T0*$
_class
loc:@m_0/while/Merge_3*
_output_shapes
: : 
?
m_0/while/Switch_4Switchm_0/while/Merge_4m_0/while/LoopCond*$
_class
loc:@m_0/while/Merge_4*
_output_shapes
: : *
T0
S
m_0/while/IdentityIdentitym_0/while/Switch:1*
_output_shapes
: *
T0
h
m_0/while/Identity_1Identitym_0/while/Switch_1:1*
T0*'
_output_shapes
:?????????
i
m_0/while/Identity_2Identitym_0/while/Switch_2:1*
T0*(
_output_shapes
:??????????
W
m_0/while/Identity_3Identitym_0/while/Switch_3:1*
T0*
_output_shapes
: 
W
m_0/while/Identity_4Identitym_0/while/Switch_4:1*
T0*
_output_shapes
: 
f
m_0/while/add/yConst^m_0/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
m_0/while/addAddm_0/while/Identitym_0/while/add/y*
_output_shapes
: *
T0
s
m_0/while/strided_slice/stackPackm_0/while/Identity*
T0*

axis *
N*
_output_shapes
:
p
m_0/while/strided_slice/stack_1Packm_0/while/add*
_output_shapes
:*
T0*

axis *
N
~
m_0/while/strided_slice/stack_2Const^m_0/while/Identity*
valueB:*
dtype0*
_output_shapes
:
?
m_0/while/strided_sliceStridedSlicem_0/while/strided_slice/Enterm_0/while/strided_slice/stackm_0/while/strided_slice/stack_1m_0/while/strided_slice/stack_2*'
_output_shapes
:?????????*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
?
m_0/while/strided_slice/EnterEnterm_0/transpose_4*
T0*
is_constant(*
parallel_iterations
*+
_output_shapes
:??????????*'

frame_namem_0/while/while_context
l
m_0/while/concat/axisConst^m_0/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/while/concatConcatV2m_0/while/Identity_1m_0/while/strided_slicem_0/while/concat/axis*'
_output_shapes
:?????????*

Tidx0*
T0*
N
?
2m_0/gru_cell/w_ru/Initializer/random_uniform/shapeConst*$
_class
loc:@m_0/gru_cell/w_ru*
valueB"#    *
dtype0*
_output_shapes
:
?
0m_0/gru_cell/w_ru/Initializer/random_uniform/minConst*$
_class
loc:@m_0/gru_cell/w_ru*
valueB
 *n???*
dtype0*
_output_shapes
: 
?
0m_0/gru_cell/w_ru/Initializer/random_uniform/maxConst*$
_class
loc:@m_0/gru_cell/w_ru*
valueB
 *n??=*
dtype0*
_output_shapes
: 
?
:m_0/gru_cell/w_ru/Initializer/random_uniform/RandomUniformRandomUniform2m_0/gru_cell/w_ru/Initializer/random_uniform/shape*
T0*$
_class
loc:@m_0/gru_cell/w_ru*
seed2 *
dtype0* 
_output_shapes
:
??*

seed 
?
0m_0/gru_cell/w_ru/Initializer/random_uniform/subSub0m_0/gru_cell/w_ru/Initializer/random_uniform/max0m_0/gru_cell/w_ru/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@m_0/gru_cell/w_ru
?
0m_0/gru_cell/w_ru/Initializer/random_uniform/mulMul:m_0/gru_cell/w_ru/Initializer/random_uniform/RandomUniform0m_0/gru_cell/w_ru/Initializer/random_uniform/sub*
T0*$
_class
loc:@m_0/gru_cell/w_ru* 
_output_shapes
:
??
?
,m_0/gru_cell/w_ru/Initializer/random_uniformAdd0m_0/gru_cell/w_ru/Initializer/random_uniform/mul0m_0/gru_cell/w_ru/Initializer/random_uniform/min*
T0*$
_class
loc:@m_0/gru_cell/w_ru* 
_output_shapes
:
??
?
m_0/gru_cell/w_ru
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *$
_class
loc:@m_0/gru_cell/w_ru*
	container *
shape:
??
?
m_0/gru_cell/w_ru/AssignAssignm_0/gru_cell/w_ru,m_0/gru_cell/w_ru/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/w_ru
?
m_0/gru_cell/w_ru/readIdentitym_0/gru_cell/w_ru*
T0*$
_class
loc:@m_0/gru_cell/w_ru* 
_output_shapes
:
??
?
#m_0/gru_cell/b_ru/Initializer/ConstConst*
_output_shapes	
:?*$
_class
loc:@m_0/gru_cell/b_ru*
valueB?*  ??*
dtype0
?
m_0/gru_cell/b_ru
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *$
_class
loc:@m_0/gru_cell/b_ru*
	container *
shape:?
?
m_0/gru_cell/b_ru/AssignAssignm_0/gru_cell/b_ru#m_0/gru_cell/b_ru/Initializer/Const*
_output_shapes	
:?*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/b_ru*
validate_shape(
?
m_0/gru_cell/b_ru/readIdentitym_0/gru_cell/b_ru*$
_class
loc:@m_0/gru_cell/b_ru*
_output_shapes	
:?*
T0
?
1m_0/gru_cell/w_c/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*#
_class
loc:@m_0/gru_cell/w_c*
valueB"#    
?
/m_0/gru_cell/w_c/Initializer/random_uniform/minConst*#
_class
loc:@m_0/gru_cell/w_c*
valueB
 *"^Խ*
dtype0*
_output_shapes
: 
?
/m_0/gru_cell/w_c/Initializer/random_uniform/maxConst*#
_class
loc:@m_0/gru_cell/w_c*
valueB
 *"^?=*
dtype0*
_output_shapes
: 
?
9m_0/gru_cell/w_c/Initializer/random_uniform/RandomUniformRandomUniform1m_0/gru_cell/w_c/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
??*

seed *
T0*#
_class
loc:@m_0/gru_cell/w_c
?
/m_0/gru_cell/w_c/Initializer/random_uniform/subSub/m_0/gru_cell/w_c/Initializer/random_uniform/max/m_0/gru_cell/w_c/Initializer/random_uniform/min*
T0*#
_class
loc:@m_0/gru_cell/w_c*
_output_shapes
: 
?
/m_0/gru_cell/w_c/Initializer/random_uniform/mulMul9m_0/gru_cell/w_c/Initializer/random_uniform/RandomUniform/m_0/gru_cell/w_c/Initializer/random_uniform/sub*
T0*#
_class
loc:@m_0/gru_cell/w_c* 
_output_shapes
:
??
?
+m_0/gru_cell/w_c/Initializer/random_uniformAdd/m_0/gru_cell/w_c/Initializer/random_uniform/mul/m_0/gru_cell/w_c/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*#
_class
loc:@m_0/gru_cell/w_c
?
m_0/gru_cell/w_c
VariableV2*
shared_name *#
_class
loc:@m_0/gru_cell/w_c*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
m_0/gru_cell/w_c/AssignAssignm_0/gru_cell/w_c+m_0/gru_cell/w_c/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@m_0/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??
?
m_0/gru_cell/w_c/readIdentitym_0/gru_cell/w_c*
T0*#
_class
loc:@m_0/gru_cell/w_c* 
_output_shapes
:
??
?
"m_0/gru_cell/b_c/Initializer/ConstConst*#
_class
loc:@m_0/gru_cell/b_c*
valueB?*    *
dtype0*
_output_shapes	
:?
?
m_0/gru_cell/b_c
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *#
_class
loc:@m_0/gru_cell/b_c*
	container *
shape:?
?
m_0/gru_cell/b_c/AssignAssignm_0/gru_cell/b_c"m_0/gru_cell/b_c/Initializer/Const*#
_class
loc:@m_0/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
~
m_0/gru_cell/b_c/readIdentitym_0/gru_cell/b_c*
T0*#
_class
loc:@m_0/gru_cell/b_c*
_output_shapes	
:?
?
m_0/while/gru_cell/GRUBlockCellGRUBlockCellm_0/while/concatm_0/while/Identity_2%m_0/while/gru_cell/GRUBlockCell/Enter'm_0/while/gru_cell/GRUBlockCell/Enter_1'm_0/while/gru_cell/GRUBlockCell/Enter_2'm_0/while/gru_cell/GRUBlockCell/Enter_3*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????
?
%m_0/while/gru_cell/GRUBlockCell/EnterEnterm_0/gru_cell/w_ru/read*
parallel_iterations
* 
_output_shapes
:
??*'

frame_namem_0/while/while_context*
T0*
is_constant(
?
'm_0/while/gru_cell/GRUBlockCell/Enter_1Enterm_0/gru_cell/w_c/read* 
_output_shapes
:
??*'

frame_namem_0/while/while_context*
T0*
is_constant(*
parallel_iterations

?
'm_0/while/gru_cell/GRUBlockCell/Enter_2Enterm_0/gru_cell/b_ru/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_0/while/while_context
?
'm_0/while/gru_cell/GRUBlockCell/Enter_3Enterm_0/gru_cell/b_c/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_0/while/while_context
?
?m_0/decoder_output_proj/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
=m_0/decoder_output_proj/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
valueB
 *?7?*
dtype0
?
=m_0/decoder_output_proj/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
valueB
 *?7>*
dtype0*
_output_shapes
: 
?
Gm_0/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_0/decoder_output_proj/kernel/Initializer/random_uniform/shape*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
seed2*
dtype0*
_output_shapes
:	?*
seed???)*
T0
?
=m_0/decoder_output_proj/kernel/Initializer/random_uniform/subSub=m_0/decoder_output_proj/kernel/Initializer/random_uniform/max=m_0/decoder_output_proj/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel
?
=m_0/decoder_output_proj/kernel/Initializer/random_uniform/mulMulGm_0/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniform=m_0/decoder_output_proj/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
_output_shapes
:	?
?
9m_0/decoder_output_proj/kernel/Initializer/random_uniformAdd=m_0/decoder_output_proj/kernel/Initializer/random_uniform/mul=m_0/decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
_output_shapes
:	?
?
m_0/decoder_output_proj/kernel
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
	container *
shape:	?
?
%m_0/decoder_output_proj/kernel/AssignAssignm_0/decoder_output_proj/kernel9m_0/decoder_output_proj/kernel/Initializer/random_uniform*
use_locking(*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
validate_shape(*
_output_shapes
:	?
?
#m_0/decoder_output_proj/kernel/readIdentitym_0/decoder_output_proj/kernel*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
_output_shapes
:	?
?
.m_0/decoder_output_proj/bias/Initializer/zerosConst*/
_class%
#!loc:@m_0/decoder_output_proj/bias*
valueB*    *
dtype0*
_output_shapes
:
?
m_0/decoder_output_proj/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@m_0/decoder_output_proj/bias*
	container *
shape:
?
#m_0/decoder_output_proj/bias/AssignAssignm_0/decoder_output_proj/bias.m_0/decoder_output_proj/bias/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@m_0/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
!m_0/decoder_output_proj/bias/readIdentitym_0/decoder_output_proj/bias*
T0*/
_class%
#!loc:@m_0/decoder_output_proj/bias*
_output_shapes
:
?
$m_0/while/decoder_output_proj/MatMulMatMul!m_0/while/gru_cell/GRUBlockCell:3*m_0/while/decoder_output_proj/MatMul/Enter*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
*m_0/while/decoder_output_proj/MatMul/EnterEnter#m_0/decoder_output_proj/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
:	?*'

frame_namem_0/while/while_context
?
%m_0/while/decoder_output_proj/BiasAddBiasAdd$m_0/while/decoder_output_proj/MatMul+m_0/while/decoder_output_proj/BiasAdd/Enter*'
_output_shapes
:?????????*
T0*
data_formatNHWC
?
+m_0/while/decoder_output_proj/BiasAdd/EnterEnter!m_0/decoder_output_proj/bias/read*
parallel_iterations
*
_output_shapes
:*'

frame_namem_0/while/while_context*
T0*
is_constant(
?
-m_0/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33m_0/while/TensorArrayWrite/TensorArrayWriteV3/Enterm_0/while/Identity!m_0/while/gru_cell/GRUBlockCell:3m_0/while/Identity_4*
T0*2
_class(
&$loc:@m_0/while/gru_cell/GRUBlockCell*
_output_shapes
: 
?
3m_0/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_0/TensorArray_1*2
_class(
&$loc:@m_0/while/gru_cell/GRUBlockCell*
parallel_iterations
*
is_constant(*'

frame_namem_0/while/while_context*
_output_shapes
:*
T0
?
/m_0/while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV35m_0/while/TensorArrayWrite_1/TensorArrayWriteV3/Enterm_0/while/Identity%m_0/while/decoder_output_proj/BiasAddm_0/while/Identity_3*
_output_shapes
: *
T0*8
_class.
,*loc:@m_0/while/decoder_output_proj/BiasAdd
?
5m_0/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterm_0/TensorArray*'

frame_namem_0/while/while_context*
_output_shapes
:*
T0*8
_class.
,*loc:@m_0/while/decoder_output_proj/BiasAdd*
parallel_iterations
*
is_constant(
h
m_0/while/add_1/yConst^m_0/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
^
m_0/while/add_1Addm_0/while/Identitym_0/while/add_1/y*
T0*
_output_shapes
: 
Z
m_0/while/NextIterationNextIterationm_0/while/add_1*
T0*
_output_shapes
: 
?
m_0/while/NextIteration_1NextIteration%m_0/while/decoder_output_proj/BiasAdd*'
_output_shapes
:?????????*
T0
?
m_0/while/NextIteration_2NextIteration!m_0/while/gru_cell/GRUBlockCell:3*
T0*(
_output_shapes
:??????????
|
m_0/while/NextIteration_3NextIteration/m_0/while/TensorArrayWrite_1/TensorArrayWriteV3*
T0*
_output_shapes
: 
z
m_0/while/NextIteration_4NextIteration-m_0/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
I
m_0/while/ExitExitm_0/while/Switch*
_output_shapes
: *
T0
^
m_0/while/Exit_1Exitm_0/while/Switch_1*'
_output_shapes
:?????????*
T0
_
m_0/while/Exit_2Exitm_0/while/Switch_2*
T0*(
_output_shapes
:??????????
M
m_0/while/Exit_3Exitm_0/while/Switch_3*
_output_shapes
: *
T0
M
m_0/while/Exit_4Exitm_0/while/Switch_4*
_output_shapes
: *
T0
?
&m_0/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_0/TensorArraym_0/while/Exit_3*"
_class
loc:@m_0/TensorArray*
_output_shapes
: 
?
 m_0/TensorArrayStack/range/startConst*"
_class
loc:@m_0/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
?
 m_0/TensorArrayStack/range/deltaConst*
_output_shapes
: *"
_class
loc:@m_0/TensorArray*
value	B :*
dtype0
?
m_0/TensorArrayStack/rangeRange m_0/TensorArrayStack/range/start&m_0/TensorArrayStack/TensorArraySizeV3 m_0/TensorArrayStack/range/delta*#
_output_shapes
:?????????*

Tidx0*"
_class
loc:@m_0/TensorArray
?
(m_0/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_0/TensorArraym_0/TensorArrayStack/rangem_0/while/Exit_3*
dtype0*4
_output_shapes"
 :??????????????????*$
element_shape:?????????*"
_class
loc:@m_0/TensorArray
?
m_0/Squeeze_1Squeeze(m_0/TensorArrayStack/TensorArrayGatherV3*0
_output_shapes
:??????????????????*
squeeze_dims

?????????*
T0
?
(m_0/TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3m_0/TensorArray_1m_0/while/Exit_4*$
_class
loc:@m_0/TensorArray_1*
_output_shapes
: 
?
"m_0/TensorArrayStack_1/range/startConst*$
_class
loc:@m_0/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
?
"m_0/TensorArrayStack_1/range/deltaConst*$
_class
loc:@m_0/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/TensorArrayStack_1/rangeRange"m_0/TensorArrayStack_1/range/start(m_0/TensorArrayStack_1/TensorArraySizeV3"m_0/TensorArrayStack_1/range/delta*

Tidx0*$
_class
loc:@m_0/TensorArray_1*#
_output_shapes
:?????????
?
*m_0/TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3m_0/TensorArray_1m_0/TensorArrayStack_1/rangem_0/while/Exit_4*
dtype0*5
_output_shapes#
!:???????????????????*%
element_shape:??????????*$
_class
loc:@m_0/TensorArray_1
c
m_0/L2Loss_1L2Loss*m_0/TensorArrayStack_1/TensorArrayGatherV3*
T0*
_output_shapes
: 
P
m_0/mul_1/yConst*
valueB
 *jo?3*
dtype0*
_output_shapes
: 
L
	m_0/mul_1Mulm_0/L2Loss_1m_0/mul_1/y*
_output_shapes
: *
T0
L
m_0/transpose_5/RankRankm_0/Squeeze_1*
_output_shapes
: *
T0
W
m_0/transpose_5/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
h
m_0/transpose_5/subSubm_0/transpose_5/Rankm_0/transpose_5/sub/y*
_output_shapes
: *
T0
]
m_0/transpose_5/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
m_0/transpose_5/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_0/transpose_5/RangeRangem_0/transpose_5/Range/startm_0/transpose_5/Rankm_0/transpose_5/Range/delta*#
_output_shapes
:?????????*

Tidx0
v
m_0/transpose_5/sub_1Subm_0/transpose_5/subm_0/transpose_5/Range*
T0*#
_output_shapes
:?????????
?
m_0/transpose_5	Transposem_0/Squeeze_1m_0/transpose_5/sub_1*
Tperm0*
T0*0
_output_shapes
:??????????????????
_
m_0/ExpandDims_2/dimConst*
_output_shapes
: *
valueB :
?????????*
dtype0
?
m_0/ExpandDims_2
ExpandDimsinput/IteratorGetNext:8m_0/ExpandDims_2/dim*
T0*'
_output_shapes
:?????????*

Tdim0
_
m_0/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
m_0/ExpandDims_3
ExpandDimsinput/IteratorGetNext:7m_0/ExpandDims_3/dim*

Tdim0*
T0*'
_output_shapes
:?????????
n
	m_0/mul_2Mulm_0/transpose_5m_0/ExpandDims_2*0
_output_shapes
:??????????????????*
T0
f
m_0/addAdd	m_0/mul_2m_0/ExpandDims_3*
T0*0
_output_shapes
:??????????????????
g
m_1/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_1/transpose	Transposeinput/IteratorGetNext:1m_1/transpose/perm*
T0*,
_output_shapes
:??????????*
Tperm0
X
m_1/cudnn_gru/rnn/RankConst*
_output_shapes
: *
value	B :*
dtype0
_
m_1/cudnn_gru/rnn/range/startConst*
dtype0*
_output_shapes
: *
value	B :
_
m_1/cudnn_gru/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/rangeRangem_1/cudnn_gru/rnn/range/startm_1/cudnn_gru/rnn/Rankm_1/cudnn_gru/rnn/range/delta*

Tidx0*
_output_shapes
:
r
!m_1/cudnn_gru/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
_
m_1/cudnn_gru/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/concatConcatV2!m_1/cudnn_gru/rnn/concat/values_0m_1/cudnn_gru/rnn/rangem_1/cudnn_gru/rnn/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
m_1/cudnn_gru/rnn/transpose	Transposeinput/IteratorGetNext:1m_1/cudnn_gru/rnn/concat*,
_output_shapes
:??????????*
Tperm0*
T0
r
m_1/cudnn_gru/rnn/ShapeShapem_1/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
o
%m_1/cudnn_gru/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
q
'm_1/cudnn_gru/rnn/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
q
'm_1/cudnn_gru/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_1/cudnn_gru/rnn/strided_sliceStridedSlicem_1/cudnn_gru/rnn/Shape%m_1/cudnn_gru/rnn/strided_slice/stack'm_1/cudnn_gru/rnn/strided_slice/stack_1'm_1/cudnn_gru/rnn/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
?
Vm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
Rm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims
ExpandDimsm_1/cudnn_gru/rnn/strided_sliceVm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
?
Mm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
?
Sm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Nm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatConcatV2Rm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDimsMm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstSm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
?
Sm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Mm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zerosFillNm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatSm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/Const*
T0*

index_type0*(
_output_shapes
:??????????
?
Xm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
Tm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1
ExpandDimsm_1/cudnn_gru/rnn/strided_sliceXm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
?
Om_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
t
m_1/cudnn_gru/rnn/Shape_1Shapem_1/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'm_1/cudnn_gru/rnn/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
s
)m_1/cudnn_gru/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
s
)m_1/cudnn_gru/rnn/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
!m_1/cudnn_gru/rnn/strided_slice_1StridedSlicem_1/cudnn_gru/rnn/Shape_1'm_1/cudnn_gru/rnn/strided_slice_1/stack)m_1/cudnn_gru/rnn/strided_slice_1/stack_1)m_1/cudnn_gru/rnn/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
t
m_1/cudnn_gru/rnn/Shape_2Shapem_1/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'm_1/cudnn_gru/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
s
)m_1/cudnn_gru/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
s
)m_1/cudnn_gru/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!m_1/cudnn_gru/rnn/strided_slice_2StridedSlicem_1/cudnn_gru/rnn/Shape_2'm_1/cudnn_gru/rnn/strided_slice_2/stack)m_1/cudnn_gru/rnn/strided_slice_2/stack_1)m_1/cudnn_gru/rnn/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
 m_1/cudnn_gru/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/ExpandDims
ExpandDims!m_1/cudnn_gru/rnn/strided_slice_2 m_1/cudnn_gru/rnn/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
b
m_1/cudnn_gru/rnn/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
a
m_1/cudnn_gru/rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
m_1/cudnn_gru/rnn/concat_1ConcatV2m_1/cudnn_gru/rnn/ExpandDimsm_1/cudnn_gru/rnn/Constm_1/cudnn_gru/rnn/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
b
m_1/cudnn_gru/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/zerosFillm_1/cudnn_gru/rnn/concat_1m_1/cudnn_gru/rnn/zeros/Const*(
_output_shapes
:??????????*
T0*

index_type0
X
m_1/cudnn_gru/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/TensorArrayTensorArrayV3!m_1/cudnn_gru/rnn/strided_slice_1*=
tensor_array_name(&m_1/cudnn_gru/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *%
element_shape:??????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
?
m_1/cudnn_gru/rnn/TensorArray_1TensorArrayV3!m_1/cudnn_gru/rnn/strided_slice_1*
identical_element_shapes(*<
tensor_array_name'%m_1/cudnn_gru/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:?????????*
clear_after_read(*
dynamic_size( 
?
*m_1/cudnn_gru/rnn/TensorArrayUnstack/ShapeShapem_1/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
?
8m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
:m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
?
:m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
2m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice*m_1/cudnn_gru/rnn/TensorArrayUnstack/Shape8m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack:m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1:m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
r
0m_1/cudnn_gru/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
r
0m_1/cudnn_gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
*m_1/cudnn_gru/rnn/TensorArrayUnstack/rangeRange0m_1/cudnn_gru/rnn/TensorArrayUnstack/range/start2m_1/cudnn_gru/rnn/TensorArrayUnstack/strided_slice0m_1/cudnn_gru/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????*

Tidx0
?
Lm_1/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3m_1/cudnn_gru/rnn/TensorArray_1*m_1/cudnn_gru/rnn/TensorArrayUnstack/rangem_1/cudnn_gru/rnn/transpose!m_1/cudnn_gru/rnn/TensorArray_1:1*
T0*.
_class$
" loc:@m_1/cudnn_gru/rnn/transpose*
_output_shapes
: 
]
m_1/cudnn_gru/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/MaximumMaximumm_1/cudnn_gru/rnn/Maximum/x!m_1/cudnn_gru/rnn/strided_slice_1*
T0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/MinimumMinimum!m_1/cudnn_gru/rnn/strided_slice_1m_1/cudnn_gru/rnn/Maximum*
T0*
_output_shapes
: 
k
)m_1/cudnn_gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/while/EnterEnter)m_1/cudnn_gru/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
m_1/cudnn_gru/rnn/while/Enter_1Enterm_1/cudnn_gru/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
m_1/cudnn_gru/rnn/while/Enter_2Enterm_1/cudnn_gru/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
m_1/cudnn_gru/rnn/while/Enter_3EnterMm_1/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros*
parallel_iterations *(
_output_shapes
:??????????*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context*
T0*
is_constant( 
?
m_1/cudnn_gru/rnn/while/MergeMergem_1/cudnn_gru/rnn/while/Enter%m_1/cudnn_gru/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_1/cudnn_gru/rnn/while/Merge_1Mergem_1/cudnn_gru/rnn/while/Enter_1'm_1/cudnn_gru/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
?
m_1/cudnn_gru/rnn/while/Merge_2Mergem_1/cudnn_gru/rnn/while/Enter_2'm_1/cudnn_gru/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
?
m_1/cudnn_gru/rnn/while/Merge_3Mergem_1/cudnn_gru/rnn/while/Enter_3'm_1/cudnn_gru/rnn/while/NextIteration_3*
N**
_output_shapes
:??????????: *
T0
?
m_1/cudnn_gru/rnn/while/LessLessm_1/cudnn_gru/rnn/while/Merge"m_1/cudnn_gru/rnn/while/Less/Enter*
T0*
_output_shapes
: 
?
"m_1/cudnn_gru/rnn/while/Less/EnterEnter!m_1/cudnn_gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
m_1/cudnn_gru/rnn/while/Less_1Lessm_1/cudnn_gru/rnn/while/Merge_1$m_1/cudnn_gru/rnn/while/Less_1/Enter*
_output_shapes
: *
T0
?
$m_1/cudnn_gru/rnn/while/Less_1/EnterEnterm_1/cudnn_gru/rnn/Minimum*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
"m_1/cudnn_gru/rnn/while/LogicalAnd
LogicalAndm_1/cudnn_gru/rnn/while/Lessm_1/cudnn_gru/rnn/while/Less_1*
_output_shapes
: 
h
 m_1/cudnn_gru/rnn/while/LoopCondLoopCond"m_1/cudnn_gru/rnn/while/LogicalAnd*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/while/SwitchSwitchm_1/cudnn_gru/rnn/while/Merge m_1/cudnn_gru/rnn/while/LoopCond*
T0*0
_class&
$"loc:@m_1/cudnn_gru/rnn/while/Merge*
_output_shapes
: : 
?
 m_1/cudnn_gru/rnn/while/Switch_1Switchm_1/cudnn_gru/rnn/while/Merge_1 m_1/cudnn_gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@m_1/cudnn_gru/rnn/while/Merge_1*
_output_shapes
: : 
?
 m_1/cudnn_gru/rnn/while/Switch_2Switchm_1/cudnn_gru/rnn/while/Merge_2 m_1/cudnn_gru/rnn/while/LoopCond*2
_class(
&$loc:@m_1/cudnn_gru/rnn/while/Merge_2*
_output_shapes
: : *
T0
?
 m_1/cudnn_gru/rnn/while/Switch_3Switchm_1/cudnn_gru/rnn/while/Merge_3 m_1/cudnn_gru/rnn/while/LoopCond*<
_output_shapes*
(:??????????:??????????*
T0*2
_class(
&$loc:@m_1/cudnn_gru/rnn/while/Merge_3
o
 m_1/cudnn_gru/rnn/while/IdentityIdentity m_1/cudnn_gru/rnn/while/Switch:1*
T0*
_output_shapes
: 
s
"m_1/cudnn_gru/rnn/while/Identity_1Identity"m_1/cudnn_gru/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
s
"m_1/cudnn_gru/rnn/while/Identity_2Identity"m_1/cudnn_gru/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
?
"m_1/cudnn_gru/rnn/while/Identity_3Identity"m_1/cudnn_gru/rnn/while/Switch_3:1*
T0*(
_output_shapes
:??????????
?
m_1/cudnn_gru/rnn/while/add/yConst!^m_1/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/while/addAdd m_1/cudnn_gru/rnn/while/Identitym_1/cudnn_gru/rnn/while/add/y*
T0*
_output_shapes
: 
?
)m_1/cudnn_gru/rnn/while/TensorArrayReadV3TensorArrayReadV3/m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter"m_1/cudnn_gru/rnn/while/Identity_11m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
/m_1/cudnn_gru/rnn/while/TensorArrayReadV3/EnterEnterm_1/cudnn_gru/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
1m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1EnterLm_1/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
om_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB"#    *
dtype0
?
mm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L?
?
mm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxConst*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
wm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformom_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shape*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
seed2*
dtype0* 
_output_shapes
:
??*
seed???)
?
mm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/subSubmm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxmm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
?
mm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulMulwm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformmm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformAddmm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulmm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Nm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
VariableV2*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignAssignNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelim_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/readIdentityNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
T0* 
_output_shapes
:
??
?
^m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/ConstConst*
dtype0*
_output_shapes	
:?*_
_classU
SQloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueB?*  ??
?
Lm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *_
_classU
SQloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
	container 
?
Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignAssignLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias^m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*_
_classU
SQloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
Qm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/readIdentityLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB"     *
dtype0
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L?
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/maxConst*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
seed2
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/subSub?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/max?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mulMul?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniform?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
?
~m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformAdd?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mul?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
_output_shapes
:	?*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
?
cm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
	container *
shape:	?
?
jm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/AssignAssigncm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel~m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform*
use_locking(*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/readIdentitycm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
T0*
_output_shapes
:	?
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shapeConst*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB"    *
dtype0*
_output_shapes
:
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/minConst*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxConst*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shape*
seed2*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/subSub?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/max?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
?
?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulMul?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniform?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformAdd?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mul?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
dm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
VariableV2*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name 
?
km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/AssignAssigndm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/readIdentitydm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
T0* 
_output_shapes
:
??
?
sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zerosConst*t
_classj
hfloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
am_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
VariableV2*t
_classj
hfloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/AssignAssignam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros*
T0*t
_classj
hfloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
fm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/readIdentityam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
T0*
_output_shapes	
:?
?
tm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zerosConst*u
_classk
igloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
bm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *u
_classk
igloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
	container 
?
im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/AssignAssignbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biastm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros*
use_locking(*
T0*u
_classk
igloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?
?
gm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/readIdentitybm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
T0*
_output_shapes	
:?
?
Wm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axisConst!^m_1/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Rm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatConcatV2)m_1/cudnn_gru/rnn/while/TensorArrayReadV3"m_1/cudnn_gru/rnn/while/Identity_3Wm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis*(
_output_shapes
:??????????*

Tidx0*
T0*
N
?
Rm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulMatMulRm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatXm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Xm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/EnterEnterSm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAddBiasAddRm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulYm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
Ym_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/EnterEnterQm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/SigmoidSigmoidSm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd*
T0*(
_output_shapes
:??????????
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/ConstConst!^m_1/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimConst!^m_1/cudnn_gru/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitSplit[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimSm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid*<
_output_shapes*
(:??????????:??????????*
	num_split*
T0
?
Tm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1MatMul)m_1/cudnn_gru/rnn/while/TensorArrayReadV3Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/EnterEnterhm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	?*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
Um_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1BiasAddTm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/EnterEnterfm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
_output_shapes	
:?*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Tm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2MatMul"m_1/cudnn_gru/rnn/while/Identity_3Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/EnterEnterim_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context*
T0
?
Um_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2BiasAddTm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter*(
_output_shapes
:??????????*
T0*
data_formatNHWC
?
[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/EnterEntergm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context
?
Om_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mulMulQm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitUm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2*(
_output_shapes
:??????????*
T0
?
Om_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/addAddUm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1Om_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul*(
_output_shapes
:??????????*
T0
?
Pm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/TanhTanhOm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add*(
_output_shapes
:??????????*
T0
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xConst!^m_1/cudnn_gru/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Om_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subSubQm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xSm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1MulOm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subPm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh*(
_output_shapes
:??????????*
T0
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2MulSm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1"m_1/cudnn_gru/rnn/while/Identity_3*
T0*(
_output_shapes
:??????????
?
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1AddQm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2*
T0*(
_output_shapes
:??????????
?
;m_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Am_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter"m_1/cudnn_gru/rnn/while/Identity_1Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1"m_1/cudnn_gru/rnn/while/Identity_2*
_output_shapes
: *
T0*d
_classZ
XVloc:@m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1
?
Am_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_1/cudnn_gru/rnn/TensorArray*
is_constant(*
_output_shapes
:*5

frame_name'%m_1/cudnn_gru/rnn/while/while_context*
T0*d
_classZ
XVloc:@m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
parallel_iterations 
?
m_1/cudnn_gru/rnn/while/add_1/yConst!^m_1/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/while/add_1Add"m_1/cudnn_gru/rnn/while/Identity_1m_1/cudnn_gru/rnn/while/add_1/y*
_output_shapes
: *
T0
t
%m_1/cudnn_gru/rnn/while/NextIterationNextIterationm_1/cudnn_gru/rnn/while/add*
T0*
_output_shapes
: 
x
'm_1/cudnn_gru/rnn/while/NextIteration_1NextIterationm_1/cudnn_gru/rnn/while/add_1*
_output_shapes
: *
T0
?
'm_1/cudnn_gru/rnn/while/NextIteration_2NextIteration;m_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
?
'm_1/cudnn_gru/rnn/while/NextIteration_3NextIterationQm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
T0*(
_output_shapes
:??????????
e
m_1/cudnn_gru/rnn/while/ExitExitm_1/cudnn_gru/rnn/while/Switch*
T0*
_output_shapes
: 
i
m_1/cudnn_gru/rnn/while/Exit_1Exit m_1/cudnn_gru/rnn/while/Switch_1*
T0*
_output_shapes
: 
i
m_1/cudnn_gru/rnn/while/Exit_2Exit m_1/cudnn_gru/rnn/while/Switch_2*
_output_shapes
: *
T0
{
m_1/cudnn_gru/rnn/while/Exit_3Exit m_1/cudnn_gru/rnn/while/Switch_3*
T0*(
_output_shapes
:??????????
?
4m_1/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_1/cudnn_gru/rnn/TensorArraym_1/cudnn_gru/rnn/while/Exit_2*0
_class&
$"loc:@m_1/cudnn_gru/rnn/TensorArray*
_output_shapes
: 
?
.m_1/cudnn_gru/rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *0
_class&
$"loc:@m_1/cudnn_gru/rnn/TensorArray*
value	B : 
?
.m_1/cudnn_gru/rnn/TensorArrayStack/range/deltaConst*0
_class&
$"loc:@m_1/cudnn_gru/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
?
(m_1/cudnn_gru/rnn/TensorArrayStack/rangeRange.m_1/cudnn_gru/rnn/TensorArrayStack/range/start4m_1/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3.m_1/cudnn_gru/rnn/TensorArrayStack/range/delta*0
_class&
$"loc:@m_1/cudnn_gru/rnn/TensorArray*#
_output_shapes
:?????????*

Tidx0
?
6m_1/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_1/cudnn_gru/rnn/TensorArray(m_1/cudnn_gru/rnn/TensorArrayStack/rangem_1/cudnn_gru/rnn/while/Exit_2*
dtype0*-
_output_shapes
:???????????*%
element_shape:??????????*0
_class&
$"loc:@m_1/cudnn_gru/rnn/TensorArray
d
m_1/cudnn_gru/rnn/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
Z
m_1/cudnn_gru/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
a
m_1/cudnn_gru/rnn/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
a
m_1/cudnn_gru/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/rnn/range_1Rangem_1/cudnn_gru/rnn/range_1/startm_1/cudnn_gru/rnn/Rank_1m_1/cudnn_gru/rnn/range_1/delta*
_output_shapes
:*

Tidx0
t
#m_1/cudnn_gru/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
a
m_1/cudnn_gru/rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
m_1/cudnn_gru/rnn/concat_2ConcatV2#m_1/cudnn_gru/rnn/concat_2/values_0m_1/cudnn_gru/rnn/range_1m_1/cudnn_gru/rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
m_1/cudnn_gru/rnn/transpose_1	Transpose6m_1/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3m_1/cudnn_gru/rnn/concat_2*
T0*-
_output_shapes
:???????????*
Tperm0
q
m_1/cudnn_gru/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_1/cudnn_gru/transpose	Transposem_1/cudnn_gru/rnn/transpose_1m_1/cudnn_gru/transpose/perm*
T0*-
_output_shapes
:???????????*
Tperm0
^
m_1/cudnn_gru/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_1/cudnn_gru/ExpandDims
ExpandDimsm_1/cudnn_gru/rnn/while/Exit_3m_1/cudnn_gru/ExpandDims/dim*

Tdim0*
T0*,
_output_shapes
:??????????
N

m_1/L2LossL2Lossm_1/cudnn_gru/transpose*
T0*
_output_shapes
: 
N
	m_1/mul/yConst*
_output_shapes
: *
valueB
 *4?r1*
dtype0
F
m_1/mulMul
m_1/L2Loss	m_1/mul/y*
T0*
_output_shapes
: 
y
m_1/unstackUnpackm_1/cudnn_gru/ExpandDims*	
num*
T0*

axis *(
_output_shapes
:??????????
?
>m_1/compress_readout/kernel/Initializer/truncated_normal/shapeConst*.
_class$
" loc:@m_1/compress_readout/kernel*
valueB"  @   *
dtype0*
_output_shapes
:
?
=m_1/compress_readout/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *.
_class$
" loc:@m_1/compress_readout/kernel*
valueB
 *    *
dtype0
?
?m_1/compress_readout/kernel/Initializer/truncated_normal/stddevConst*.
_class$
" loc:@m_1/compress_readout/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Hm_1/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>m_1/compress_readout/kernel/Initializer/truncated_normal/shape*
seed2*
dtype0*
_output_shapes
:	?@*
seed???)*
T0*.
_class$
" loc:@m_1/compress_readout/kernel
?
<m_1/compress_readout/kernel/Initializer/truncated_normal/mulMulHm_1/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormal?m_1/compress_readout/kernel/Initializer/truncated_normal/stddev*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
_output_shapes
:	?@
?
8m_1/compress_readout/kernel/Initializer/truncated_normalAdd<m_1/compress_readout/kernel/Initializer/truncated_normal/mul=m_1/compress_readout/kernel/Initializer/truncated_normal/mean*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
_output_shapes
:	?@
?
m_1/compress_readout/kernel
VariableV2*
	container *
shape:	?@*
dtype0*
_output_shapes
:	?@*
shared_name *.
_class$
" loc:@m_1/compress_readout/kernel
?
"m_1/compress_readout/kernel/AssignAssignm_1/compress_readout/kernel8m_1/compress_readout/kernel/Initializer/truncated_normal*
use_locking(*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@
?
 m_1/compress_readout/kernel/readIdentitym_1/compress_readout/kernel*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
_output_shapes
:	?@
?
+m_1/compress_readout/bias/Initializer/zerosConst*,
_class"
 loc:@m_1/compress_readout/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
m_1/compress_readout/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *,
_class"
 loc:@m_1/compress_readout/bias
?
 m_1/compress_readout/bias/AssignAssignm_1/compress_readout/bias+m_1/compress_readout/bias/Initializer/zeros*
T0*,
_class"
 loc:@m_1/compress_readout/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
m_1/compress_readout/bias/readIdentitym_1/compress_readout/bias*
_output_shapes
:@*
T0*,
_class"
 loc:@m_1/compress_readout/bias
{
$m_1/compress_readout/Tensordot/ShapeShapem_1/cudnn_gru/transpose*
T0*
out_type0*
_output_shapes
:
e
#m_1/compress_readout/Tensordot/RankConst*
value	B :*
dtype0*
_output_shapes
: 
m
#m_1/compress_readout/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
o
-m_1/compress_readout/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
?
+m_1/compress_readout/Tensordot/GreaterEqualGreaterEqual#m_1/compress_readout/Tensordot/axes-m_1/compress_readout/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
?
#m_1/compress_readout/Tensordot/CastCast+m_1/compress_readout/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
?
"m_1/compress_readout/Tensordot/mulMul#m_1/compress_readout/Tensordot/Cast#m_1/compress_readout/Tensordot/axes*
T0*
_output_shapes
:
g
%m_1/compress_readout/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
?
#m_1/compress_readout/Tensordot/LessLess#m_1/compress_readout/Tensordot/axes%m_1/compress_readout/Tensordot/Less/y*
T0*
_output_shapes
:
?
%m_1/compress_readout/Tensordot/Cast_1Cast#m_1/compress_readout/Tensordot/Less*
_output_shapes
:*

DstT0*

SrcT0

?
"m_1/compress_readout/Tensordot/addAdd#m_1/compress_readout/Tensordot/axes#m_1/compress_readout/Tensordot/Rank*
_output_shapes
:*
T0
?
$m_1/compress_readout/Tensordot/mul_1Mul%m_1/compress_readout/Tensordot/Cast_1"m_1/compress_readout/Tensordot/add*
_output_shapes
:*
T0
?
$m_1/compress_readout/Tensordot/add_1Add"m_1/compress_readout/Tensordot/mul$m_1/compress_readout/Tensordot/mul_1*
_output_shapes
:*
T0
l
*m_1/compress_readout/Tensordot/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
l
*m_1/compress_readout/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
$m_1/compress_readout/Tensordot/rangeRange*m_1/compress_readout/Tensordot/range/start#m_1/compress_readout/Tensordot/Rank*m_1/compress_readout/Tensordot/range/delta*

Tidx0*
_output_shapes
:
?
'm_1/compress_readout/Tensordot/ListDiffListDiff$m_1/compress_readout/Tensordot/range$m_1/compress_readout/Tensordot/add_1*
out_idx0*
T0*2
_output_shapes 
:?????????:?????????
n
,m_1/compress_readout/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_1/compress_readout/Tensordot/GatherV2GatherV2$m_1/compress_readout/Tensordot/Shape'm_1/compress_readout/Tensordot/ListDiff,m_1/compress_readout/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:?????????
p
.m_1/compress_readout/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
)m_1/compress_readout/Tensordot/GatherV2_1GatherV2$m_1/compress_readout/Tensordot/Shape$m_1/compress_readout/Tensordot/add_1.m_1/compress_readout/Tensordot/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
n
$m_1/compress_readout/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
#m_1/compress_readout/Tensordot/ProdProd'm_1/compress_readout/Tensordot/GatherV2$m_1/compress_readout/Tensordot/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
p
&m_1/compress_readout/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
%m_1/compress_readout/Tensordot/Prod_1Prod)m_1/compress_readout/Tensordot/GatherV2_1&m_1/compress_readout/Tensordot/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
l
*m_1/compress_readout/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
%m_1/compress_readout/Tensordot/concatConcatV2)m_1/compress_readout/Tensordot/GatherV2_1'm_1/compress_readout/Tensordot/GatherV2*m_1/compress_readout/Tensordot/concat/axis*
T0*
N*#
_output_shapes
:?????????*

Tidx0
n
,m_1/compress_readout/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
?
'm_1/compress_readout/Tensordot/concat_1ConcatV2'm_1/compress_readout/Tensordot/ListDiff$m_1/compress_readout/Tensordot/add_1,m_1/compress_readout/Tensordot/concat_1/axis*#
_output_shapes
:?????????*

Tidx0*
T0*
N
?
$m_1/compress_readout/Tensordot/stackPack#m_1/compress_readout/Tensordot/Prod%m_1/compress_readout/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
?
(m_1/compress_readout/Tensordot/transpose	Transposem_1/cudnn_gru/transpose'm_1/compress_readout/Tensordot/concat_1*
T0*-
_output_shapes
:???????????*
Tperm0
?
&m_1/compress_readout/Tensordot/ReshapeReshape(m_1/compress_readout/Tensordot/transpose$m_1/compress_readout/Tensordot/stack*
Tshape0*0
_output_shapes
:??????????????????*
T0
?
/m_1/compress_readout/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
*m_1/compress_readout/Tensordot/transpose_1	Transpose m_1/compress_readout/kernel/read/m_1/compress_readout/Tensordot/transpose_1/perm*
_output_shapes
:	?@*
Tperm0*
T0

.m_1/compress_readout/Tensordot/Reshape_1/shapeConst*
valueB"  @   *
dtype0*
_output_shapes
:
?
(m_1/compress_readout/Tensordot/Reshape_1Reshape*m_1/compress_readout/Tensordot/transpose_1.m_1/compress_readout/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	?@
?
%m_1/compress_readout/Tensordot/MatMulMatMul&m_1/compress_readout/Tensordot/Reshape(m_1/compress_readout/Tensordot/Reshape_1*
T0*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( 
p
&m_1/compress_readout/Tensordot/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
n
,m_1/compress_readout/Tensordot/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
'm_1/compress_readout/Tensordot/concat_2ConcatV2'm_1/compress_readout/Tensordot/GatherV2&m_1/compress_readout/Tensordot/Const_2,m_1/compress_readout/Tensordot/concat_2/axis*

Tidx0*
T0*
N*#
_output_shapes
:?????????
?
m_1/compress_readout/TensordotReshape%m_1/compress_readout/Tensordot/MatMul'm_1/compress_readout/Tensordot/concat_2*
T0*
Tshape0*,
_output_shapes
:??????????@
?
m_1/compress_readout/BiasAddBiasAddm_1/compress_readout/Tensordotm_1/compress_readout/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????@
l
'm_1/compress_readout/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
%m_1/compress_readout/elu/GreaterEqualGreaterEqualm_1/compress_readout/BiasAdd'm_1/compress_readout/elu/GreaterEqual/y*
T0*,
_output_shapes
:??????????@
x
m_1/compress_readout/elu/EluElum_1/compress_readout/BiasAdd*,
_output_shapes
:??????????@*
T0
c
m_1/compress_readout/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
m_1/compress_readout/elu/mulMulm_1/compress_readout/elu/mul/xm_1/compress_readout/elu/Elu*,
_output_shapes
:??????????@*
T0
?
m_1/compress_readout/elu/SelectSelect%m_1/compress_readout/elu/GreaterEqualm_1/compress_readout/BiasAddm_1/compress_readout/elu/mul*
T0*,
_output_shapes
:??????????@
e
 m_1/compress_readout/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
m_1/compress_readout/elu/mul_1Mul m_1/compress_readout/elu/mul_1/xm_1/compress_readout/elu/Select*
T0*,
_output_shapes
:??????????@
]
m_1/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_1/ExpandDims
ExpandDimsinput/IteratorGetNext:2m_1/ExpandDims/dim*
T0*,
_output_shapes
:??????????*

Tdim0
Z
m_1/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?

m_1/concatConcatV2input/IteratorGetNext:3m_1/ExpandDimsm_1/concat/axis*
T0*
N*,
_output_shapes
:??????????*

Tidx0
?
Gm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*!
valueB"         *
dtype0*
_output_shapes
:
?
Fm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/meanConst*
_output_shapes
: *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
valueB
 *    *
dtype0
?
Hm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddevConst*
_output_shapes
: *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
valueB
 *5??>*
dtype0
?
Qm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shape*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
seed2*
dtype0*"
_output_shapes
:*
seed???)
?
Em_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulMulQm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalHm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddev*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
Am_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normalAddEm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulFm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
$m_1/fingerpint/convnet/conv1d/kernel
VariableV2*
shared_name *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
	container *
shape:*
dtype0*"
_output_shapes
:
?
+m_1/fingerpint/convnet/conv1d/kernel/AssignAssign$m_1/fingerpint/convnet/conv1d/kernelAm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:
?
)m_1/fingerpint/convnet/conv1d/kernel/readIdentity$m_1/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel
?
4m_1/fingerpint/convnet/conv1d/bias/Initializer/zerosConst*5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
valueB*    *
dtype0*
_output_shapes
:
?
"m_1/fingerpint/convnet/conv1d/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
	container *
shape:
?
)m_1/fingerpint/convnet/conv1d/bias/AssignAssign"m_1/fingerpint/convnet/conv1d/bias4m_1/fingerpint/convnet/conv1d/bias/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
validate_shape(*
_output_shapes
:
?
'm_1/fingerpint/convnet/conv1d/bias/readIdentity"m_1/fingerpint/convnet/conv1d/bias*
T0*5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
_output_shapes
:
u
+m_1/fingerpint/convnet/conv1d/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
u
3m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
/m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims
ExpandDims
m_1/concat3m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
w
5m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
1m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims_1
ExpandDims)m_1/fingerpint/convnet/conv1d/kernel/read5m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dim*&
_output_shapes
:*

Tdim0*
T0
?
+m_1/fingerpint/convnet/conv1d/conv1d/Conv2DConv2D/m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims1m_1/fingerpint/convnet/conv1d/conv1d/ExpandDims_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:??????????
?
,m_1/fingerpint/convnet/conv1d/conv1d/SqueezeSqueeze+m_1/fingerpint/convnet/conv1d/conv1d/Conv2D*,
_output_shapes
:??????????*
squeeze_dims
*
T0
?
%m_1/fingerpint/convnet/conv1d/BiasAddBiasAdd,m_1/fingerpint/convnet/conv1d/conv1d/Squeeze'm_1/fingerpint/convnet/conv1d/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????
?
"m_1/fingerpint/convnet/conv1d/ReluRelu%m_1/fingerpint/convnet/conv1d/BiasAdd*
T0*,
_output_shapes
:??????????
?
Im_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*!
valueB"         *
dtype0*
_output_shapes
:
?
Hm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*
valueB
 *    
?
Jm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*
valueB
 *?Rn>*
dtype0*
_output_shapes
: 
?
Sm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shape*
seed???)*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*
seed2*
dtype0*"
_output_shapes
:
?
Gm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulMulSm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalJm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
:*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel
?
Cm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normalAddGm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulHm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mean*"
_output_shapes
:*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel
?
&m_1/fingerpint/convnet/conv1d_1/kernel
VariableV2*
	container *
shape:*
dtype0*"
_output_shapes
:*
shared_name *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel
?
-m_1/fingerpint/convnet/conv1d_1/kernel/AssignAssign&m_1/fingerpint/convnet/conv1d_1/kernelCm_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:*
use_locking(*
T0
?
+m_1/fingerpint/convnet/conv1d_1/kernel/readIdentity&m_1/fingerpint/convnet/conv1d_1/kernel*"
_output_shapes
:*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel
?
6m_1/fingerpint/convnet/conv1d_1/bias/Initializer/zerosConst*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
?
$m_1/fingerpint/convnet/conv1d_1/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias
?
+m_1/fingerpint/convnet/conv1d_1/bias/AssignAssign$m_1/fingerpint/convnet/conv1d_1/bias6m_1/fingerpint/convnet/conv1d_1/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias*
validate_shape(*
_output_shapes
:
?
)m_1/fingerpint/convnet/conv1d_1/bias/readIdentity$m_1/fingerpint/convnet/conv1d_1/bias*
_output_shapes
:*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias
w
-m_1/fingerpint/convnet/conv1d_1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims
ExpandDims"m_1/fingerpint/convnet/conv1d/Relu5m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
y
7m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1
ExpandDims+m_1/fingerpint/convnet/conv1d_1/kernel/read7m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:*

Tdim0
?
-m_1/fingerpint/convnet/conv1d_1/conv1d/Conv2DConv2D1m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims3m_1/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:??????????*
	dilations

?
.m_1/fingerpint/convnet/conv1d_1/conv1d/SqueezeSqueeze-m_1/fingerpint/convnet/conv1d_1/conv1d/Conv2D*
T0*,
_output_shapes
:??????????*
squeeze_dims

?
'm_1/fingerpint/convnet/conv1d_1/BiasAddBiasAdd.m_1/fingerpint/convnet/conv1d_1/conv1d/Squeeze)m_1/fingerpint/convnet/conv1d_1/bias/read*
data_formatNHWC*,
_output_shapes
:??????????*
T0
?
$m_1/fingerpint/convnet/conv1d_1/ReluRelu'm_1/fingerpint/convnet/conv1d_1/BiasAdd*,
_output_shapes
:??????????*
T0
u
3m_1/fingerpint/convnet/max_pooling1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
/m_1/fingerpint/convnet/max_pooling1d/ExpandDims
ExpandDims$m_1/fingerpint/convnet/conv1d_1/Relu3m_1/fingerpint/convnet/max_pooling1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
?
,m_1/fingerpint/convnet/max_pooling1d/MaxPoolMaxPool/m_1/fingerpint/convnet/max_pooling1d/ExpandDims*
ksize
*
paddingSAME*0
_output_shapes
:??????????*
T0*
data_formatNHWC*
strides

?
,m_1/fingerpint/convnet/max_pooling1d/SqueezeSqueeze,m_1/fingerpint/convnet/max_pooling1d/MaxPool*
T0*,
_output_shapes
:??????????*
squeeze_dims

?
Im_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*!
valueB"          *
dtype0*
_output_shapes
:
?
Hm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
valueB
 *?Rn>
?
Sm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
: *
seed???)*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
seed2
?
Gm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulMulSm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalJm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
: *
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel
?
Cm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normalAddGm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulHm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mean*"
_output_shapes
: *
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel
?
&m_1/fingerpint/convnet/conv1d_2/kernel
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
	container *
shape: 
?
-m_1/fingerpint/convnet/conv1d_2/kernel/AssignAssign&m_1/fingerpint/convnet/conv1d_2/kernelCm_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal*"
_output_shapes
: *
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
validate_shape(
?
+m_1/fingerpint/convnet/conv1d_2/kernel/readIdentity&m_1/fingerpint/convnet/conv1d_2/kernel*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
6m_1/fingerpint/convnet/conv1d_2/bias/Initializer/zerosConst*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
$m_1/fingerpint/convnet/conv1d_2/bias
VariableV2*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
?
+m_1/fingerpint/convnet/conv1d_2/bias/AssignAssign$m_1/fingerpint/convnet/conv1d_2/bias6m_1/fingerpint/convnet/conv1d_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias
?
)m_1/fingerpint/convnet/conv1d_2/bias/readIdentity$m_1/fingerpint/convnet/conv1d_2/bias*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias*
_output_shapes
: 
w
-m_1/fingerpint/convnet/conv1d_2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
1m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims
ExpandDims,m_1/fingerpint/convnet/max_pooling1d/Squeeze5m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
y
7m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
3m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1
ExpandDims+m_1/fingerpint/convnet/conv1d_2/kernel/read7m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
: *

Tdim0
?
-m_1/fingerpint/convnet/conv1d_2/conv1d/Conv2DConv2D1m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims3m_1/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:?????????? *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
.m_1/fingerpint/convnet/conv1d_2/conv1d/SqueezeSqueeze-m_1/fingerpint/convnet/conv1d_2/conv1d/Conv2D*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
?
'm_1/fingerpint/convnet/conv1d_2/BiasAddBiasAdd.m_1/fingerpint/convnet/conv1d_2/conv1d/Squeeze)m_1/fingerpint/convnet/conv1d_2/bias/read*
data_formatNHWC*,
_output_shapes
:?????????? *
T0
?
$m_1/fingerpint/convnet/conv1d_2/ReluRelu'm_1/fingerpint/convnet/conv1d_2/BiasAdd*
T0*,
_output_shapes
:?????????? 
?
Im_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*!
valueB"           *
dtype0*
_output_shapes
:
?
Hm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shape*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
seed2*
dtype0*"
_output_shapes
:  *
seed???)
?
Gm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulMulSm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalJm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
Cm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normalAddGm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulHm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
&m_1/fingerpint/convnet/conv1d_3/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel
?
-m_1/fingerpint/convnet/conv1d_3/kernel/AssignAssign&m_1/fingerpint/convnet/conv1d_3/kernelCm_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0
?
+m_1/fingerpint/convnet/conv1d_3/kernel/readIdentity&m_1/fingerpint/convnet/conv1d_3/kernel*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
6m_1/fingerpint/convnet/conv1d_3/bias/Initializer/zerosConst*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
$m_1/fingerpint/convnet/conv1d_3/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias*
	container *
shape: 
?
+m_1/fingerpint/convnet/conv1d_3/bias/AssignAssign$m_1/fingerpint/convnet/conv1d_3/bias6m_1/fingerpint/convnet/conv1d_3/bias/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias
?
)m_1/fingerpint/convnet/conv1d_3/bias/readIdentity$m_1/fingerpint/convnet/conv1d_3/bias*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias*
_output_shapes
: 
w
-m_1/fingerpint/convnet/conv1d_3/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims
ExpandDims$m_1/fingerpint/convnet/conv1d_2/Relu5m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dim*0
_output_shapes
:?????????? *

Tdim0*
T0
y
7m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1
ExpandDims+m_1/fingerpint/convnet/conv1d_3/kernel/read7m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:  *

Tdim0
?
-m_1/fingerpint/convnet/conv1d_3/conv1d/Conv2DConv2D1m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims3m_1/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1*
paddingSAME*0
_output_shapes
:?????????? *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
?
.m_1/fingerpint/convnet/conv1d_3/conv1d/SqueezeSqueeze-m_1/fingerpint/convnet/conv1d_3/conv1d/Conv2D*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
?
'm_1/fingerpint/convnet/conv1d_3/BiasAddBiasAdd.m_1/fingerpint/convnet/conv1d_3/conv1d/Squeeze)m_1/fingerpint/convnet/conv1d_3/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:?????????? 
?
$m_1/fingerpint/convnet/conv1d_3/ReluRelu'm_1/fingerpint/convnet/conv1d_3/BiasAdd*
T0*,
_output_shapes
:?????????? 
w
5m_1/fingerpint/convnet/max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/max_pooling1d_1/ExpandDims
ExpandDims$m_1/fingerpint/convnet/conv1d_3/Relu5m_1/fingerpint/convnet/max_pooling1d_1/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:?????????? 
?
.m_1/fingerpint/convnet/max_pooling1d_1/MaxPoolMaxPool1m_1/fingerpint/convnet/max_pooling1d_1/ExpandDims*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:?????????G 
?
.m_1/fingerpint/convnet/max_pooling1d_1/SqueezeSqueeze.m_1/fingerpint/convnet/max_pooling1d_1/MaxPool*
T0*+
_output_shapes
:?????????G *
squeeze_dims

?
Im_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*!
valueB"       @   *
dtype0*
_output_shapes
:
?
Hm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
: @*
seed???)*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
seed2
?
Gm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulMulSm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalJm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
: @*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel
?
Cm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normalAddGm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulHm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
&m_1/fingerpint/convnet/conv1d_4/kernel
VariableV2*
shared_name *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
	container *
shape: @*
dtype0*"
_output_shapes
: @
?
-m_1/fingerpint/convnet/conv1d_4/kernel/AssignAssign&m_1/fingerpint/convnet/conv1d_4/kernelCm_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal*"
_output_shapes
: @*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
validate_shape(
?
+m_1/fingerpint/convnet/conv1d_4/kernel/readIdentity&m_1/fingerpint/convnet/conv1d_4/kernel*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
6m_1/fingerpint/convnet/conv1d_4/bias/Initializer/zerosConst*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
$m_1/fingerpint/convnet/conv1d_4/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias
?
+m_1/fingerpint/convnet/conv1d_4/bias/AssignAssign$m_1/fingerpint/convnet/conv1d_4/bias6m_1/fingerpint/convnet/conv1d_4/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@
?
)m_1/fingerpint/convnet/conv1d_4/bias/readIdentity$m_1/fingerpint/convnet/conv1d_4/bias*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias*
_output_shapes
:@
w
-m_1/fingerpint/convnet/conv1d_4/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims
ExpandDims.m_1/fingerpint/convnet/max_pooling1d_1/Squeeze5m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:?????????G 
y
7m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1
ExpandDims+m_1/fingerpint/convnet/conv1d_4/kernel/read7m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
: @
?
-m_1/fingerpint/convnet/conv1d_4/conv1d/Conv2DConv2D1m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims3m_1/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????G@*
	dilations
*
T0
?
.m_1/fingerpint/convnet/conv1d_4/conv1d/SqueezeSqueeze-m_1/fingerpint/convnet/conv1d_4/conv1d/Conv2D*
T0*+
_output_shapes
:?????????G@*
squeeze_dims

?
'm_1/fingerpint/convnet/conv1d_4/BiasAddBiasAdd.m_1/fingerpint/convnet/conv1d_4/conv1d/Squeeze)m_1/fingerpint/convnet/conv1d_4/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????G@
?
$m_1/fingerpint/convnet/conv1d_4/ReluRelu'm_1/fingerpint/convnet/conv1d_4/BiasAdd*
T0*+
_output_shapes
:?????????G@
?
Im_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*!
valueB"   @   @   *
dtype0*
_output_shapes
:
?
Hm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
valueB
 *    
?
Jm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
valueB
 *?R?=*
dtype0*
_output_shapes
: 
?
Sm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shape*
seed???)*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
seed2*
dtype0*"
_output_shapes
:@@
?
Gm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulMulSm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalJm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
:@@*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel
?
Cm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normalAddGm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulHm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@
?
&m_1/fingerpint/convnet/conv1d_5/kernel
VariableV2*
	container *
shape:@@*
dtype0*"
_output_shapes
:@@*
shared_name *9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel
?
-m_1/fingerpint/convnet/conv1d_5/kernel/AssignAssign&m_1/fingerpint/convnet/conv1d_5/kernelCm_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
+m_1/fingerpint/convnet/conv1d_5/kernel/readIdentity&m_1/fingerpint/convnet/conv1d_5/kernel*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@*
T0
?
6m_1/fingerpint/convnet/conv1d_5/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias*
valueB@*    
?
$m_1/fingerpint/convnet/conv1d_5/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias*
	container *
shape:@
?
+m_1/fingerpint/convnet/conv1d_5/bias/AssignAssign$m_1/fingerpint/convnet/conv1d_5/bias6m_1/fingerpint/convnet/conv1d_5/bias/Initializer/zeros*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
)m_1/fingerpint/convnet/conv1d_5/bias/readIdentity$m_1/fingerpint/convnet/conv1d_5/bias*
_output_shapes
:@*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias
w
-m_1/fingerpint/convnet/conv1d_5/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims
ExpandDims$m_1/fingerpint/convnet/conv1d_4/Relu5m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dim*
T0*/
_output_shapes
:?????????G@*

Tdim0
y
7m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
3m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1
ExpandDims+m_1/fingerpint/convnet/conv1d_5/kernel/read7m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dim*&
_output_shapes
:@@*

Tdim0*
T0
?
-m_1/fingerpint/convnet/conv1d_5/conv1d/Conv2DConv2D1m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims3m_1/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????G@
?
.m_1/fingerpint/convnet/conv1d_5/conv1d/SqueezeSqueeze-m_1/fingerpint/convnet/conv1d_5/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:?????????G@
?
'm_1/fingerpint/convnet/conv1d_5/BiasAddBiasAdd.m_1/fingerpint/convnet/conv1d_5/conv1d/Squeeze)m_1/fingerpint/convnet/conv1d_5/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????G@
?
$m_1/fingerpint/convnet/conv1d_5/ReluRelu'm_1/fingerpint/convnet/conv1d_5/BiasAdd*
T0*+
_output_shapes
:?????????G@
w
5m_1/fingerpint/convnet/max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_1/fingerpint/convnet/max_pooling1d_2/ExpandDims
ExpandDims$m_1/fingerpint/convnet/conv1d_5/Relu5m_1/fingerpint/convnet/max_pooling1d_2/ExpandDims/dim*/
_output_shapes
:?????????G@*

Tdim0*
T0
?
.m_1/fingerpint/convnet/max_pooling1d_2/MaxPoolMaxPool1m_1/fingerpint/convnet/max_pooling1d_2/ExpandDims*
ksize
*
paddingSAME*/
_output_shapes
:?????????$@*
T0*
data_formatNHWC*
strides

?
.m_1/fingerpint/convnet/max_pooling1d_2/SqueezeSqueeze.m_1/fingerpint/convnet/max_pooling1d_2/MaxPool*
T0*+
_output_shapes
:?????????$@*
squeeze_dims

u
$m_1/fingerpint/convnet/Reshape/shapeConst*
valueB"???? 	  *
dtype0*
_output_shapes
:
?
m_1/fingerpint/convnet/ReshapeReshape.m_1/fingerpint/convnet/max_pooling1d_2/Squeeze$m_1/fingerpint/convnet/Reshape/shape*(
_output_shapes
:??????????*
T0*
Tshape0
?
Nm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
valueB" 	     
?
Mm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/meanConst*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Om_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddevConst*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *??<*
dtype0*
_output_shapes
: 
?
Xm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalNm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shape*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
seed2*
dtype0* 
_output_shapes
:
??*
seed???)*
T0
?
Lm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMulXm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalOm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddev* 
_output_shapes
:
??*
T0*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel
?
Hm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normalAddLm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mean* 
_output_shapes
:
??*
T0*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel
?
+m_1/fingerpint/fc_convnet/fc_encoder/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
	container *
shape:
??
?
2m_1/fingerpint/fc_convnet/fc_encoder/kernel/AssignAssign+m_1/fingerpint/fc_convnet/fc_encoder/kernelHm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal*
use_locking(*
T0*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??
?
0m_1/fingerpint/fc_convnet/fc_encoder/kernel/readIdentity+m_1/fingerpint/fc_convnet/fc_encoder/kernel*
T0*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??
?
;m_1/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zerosConst*<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
)m_1/fingerpint/fc_convnet/fc_encoder/bias
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias
?
0m_1/fingerpint/fc_convnet/fc_encoder/bias/AssignAssign)m_1/fingerpint/fc_convnet/fc_encoder/bias;m_1/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(*
_output_shapes	
:?
?
.m_1/fingerpint/fc_convnet/fc_encoder/bias/readIdentity)m_1/fingerpint/fc_convnet/fc_encoder/bias*
_output_shapes	
:?*
T0*<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias
?
+m_1/fingerpint/fc_convnet/fc_encoder/MatMulMatMulm_1/fingerpint/convnet/Reshape0m_1/fingerpint/fc_convnet/fc_encoder/kernel/read*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
,m_1/fingerpint/fc_convnet/fc_encoder/BiasAddBiasAdd+m_1/fingerpint/fc_convnet/fc_encoder/MatMul.m_1/fingerpint/fc_convnet/fc_encoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
|
7m_1/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
5m_1/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqualGreaterEqual,m_1/fingerpint/fc_convnet/fc_encoder/BiasAdd7m_1/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/y*
T0*(
_output_shapes
:??????????
?
,m_1/fingerpint/fc_convnet/fc_encoder/elu/EluElu,m_1/fingerpint/fc_convnet/fc_encoder/BiasAdd*(
_output_shapes
:??????????*
T0
s
.m_1/fingerpint/fc_convnet/fc_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
,m_1/fingerpint/fc_convnet/fc_encoder/elu/mulMul.m_1/fingerpint/fc_convnet/fc_encoder/elu/mul/x,m_1/fingerpint/fc_convnet/fc_encoder/elu/Elu*
T0*(
_output_shapes
:??????????
?
/m_1/fingerpint/fc_convnet/fc_encoder/elu/SelectSelect5m_1/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual,m_1/fingerpint/fc_convnet/fc_encoder/BiasAdd,m_1/fingerpint/fc_convnet/fc_encoder/elu/mul*
T0*(
_output_shapes
:??????????
u
0m_1/fingerpint/fc_convnet/fc_encoder/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
.m_1/fingerpint/fc_convnet/fc_encoder/elu/mul_1Mul0m_1/fingerpint/fc_convnet/fc_encoder/elu/mul_1/x/m_1/fingerpint/fc_convnet/fc_encoder/elu/Select*
T0*(
_output_shapes
:??????????
?
Om_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shapeConst*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Nm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *    
?
Pm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddevConst*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *?dN=*
dtype0*
_output_shapes
: 
?
Ym_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalOm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
seed2
?
Mm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulMulYm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalPm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddev*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
Im_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normalAddMm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulNm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mean*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
,m_1/fingerpint/fc_convnet/out_encoder/kernel
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
	container *
shape:	?
?
3m_1/fingerpint/fc_convnet/out_encoder/kernel/AssignAssign,m_1/fingerpint/fc_convnet/out_encoder/kernelIm_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal*
use_locking(*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
1m_1/fingerpint/fc_convnet/out_encoder/kernel/readIdentity,m_1/fingerpint/fc_convnet/out_encoder/kernel*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
<m_1/fingerpint/fc_convnet/out_encoder/bias/Initializer/zerosConst*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
valueB*    *
dtype0*
_output_shapes
:
?
*m_1/fingerpint/fc_convnet/out_encoder/bias
VariableV2*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
?
1m_1/fingerpint/fc_convnet/out_encoder/bias/AssignAssign*m_1/fingerpint/fc_convnet/out_encoder/bias<m_1/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(
?
/m_1/fingerpint/fc_convnet/out_encoder/bias/readIdentity*m_1/fingerpint/fc_convnet/out_encoder/bias*
T0*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
_output_shapes
:
?
,m_1/fingerpint/fc_convnet/out_encoder/MatMulMatMul.m_1/fingerpint/fc_convnet/fc_encoder/elu/mul_11m_1/fingerpint/fc_convnet/out_encoder/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
-m_1/fingerpint/fc_convnet/out_encoder/BiasAddBiasAdd,m_1/fingerpint/fc_convnet/out_encoder/MatMul/m_1/fingerpint/fc_convnet/out_encoder/bias/read*
data_formatNHWC*'
_output_shapes
:?????????*
T0
}
8m_1/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
6m_1/fingerpint/fc_convnet/out_encoder/elu/GreaterEqualGreaterEqual-m_1/fingerpint/fc_convnet/out_encoder/BiasAdd8m_1/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/y*
T0*'
_output_shapes
:?????????
?
-m_1/fingerpint/fc_convnet/out_encoder/elu/EluElu-m_1/fingerpint/fc_convnet/out_encoder/BiasAdd*
T0*'
_output_shapes
:?????????
t
/m_1/fingerpint/fc_convnet/out_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
-m_1/fingerpint/fc_convnet/out_encoder/elu/mulMul/m_1/fingerpint/fc_convnet/out_encoder/elu/mul/x-m_1/fingerpint/fc_convnet/out_encoder/elu/Elu*
T0*'
_output_shapes
:?????????
?
0m_1/fingerpint/fc_convnet/out_encoder/elu/SelectSelect6m_1/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual-m_1/fingerpint/fc_convnet/out_encoder/BiasAdd-m_1/fingerpint/fc_convnet/out_encoder/elu/mul*
T0*'
_output_shapes
:?????????
v
1m_1/fingerpint/fc_convnet/out_encoder/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
/m_1/fingerpint/fc_convnet/out_encoder/elu/mul_1Mul1m_1/fingerpint/fc_convnet/out_encoder/elu/mul_1/x0m_1/fingerpint/fc_convnet/out_encoder/elu/Select*
T0*'
_output_shapes
:?????????
i
m_1/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_1/transpose_1	Transposem_1/compress_readout/elu/mul_1m_1/transpose_1/perm*
Tperm0*
T0*,
_output_shapes
:@??????????
p
m_1/strided_slice/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
r
m_1/strided_slice/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
r
m_1/strided_slice/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
m_1/strided_sliceStridedSlicem_1/transpose_1m_1/strided_slice/stackm_1/strided_slice/stack_1m_1/strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*0
_output_shapes
:@??????????*
T0*
Index0
?
6m_1/attn_focus/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@m_1/attn_focus/kernel*
valueB"   ?   *
dtype0*
_output_shapes
:
?
4m_1/attn_focus/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *(
_class
loc:@m_1/attn_focus/kernel*
valueB
 *?"?*
dtype0
?
4m_1/attn_focus/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *(
_class
loc:@m_1/attn_focus/kernel*
valueB
 *?">*
dtype0
?
>m_1/attn_focus/kernel/Initializer/random_uniform/RandomUniformRandomUniform6m_1/attn_focus/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*(
_class
loc:@m_1/attn_focus/kernel*
seed2
?
4m_1/attn_focus/kernel/Initializer/random_uniform/subSub4m_1/attn_focus/kernel/Initializer/random_uniform/max4m_1/attn_focus/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@m_1/attn_focus/kernel*
_output_shapes
: 
?
4m_1/attn_focus/kernel/Initializer/random_uniform/mulMul>m_1/attn_focus/kernel/Initializer/random_uniform/RandomUniform4m_1/attn_focus/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*(
_class
loc:@m_1/attn_focus/kernel
?
0m_1/attn_focus/kernel/Initializer/random_uniformAdd4m_1/attn_focus/kernel/Initializer/random_uniform/mul4m_1/attn_focus/kernel/Initializer/random_uniform/min*(
_class
loc:@m_1/attn_focus/kernel*
_output_shapes
:	?*
T0
?
m_1/attn_focus/kernel
VariableV2*
shared_name *(
_class
loc:@m_1/attn_focus/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?
?
m_1/attn_focus/kernel/AssignAssignm_1/attn_focus/kernel0m_1/attn_focus/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@m_1/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?
?
m_1/attn_focus/kernel/readIdentitym_1/attn_focus/kernel*
T0*(
_class
loc:@m_1/attn_focus/kernel*
_output_shapes
:	?
?
%m_1/attn_focus/bias/Initializer/zerosConst*&
_class
loc:@m_1/attn_focus/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
m_1/attn_focus/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *&
_class
loc:@m_1/attn_focus/bias*
	container *
shape:?
?
m_1/attn_focus/bias/AssignAssignm_1/attn_focus/bias%m_1/attn_focus/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@m_1/attn_focus/bias*
validate_shape(*
_output_shapes	
:?
?
m_1/attn_focus/bias/readIdentitym_1/attn_focus/bias*
T0*&
_class
loc:@m_1/attn_focus/bias*
_output_shapes	
:?
?
m_1/attn_focus/MatMulMatMul/m_1/fingerpint/fc_convnet/out_encoder/elu/mul_1m_1/attn_focus/kernel/read*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
?
m_1/attn_focus/BiasAddBiasAddm_1/attn_focus/MatMulm_1/attn_focus/bias/read*
data_formatNHWC*(
_output_shapes
:??????????*
T0
f
m_1/Reshape/shapeConst*!
valueB"?????      *
dtype0*
_output_shapes
:
?
m_1/ReshapeReshapem_1/attn_focus/BiasAddm_1/Reshape/shape*,
_output_shapes
:??????????*
T0*
Tshape0
[
m_1/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/SumSumm_1/Reshapem_1/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*+
_output_shapes
:?????????
c
m_1/truedivRealDivm_1/Reshapem_1/Sum*
T0*,
_output_shapes
:??????????
i
m_1/transpose_2/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_1/transpose_2	Transposem_1/truedivm_1/transpose_2/perm*
T0*,
_output_shapes
:??????????*
Tperm0
r
m_1/strided_slice_1/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
t
m_1/strided_slice_1/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
t
m_1/strided_slice_1/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
m_1/strided_slice_1StridedSlicem_1/transpose_2m_1/strided_slice_1/stackm_1/strided_slice_1/stack_1m_1/strided_slice_1/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*0
_output_shapes
:??????????*
T0*
Index0*
shrink_axis_mask 
?
m_1/DepthwiseConv2dNativeDepthwiseConv2dNativem_1/strided_slicem_1/strided_slice_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*/
_output_shapes
:@??????????
~
m_1/SqueezeSqueezem_1/DepthwiseConv2dNative*+
_output_shapes
:@??????????*
squeeze_dims
*
T0
i
m_1/transpose_3/permConst*
dtype0*
_output_shapes
:*!
valueB"          
?
m_1/transpose_3	Transposem_1/Squeezem_1/transpose_3/perm*+
_output_shapes
:??????????@*
Tperm0*
T0
c
m_1/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
m_1/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
e
m_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_1/strided_slice_2StridedSlicem_1/transpose_3m_1/strided_slice_2/stackm_1/strided_slice_2/stack_1m_1/strided_slice_2/stack_2*
new_axis_mask *
end_mask*+
_output_shapes
:??????????@*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
b
m_1/concat_1/concat_dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
c
m_1/concat_1Identitym_1/strided_slice_2*+
_output_shapes
:??????????@*
T0
j
m_1/strided_slice_3/stackConst*
valueB"    ????*
dtype0*
_output_shapes
:
l
m_1/strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
l
m_1/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
m_1/strided_slice_3StridedSliceinput/IteratorGetNext:2m_1/strided_slice_3/stackm_1/strided_slice_3/stack_1m_1/strided_slice_3/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:?????????*
T0*
Index0
i
m_1/transpose_4/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_1/transpose_4	Transposeinput/IteratorGetNext:5m_1/transpose_4/perm*
T0*+
_output_shapes
:??????????*
Tperm0
K
	m_1/ConstConst*
dtype0*
_output_shapes
: *
value	B : 
_
m_1/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_1/ExpandDims_1
ExpandDimsm_1/strided_slice_3m_1/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:?????????
V
m_1/TensorArray/sizeConst*
dtype0*
_output_shapes
: *
value	B :?
?
m_1/TensorArrayTensorArrayV3m_1/TensorArray/size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
X
m_1/TensorArray_1/sizeConst*
value	B :?*
dtype0*
_output_shapes
: 
?
m_1/TensorArray_1TensorArrayV3m_1/TensorArray_1/size*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: 
?
m_1/while/EnterEnter	m_1/Const*
parallel_iterations
*
_output_shapes
: *'

frame_namem_1/while/while_context*
T0*
is_constant( 
?
m_1/while/Enter_1Enterm_1/ExpandDims_1*
T0*
is_constant( *
parallel_iterations
*'
_output_shapes
:?????????*'

frame_namem_1/while/while_context
?
m_1/while/Enter_2Enterm_1/unstack*
T0*
is_constant( *
parallel_iterations
*(
_output_shapes
:??????????*'

frame_namem_1/while/while_context
?
m_1/while/Enter_3Enterm_1/TensorArray:1*
parallel_iterations
*
_output_shapes
: *'

frame_namem_1/while/while_context*
T0*
is_constant( 
?
m_1/while/Enter_4Enterm_1/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_1/while/while_context
n
m_1/while/MergeMergem_1/while/Enterm_1/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_1/while/Merge_1Mergem_1/while/Enter_1m_1/while/NextIteration_1*
N*)
_output_shapes
:?????????: *
T0
?
m_1/while/Merge_2Mergem_1/while/Enter_2m_1/while/NextIteration_2*
N**
_output_shapes
:??????????: *
T0
t
m_1/while/Merge_3Mergem_1/while/Enter_3m_1/while/NextIteration_3*
T0*
N*
_output_shapes
: : 
t
m_1/while/Merge_4Mergem_1/while/Enter_4m_1/while/NextIteration_4*
T0*
N*
_output_shapes
: : 
d
m_1/while/Less/yConst^m_1/while/Merge*
value	B :?*
dtype0*
_output_shapes
: 
Z
m_1/while/LessLessm_1/while/Mergem_1/while/Less/y*
T0*
_output_shapes
: 
F
m_1/while/LoopCondLoopCondm_1/while/Less*
_output_shapes
: 
?
m_1/while/SwitchSwitchm_1/while/Mergem_1/while/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@m_1/while/Merge
?
m_1/while/Switch_1Switchm_1/while/Merge_1m_1/while/LoopCond*
T0*$
_class
loc:@m_1/while/Merge_1*:
_output_shapes(
&:?????????:?????????
?
m_1/while/Switch_2Switchm_1/while/Merge_2m_1/while/LoopCond*<
_output_shapes*
(:??????????:??????????*
T0*$
_class
loc:@m_1/while/Merge_2
?
m_1/while/Switch_3Switchm_1/while/Merge_3m_1/while/LoopCond*
T0*$
_class
loc:@m_1/while/Merge_3*
_output_shapes
: : 
?
m_1/while/Switch_4Switchm_1/while/Merge_4m_1/while/LoopCond*
T0*$
_class
loc:@m_1/while/Merge_4*
_output_shapes
: : 
S
m_1/while/IdentityIdentitym_1/while/Switch:1*
_output_shapes
: *
T0
h
m_1/while/Identity_1Identitym_1/while/Switch_1:1*'
_output_shapes
:?????????*
T0
i
m_1/while/Identity_2Identitym_1/while/Switch_2:1*(
_output_shapes
:??????????*
T0
W
m_1/while/Identity_3Identitym_1/while/Switch_3:1*
T0*
_output_shapes
: 
W
m_1/while/Identity_4Identitym_1/while/Switch_4:1*
T0*
_output_shapes
: 
f
m_1/while/add/yConst^m_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
m_1/while/addAddm_1/while/Identitym_1/while/add/y*
_output_shapes
: *
T0
s
m_1/while/strided_slice/stackPackm_1/while/Identity*
N*
_output_shapes
:*
T0*

axis 
p
m_1/while/strided_slice/stack_1Packm_1/while/add*
N*
_output_shapes
:*
T0*

axis 
~
m_1/while/strided_slice/stack_2Const^m_1/while/Identity*
valueB:*
dtype0*
_output_shapes
:
?
m_1/while/strided_sliceStridedSlicem_1/while/strided_slice/Enterm_1/while/strided_slice/stackm_1/while/strided_slice/stack_1m_1/while/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *'
_output_shapes
:?????????
?
m_1/while/strided_slice/EnterEnterm_1/transpose_4*
parallel_iterations
*+
_output_shapes
:??????????*'

frame_namem_1/while/while_context*
T0*
is_constant(
l
m_1/while/concat/axisConst^m_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/while/concatConcatV2m_1/while/Identity_1m_1/while/strided_slicem_1/while/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:?????????
?
2m_1/gru_cell/w_ru/Initializer/random_uniform/shapeConst*$
_class
loc:@m_1/gru_cell/w_ru*
valueB"#    *
dtype0*
_output_shapes
:
?
0m_1/gru_cell/w_ru/Initializer/random_uniform/minConst*$
_class
loc:@m_1/gru_cell/w_ru*
valueB
 *n???*
dtype0*
_output_shapes
: 
?
0m_1/gru_cell/w_ru/Initializer/random_uniform/maxConst*$
_class
loc:@m_1/gru_cell/w_ru*
valueB
 *n??=*
dtype0*
_output_shapes
: 
?
:m_1/gru_cell/w_ru/Initializer/random_uniform/RandomUniformRandomUniform2m_1/gru_cell/w_ru/Initializer/random_uniform/shape*

seed *
T0*$
_class
loc:@m_1/gru_cell/w_ru*
seed2 *
dtype0* 
_output_shapes
:
??
?
0m_1/gru_cell/w_ru/Initializer/random_uniform/subSub0m_1/gru_cell/w_ru/Initializer/random_uniform/max0m_1/gru_cell/w_ru/Initializer/random_uniform/min*
T0*$
_class
loc:@m_1/gru_cell/w_ru*
_output_shapes
: 
?
0m_1/gru_cell/w_ru/Initializer/random_uniform/mulMul:m_1/gru_cell/w_ru/Initializer/random_uniform/RandomUniform0m_1/gru_cell/w_ru/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*$
_class
loc:@m_1/gru_cell/w_ru
?
,m_1/gru_cell/w_ru/Initializer/random_uniformAdd0m_1/gru_cell/w_ru/Initializer/random_uniform/mul0m_1/gru_cell/w_ru/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*$
_class
loc:@m_1/gru_cell/w_ru
?
m_1/gru_cell/w_ru
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *$
_class
loc:@m_1/gru_cell/w_ru*
	container *
shape:
??
?
m_1/gru_cell/w_ru/AssignAssignm_1/gru_cell/w_ru,m_1/gru_cell/w_ru/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@m_1/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
m_1/gru_cell/w_ru/readIdentitym_1/gru_cell/w_ru* 
_output_shapes
:
??*
T0*$
_class
loc:@m_1/gru_cell/w_ru
?
#m_1/gru_cell/b_ru/Initializer/ConstConst*$
_class
loc:@m_1/gru_cell/b_ru*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
m_1/gru_cell/b_ru
VariableV2*
shared_name *$
_class
loc:@m_1/gru_cell/b_ru*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
m_1/gru_cell/b_ru/AssignAssignm_1/gru_cell/b_ru#m_1/gru_cell/b_ru/Initializer/Const*
use_locking(*
T0*$
_class
loc:@m_1/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
m_1/gru_cell/b_ru/readIdentitym_1/gru_cell/b_ru*
T0*$
_class
loc:@m_1/gru_cell/b_ru*
_output_shapes	
:?
?
1m_1/gru_cell/w_c/Initializer/random_uniform/shapeConst*#
_class
loc:@m_1/gru_cell/w_c*
valueB"#    *
dtype0*
_output_shapes
:
?
/m_1/gru_cell/w_c/Initializer/random_uniform/minConst*
_output_shapes
: *#
_class
loc:@m_1/gru_cell/w_c*
valueB
 *"^Խ*
dtype0
?
/m_1/gru_cell/w_c/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@m_1/gru_cell/w_c*
valueB
 *"^?=
?
9m_1/gru_cell/w_c/Initializer/random_uniform/RandomUniformRandomUniform1m_1/gru_cell/w_c/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
??*

seed *
T0*#
_class
loc:@m_1/gru_cell/w_c
?
/m_1/gru_cell/w_c/Initializer/random_uniform/subSub/m_1/gru_cell/w_c/Initializer/random_uniform/max/m_1/gru_cell/w_c/Initializer/random_uniform/min*
T0*#
_class
loc:@m_1/gru_cell/w_c*
_output_shapes
: 
?
/m_1/gru_cell/w_c/Initializer/random_uniform/mulMul9m_1/gru_cell/w_c/Initializer/random_uniform/RandomUniform/m_1/gru_cell/w_c/Initializer/random_uniform/sub*
T0*#
_class
loc:@m_1/gru_cell/w_c* 
_output_shapes
:
??
?
+m_1/gru_cell/w_c/Initializer/random_uniformAdd/m_1/gru_cell/w_c/Initializer/random_uniform/mul/m_1/gru_cell/w_c/Initializer/random_uniform/min*
T0*#
_class
loc:@m_1/gru_cell/w_c* 
_output_shapes
:
??
?
m_1/gru_cell/w_c
VariableV2*
shared_name *#
_class
loc:@m_1/gru_cell/w_c*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
m_1/gru_cell/w_c/AssignAssignm_1/gru_cell/w_c+m_1/gru_cell/w_c/Initializer/random_uniform*#
_class
loc:@m_1/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
m_1/gru_cell/w_c/readIdentitym_1/gru_cell/w_c*#
_class
loc:@m_1/gru_cell/w_c* 
_output_shapes
:
??*
T0
?
"m_1/gru_cell/b_c/Initializer/ConstConst*
dtype0*
_output_shapes	
:?*#
_class
loc:@m_1/gru_cell/b_c*
valueB?*    
?
m_1/gru_cell/b_c
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *#
_class
loc:@m_1/gru_cell/b_c*
	container 
?
m_1/gru_cell/b_c/AssignAssignm_1/gru_cell/b_c"m_1/gru_cell/b_c/Initializer/Const*
use_locking(*
T0*#
_class
loc:@m_1/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?
~
m_1/gru_cell/b_c/readIdentitym_1/gru_cell/b_c*
T0*#
_class
loc:@m_1/gru_cell/b_c*
_output_shapes	
:?
?
m_1/while/gru_cell/GRUBlockCellGRUBlockCellm_1/while/concatm_1/while/Identity_2%m_1/while/gru_cell/GRUBlockCell/Enter'm_1/while/gru_cell/GRUBlockCell/Enter_1'm_1/while/gru_cell/GRUBlockCell/Enter_2'm_1/while/gru_cell/GRUBlockCell/Enter_3*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
T0
?
%m_1/while/gru_cell/GRUBlockCell/EnterEnterm_1/gru_cell/w_ru/read*
T0*
is_constant(*
parallel_iterations
* 
_output_shapes
:
??*'

frame_namem_1/while/while_context
?
'm_1/while/gru_cell/GRUBlockCell/Enter_1Enterm_1/gru_cell/w_c/read*
T0*
is_constant(*
parallel_iterations
* 
_output_shapes
:
??*'

frame_namem_1/while/while_context
?
'm_1/while/gru_cell/GRUBlockCell/Enter_2Enterm_1/gru_cell/b_ru/read*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_1/while/while_context*
T0
?
'm_1/while/gru_cell/GRUBlockCell/Enter_3Enterm_1/gru_cell/b_c/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_1/while/while_context
?
?m_1/decoder_output_proj/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
=m_1/decoder_output_proj/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
valueB
 *?7?*
dtype0*
_output_shapes
: 
?
=m_1/decoder_output_proj/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
valueB
 *?7>*
dtype0*
_output_shapes
: 
?
Gm_1/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_1/decoder_output_proj/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
seed2
?
=m_1/decoder_output_proj/kernel/Initializer/random_uniform/subSub=m_1/decoder_output_proj/kernel/Initializer/random_uniform/max=m_1/decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
_output_shapes
: 
?
=m_1/decoder_output_proj/kernel/Initializer/random_uniform/mulMulGm_1/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniform=m_1/decoder_output_proj/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
_output_shapes
:	?
?
9m_1/decoder_output_proj/kernel/Initializer/random_uniformAdd=m_1/decoder_output_proj/kernel/Initializer/random_uniform/mul=m_1/decoder_output_proj/kernel/Initializer/random_uniform/min*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
_output_shapes
:	?*
T0
?
m_1/decoder_output_proj/kernel
VariableV2*
	container *
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name *1
_class'
%#loc:@m_1/decoder_output_proj/kernel
?
%m_1/decoder_output_proj/kernel/AssignAssignm_1/decoder_output_proj/kernel9m_1/decoder_output_proj/kernel/Initializer/random_uniform*
_output_shapes
:	?*
use_locking(*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
validate_shape(
?
#m_1/decoder_output_proj/kernel/readIdentitym_1/decoder_output_proj/kernel*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
_output_shapes
:	?
?
.m_1/decoder_output_proj/bias/Initializer/zerosConst*/
_class%
#!loc:@m_1/decoder_output_proj/bias*
valueB*    *
dtype0*
_output_shapes
:
?
m_1/decoder_output_proj/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@m_1/decoder_output_proj/bias
?
#m_1/decoder_output_proj/bias/AssignAssignm_1/decoder_output_proj/bias.m_1/decoder_output_proj/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*/
_class%
#!loc:@m_1/decoder_output_proj/bias*
validate_shape(
?
!m_1/decoder_output_proj/bias/readIdentitym_1/decoder_output_proj/bias*
_output_shapes
:*
T0*/
_class%
#!loc:@m_1/decoder_output_proj/bias
?
$m_1/while/decoder_output_proj/MatMulMatMul!m_1/while/gru_cell/GRUBlockCell:3*m_1/while/decoder_output_proj/MatMul/Enter*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( *
T0
?
*m_1/while/decoder_output_proj/MatMul/EnterEnter#m_1/decoder_output_proj/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
:	?*'

frame_namem_1/while/while_context
?
%m_1/while/decoder_output_proj/BiasAddBiasAdd$m_1/while/decoder_output_proj/MatMul+m_1/while/decoder_output_proj/BiasAdd/Enter*
T0*
data_formatNHWC*'
_output_shapes
:?????????
?
+m_1/while/decoder_output_proj/BiasAdd/EnterEnter!m_1/decoder_output_proj/bias/read*
is_constant(*
parallel_iterations
*
_output_shapes
:*'

frame_namem_1/while/while_context*
T0
?
-m_1/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33m_1/while/TensorArrayWrite/TensorArrayWriteV3/Enterm_1/while/Identity!m_1/while/gru_cell/GRUBlockCell:3m_1/while/Identity_4*
T0*2
_class(
&$loc:@m_1/while/gru_cell/GRUBlockCell*
_output_shapes
: 
?
3m_1/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_1/TensorArray_1*
T0*2
_class(
&$loc:@m_1/while/gru_cell/GRUBlockCell*
parallel_iterations
*
is_constant(*'

frame_namem_1/while/while_context*
_output_shapes
:
?
/m_1/while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV35m_1/while/TensorArrayWrite_1/TensorArrayWriteV3/Enterm_1/while/Identity%m_1/while/decoder_output_proj/BiasAddm_1/while/Identity_3*
T0*8
_class.
,*loc:@m_1/while/decoder_output_proj/BiasAdd*
_output_shapes
: 
?
5m_1/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterm_1/TensorArray*
is_constant(*'

frame_namem_1/while/while_context*
_output_shapes
:*
T0*8
_class.
,*loc:@m_1/while/decoder_output_proj/BiasAdd*
parallel_iterations

h
m_1/while/add_1/yConst^m_1/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
^
m_1/while/add_1Addm_1/while/Identitym_1/while/add_1/y*
T0*
_output_shapes
: 
Z
m_1/while/NextIterationNextIterationm_1/while/add_1*
_output_shapes
: *
T0
?
m_1/while/NextIteration_1NextIteration%m_1/while/decoder_output_proj/BiasAdd*
T0*'
_output_shapes
:?????????
?
m_1/while/NextIteration_2NextIteration!m_1/while/gru_cell/GRUBlockCell:3*
T0*(
_output_shapes
:??????????
|
m_1/while/NextIteration_3NextIteration/m_1/while/TensorArrayWrite_1/TensorArrayWriteV3*
_output_shapes
: *
T0
z
m_1/while/NextIteration_4NextIteration-m_1/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
I
m_1/while/ExitExitm_1/while/Switch*
T0*
_output_shapes
: 
^
m_1/while/Exit_1Exitm_1/while/Switch_1*
T0*'
_output_shapes
:?????????
_
m_1/while/Exit_2Exitm_1/while/Switch_2*
T0*(
_output_shapes
:??????????
M
m_1/while/Exit_3Exitm_1/while/Switch_3*
T0*
_output_shapes
: 
M
m_1/while/Exit_4Exitm_1/while/Switch_4*
T0*
_output_shapes
: 
?
&m_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_1/TensorArraym_1/while/Exit_3*"
_class
loc:@m_1/TensorArray*
_output_shapes
: 
?
 m_1/TensorArrayStack/range/startConst*"
_class
loc:@m_1/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
?
 m_1/TensorArrayStack/range/deltaConst*"
_class
loc:@m_1/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/TensorArrayStack/rangeRange m_1/TensorArrayStack/range/start&m_1/TensorArrayStack/TensorArraySizeV3 m_1/TensorArrayStack/range/delta*"
_class
loc:@m_1/TensorArray*#
_output_shapes
:?????????*

Tidx0
?
(m_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_1/TensorArraym_1/TensorArrayStack/rangem_1/while/Exit_3*
dtype0*4
_output_shapes"
 :??????????????????*$
element_shape:?????????*"
_class
loc:@m_1/TensorArray
?
m_1/Squeeze_1Squeeze(m_1/TensorArrayStack/TensorArrayGatherV3*
squeeze_dims

?????????*
T0*0
_output_shapes
:??????????????????
?
(m_1/TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3m_1/TensorArray_1m_1/while/Exit_4*$
_class
loc:@m_1/TensorArray_1*
_output_shapes
: 
?
"m_1/TensorArrayStack_1/range/startConst*$
_class
loc:@m_1/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
?
"m_1/TensorArrayStack_1/range/deltaConst*$
_class
loc:@m_1/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/TensorArrayStack_1/rangeRange"m_1/TensorArrayStack_1/range/start(m_1/TensorArrayStack_1/TensorArraySizeV3"m_1/TensorArrayStack_1/range/delta*

Tidx0*$
_class
loc:@m_1/TensorArray_1*#
_output_shapes
:?????????
?
*m_1/TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3m_1/TensorArray_1m_1/TensorArrayStack_1/rangem_1/while/Exit_4*$
_class
loc:@m_1/TensorArray_1*
dtype0*5
_output_shapes#
!:???????????????????*%
element_shape:??????????
c
m_1/L2Loss_1L2Loss*m_1/TensorArrayStack_1/TensorArrayGatherV3*
_output_shapes
: *
T0
P
m_1/mul_1/yConst*
valueB
 *jo?3*
dtype0*
_output_shapes
: 
L
	m_1/mul_1Mulm_1/L2Loss_1m_1/mul_1/y*
_output_shapes
: *
T0
L
m_1/transpose_5/RankRankm_1/Squeeze_1*
T0*
_output_shapes
: 
W
m_1/transpose_5/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
h
m_1/transpose_5/subSubm_1/transpose_5/Rankm_1/transpose_5/sub/y*
T0*
_output_shapes
: 
]
m_1/transpose_5/Range/startConst*
_output_shapes
: *
value	B : *
dtype0
]
m_1/transpose_5/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_1/transpose_5/RangeRangem_1/transpose_5/Range/startm_1/transpose_5/Rankm_1/transpose_5/Range/delta*#
_output_shapes
:?????????*

Tidx0
v
m_1/transpose_5/sub_1Subm_1/transpose_5/subm_1/transpose_5/Range*#
_output_shapes
:?????????*
T0
?
m_1/transpose_5	Transposem_1/Squeeze_1m_1/transpose_5/sub_1*0
_output_shapes
:??????????????????*
Tperm0*
T0
_
m_1/ExpandDims_2/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_1/ExpandDims_2
ExpandDimsinput/IteratorGetNext:8m_1/ExpandDims_2/dim*

Tdim0*
T0*'
_output_shapes
:?????????
_
m_1/ExpandDims_3/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_1/ExpandDims_3
ExpandDimsinput/IteratorGetNext:7m_1/ExpandDims_3/dim*

Tdim0*
T0*'
_output_shapes
:?????????
n
	m_1/mul_2Mulm_1/transpose_5m_1/ExpandDims_2*0
_output_shapes
:??????????????????*
T0
f
m_1/addAdd	m_1/mul_2m_1/ExpandDims_3*0
_output_shapes
:??????????????????*
T0
g
m_2/transpose/permConst*
_output_shapes
:*!
valueB"          *
dtype0
?
m_2/transpose	Transposeinput/IteratorGetNext:1m_2/transpose/perm*
T0*,
_output_shapes
:??????????*
Tperm0
X
m_2/cudnn_gru/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
_
m_2/cudnn_gru/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
_
m_2/cudnn_gru/rnn/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
?
m_2/cudnn_gru/rnn/rangeRangem_2/cudnn_gru/rnn/range/startm_2/cudnn_gru/rnn/Rankm_2/cudnn_gru/rnn/range/delta*
_output_shapes
:*

Tidx0
r
!m_2/cudnn_gru/rnn/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
_
m_2/cudnn_gru/rnn/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
m_2/cudnn_gru/rnn/concatConcatV2!m_2/cudnn_gru/rnn/concat/values_0m_2/cudnn_gru/rnn/rangem_2/cudnn_gru/rnn/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
m_2/cudnn_gru/rnn/transpose	Transposeinput/IteratorGetNext:1m_2/cudnn_gru/rnn/concat*,
_output_shapes
:??????????*
Tperm0*
T0
r
m_2/cudnn_gru/rnn/ShapeShapem_2/cudnn_gru/rnn/transpose*
out_type0*
_output_shapes
:*
T0
o
%m_2/cudnn_gru/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
q
'm_2/cudnn_gru/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'm_2/cudnn_gru/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_2/cudnn_gru/rnn/strided_sliceStridedSlicem_2/cudnn_gru/rnn/Shape%m_2/cudnn_gru/rnn/strided_slice/stack'm_2/cudnn_gru/rnn/strided_slice/stack_1'm_2/cudnn_gru/rnn/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
?
Vm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
Rm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims
ExpandDimsm_2/cudnn_gru/rnn/strided_sliceVm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
?
Mm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
?
Sm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
Nm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatConcatV2Rm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDimsMm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstSm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
?
Sm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Mm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zerosFillNm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatSm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/Const*

index_type0*(
_output_shapes
:??????????*
T0
?
Xm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
Tm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1
ExpandDimsm_2/cudnn_gru/rnn/strided_sliceXm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
?
Om_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
t
m_2/cudnn_gru/rnn/Shape_1Shapem_2/cudnn_gru/rnn/transpose*
_output_shapes
:*
T0*
out_type0
q
'm_2/cudnn_gru/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
s
)m_2/cudnn_gru/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)m_2/cudnn_gru/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
!m_2/cudnn_gru/rnn/strided_slice_1StridedSlicem_2/cudnn_gru/rnn/Shape_1'm_2/cudnn_gru/rnn/strided_slice_1/stack)m_2/cudnn_gru/rnn/strided_slice_1/stack_1)m_2/cudnn_gru/rnn/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
t
m_2/cudnn_gru/rnn/Shape_2Shapem_2/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
q
'm_2/cudnn_gru/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
s
)m_2/cudnn_gru/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
s
)m_2/cudnn_gru/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
!m_2/cudnn_gru/rnn/strided_slice_2StridedSlicem_2/cudnn_gru/rnn/Shape_2'm_2/cudnn_gru/rnn/strided_slice_2/stack)m_2/cudnn_gru/rnn/strided_slice_2/stack_1)m_2/cudnn_gru/rnn/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
b
 m_2/cudnn_gru/rnn/ExpandDims/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
m_2/cudnn_gru/rnn/ExpandDims
ExpandDims!m_2/cudnn_gru/rnn/strided_slice_2 m_2/cudnn_gru/rnn/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
b
m_2/cudnn_gru/rnn/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
a
m_2/cudnn_gru/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/concat_1ConcatV2m_2/cudnn_gru/rnn/ExpandDimsm_2/cudnn_gru/rnn/Constm_2/cudnn_gru/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
b
m_2/cudnn_gru/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/zerosFillm_2/cudnn_gru/rnn/concat_1m_2/cudnn_gru/rnn/zeros/Const*
T0*

index_type0*(
_output_shapes
:??????????
X
m_2/cudnn_gru/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/TensorArrayTensorArrayV3!m_2/cudnn_gru/rnn/strided_slice_1*=
tensor_array_name(&m_2/cudnn_gru/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *%
element_shape:??????????*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
?
m_2/cudnn_gru/rnn/TensorArray_1TensorArrayV3!m_2/cudnn_gru/rnn/strided_slice_1*<
tensor_array_name'%m_2/cudnn_gru/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:?????????*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
?
*m_2/cudnn_gru/rnn/TensorArrayUnstack/ShapeShapem_2/cudnn_gru/rnn/transpose*
T0*
out_type0*
_output_shapes
:
?
8m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
?
:m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
:m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
2m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice*m_2/cudnn_gru/rnn/TensorArrayUnstack/Shape8m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack:m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1:m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
r
0m_2/cudnn_gru/rnn/TensorArrayUnstack/range/startConst*
_output_shapes
: *
value	B : *
dtype0
r
0m_2/cudnn_gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
*m_2/cudnn_gru/rnn/TensorArrayUnstack/rangeRange0m_2/cudnn_gru/rnn/TensorArrayUnstack/range/start2m_2/cudnn_gru/rnn/TensorArrayUnstack/strided_slice0m_2/cudnn_gru/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????*

Tidx0
?
Lm_2/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3m_2/cudnn_gru/rnn/TensorArray_1*m_2/cudnn_gru/rnn/TensorArrayUnstack/rangem_2/cudnn_gru/rnn/transpose!m_2/cudnn_gru/rnn/TensorArray_1:1*
T0*.
_class$
" loc:@m_2/cudnn_gru/rnn/transpose*
_output_shapes
: 
]
m_2/cudnn_gru/rnn/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
?
m_2/cudnn_gru/rnn/MaximumMaximumm_2/cudnn_gru/rnn/Maximum/x!m_2/cudnn_gru/rnn/strided_slice_1*
_output_shapes
: *
T0
?
m_2/cudnn_gru/rnn/MinimumMinimum!m_2/cudnn_gru/rnn/strided_slice_1m_2/cudnn_gru/rnn/Maximum*
T0*
_output_shapes
: 
k
)m_2/cudnn_gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/while/EnterEnter)m_2/cudnn_gru/rnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
m_2/cudnn_gru/rnn/while/Enter_1Enterm_2/cudnn_gru/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
m_2/cudnn_gru/rnn/while/Enter_2Enterm_2/cudnn_gru/rnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
m_2/cudnn_gru/rnn/while/Enter_3EnterMm_2/cudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros*
parallel_iterations *(
_output_shapes
:??????????*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*
is_constant( 
?
m_2/cudnn_gru/rnn/while/MergeMergem_2/cudnn_gru/rnn/while/Enter%m_2/cudnn_gru/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_2/cudnn_gru/rnn/while/Merge_1Mergem_2/cudnn_gru/rnn/while/Enter_1'm_2/cudnn_gru/rnn/while/NextIteration_1*
N*
_output_shapes
: : *
T0
?
m_2/cudnn_gru/rnn/while/Merge_2Mergem_2/cudnn_gru/rnn/while/Enter_2'm_2/cudnn_gru/rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
?
m_2/cudnn_gru/rnn/while/Merge_3Mergem_2/cudnn_gru/rnn/while/Enter_3'm_2/cudnn_gru/rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:??????????: 
?
m_2/cudnn_gru/rnn/while/LessLessm_2/cudnn_gru/rnn/while/Merge"m_2/cudnn_gru/rnn/while/Less/Enter*
_output_shapes
: *
T0
?
"m_2/cudnn_gru/rnn/while/Less/EnterEnter!m_2/cudnn_gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
m_2/cudnn_gru/rnn/while/Less_1Lessm_2/cudnn_gru/rnn/while/Merge_1$m_2/cudnn_gru/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
?
$m_2/cudnn_gru/rnn/while/Less_1/EnterEnterm_2/cudnn_gru/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
"m_2/cudnn_gru/rnn/while/LogicalAnd
LogicalAndm_2/cudnn_gru/rnn/while/Lessm_2/cudnn_gru/rnn/while/Less_1*
_output_shapes
: 
h
 m_2/cudnn_gru/rnn/while/LoopCondLoopCond"m_2/cudnn_gru/rnn/while/LogicalAnd*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/while/SwitchSwitchm_2/cudnn_gru/rnn/while/Merge m_2/cudnn_gru/rnn/while/LoopCond*
_output_shapes
: : *
T0*0
_class&
$"loc:@m_2/cudnn_gru/rnn/while/Merge
?
 m_2/cudnn_gru/rnn/while/Switch_1Switchm_2/cudnn_gru/rnn/while/Merge_1 m_2/cudnn_gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@m_2/cudnn_gru/rnn/while/Merge_1*
_output_shapes
: : 
?
 m_2/cudnn_gru/rnn/while/Switch_2Switchm_2/cudnn_gru/rnn/while/Merge_2 m_2/cudnn_gru/rnn/while/LoopCond*
_output_shapes
: : *
T0*2
_class(
&$loc:@m_2/cudnn_gru/rnn/while/Merge_2
?
 m_2/cudnn_gru/rnn/while/Switch_3Switchm_2/cudnn_gru/rnn/while/Merge_3 m_2/cudnn_gru/rnn/while/LoopCond*
T0*2
_class(
&$loc:@m_2/cudnn_gru/rnn/while/Merge_3*<
_output_shapes*
(:??????????:??????????
o
 m_2/cudnn_gru/rnn/while/IdentityIdentity m_2/cudnn_gru/rnn/while/Switch:1*
_output_shapes
: *
T0
s
"m_2/cudnn_gru/rnn/while/Identity_1Identity"m_2/cudnn_gru/rnn/while/Switch_1:1*
_output_shapes
: *
T0
s
"m_2/cudnn_gru/rnn/while/Identity_2Identity"m_2/cudnn_gru/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
?
"m_2/cudnn_gru/rnn/while/Identity_3Identity"m_2/cudnn_gru/rnn/while/Switch_3:1*
T0*(
_output_shapes
:??????????
?
m_2/cudnn_gru/rnn/while/add/yConst!^m_2/cudnn_gru/rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
?
m_2/cudnn_gru/rnn/while/addAdd m_2/cudnn_gru/rnn/while/Identitym_2/cudnn_gru/rnn/while/add/y*
T0*
_output_shapes
: 
?
)m_2/cudnn_gru/rnn/while/TensorArrayReadV3TensorArrayReadV3/m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter"m_2/cudnn_gru/rnn/while/Identity_11m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
/m_2/cudnn_gru/rnn/while/TensorArrayReadV3/EnterEnterm_2/cudnn_gru/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
1m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1EnterLm_2/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
om_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB"#    *
dtype0*
_output_shapes
:
?
mm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/minConst*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
mm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L=
?
wm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformom_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
seed2
?
mm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/subSubmm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxmm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
?
mm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulMulwm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformmm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformAddmm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulmm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Nm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
	container *
shape:
??
?
Um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignAssignNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelim_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/readIdentityNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
T0* 
_output_shapes
:
??
?
^m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/ConstConst*_
_classU
SQloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Lm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *_
_classU
SQloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
	container *
shape:?
?
Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignAssignLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias^m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*_
_classU
SQloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
Qm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/readIdentityLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shapeConst*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/minConst*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/maxConst*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shape*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
seed2*
dtype0*
_output_shapes
:	?*
seed???)*
T0
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/subSub?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/max?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: *
T0
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mulMul?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniform?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/sub*
T0*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
~m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformAdd?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mul?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
cm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
VariableV2*
shared_name *v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?
?
jm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/AssignAssigncm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel~m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
?
hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/readIdentitycm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
T0*
_output_shapes
:	?
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB"    
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/minConst*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxConst*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
seed2
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/subSub?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/max?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
?
?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulMul?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniform?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/sub*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformAdd?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mul?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
dm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
	container *
shape:
??
?
km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/AssignAssigndm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform*
use_locking(*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??
?
im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/readIdentitydm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
T0* 
_output_shapes
:
??
?
sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zerosConst*t
_classj
hfloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
am_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *t
_classj
hfloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
?
hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/AssignAssignam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*t
_classj
hfloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
?
fm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/readIdentityam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
T0*
_output_shapes	
:?
?
tm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zerosConst*u
_classk
igloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
bm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *u
_classk
igloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
	container 
?
im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/AssignAssignbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biastm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros*
use_locking(*
T0*u
_classk
igloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?
?
gm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/readIdentitybm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
T0*
_output_shapes	
:?
?
Wm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axisConst!^m_2/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Rm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatConcatV2)m_2/cudnn_gru/rnn/while/TensorArrayReadV3"m_2/cudnn_gru/rnn/while/Identity_3Wm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
Rm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulMatMulRm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatXm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Xm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/EnterEnterSm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAddBiasAddRm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulYm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
Ym_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/EnterEnterQm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/SigmoidSigmoidSm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd*
T0*(
_output_shapes
:??????????
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/ConstConst!^m_2/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimConst!^m_2/cudnn_gru/rnn/while/Identity*
_output_shapes
: *
value	B :*
dtype0
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitSplit[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimSm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid*
T0*<
_output_shapes*
(:??????????:??????????*
	num_split
?
Tm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1MatMul)m_2/cudnn_gru/rnn/while/TensorArrayReadV3Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( *
T0
?
Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/EnterEnterhm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
_output_shapes
:	?*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*
is_constant(*
parallel_iterations 
?
Um_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1BiasAddTm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/EnterEnterfm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
Tm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2MatMul"m_2/cudnn_gru/rnn/while/Identity_3Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/EnterEnterim_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
parallel_iterations * 
_output_shapes
:
??*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
Um_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2BiasAddTm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter*
data_formatNHWC*(
_output_shapes
:??????????*
T0
?
[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/EnterEntergm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context
?
Om_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mulMulQm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitUm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2*
T0*(
_output_shapes
:??????????
?
Om_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/addAddUm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1Om_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul*
T0*(
_output_shapes
:??????????
?
Pm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/TanhTanhOm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add*
T0*(
_output_shapes
:??????????
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xConst!^m_2/cudnn_gru/rnn/while/Identity*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
Om_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subSubQm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xSm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1MulOm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subPm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh*(
_output_shapes
:??????????*
T0
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2MulSm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1"m_2/cudnn_gru/rnn/while/Identity_3*(
_output_shapes
:??????????*
T0
?
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1AddQm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2*(
_output_shapes
:??????????*
T0
?
;m_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Am_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter"m_2/cudnn_gru/rnn/while/Identity_1Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1"m_2/cudnn_gru/rnn/while/Identity_2*
T0*d
_classZ
XVloc:@m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
_output_shapes
: 
?
Am_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_2/cudnn_gru/rnn/TensorArray*
is_constant(*
_output_shapes
:*5

frame_name'%m_2/cudnn_gru/rnn/while/while_context*
T0*d
_classZ
XVloc:@m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
parallel_iterations 
?
m_2/cudnn_gru/rnn/while/add_1/yConst!^m_2/cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/while/add_1Add"m_2/cudnn_gru/rnn/while/Identity_1m_2/cudnn_gru/rnn/while/add_1/y*
T0*
_output_shapes
: 
t
%m_2/cudnn_gru/rnn/while/NextIterationNextIterationm_2/cudnn_gru/rnn/while/add*
_output_shapes
: *
T0
x
'm_2/cudnn_gru/rnn/while/NextIteration_1NextIterationm_2/cudnn_gru/rnn/while/add_1*
T0*
_output_shapes
: 
?
'm_2/cudnn_gru/rnn/while/NextIteration_2NextIteration;m_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
?
'm_2/cudnn_gru/rnn/while/NextIteration_3NextIterationQm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
T0*(
_output_shapes
:??????????
e
m_2/cudnn_gru/rnn/while/ExitExitm_2/cudnn_gru/rnn/while/Switch*
T0*
_output_shapes
: 
i
m_2/cudnn_gru/rnn/while/Exit_1Exit m_2/cudnn_gru/rnn/while/Switch_1*
T0*
_output_shapes
: 
i
m_2/cudnn_gru/rnn/while/Exit_2Exit m_2/cudnn_gru/rnn/while/Switch_2*
T0*
_output_shapes
: 
{
m_2/cudnn_gru/rnn/while/Exit_3Exit m_2/cudnn_gru/rnn/while/Switch_3*(
_output_shapes
:??????????*
T0
?
4m_2/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_2/cudnn_gru/rnn/TensorArraym_2/cudnn_gru/rnn/while/Exit_2*
_output_shapes
: *0
_class&
$"loc:@m_2/cudnn_gru/rnn/TensorArray
?
.m_2/cudnn_gru/rnn/TensorArrayStack/range/startConst*
_output_shapes
: *0
_class&
$"loc:@m_2/cudnn_gru/rnn/TensorArray*
value	B : *
dtype0
?
.m_2/cudnn_gru/rnn/TensorArrayStack/range/deltaConst*0
_class&
$"loc:@m_2/cudnn_gru/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
?
(m_2/cudnn_gru/rnn/TensorArrayStack/rangeRange.m_2/cudnn_gru/rnn/TensorArrayStack/range/start4m_2/cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3.m_2/cudnn_gru/rnn/TensorArrayStack/range/delta*0
_class&
$"loc:@m_2/cudnn_gru/rnn/TensorArray*#
_output_shapes
:?????????*

Tidx0
?
6m_2/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_2/cudnn_gru/rnn/TensorArray(m_2/cudnn_gru/rnn/TensorArrayStack/rangem_2/cudnn_gru/rnn/while/Exit_2*%
element_shape:??????????*0
_class&
$"loc:@m_2/cudnn_gru/rnn/TensorArray*
dtype0*-
_output_shapes
:???????????
d
m_2/cudnn_gru/rnn/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
Z
m_2/cudnn_gru/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
a
m_2/cudnn_gru/rnn/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
a
m_2/cudnn_gru/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/rnn/range_1Rangem_2/cudnn_gru/rnn/range_1/startm_2/cudnn_gru/rnn/Rank_1m_2/cudnn_gru/rnn/range_1/delta*
_output_shapes
:*

Tidx0
t
#m_2/cudnn_gru/rnn/concat_2/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
a
m_2/cudnn_gru/rnn/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
m_2/cudnn_gru/rnn/concat_2ConcatV2#m_2/cudnn_gru/rnn/concat_2/values_0m_2/cudnn_gru/rnn/range_1m_2/cudnn_gru/rnn/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
?
m_2/cudnn_gru/rnn/transpose_1	Transpose6m_2/cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3m_2/cudnn_gru/rnn/concat_2*
Tperm0*
T0*-
_output_shapes
:???????????
q
m_2/cudnn_gru/transpose/permConst*
dtype0*
_output_shapes
:*!
valueB"          
?
m_2/cudnn_gru/transpose	Transposem_2/cudnn_gru/rnn/transpose_1m_2/cudnn_gru/transpose/perm*
Tperm0*
T0*-
_output_shapes
:???????????
^
m_2/cudnn_gru/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
m_2/cudnn_gru/ExpandDims
ExpandDimsm_2/cudnn_gru/rnn/while/Exit_3m_2/cudnn_gru/ExpandDims/dim*

Tdim0*
T0*,
_output_shapes
:??????????
N

m_2/L2LossL2Lossm_2/cudnn_gru/transpose*
_output_shapes
: *
T0
N
	m_2/mul/yConst*
valueB
 *4?r1*
dtype0*
_output_shapes
: 
F
m_2/mulMul
m_2/L2Loss	m_2/mul/y*
T0*
_output_shapes
: 
y
m_2/unstackUnpackm_2/cudnn_gru/ExpandDims*	
num*
T0*

axis *(
_output_shapes
:??????????
?
>m_2/compress_readout/kernel/Initializer/truncated_normal/shapeConst*.
_class$
" loc:@m_2/compress_readout/kernel*
valueB"  @   *
dtype0*
_output_shapes
:
?
=m_2/compress_readout/kernel/Initializer/truncated_normal/meanConst*.
_class$
" loc:@m_2/compress_readout/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
?m_2/compress_readout/kernel/Initializer/truncated_normal/stddevConst*.
_class$
" loc:@m_2/compress_readout/kernel*
valueB
 *???=*
dtype0*
_output_shapes
: 
?
Hm_2/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>m_2/compress_readout/kernel/Initializer/truncated_normal/shape*
dtype0*
_output_shapes
:	?@*
seed???)*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
seed2
?
<m_2/compress_readout/kernel/Initializer/truncated_normal/mulMulHm_2/compress_readout/kernel/Initializer/truncated_normal/TruncatedNormal?m_2/compress_readout/kernel/Initializer/truncated_normal/stddev*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
_output_shapes
:	?@
?
8m_2/compress_readout/kernel/Initializer/truncated_normalAdd<m_2/compress_readout/kernel/Initializer/truncated_normal/mul=m_2/compress_readout/kernel/Initializer/truncated_normal/mean*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
_output_shapes
:	?@
?
m_2/compress_readout/kernel
VariableV2*
shared_name *.
_class$
" loc:@m_2/compress_readout/kernel*
	container *
shape:	?@*
dtype0*
_output_shapes
:	?@
?
"m_2/compress_readout/kernel/AssignAssignm_2/compress_readout/kernel8m_2/compress_readout/kernel/Initializer/truncated_normal*
_output_shapes
:	?@*
use_locking(*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
validate_shape(
?
 m_2/compress_readout/kernel/readIdentitym_2/compress_readout/kernel*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
_output_shapes
:	?@
?
+m_2/compress_readout/bias/Initializer/zerosConst*,
_class"
 loc:@m_2/compress_readout/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
m_2/compress_readout/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *,
_class"
 loc:@m_2/compress_readout/bias
?
 m_2/compress_readout/bias/AssignAssignm_2/compress_readout/bias+m_2/compress_readout/bias/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@m_2/compress_readout/bias*
validate_shape(*
_output_shapes
:@
?
m_2/compress_readout/bias/readIdentitym_2/compress_readout/bias*
T0*,
_class"
 loc:@m_2/compress_readout/bias*
_output_shapes
:@
{
$m_2/compress_readout/Tensordot/ShapeShapem_2/cudnn_gru/transpose*
T0*
out_type0*
_output_shapes
:
e
#m_2/compress_readout/Tensordot/RankConst*
dtype0*
_output_shapes
: *
value	B :
m
#m_2/compress_readout/Tensordot/axesConst*
_output_shapes
:*
valueB:*
dtype0
o
-m_2/compress_readout/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
?
+m_2/compress_readout/Tensordot/GreaterEqualGreaterEqual#m_2/compress_readout/Tensordot/axes-m_2/compress_readout/Tensordot/GreaterEqual/y*
T0*
_output_shapes
:
?
#m_2/compress_readout/Tensordot/CastCast+m_2/compress_readout/Tensordot/GreaterEqual*

SrcT0
*
_output_shapes
:*

DstT0
?
"m_2/compress_readout/Tensordot/mulMul#m_2/compress_readout/Tensordot/Cast#m_2/compress_readout/Tensordot/axes*
T0*
_output_shapes
:
g
%m_2/compress_readout/Tensordot/Less/yConst*
value	B : *
dtype0*
_output_shapes
: 
?
#m_2/compress_readout/Tensordot/LessLess#m_2/compress_readout/Tensordot/axes%m_2/compress_readout/Tensordot/Less/y*
T0*
_output_shapes
:
?
%m_2/compress_readout/Tensordot/Cast_1Cast#m_2/compress_readout/Tensordot/Less*

SrcT0
*
_output_shapes
:*

DstT0
?
"m_2/compress_readout/Tensordot/addAdd#m_2/compress_readout/Tensordot/axes#m_2/compress_readout/Tensordot/Rank*
T0*
_output_shapes
:
?
$m_2/compress_readout/Tensordot/mul_1Mul%m_2/compress_readout/Tensordot/Cast_1"m_2/compress_readout/Tensordot/add*
T0*
_output_shapes
:
?
$m_2/compress_readout/Tensordot/add_1Add"m_2/compress_readout/Tensordot/mul$m_2/compress_readout/Tensordot/mul_1*
T0*
_output_shapes
:
l
*m_2/compress_readout/Tensordot/range/startConst*
_output_shapes
: *
value	B : *
dtype0
l
*m_2/compress_readout/Tensordot/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
$m_2/compress_readout/Tensordot/rangeRange*m_2/compress_readout/Tensordot/range/start#m_2/compress_readout/Tensordot/Rank*m_2/compress_readout/Tensordot/range/delta*
_output_shapes
:*

Tidx0
?
'm_2/compress_readout/Tensordot/ListDiffListDiff$m_2/compress_readout/Tensordot/range$m_2/compress_readout/Tensordot/add_1*2
_output_shapes 
:?????????:?????????*
out_idx0*
T0
n
,m_2/compress_readout/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_2/compress_readout/Tensordot/GatherV2GatherV2$m_2/compress_readout/Tensordot/Shape'm_2/compress_readout/Tensordot/ListDiff,m_2/compress_readout/Tensordot/GatherV2/axis*
Tparams0*#
_output_shapes
:?????????*
Taxis0*
Tindices0
p
.m_2/compress_readout/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
)m_2/compress_readout/Tensordot/GatherV2_1GatherV2$m_2/compress_readout/Tensordot/Shape$m_2/compress_readout/Tensordot/add_1.m_2/compress_readout/Tensordot/GatherV2_1/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
n
$m_2/compress_readout/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
?
#m_2/compress_readout/Tensordot/ProdProd'm_2/compress_readout/Tensordot/GatherV2$m_2/compress_readout/Tensordot/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
p
&m_2/compress_readout/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
?
%m_2/compress_readout/Tensordot/Prod_1Prod)m_2/compress_readout/Tensordot/GatherV2_1&m_2/compress_readout/Tensordot/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
l
*m_2/compress_readout/Tensordot/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
%m_2/compress_readout/Tensordot/concatConcatV2)m_2/compress_readout/Tensordot/GatherV2_1'm_2/compress_readout/Tensordot/GatherV2*m_2/compress_readout/Tensordot/concat/axis*
N*#
_output_shapes
:?????????*

Tidx0*
T0
n
,m_2/compress_readout/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_2/compress_readout/Tensordot/concat_1ConcatV2'm_2/compress_readout/Tensordot/ListDiff$m_2/compress_readout/Tensordot/add_1,m_2/compress_readout/Tensordot/concat_1/axis*
N*#
_output_shapes
:?????????*

Tidx0*
T0
?
$m_2/compress_readout/Tensordot/stackPack#m_2/compress_readout/Tensordot/Prod%m_2/compress_readout/Tensordot/Prod_1*
T0*

axis *
N*
_output_shapes
:
?
(m_2/compress_readout/Tensordot/transpose	Transposem_2/cudnn_gru/transpose'm_2/compress_readout/Tensordot/concat_1*
T0*-
_output_shapes
:???????????*
Tperm0
?
&m_2/compress_readout/Tensordot/ReshapeReshape(m_2/compress_readout/Tensordot/transpose$m_2/compress_readout/Tensordot/stack*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
/m_2/compress_readout/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
?
*m_2/compress_readout/Tensordot/transpose_1	Transpose m_2/compress_readout/kernel/read/m_2/compress_readout/Tensordot/transpose_1/perm*
_output_shapes
:	?@*
Tperm0*
T0

.m_2/compress_readout/Tensordot/Reshape_1/shapeConst*
valueB"  @   *
dtype0*
_output_shapes
:
?
(m_2/compress_readout/Tensordot/Reshape_1Reshape*m_2/compress_readout/Tensordot/transpose_1.m_2/compress_readout/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:	?@
?
%m_2/compress_readout/Tensordot/MatMulMatMul&m_2/compress_readout/Tensordot/Reshape(m_2/compress_readout/Tensordot/Reshape_1*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( *
T0
p
&m_2/compress_readout/Tensordot/Const_2Const*
dtype0*
_output_shapes
:*
valueB:@
n
,m_2/compress_readout/Tensordot/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
'm_2/compress_readout/Tensordot/concat_2ConcatV2'm_2/compress_readout/Tensordot/GatherV2&m_2/compress_readout/Tensordot/Const_2,m_2/compress_readout/Tensordot/concat_2/axis*
N*#
_output_shapes
:?????????*

Tidx0*
T0
?
m_2/compress_readout/TensordotReshape%m_2/compress_readout/Tensordot/MatMul'm_2/compress_readout/Tensordot/concat_2*
T0*
Tshape0*,
_output_shapes
:??????????@
?
m_2/compress_readout/BiasAddBiasAddm_2/compress_readout/Tensordotm_2/compress_readout/bias/read*
data_formatNHWC*,
_output_shapes
:??????????@*
T0
l
'm_2/compress_readout/elu/GreaterEqual/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
?
%m_2/compress_readout/elu/GreaterEqualGreaterEqualm_2/compress_readout/BiasAdd'm_2/compress_readout/elu/GreaterEqual/y*,
_output_shapes
:??????????@*
T0
x
m_2/compress_readout/elu/EluElum_2/compress_readout/BiasAdd*
T0*,
_output_shapes
:??????????@
c
m_2/compress_readout/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
m_2/compress_readout/elu/mulMulm_2/compress_readout/elu/mul/xm_2/compress_readout/elu/Elu*
T0*,
_output_shapes
:??????????@
?
m_2/compress_readout/elu/SelectSelect%m_2/compress_readout/elu/GreaterEqualm_2/compress_readout/BiasAddm_2/compress_readout/elu/mul*
T0*,
_output_shapes
:??????????@
e
 m_2/compress_readout/elu/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *_}??
?
m_2/compress_readout/elu/mul_1Mul m_2/compress_readout/elu/mul_1/xm_2/compress_readout/elu/Select*
T0*,
_output_shapes
:??????????@
]
m_2/ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_2/ExpandDims
ExpandDimsinput/IteratorGetNext:2m_2/ExpandDims/dim*
T0*,
_output_shapes
:??????????*

Tdim0
Z
m_2/concat/axisConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?

m_2/concatConcatV2input/IteratorGetNext:3m_2/ExpandDimsm_2/concat/axis*
T0*
N*,
_output_shapes
:??????????*

Tidx0
?
Gm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*!
valueB"         *
dtype0*
_output_shapes
:
?
Fm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
valueB
 *5??>*
dtype0*
_output_shapes
: 
?
Qm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
:*
seed???)*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
seed2
?
Em_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulMulQm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/TruncatedNormalHm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
:*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel
?
Am_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normalAddEm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mulFm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
$m_2/fingerpint/convnet/conv1d/kernel
VariableV2*
	container *
shape:*
dtype0*"
_output_shapes
:*
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel
?
+m_2/fingerpint/convnet/conv1d/kernel/AssignAssign$m_2/fingerpint/convnet/conv1d/kernelAm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:*
use_locking(*
T0
?
)m_2/fingerpint/convnet/conv1d/kernel/readIdentity$m_2/fingerpint/convnet/conv1d/kernel*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*"
_output_shapes
:
?
4m_2/fingerpint/convnet/conv1d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias*
valueB*    
?
"m_2/fingerpint/convnet/conv1d/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias*
	container *
shape:
?
)m_2/fingerpint/convnet/conv1d/bias/AssignAssign"m_2/fingerpint/convnet/conv1d/bias4m_2/fingerpint/convnet/conv1d/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias*
validate_shape(
?
'm_2/fingerpint/convnet/conv1d/bias/readIdentity"m_2/fingerpint/convnet/conv1d/bias*
T0*5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias*
_output_shapes
:
u
+m_2/fingerpint/convnet/conv1d/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
u
3m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
/m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims
ExpandDims
m_2/concat3m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:??????????
w
5m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
1m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims_1
ExpandDims)m_2/fingerpint/convnet/conv1d/kernel/read5m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:
?
+m_2/fingerpint/convnet/conv1d/conv1d/Conv2DConv2D/m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims1m_2/fingerpint/convnet/conv1d/conv1d/ExpandDims_1*0
_output_shapes
:??????????*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
,m_2/fingerpint/convnet/conv1d/conv1d/SqueezeSqueeze+m_2/fingerpint/convnet/conv1d/conv1d/Conv2D*,
_output_shapes
:??????????*
squeeze_dims
*
T0
?
%m_2/fingerpint/convnet/conv1d/BiasAddBiasAdd,m_2/fingerpint/convnet/conv1d/conv1d/Squeeze'm_2/fingerpint/convnet/conv1d/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????
?
"m_2/fingerpint/convnet/conv1d/ReluRelu%m_2/fingerpint/convnet/conv1d/BiasAdd*
T0*,
_output_shapes
:??????????
?
Im_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*!
valueB"         
?
Hm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
valueB
 *?Rn>*
dtype0*
_output_shapes
: 
?
Sm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
:*
seed???)*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
seed2
?
Gm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulMulSm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/TruncatedNormalJm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*"
_output_shapes
:
?
Cm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normalAddGm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mulHm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal/mean*"
_output_shapes
:*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel
?
&m_2/fingerpint/convnet/conv1d_1/kernel
VariableV2*
shape:*
dtype0*"
_output_shapes
:*
shared_name *9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
	container 
?
-m_2/fingerpint/convnet/conv1d_1/kernel/AssignAssign&m_2/fingerpint/convnet/conv1d_1/kernelCm_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal*"
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
validate_shape(
?
+m_2/fingerpint/convnet/conv1d_1/kernel/readIdentity&m_2/fingerpint/convnet/conv1d_1/kernel*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*"
_output_shapes
:
?
6m_2/fingerpint/convnet/conv1d_1/bias/Initializer/zerosConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
?
$m_2/fingerpint/convnet/conv1d_1/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias
?
+m_2/fingerpint/convnet/conv1d_1/bias/AssignAssign$m_2/fingerpint/convnet/conv1d_1/bias6m_2/fingerpint/convnet/conv1d_1/bias/Initializer/zeros*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
)m_2/fingerpint/convnet/conv1d_1/bias/readIdentity$m_2/fingerpint/convnet/conv1d_1/bias*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias*
_output_shapes
:
w
-m_2/fingerpint/convnet/conv1d_1/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
?
1m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims
ExpandDims"m_2/fingerpint/convnet/conv1d/Relu5m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
y
7m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
value	B : *
dtype0
?
3m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1
ExpandDims+m_2/fingerpint/convnet/conv1d_1/kernel/read7m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:
?
-m_2/fingerpint/convnet/conv1d_1/conv1d/Conv2DConv2D1m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims3m_2/fingerpint/convnet/conv1d_1/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:??????????
?
.m_2/fingerpint/convnet/conv1d_1/conv1d/SqueezeSqueeze-m_2/fingerpint/convnet/conv1d_1/conv1d/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:??????????
?
'm_2/fingerpint/convnet/conv1d_1/BiasAddBiasAdd.m_2/fingerpint/convnet/conv1d_1/conv1d/Squeeze)m_2/fingerpint/convnet/conv1d_1/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:??????????
?
$m_2/fingerpint/convnet/conv1d_1/ReluRelu'm_2/fingerpint/convnet/conv1d_1/BiasAdd*,
_output_shapes
:??????????*
T0
u
3m_2/fingerpint/convnet/max_pooling1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
/m_2/fingerpint/convnet/max_pooling1d/ExpandDims
ExpandDims$m_2/fingerpint/convnet/conv1d_1/Relu3m_2/fingerpint/convnet/max_pooling1d/ExpandDims/dim*0
_output_shapes
:??????????*

Tdim0*
T0
?
,m_2/fingerpint/convnet/max_pooling1d/MaxPoolMaxPool/m_2/fingerpint/convnet/max_pooling1d/ExpandDims*0
_output_shapes
:??????????*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
?
,m_2/fingerpint/convnet/max_pooling1d/SqueezeSqueeze,m_2/fingerpint/convnet/max_pooling1d/MaxPool*
T0*,
_output_shapes
:??????????*
squeeze_dims

?
Im_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*!
valueB"          *
dtype0*
_output_shapes
:
?
Hm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
valueB
 *?Rn>*
dtype0*
_output_shapes
: 
?
Sm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
: *
seed???)*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
seed2
?
Gm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulMulSm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/TruncatedNormalJm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
Cm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normalAddGm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mulHm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
&m_2/fingerpint/convnet/conv1d_2/kernel
VariableV2*
dtype0*"
_output_shapes
: *
shared_name *9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
	container *
shape: 
?
-m_2/fingerpint/convnet/conv1d_2/kernel/AssignAssign&m_2/fingerpint/convnet/conv1d_2/kernelCm_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
validate_shape(*"
_output_shapes
: 
?
+m_2/fingerpint/convnet/conv1d_2/kernel/readIdentity&m_2/fingerpint/convnet/conv1d_2/kernel*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*"
_output_shapes
: 
?
6m_2/fingerpint/convnet/conv1d_2/bias/Initializer/zerosConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias*
valueB *    *
dtype0*
_output_shapes
: 
?
$m_2/fingerpint/convnet/conv1d_2/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias*
	container 
?
+m_2/fingerpint/convnet/conv1d_2/bias/AssignAssign$m_2/fingerpint/convnet/conv1d_2/bias6m_2/fingerpint/convnet/conv1d_2/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
)m_2/fingerpint/convnet/conv1d_2/bias/readIdentity$m_2/fingerpint/convnet/conv1d_2/bias*
_output_shapes
: *
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias
w
-m_2/fingerpint/convnet/conv1d_2/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
?
1m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims
ExpandDims,m_2/fingerpint/convnet/max_pooling1d/Squeeze5m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims/dim*
T0*0
_output_shapes
:??????????*

Tdim0
y
7m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1
ExpandDims+m_2/fingerpint/convnet/conv1d_2/kernel/read7m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
: *

Tdim0
?
-m_2/fingerpint/convnet/conv1d_2/conv1d/Conv2DConv2D1m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims3m_2/fingerpint/convnet/conv1d_2/conv1d/ExpandDims_1*0
_output_shapes
:?????????? *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
?
.m_2/fingerpint/convnet/conv1d_2/conv1d/SqueezeSqueeze-m_2/fingerpint/convnet/conv1d_2/conv1d/Conv2D*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
?
'm_2/fingerpint/convnet/conv1d_2/BiasAddBiasAdd.m_2/fingerpint/convnet/conv1d_2/conv1d/Squeeze)m_2/fingerpint/convnet/conv1d_2/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:?????????? 
?
$m_2/fingerpint/convnet/conv1d_2/ReluRelu'm_2/fingerpint/convnet/conv1d_2/BiasAdd*,
_output_shapes
:?????????? *
T0
?
Im_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*!
valueB"           *
dtype0*
_output_shapes
:
?
Hm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/shape*
seed2*
dtype0*"
_output_shapes
:  *
seed???)*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel
?
Gm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulMulSm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/TruncatedNormalJm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
Cm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normalAddGm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mulHm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal/mean*"
_output_shapes
:  *
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel
?
&m_2/fingerpint/convnet/conv1d_3/kernel
VariableV2*
	container *
shape:  *
dtype0*"
_output_shapes
:  *
shared_name *9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel
?
-m_2/fingerpint/convnet/conv1d_3/kernel/AssignAssign&m_2/fingerpint/convnet/conv1d_3/kernelCm_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  
?
+m_2/fingerpint/convnet/conv1d_3/kernel/readIdentity&m_2/fingerpint/convnet/conv1d_3/kernel*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*"
_output_shapes
:  
?
6m_2/fingerpint/convnet/conv1d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
valueB *    
?
$m_2/fingerpint/convnet/conv1d_3/bias
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
	container 
?
+m_2/fingerpint/convnet/conv1d_3/bias/AssignAssign$m_2/fingerpint/convnet/conv1d_3/bias6m_2/fingerpint/convnet/conv1d_3/bias/Initializer/zeros*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
?
)m_2/fingerpint/convnet/conv1d_3/bias/readIdentity$m_2/fingerpint/convnet/conv1d_3/bias*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
_output_shapes
: 
w
-m_2/fingerpint/convnet/conv1d_3/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
?
1m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims
ExpandDims$m_2/fingerpint/convnet/conv1d_2/Relu5m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims/dim*0
_output_shapes
:?????????? *

Tdim0*
T0
y
7m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
3m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1
ExpandDims+m_2/fingerpint/convnet/conv1d_3/kernel/read7m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1/dim*
T0*&
_output_shapes
:  *

Tdim0
?
-m_2/fingerpint/convnet/conv1d_3/conv1d/Conv2DConv2D1m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims3m_2/fingerpint/convnet/conv1d_3/conv1d/ExpandDims_1*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*0
_output_shapes
:?????????? *
	dilations
*
T0
?
.m_2/fingerpint/convnet/conv1d_3/conv1d/SqueezeSqueeze-m_2/fingerpint/convnet/conv1d_3/conv1d/Conv2D*,
_output_shapes
:?????????? *
squeeze_dims
*
T0
?
'm_2/fingerpint/convnet/conv1d_3/BiasAddBiasAdd.m_2/fingerpint/convnet/conv1d_3/conv1d/Squeeze)m_2/fingerpint/convnet/conv1d_3/bias/read*
T0*
data_formatNHWC*,
_output_shapes
:?????????? 
?
$m_2/fingerpint/convnet/conv1d_3/ReluRelu'm_2/fingerpint/convnet/conv1d_3/BiasAdd*,
_output_shapes
:?????????? *
T0
w
5m_2/fingerpint/convnet/max_pooling1d_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_2/fingerpint/convnet/max_pooling1d_1/ExpandDims
ExpandDims$m_2/fingerpint/convnet/conv1d_3/Relu5m_2/fingerpint/convnet/max_pooling1d_1/ExpandDims/dim*0
_output_shapes
:?????????? *

Tdim0*
T0
?
.m_2/fingerpint/convnet/max_pooling1d_1/MaxPoolMaxPool1m_2/fingerpint/convnet/max_pooling1d_1/ExpandDims*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:?????????G *
T0
?
.m_2/fingerpint/convnet/max_pooling1d_1/SqueezeSqueeze.m_2/fingerpint/convnet/max_pooling1d_1/MaxPool*
T0*+
_output_shapes
:?????????G *
squeeze_dims

?
Im_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*!
valueB"       @   *
dtype0*
_output_shapes
:
?
Hm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
Sm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
: @*
seed???)*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
seed2
?
Gm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulMulSm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/TruncatedNormalJm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/stddev*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
Cm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normalAddGm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mulHm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal/mean*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @
?
&m_2/fingerpint/convnet/conv1d_4/kernel
VariableV2*
dtype0*"
_output_shapes
: @*
shared_name *9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
	container *
shape: @
?
-m_2/fingerpint/convnet/conv1d_4/kernel/AssignAssign&m_2/fingerpint/convnet/conv1d_4/kernelCm_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @*
use_locking(
?
+m_2/fingerpint/convnet/conv1d_4/kernel/readIdentity&m_2/fingerpint/convnet/conv1d_4/kernel*"
_output_shapes
: @*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel
?
6m_2/fingerpint/convnet/conv1d_4/bias/Initializer/zerosConst*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
$m_2/fingerpint/convnet/conv1d_4/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias
?
+m_2/fingerpint/convnet/conv1d_4/bias/AssignAssign$m_2/fingerpint/convnet/conv1d_4/bias6m_2/fingerpint/convnet/conv1d_4/bias/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@
?
)m_2/fingerpint/convnet/conv1d_4/bias/readIdentity$m_2/fingerpint/convnet/conv1d_4/bias*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias*
_output_shapes
:@*
T0
w
-m_2/fingerpint/convnet/conv1d_4/dilation_rateConst*
valueB:*
dtype0*
_output_shapes
:
w
5m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims
ExpandDims.m_2/fingerpint/convnet/max_pooling1d_1/Squeeze5m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:?????????G 
y
7m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
3m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1
ExpandDims+m_2/fingerpint/convnet/conv1d_4/kernel/read7m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
: @
?
-m_2/fingerpint/convnet/conv1d_4/conv1d/Conv2DConv2D1m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims3m_2/fingerpint/convnet/conv1d_4/conv1d/ExpandDims_1*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????G@*
	dilations

?
.m_2/fingerpint/convnet/conv1d_4/conv1d/SqueezeSqueeze-m_2/fingerpint/convnet/conv1d_4/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:?????????G@
?
'm_2/fingerpint/convnet/conv1d_4/BiasAddBiasAdd.m_2/fingerpint/convnet/conv1d_4/conv1d/Squeeze)m_2/fingerpint/convnet/conv1d_4/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????G@
?
$m_2/fingerpint/convnet/conv1d_4/ReluRelu'm_2/fingerpint/convnet/conv1d_4/BiasAdd*
T0*+
_output_shapes
:?????????G@
?
Im_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shapeConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*!
valueB"   @   @   *
dtype0*
_output_shapes
:
?
Hm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/meanConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddevConst*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
valueB
 *?R?=*
dtype0*
_output_shapes
: 
?
Sm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalIm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/shape*
dtype0*"
_output_shapes
:@@*
seed???)*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
seed2
?
Gm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulMulSm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/TruncatedNormalJm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/stddev*"
_output_shapes
:@@*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel
?
Cm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normalAddGm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mulHm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal/mean*"
_output_shapes
:@@*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel
?
&m_2/fingerpint/convnet/conv1d_5/kernel
VariableV2*
dtype0*"
_output_shapes
:@@*
shared_name *9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
	container *
shape:@@
?
-m_2/fingerpint/convnet/conv1d_5/kernel/AssignAssign&m_2/fingerpint/convnet/conv1d_5/kernelCm_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
+m_2/fingerpint/convnet/conv1d_5/kernel/readIdentity&m_2/fingerpint/convnet/conv1d_5/kernel*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*"
_output_shapes
:@@
?
6m_2/fingerpint/convnet/conv1d_5/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias*
valueB@*    
?
$m_2/fingerpint/convnet/conv1d_5/bias
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias*
	container 
?
+m_2/fingerpint/convnet/conv1d_5/bias/AssignAssign$m_2/fingerpint/convnet/conv1d_5/bias6m_2/fingerpint/convnet/conv1d_5/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias
?
)m_2/fingerpint/convnet/conv1d_5/bias/readIdentity$m_2/fingerpint/convnet/conv1d_5/bias*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias*
_output_shapes
:@
w
-m_2/fingerpint/convnet/conv1d_5/dilation_rateConst*
_output_shapes
:*
valueB:*
dtype0
w
5m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims
ExpandDims$m_2/fingerpint/convnet/conv1d_4/Relu5m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims/dim*

Tdim0*
T0*/
_output_shapes
:?????????G@
y
7m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dimConst*
dtype0*
_output_shapes
: *
value	B : 
?
3m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1
ExpandDims+m_2/fingerpint/convnet/conv1d_5/kernel/read7m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1/dim*

Tdim0*
T0*&
_output_shapes
:@@
?
-m_2/fingerpint/convnet/conv1d_5/conv1d/Conv2DConv2D1m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims3m_2/fingerpint/convnet/conv1d_5/conv1d/ExpandDims_1*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:?????????G@
?
.m_2/fingerpint/convnet/conv1d_5/conv1d/SqueezeSqueeze-m_2/fingerpint/convnet/conv1d_5/conv1d/Conv2D*
squeeze_dims
*
T0*+
_output_shapes
:?????????G@
?
'm_2/fingerpint/convnet/conv1d_5/BiasAddBiasAdd.m_2/fingerpint/convnet/conv1d_5/conv1d/Squeeze)m_2/fingerpint/convnet/conv1d_5/bias/read*
T0*
data_formatNHWC*+
_output_shapes
:?????????G@
?
$m_2/fingerpint/convnet/conv1d_5/ReluRelu'm_2/fingerpint/convnet/conv1d_5/BiasAdd*+
_output_shapes
:?????????G@*
T0
w
5m_2/fingerpint/convnet/max_pooling1d_2/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
?
1m_2/fingerpint/convnet/max_pooling1d_2/ExpandDims
ExpandDims$m_2/fingerpint/convnet/conv1d_5/Relu5m_2/fingerpint/convnet/max_pooling1d_2/ExpandDims/dim*/
_output_shapes
:?????????G@*

Tdim0*
T0
?
.m_2/fingerpint/convnet/max_pooling1d_2/MaxPoolMaxPool1m_2/fingerpint/convnet/max_pooling1d_2/ExpandDims*
ksize
*
paddingSAME*/
_output_shapes
:?????????$@*
T0*
data_formatNHWC*
strides

?
.m_2/fingerpint/convnet/max_pooling1d_2/SqueezeSqueeze.m_2/fingerpint/convnet/max_pooling1d_2/MaxPool*
squeeze_dims
*
T0*+
_output_shapes
:?????????$@
u
$m_2/fingerpint/convnet/Reshape/shapeConst*
valueB"???? 	  *
dtype0*
_output_shapes
:
?
m_2/fingerpint/convnet/ReshapeReshape.m_2/fingerpint/convnet/max_pooling1d_2/Squeeze$m_2/fingerpint/convnet/Reshape/shape*
Tshape0*(
_output_shapes
:??????????*
T0
?
Nm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shapeConst*
_output_shapes
:*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
valueB" 	     *
dtype0
?
Mm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *    
?
Om_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddevConst*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
valueB
 *??<*
dtype0*
_output_shapes
: 
?
Xm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalNm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
seed2
?
Lm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMulXm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/TruncatedNormalOm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/stddev*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??
?
Hm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normalAddLm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mulMm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal/mean*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??
?
+m_2/fingerpint/fc_convnet/fc_encoder/kernel
VariableV2* 
_output_shapes
:
??*
shared_name *>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
	container *
shape:
??*
dtype0
?
2m_2/fingerpint/fc_convnet/fc_encoder/kernel/AssignAssign+m_2/fingerpint/fc_convnet/fc_encoder/kernelHm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal*
use_locking(*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??
?
0m_2/fingerpint/fc_convnet/fc_encoder/kernel/readIdentity+m_2/fingerpint/fc_convnet/fc_encoder/kernel* 
_output_shapes
:
??*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel
?
;m_2/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zerosConst*<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
)m_2/fingerpint/fc_convnet/fc_encoder/bias
VariableV2*
shared_name *<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
0m_2/fingerpint/fc_convnet/fc_encoder/bias/AssignAssign)m_2/fingerpint/fc_convnet/fc_encoder/bias;m_2/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros*
T0*<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
.m_2/fingerpint/fc_convnet/fc_encoder/bias/readIdentity)m_2/fingerpint/fc_convnet/fc_encoder/bias*
T0*<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
_output_shapes	
:?
?
+m_2/fingerpint/fc_convnet/fc_encoder/MatMulMatMulm_2/fingerpint/convnet/Reshape0m_2/fingerpint/fc_convnet/fc_encoder/kernel/read*
transpose_b( *
T0*(
_output_shapes
:??????????*
transpose_a( 
?
,m_2/fingerpint/fc_convnet/fc_encoder/BiasAddBiasAdd+m_2/fingerpint/fc_convnet/fc_encoder/MatMul.m_2/fingerpint/fc_convnet/fc_encoder/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
|
7m_2/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
5m_2/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqualGreaterEqual,m_2/fingerpint/fc_convnet/fc_encoder/BiasAdd7m_2/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual/y*
T0*(
_output_shapes
:??????????
?
,m_2/fingerpint/fc_convnet/fc_encoder/elu/EluElu,m_2/fingerpint/fc_convnet/fc_encoder/BiasAdd*
T0*(
_output_shapes
:??????????
s
.m_2/fingerpint/fc_convnet/fc_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
,m_2/fingerpint/fc_convnet/fc_encoder/elu/mulMul.m_2/fingerpint/fc_convnet/fc_encoder/elu/mul/x,m_2/fingerpint/fc_convnet/fc_encoder/elu/Elu*(
_output_shapes
:??????????*
T0
?
/m_2/fingerpint/fc_convnet/fc_encoder/elu/SelectSelect5m_2/fingerpint/fc_convnet/fc_encoder/elu/GreaterEqual,m_2/fingerpint/fc_convnet/fc_encoder/BiasAdd,m_2/fingerpint/fc_convnet/fc_encoder/elu/mul*(
_output_shapes
:??????????*
T0
u
0m_2/fingerpint/fc_convnet/fc_encoder/elu/mul_1/xConst*
valueB
 *_}??*
dtype0*
_output_shapes
: 
?
.m_2/fingerpint/fc_convnet/fc_encoder/elu/mul_1Mul0m_2/fingerpint/fc_convnet/fc_encoder/elu/mul_1/x/m_2/fingerpint/fc_convnet/fc_encoder/elu/Select*
T0*(
_output_shapes
:??????????
?
Om_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shapeConst*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Nm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/meanConst*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Pm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddevConst*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
valueB
 *?dN=*
dtype0*
_output_shapes
: 
?
Ym_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalOm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/shape*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
seed2*
dtype0*
_output_shapes
:	?*
seed???)*
T0
?
Mm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulMulYm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/TruncatedNormalPm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/stddev*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
Im_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normalAddMm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mulNm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal/mean*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
,m_2/fingerpint/fc_convnet/out_encoder/kernel
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
	container *
shape:	?
?
3m_2/fingerpint/fc_convnet/out_encoder/kernel/AssignAssign,m_2/fingerpint/fc_convnet/out_encoder/kernelIm_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel
?
1m_2/fingerpint/fc_convnet/out_encoder/kernel/readIdentity,m_2/fingerpint/fc_convnet/out_encoder/kernel*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
_output_shapes
:	?
?
<m_2/fingerpint/fc_convnet/out_encoder/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias*
valueB*    
?
*m_2/fingerpint/fc_convnet/out_encoder/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias
?
1m_2/fingerpint/fc_convnet/out_encoder/bias/AssignAssign*m_2/fingerpint/fc_convnet/out_encoder/bias<m_2/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros*=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
?
/m_2/fingerpint/fc_convnet/out_encoder/bias/readIdentity*m_2/fingerpint/fc_convnet/out_encoder/bias*=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias*
_output_shapes
:*
T0
?
,m_2/fingerpint/fc_convnet/out_encoder/MatMulMatMul.m_2/fingerpint/fc_convnet/fc_encoder/elu/mul_11m_2/fingerpint/fc_convnet/out_encoder/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
-m_2/fingerpint/fc_convnet/out_encoder/BiasAddBiasAdd,m_2/fingerpint/fc_convnet/out_encoder/MatMul/m_2/fingerpint/fc_convnet/out_encoder/bias/read*'
_output_shapes
:?????????*
T0*
data_formatNHWC
}
8m_2/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
6m_2/fingerpint/fc_convnet/out_encoder/elu/GreaterEqualGreaterEqual-m_2/fingerpint/fc_convnet/out_encoder/BiasAdd8m_2/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual/y*'
_output_shapes
:?????????*
T0
?
-m_2/fingerpint/fc_convnet/out_encoder/elu/EluElu-m_2/fingerpint/fc_convnet/out_encoder/BiasAdd*
T0*'
_output_shapes
:?????????
t
/m_2/fingerpint/fc_convnet/out_encoder/elu/mul/xConst*
valueB
 *}-??*
dtype0*
_output_shapes
: 
?
-m_2/fingerpint/fc_convnet/out_encoder/elu/mulMul/m_2/fingerpint/fc_convnet/out_encoder/elu/mul/x-m_2/fingerpint/fc_convnet/out_encoder/elu/Elu*
T0*'
_output_shapes
:?????????
?
0m_2/fingerpint/fc_convnet/out_encoder/elu/SelectSelect6m_2/fingerpint/fc_convnet/out_encoder/elu/GreaterEqual-m_2/fingerpint/fc_convnet/out_encoder/BiasAdd-m_2/fingerpint/fc_convnet/out_encoder/elu/mul*
T0*'
_output_shapes
:?????????
v
1m_2/fingerpint/fc_convnet/out_encoder/elu/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *_}??
?
/m_2/fingerpint/fc_convnet/out_encoder/elu/mul_1Mul1m_2/fingerpint/fc_convnet/out_encoder/elu/mul_1/x0m_2/fingerpint/fc_convnet/out_encoder/elu/Select*
T0*'
_output_shapes
:?????????
i
m_2/transpose_1/permConst*
dtype0*
_output_shapes
:*!
valueB"          
?
m_2/transpose_1	Transposem_2/compress_readout/elu/mul_1m_2/transpose_1/perm*
T0*,
_output_shapes
:@??????????*
Tperm0
p
m_2/strided_slice/stackConst*
_output_shapes
:*%
valueB"                *
dtype0
r
m_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*%
valueB"                
r
m_2/strided_slice/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
m_2/strided_sliceStridedSlicem_2/transpose_1m_2/strided_slice/stackm_2/strided_slice/stack_1m_2/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask*
end_mask*0
_output_shapes
:@??????????*
Index0*
T0
?
6m_2/attn_focus/kernel/Initializer/random_uniform/shapeConst*(
_class
loc:@m_2/attn_focus/kernel*
valueB"   ?   *
dtype0*
_output_shapes
:
?
4m_2/attn_focus/kernel/Initializer/random_uniform/minConst*(
_class
loc:@m_2/attn_focus/kernel*
valueB
 *?"?*
dtype0*
_output_shapes
: 
?
4m_2/attn_focus/kernel/Initializer/random_uniform/maxConst*(
_class
loc:@m_2/attn_focus/kernel*
valueB
 *?">*
dtype0*
_output_shapes
: 
?
>m_2/attn_focus/kernel/Initializer/random_uniform/RandomUniformRandomUniform6m_2/attn_focus/kernel/Initializer/random_uniform/shape*
_output_shapes
:	?*
seed???)*
T0*(
_class
loc:@m_2/attn_focus/kernel*
seed2*
dtype0
?
4m_2/attn_focus/kernel/Initializer/random_uniform/subSub4m_2/attn_focus/kernel/Initializer/random_uniform/max4m_2/attn_focus/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@m_2/attn_focus/kernel*
_output_shapes
: 
?
4m_2/attn_focus/kernel/Initializer/random_uniform/mulMul>m_2/attn_focus/kernel/Initializer/random_uniform/RandomUniform4m_2/attn_focus/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@m_2/attn_focus/kernel*
_output_shapes
:	?
?
0m_2/attn_focus/kernel/Initializer/random_uniformAdd4m_2/attn_focus/kernel/Initializer/random_uniform/mul4m_2/attn_focus/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@m_2/attn_focus/kernel*
_output_shapes
:	?
?
m_2/attn_focus/kernel
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *(
_class
loc:@m_2/attn_focus/kernel*
	container *
shape:	?
?
m_2/attn_focus/kernel/AssignAssignm_2/attn_focus/kernel0m_2/attn_focus/kernel/Initializer/random_uniform*
T0*(
_class
loc:@m_2/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
m_2/attn_focus/kernel/readIdentitym_2/attn_focus/kernel*(
_class
loc:@m_2/attn_focus/kernel*
_output_shapes
:	?*
T0
?
%m_2/attn_focus/bias/Initializer/zerosConst*&
_class
loc:@m_2/attn_focus/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
m_2/attn_focus/bias
VariableV2*
_output_shapes	
:?*
shared_name *&
_class
loc:@m_2/attn_focus/bias*
	container *
shape:?*
dtype0
?
m_2/attn_focus/bias/AssignAssignm_2/attn_focus/bias%m_2/attn_focus/bias/Initializer/zeros*
T0*&
_class
loc:@m_2/attn_focus/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
m_2/attn_focus/bias/readIdentitym_2/attn_focus/bias*
T0*&
_class
loc:@m_2/attn_focus/bias*
_output_shapes	
:?
?
m_2/attn_focus/MatMulMatMul/m_2/fingerpint/fc_convnet/out_encoder/elu/mul_1m_2/attn_focus/kernel/read*
T0*(
_output_shapes
:??????????*
transpose_a( *
transpose_b( 
?
m_2/attn_focus/BiasAddBiasAddm_2/attn_focus/MatMulm_2/attn_focus/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:??????????
f
m_2/Reshape/shapeConst*!
valueB"?????      *
dtype0*
_output_shapes
:
?
m_2/ReshapeReshapem_2/attn_focus/BiasAddm_2/Reshape/shape*,
_output_shapes
:??????????*
T0*
Tshape0
[
m_2/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/SumSumm_2/Reshapem_2/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*+
_output_shapes
:?????????
c
m_2/truedivRealDivm_2/Reshapem_2/Sum*,
_output_shapes
:??????????*
T0
i
m_2/transpose_2/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_2/transpose_2	Transposem_2/truedivm_2/transpose_2/perm*
T0*,
_output_shapes
:??????????*
Tperm0
r
m_2/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*%
valueB"                
t
m_2/strided_slice_1/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
t
m_2/strided_slice_1/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
?
m_2/strided_slice_1StridedSlicem_2/transpose_2m_2/strided_slice_1/stackm_2/strided_slice_1/stack_1m_2/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*0
_output_shapes
:??????????*
T0*
Index0
?
m_2/DepthwiseConv2dNativeDepthwiseConv2dNativem_2/strided_slicem_2/strided_slice_1*
	dilations
*
T0*
data_formatNHWC*
strides
*
paddingVALID*/
_output_shapes
:@??????????
~
m_2/SqueezeSqueezem_2/DepthwiseConv2dNative*
squeeze_dims
*
T0*+
_output_shapes
:@??????????
i
m_2/transpose_3/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_2/transpose_3	Transposem_2/Squeezem_2/transpose_3/perm*+
_output_shapes
:??????????@*
Tperm0*
T0
c
m_2/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
m_2/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB: *
dtype0
e
m_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
m_2/strided_slice_2StridedSlicem_2/transpose_3m_2/strided_slice_2/stackm_2/strided_slice_2/stack_1m_2/strided_slice_2/stack_2*
new_axis_mask *
end_mask*+
_output_shapes
:??????????@*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
b
m_2/concat_1/concat_dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
c
m_2/concat_1Identitym_2/strided_slice_2*
T0*+
_output_shapes
:??????????@
j
m_2/strided_slice_3/stackConst*
valueB"    ????*
dtype0*
_output_shapes
:
l
m_2/strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
l
m_2/strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
?
m_2/strided_slice_3StridedSliceinput/IteratorGetNext:2m_2/strided_slice_3/stackm_2/strided_slice_3/stack_1m_2/strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:?????????
i
m_2/transpose_4/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
m_2/transpose_4	Transposeinput/IteratorGetNext:5m_2/transpose_4/perm*+
_output_shapes
:??????????*
Tperm0*
T0
K
	m_2/ConstConst*
dtype0*
_output_shapes
: *
value	B : 
_
m_2/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
m_2/ExpandDims_1
ExpandDimsm_2/strided_slice_3m_2/ExpandDims_1/dim*
T0*'
_output_shapes
:?????????*

Tdim0
V
m_2/TensorArray/sizeConst*
dtype0*
_output_shapes
: *
value	B :?
?
m_2/TensorArrayTensorArrayV3m_2/TensorArray/size*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:
X
m_2/TensorArray_1/sizeConst*
value	B :?*
dtype0*
_output_shapes
: 
?
m_2/TensorArray_1TensorArrayV3m_2/TensorArray_1/size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
?
m_2/while/EnterEnter	m_2/Const*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_2/while/while_context
?
m_2/while/Enter_1Enterm_2/ExpandDims_1*
T0*
is_constant( *
parallel_iterations
*'
_output_shapes
:?????????*'

frame_namem_2/while/while_context
?
m_2/while/Enter_2Enterm_2/unstack*
T0*
is_constant( *
parallel_iterations
*(
_output_shapes
:??????????*'

frame_namem_2/while/while_context
?
m_2/while/Enter_3Enterm_2/TensorArray:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *'

frame_namem_2/while/while_context
?
m_2/while/Enter_4Enterm_2/TensorArray_1:1*
parallel_iterations
*
_output_shapes
: *'

frame_namem_2/while/while_context*
T0*
is_constant( 
n
m_2/while/MergeMergem_2/while/Enterm_2/while/NextIteration*
T0*
N*
_output_shapes
: : 
?
m_2/while/Merge_1Mergem_2/while/Enter_1m_2/while/NextIteration_1*
T0*
N*)
_output_shapes
:?????????: 
?
m_2/while/Merge_2Mergem_2/while/Enter_2m_2/while/NextIteration_2*
T0*
N**
_output_shapes
:??????????: 
t
m_2/while/Merge_3Mergem_2/while/Enter_3m_2/while/NextIteration_3*
T0*
N*
_output_shapes
: : 
t
m_2/while/Merge_4Mergem_2/while/Enter_4m_2/while/NextIteration_4*
T0*
N*
_output_shapes
: : 
d
m_2/while/Less/yConst^m_2/while/Merge*
value	B :?*
dtype0*
_output_shapes
: 
Z
m_2/while/LessLessm_2/while/Mergem_2/while/Less/y*
T0*
_output_shapes
: 
F
m_2/while/LoopCondLoopCondm_2/while/Less*
_output_shapes
: 
?
m_2/while/SwitchSwitchm_2/while/Mergem_2/while/LoopCond*
T0*"
_class
loc:@m_2/while/Merge*
_output_shapes
: : 
?
m_2/while/Switch_1Switchm_2/while/Merge_1m_2/while/LoopCond*
T0*$
_class
loc:@m_2/while/Merge_1*:
_output_shapes(
&:?????????:?????????
?
m_2/while/Switch_2Switchm_2/while/Merge_2m_2/while/LoopCond*
T0*$
_class
loc:@m_2/while/Merge_2*<
_output_shapes*
(:??????????:??????????
?
m_2/while/Switch_3Switchm_2/while/Merge_3m_2/while/LoopCond*
T0*$
_class
loc:@m_2/while/Merge_3*
_output_shapes
: : 
?
m_2/while/Switch_4Switchm_2/while/Merge_4m_2/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@m_2/while/Merge_4
S
m_2/while/IdentityIdentitym_2/while/Switch:1*
T0*
_output_shapes
: 
h
m_2/while/Identity_1Identitym_2/while/Switch_1:1*
T0*'
_output_shapes
:?????????
i
m_2/while/Identity_2Identitym_2/while/Switch_2:1*
T0*(
_output_shapes
:??????????
W
m_2/while/Identity_3Identitym_2/while/Switch_3:1*
T0*
_output_shapes
: 
W
m_2/while/Identity_4Identitym_2/while/Switch_4:1*
T0*
_output_shapes
: 
f
m_2/while/add/yConst^m_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
m_2/while/addAddm_2/while/Identitym_2/while/add/y*
T0*
_output_shapes
: 
s
m_2/while/strided_slice/stackPackm_2/while/Identity*
T0*

axis *
N*
_output_shapes
:
p
m_2/while/strided_slice/stack_1Packm_2/while/add*

axis *
N*
_output_shapes
:*
T0
~
m_2/while/strided_slice/stack_2Const^m_2/while/Identity*
valueB:*
dtype0*
_output_shapes
:
?
m_2/while/strided_sliceStridedSlicem_2/while/strided_slice/Enterm_2/while/strided_slice/stackm_2/while/strided_slice/stack_1m_2/while/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *'
_output_shapes
:?????????
?
m_2/while/strided_slice/EnterEnterm_2/transpose_4*
T0*
is_constant(*
parallel_iterations
*+
_output_shapes
:??????????*'

frame_namem_2/while/while_context
l
m_2/while/concat/axisConst^m_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/while/concatConcatV2m_2/while/Identity_1m_2/while/strided_slicem_2/while/concat/axis*
N*'
_output_shapes
:?????????*

Tidx0*
T0
?
2m_2/gru_cell/w_ru/Initializer/random_uniform/shapeConst*$
_class
loc:@m_2/gru_cell/w_ru*
valueB"#    *
dtype0*
_output_shapes
:
?
0m_2/gru_cell/w_ru/Initializer/random_uniform/minConst*$
_class
loc:@m_2/gru_cell/w_ru*
valueB
 *n???*
dtype0*
_output_shapes
: 
?
0m_2/gru_cell/w_ru/Initializer/random_uniform/maxConst*$
_class
loc:@m_2/gru_cell/w_ru*
valueB
 *n??=*
dtype0*
_output_shapes
: 
?
:m_2/gru_cell/w_ru/Initializer/random_uniform/RandomUniformRandomUniform2m_2/gru_cell/w_ru/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*$
_class
loc:@m_2/gru_cell/w_ru*
seed2 
?
0m_2/gru_cell/w_ru/Initializer/random_uniform/subSub0m_2/gru_cell/w_ru/Initializer/random_uniform/max0m_2/gru_cell/w_ru/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@m_2/gru_cell/w_ru
?
0m_2/gru_cell/w_ru/Initializer/random_uniform/mulMul:m_2/gru_cell/w_ru/Initializer/random_uniform/RandomUniform0m_2/gru_cell/w_ru/Initializer/random_uniform/sub*
T0*$
_class
loc:@m_2/gru_cell/w_ru* 
_output_shapes
:
??
?
,m_2/gru_cell/w_ru/Initializer/random_uniformAdd0m_2/gru_cell/w_ru/Initializer/random_uniform/mul0m_2/gru_cell/w_ru/Initializer/random_uniform/min*
T0*$
_class
loc:@m_2/gru_cell/w_ru* 
_output_shapes
:
??
?
m_2/gru_cell/w_ru
VariableV2*
shared_name *$
_class
loc:@m_2/gru_cell/w_ru*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
m_2/gru_cell/w_ru/AssignAssignm_2/gru_cell/w_ru,m_2/gru_cell/w_ru/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
m_2/gru_cell/w_ru/readIdentitym_2/gru_cell/w_ru*
T0*$
_class
loc:@m_2/gru_cell/w_ru* 
_output_shapes
:
??
?
#m_2/gru_cell/b_ru/Initializer/ConstConst*
dtype0*
_output_shapes	
:?*$
_class
loc:@m_2/gru_cell/b_ru*
valueB?*  ??
?
m_2/gru_cell/b_ru
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *$
_class
loc:@m_2/gru_cell/b_ru*
	container *
shape:?
?
m_2/gru_cell/b_ru/AssignAssignm_2/gru_cell/b_ru#m_2/gru_cell/b_ru/Initializer/Const*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
m_2/gru_cell/b_ru/readIdentitym_2/gru_cell/b_ru*
T0*$
_class
loc:@m_2/gru_cell/b_ru*
_output_shapes	
:?
?
1m_2/gru_cell/w_c/Initializer/random_uniform/shapeConst*#
_class
loc:@m_2/gru_cell/w_c*
valueB"#    *
dtype0*
_output_shapes
:
?
/m_2/gru_cell/w_c/Initializer/random_uniform/minConst*#
_class
loc:@m_2/gru_cell/w_c*
valueB
 *"^Խ*
dtype0*
_output_shapes
: 
?
/m_2/gru_cell/w_c/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *#
_class
loc:@m_2/gru_cell/w_c*
valueB
 *"^?=
?
9m_2/gru_cell/w_c/Initializer/random_uniform/RandomUniformRandomUniform1m_2/gru_cell/w_c/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*#
_class
loc:@m_2/gru_cell/w_c*
seed2 
?
/m_2/gru_cell/w_c/Initializer/random_uniform/subSub/m_2/gru_cell/w_c/Initializer/random_uniform/max/m_2/gru_cell/w_c/Initializer/random_uniform/min*#
_class
loc:@m_2/gru_cell/w_c*
_output_shapes
: *
T0
?
/m_2/gru_cell/w_c/Initializer/random_uniform/mulMul9m_2/gru_cell/w_c/Initializer/random_uniform/RandomUniform/m_2/gru_cell/w_c/Initializer/random_uniform/sub*
T0*#
_class
loc:@m_2/gru_cell/w_c* 
_output_shapes
:
??
?
+m_2/gru_cell/w_c/Initializer/random_uniformAdd/m_2/gru_cell/w_c/Initializer/random_uniform/mul/m_2/gru_cell/w_c/Initializer/random_uniform/min*
T0*#
_class
loc:@m_2/gru_cell/w_c* 
_output_shapes
:
??
?
m_2/gru_cell/w_c
VariableV2*
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *#
_class
loc:@m_2/gru_cell/w_c*
	container 
?
m_2/gru_cell/w_c/AssignAssignm_2/gru_cell/w_c+m_2/gru_cell/w_c/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@m_2/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??
?
m_2/gru_cell/w_c/readIdentitym_2/gru_cell/w_c*#
_class
loc:@m_2/gru_cell/w_c* 
_output_shapes
:
??*
T0
?
"m_2/gru_cell/b_c/Initializer/ConstConst*#
_class
loc:@m_2/gru_cell/b_c*
valueB?*    *
dtype0*
_output_shapes	
:?
?
m_2/gru_cell/b_c
VariableV2*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *#
_class
loc:@m_2/gru_cell/b_c
?
m_2/gru_cell/b_c/AssignAssignm_2/gru_cell/b_c"m_2/gru_cell/b_c/Initializer/Const*
use_locking(*
T0*#
_class
loc:@m_2/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?
~
m_2/gru_cell/b_c/readIdentitym_2/gru_cell/b_c*
T0*#
_class
loc:@m_2/gru_cell/b_c*
_output_shapes	
:?
?
m_2/while/gru_cell/GRUBlockCellGRUBlockCellm_2/while/concatm_2/while/Identity_2%m_2/while/gru_cell/GRUBlockCell/Enter'm_2/while/gru_cell/GRUBlockCell/Enter_1'm_2/while/gru_cell/GRUBlockCell/Enter_2'm_2/while/gru_cell/GRUBlockCell/Enter_3*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????
?
%m_2/while/gru_cell/GRUBlockCell/EnterEnterm_2/gru_cell/w_ru/read*
parallel_iterations
* 
_output_shapes
:
??*'

frame_namem_2/while/while_context*
T0*
is_constant(
?
'm_2/while/gru_cell/GRUBlockCell/Enter_1Enterm_2/gru_cell/w_c/read*
T0*
is_constant(*
parallel_iterations
* 
_output_shapes
:
??*'

frame_namem_2/while/while_context
?
'm_2/while/gru_cell/GRUBlockCell/Enter_2Enterm_2/gru_cell/b_ru/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_2/while/while_context
?
'm_2/while/gru_cell/GRUBlockCell/Enter_3Enterm_2/gru_cell/b_c/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes	
:?*'

frame_namem_2/while/while_context
?
?m_2/decoder_output_proj/kernel/Initializer/random_uniform/shapeConst*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
valueB"     *
dtype0*
_output_shapes
:
?
=m_2/decoder_output_proj/kernel/Initializer/random_uniform/minConst*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
valueB
 *?7?*
dtype0*
_output_shapes
: 
?
=m_2/decoder_output_proj/kernel/Initializer/random_uniform/maxConst*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
valueB
 *?7>*
dtype0*
_output_shapes
: 
?
Gm_2/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniformRandomUniform?m_2/decoder_output_proj/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
seed2
?
=m_2/decoder_output_proj/kernel/Initializer/random_uniform/subSub=m_2/decoder_output_proj/kernel/Initializer/random_uniform/max=m_2/decoder_output_proj/kernel/Initializer/random_uniform/min*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
_output_shapes
: *
T0
?
=m_2/decoder_output_proj/kernel/Initializer/random_uniform/mulMulGm_2/decoder_output_proj/kernel/Initializer/random_uniform/RandomUniform=m_2/decoder_output_proj/kernel/Initializer/random_uniform/sub*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
_output_shapes
:	?
?
9m_2/decoder_output_proj/kernel/Initializer/random_uniformAdd=m_2/decoder_output_proj/kernel/Initializer/random_uniform/mul=m_2/decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
_output_shapes
:	?
?
m_2/decoder_output_proj/kernel
VariableV2*
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name *1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
	container 
?
%m_2/decoder_output_proj/kernel/AssignAssignm_2/decoder_output_proj/kernel9m_2/decoder_output_proj/kernel/Initializer/random_uniform*
_output_shapes
:	?*
use_locking(*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
validate_shape(
?
#m_2/decoder_output_proj/kernel/readIdentitym_2/decoder_output_proj/kernel*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
_output_shapes
:	?
?
.m_2/decoder_output_proj/bias/Initializer/zerosConst*/
_class%
#!loc:@m_2/decoder_output_proj/bias*
valueB*    *
dtype0*
_output_shapes
:
?
m_2/decoder_output_proj/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name */
_class%
#!loc:@m_2/decoder_output_proj/bias*
	container *
shape:
?
#m_2/decoder_output_proj/bias/AssignAssignm_2/decoder_output_proj/bias.m_2/decoder_output_proj/bias/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@m_2/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
!m_2/decoder_output_proj/bias/readIdentitym_2/decoder_output_proj/bias*
_output_shapes
:*
T0*/
_class%
#!loc:@m_2/decoder_output_proj/bias
?
$m_2/while/decoder_output_proj/MatMulMatMul!m_2/while/gru_cell/GRUBlockCell:3*m_2/while/decoder_output_proj/MatMul/Enter*
T0*'
_output_shapes
:?????????*
transpose_a( *
transpose_b( 
?
*m_2/while/decoder_output_proj/MatMul/EnterEnter#m_2/decoder_output_proj/kernel/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
:	?*'

frame_namem_2/while/while_context
?
%m_2/while/decoder_output_proj/BiasAddBiasAdd$m_2/while/decoder_output_proj/MatMul+m_2/while/decoder_output_proj/BiasAdd/Enter*
data_formatNHWC*'
_output_shapes
:?????????*
T0
?
+m_2/while/decoder_output_proj/BiasAdd/EnterEnter!m_2/decoder_output_proj/bias/read*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
:*'

frame_namem_2/while/while_context
?
-m_2/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33m_2/while/TensorArrayWrite/TensorArrayWriteV3/Enterm_2/while/Identity!m_2/while/gru_cell/GRUBlockCell:3m_2/while/Identity_4*
_output_shapes
: *
T0*2
_class(
&$loc:@m_2/while/gru_cell/GRUBlockCell
?
3m_2/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterm_2/TensorArray_1*'

frame_namem_2/while/while_context*
_output_shapes
:*
T0*2
_class(
&$loc:@m_2/while/gru_cell/GRUBlockCell*
parallel_iterations
*
is_constant(
?
/m_2/while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV35m_2/while/TensorArrayWrite_1/TensorArrayWriteV3/Enterm_2/while/Identity%m_2/while/decoder_output_proj/BiasAddm_2/while/Identity_3*
T0*8
_class.
,*loc:@m_2/while/decoder_output_proj/BiasAdd*
_output_shapes
: 
?
5m_2/while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterm_2/TensorArray*
is_constant(*
_output_shapes
:*'

frame_namem_2/while/while_context*
T0*8
_class.
,*loc:@m_2/while/decoder_output_proj/BiasAdd*
parallel_iterations

h
m_2/while/add_1/yConst^m_2/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
^
m_2/while/add_1Addm_2/while/Identitym_2/while/add_1/y*
T0*
_output_shapes
: 
Z
m_2/while/NextIterationNextIterationm_2/while/add_1*
T0*
_output_shapes
: 
?
m_2/while/NextIteration_1NextIteration%m_2/while/decoder_output_proj/BiasAdd*
T0*'
_output_shapes
:?????????
?
m_2/while/NextIteration_2NextIteration!m_2/while/gru_cell/GRUBlockCell:3*
T0*(
_output_shapes
:??????????
|
m_2/while/NextIteration_3NextIteration/m_2/while/TensorArrayWrite_1/TensorArrayWriteV3*
T0*
_output_shapes
: 
z
m_2/while/NextIteration_4NextIteration-m_2/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
I
m_2/while/ExitExitm_2/while/Switch*
T0*
_output_shapes
: 
^
m_2/while/Exit_1Exitm_2/while/Switch_1*'
_output_shapes
:?????????*
T0
_
m_2/while/Exit_2Exitm_2/while/Switch_2*(
_output_shapes
:??????????*
T0
M
m_2/while/Exit_3Exitm_2/while/Switch_3*
_output_shapes
: *
T0
M
m_2/while/Exit_4Exitm_2/while/Switch_4*
_output_shapes
: *
T0
?
&m_2/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3m_2/TensorArraym_2/while/Exit_3*
_output_shapes
: *"
_class
loc:@m_2/TensorArray
?
 m_2/TensorArrayStack/range/startConst*"
_class
loc:@m_2/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
?
 m_2/TensorArrayStack/range/deltaConst*"
_class
loc:@m_2/TensorArray*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/TensorArrayStack/rangeRange m_2/TensorArrayStack/range/start&m_2/TensorArrayStack/TensorArraySizeV3 m_2/TensorArrayStack/range/delta*"
_class
loc:@m_2/TensorArray*#
_output_shapes
:?????????*

Tidx0
?
(m_2/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3m_2/TensorArraym_2/TensorArrayStack/rangem_2/while/Exit_3*$
element_shape:?????????*"
_class
loc:@m_2/TensorArray*
dtype0*4
_output_shapes"
 :??????????????????
?
m_2/Squeeze_1Squeeze(m_2/TensorArrayStack/TensorArrayGatherV3*
T0*0
_output_shapes
:??????????????????*
squeeze_dims

?????????
?
(m_2/TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3m_2/TensorArray_1m_2/while/Exit_4*
_output_shapes
: *$
_class
loc:@m_2/TensorArray_1
?
"m_2/TensorArrayStack_1/range/startConst*$
_class
loc:@m_2/TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
?
"m_2/TensorArrayStack_1/range/deltaConst*$
_class
loc:@m_2/TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/TensorArrayStack_1/rangeRange"m_2/TensorArrayStack_1/range/start(m_2/TensorArrayStack_1/TensorArraySizeV3"m_2/TensorArrayStack_1/range/delta*$
_class
loc:@m_2/TensorArray_1*#
_output_shapes
:?????????*

Tidx0
?
*m_2/TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3m_2/TensorArray_1m_2/TensorArrayStack_1/rangem_2/while/Exit_4*%
element_shape:??????????*$
_class
loc:@m_2/TensorArray_1*
dtype0*5
_output_shapes#
!:???????????????????
c
m_2/L2Loss_1L2Loss*m_2/TensorArrayStack_1/TensorArrayGatherV3*
T0*
_output_shapes
: 
P
m_2/mul_1/yConst*
valueB
 *jo?3*
dtype0*
_output_shapes
: 
L
	m_2/mul_1Mulm_2/L2Loss_1m_2/mul_1/y*
_output_shapes
: *
T0
L
m_2/transpose_5/RankRankm_2/Squeeze_1*
_output_shapes
: *
T0
W
m_2/transpose_5/sub/yConst*
_output_shapes
: *
value	B :*
dtype0
h
m_2/transpose_5/subSubm_2/transpose_5/Rankm_2/transpose_5/sub/y*
T0*
_output_shapes
: 
]
m_2/transpose_5/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
m_2/transpose_5/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
m_2/transpose_5/RangeRangem_2/transpose_5/Range/startm_2/transpose_5/Rankm_2/transpose_5/Range/delta*#
_output_shapes
:?????????*

Tidx0
v
m_2/transpose_5/sub_1Subm_2/transpose_5/subm_2/transpose_5/Range*
T0*#
_output_shapes
:?????????
?
m_2/transpose_5	Transposem_2/Squeeze_1m_2/transpose_5/sub_1*
T0*0
_output_shapes
:??????????????????*
Tperm0
_
m_2/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
m_2/ExpandDims_2
ExpandDimsinput/IteratorGetNext:8m_2/ExpandDims_2/dim*

Tdim0*
T0*'
_output_shapes
:?????????
_
m_2/ExpandDims_3/dimConst*
dtype0*
_output_shapes
: *
valueB :
?????????
?
m_2/ExpandDims_3
ExpandDimsinput/IteratorGetNext:7m_2/ExpandDims_3/dim*'
_output_shapes
:?????????*

Tdim0*
T0
n
	m_2/mul_2Mulm_2/transpose_5m_2/ExpandDims_2*
T0*0
_output_shapes
:??????????????????
f
m_2/addAdd	m_2/mul_2m_2/ExpandDims_3*
T0*0
_output_shapes
:??????????????????
V
eval_saver/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0
?"
eval_saver/SaveV2/tensor_namesConst*?!
value?!B?!`Bm_0/attn_focus/biasBm_0/attn_focus/kernelBm_0/compress_readout/biasBm_0/compress_readout/kernelBbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_0/decoder_output_proj/biasBm_0/decoder_output_proj/kernelB"m_0/fingerpint/convnet/conv1d/biasB$m_0/fingerpint/convnet/conv1d/kernelB$m_0/fingerpint/convnet/conv1d_1/biasB&m_0/fingerpint/convnet/conv1d_1/kernelB$m_0/fingerpint/convnet/conv1d_2/biasB&m_0/fingerpint/convnet/conv1d_2/kernelB$m_0/fingerpint/convnet/conv1d_3/biasB&m_0/fingerpint/convnet/conv1d_3/kernelB$m_0/fingerpint/convnet/conv1d_4/biasB&m_0/fingerpint/convnet/conv1d_4/kernelB$m_0/fingerpint/convnet/conv1d_5/biasB&m_0/fingerpint/convnet/conv1d_5/kernelB)m_0/fingerpint/fc_convnet/fc_encoder/biasB+m_0/fingerpint/fc_convnet/fc_encoder/kernelB*m_0/fingerpint/fc_convnet/out_encoder/biasB,m_0/fingerpint/fc_convnet/out_encoder/kernelBm_0/gru_cell/b_cBm_0/gru_cell/b_ruBm_0/gru_cell/w_cBm_0/gru_cell/w_ruBm_1/attn_focus/biasBm_1/attn_focus/kernelBm_1/compress_readout/biasBm_1/compress_readout/kernelBbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_1/decoder_output_proj/biasBm_1/decoder_output_proj/kernelB"m_1/fingerpint/convnet/conv1d/biasB$m_1/fingerpint/convnet/conv1d/kernelB$m_1/fingerpint/convnet/conv1d_1/biasB&m_1/fingerpint/convnet/conv1d_1/kernelB$m_1/fingerpint/convnet/conv1d_2/biasB&m_1/fingerpint/convnet/conv1d_2/kernelB$m_1/fingerpint/convnet/conv1d_3/biasB&m_1/fingerpint/convnet/conv1d_3/kernelB$m_1/fingerpint/convnet/conv1d_4/biasB&m_1/fingerpint/convnet/conv1d_4/kernelB$m_1/fingerpint/convnet/conv1d_5/biasB&m_1/fingerpint/convnet/conv1d_5/kernelB)m_1/fingerpint/fc_convnet/fc_encoder/biasB+m_1/fingerpint/fc_convnet/fc_encoder/kernelB*m_1/fingerpint/fc_convnet/out_encoder/biasB,m_1/fingerpint/fc_convnet/out_encoder/kernelBm_1/gru_cell/b_cBm_1/gru_cell/b_ruBm_1/gru_cell/w_cBm_1/gru_cell/w_ruBm_2/attn_focus/biasBm_2/attn_focus/kernelBm_2/compress_readout/biasBm_2/compress_readout/kernelBbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_2/decoder_output_proj/biasBm_2/decoder_output_proj/kernelB"m_2/fingerpint/convnet/conv1d/biasB$m_2/fingerpint/convnet/conv1d/kernelB$m_2/fingerpint/convnet/conv1d_1/biasB&m_2/fingerpint/convnet/conv1d_1/kernelB$m_2/fingerpint/convnet/conv1d_2/biasB&m_2/fingerpint/convnet/conv1d_2/kernelB$m_2/fingerpint/convnet/conv1d_3/biasB&m_2/fingerpint/convnet/conv1d_3/kernelB$m_2/fingerpint/convnet/conv1d_4/biasB&m_2/fingerpint/convnet/conv1d_4/kernelB$m_2/fingerpint/convnet/conv1d_5/biasB&m_2/fingerpint/convnet/conv1d_5/kernelB)m_2/fingerpint/fc_convnet/fc_encoder/biasB+m_2/fingerpint/fc_convnet/fc_encoder/kernelB*m_2/fingerpint/fc_convnet/out_encoder/biasB,m_2/fingerpint/fc_convnet/out_encoder/kernelBm_2/gru_cell/b_cBm_2/gru_cell/b_ruBm_2/gru_cell/w_cBm_2/gru_cell/w_ru*
dtype0*
_output_shapes
:`
?
"eval_saver/SaveV2/shape_and_slicesConst*?
value?B?`B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:`
?#
eval_saver/SaveV2SaveV2eval_saver/Consteval_saver/SaveV2/tensor_names"eval_saver/SaveV2/shape_and_slicesm_0/attn_focus/biasm_0/attn_focus/kernelm_0/compress_readout/biasm_0/compress_readout/kernelbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_0/decoder_output_proj/biasm_0/decoder_output_proj/kernel"m_0/fingerpint/convnet/conv1d/bias$m_0/fingerpint/convnet/conv1d/kernel$m_0/fingerpint/convnet/conv1d_1/bias&m_0/fingerpint/convnet/conv1d_1/kernel$m_0/fingerpint/convnet/conv1d_2/bias&m_0/fingerpint/convnet/conv1d_2/kernel$m_0/fingerpint/convnet/conv1d_3/bias&m_0/fingerpint/convnet/conv1d_3/kernel$m_0/fingerpint/convnet/conv1d_4/bias&m_0/fingerpint/convnet/conv1d_4/kernel$m_0/fingerpint/convnet/conv1d_5/bias&m_0/fingerpint/convnet/conv1d_5/kernel)m_0/fingerpint/fc_convnet/fc_encoder/bias+m_0/fingerpint/fc_convnet/fc_encoder/kernel*m_0/fingerpint/fc_convnet/out_encoder/bias,m_0/fingerpint/fc_convnet/out_encoder/kernelm_0/gru_cell/b_cm_0/gru_cell/b_rum_0/gru_cell/w_cm_0/gru_cell/w_rum_1/attn_focus/biasm_1/attn_focus/kernelm_1/compress_readout/biasm_1/compress_readout/kernelbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_1/decoder_output_proj/biasm_1/decoder_output_proj/kernel"m_1/fingerpint/convnet/conv1d/bias$m_1/fingerpint/convnet/conv1d/kernel$m_1/fingerpint/convnet/conv1d_1/bias&m_1/fingerpint/convnet/conv1d_1/kernel$m_1/fingerpint/convnet/conv1d_2/bias&m_1/fingerpint/convnet/conv1d_2/kernel$m_1/fingerpint/convnet/conv1d_3/bias&m_1/fingerpint/convnet/conv1d_3/kernel$m_1/fingerpint/convnet/conv1d_4/bias&m_1/fingerpint/convnet/conv1d_4/kernel$m_1/fingerpint/convnet/conv1d_5/bias&m_1/fingerpint/convnet/conv1d_5/kernel)m_1/fingerpint/fc_convnet/fc_encoder/bias+m_1/fingerpint/fc_convnet/fc_encoder/kernel*m_1/fingerpint/fc_convnet/out_encoder/bias,m_1/fingerpint/fc_convnet/out_encoder/kernelm_1/gru_cell/b_cm_1/gru_cell/b_rum_1/gru_cell/w_cm_1/gru_cell/w_rum_2/attn_focus/biasm_2/attn_focus/kernelm_2/compress_readout/biasm_2/compress_readout/kernelbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_2/decoder_output_proj/biasm_2/decoder_output_proj/kernel"m_2/fingerpint/convnet/conv1d/bias$m_2/fingerpint/convnet/conv1d/kernel$m_2/fingerpint/convnet/conv1d_1/bias&m_2/fingerpint/convnet/conv1d_1/kernel$m_2/fingerpint/convnet/conv1d_2/bias&m_2/fingerpint/convnet/conv1d_2/kernel$m_2/fingerpint/convnet/conv1d_3/bias&m_2/fingerpint/convnet/conv1d_3/kernel$m_2/fingerpint/convnet/conv1d_4/bias&m_2/fingerpint/convnet/conv1d_4/kernel$m_2/fingerpint/convnet/conv1d_5/bias&m_2/fingerpint/convnet/conv1d_5/kernel)m_2/fingerpint/fc_convnet/fc_encoder/bias+m_2/fingerpint/fc_convnet/fc_encoder/kernel*m_2/fingerpint/fc_convnet/out_encoder/bias,m_2/fingerpint/fc_convnet/out_encoder/kernelm_2/gru_cell/b_cm_2/gru_cell/b_rum_2/gru_cell/w_cm_2/gru_cell/w_ru*n
dtypesd
b2`
?
eval_saver/control_dependencyIdentityeval_saver/Const^eval_saver/SaveV2*
T0*#
_class
loc:@eval_saver/Const*
_output_shapes
: 
?"
!eval_saver/RestoreV2/tensor_namesConst*?!
value?!B?!`Bm_0/attn_focus/biasBm_0/attn_focus/kernelBm_0/compress_readout/biasBm_0/compress_readout/kernelBbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_0/decoder_output_proj/biasBm_0/decoder_output_proj/kernelB"m_0/fingerpint/convnet/conv1d/biasB$m_0/fingerpint/convnet/conv1d/kernelB$m_0/fingerpint/convnet/conv1d_1/biasB&m_0/fingerpint/convnet/conv1d_1/kernelB$m_0/fingerpint/convnet/conv1d_2/biasB&m_0/fingerpint/convnet/conv1d_2/kernelB$m_0/fingerpint/convnet/conv1d_3/biasB&m_0/fingerpint/convnet/conv1d_3/kernelB$m_0/fingerpint/convnet/conv1d_4/biasB&m_0/fingerpint/convnet/conv1d_4/kernelB$m_0/fingerpint/convnet/conv1d_5/biasB&m_0/fingerpint/convnet/conv1d_5/kernelB)m_0/fingerpint/fc_convnet/fc_encoder/biasB+m_0/fingerpint/fc_convnet/fc_encoder/kernelB*m_0/fingerpint/fc_convnet/out_encoder/biasB,m_0/fingerpint/fc_convnet/out_encoder/kernelBm_0/gru_cell/b_cBm_0/gru_cell/b_ruBm_0/gru_cell/w_cBm_0/gru_cell/w_ruBm_1/attn_focus/biasBm_1/attn_focus/kernelBm_1/compress_readout/biasBm_1/compress_readout/kernelBbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_1/decoder_output_proj/biasBm_1/decoder_output_proj/kernelB"m_1/fingerpint/convnet/conv1d/biasB$m_1/fingerpint/convnet/conv1d/kernelB$m_1/fingerpint/convnet/conv1d_1/biasB&m_1/fingerpint/convnet/conv1d_1/kernelB$m_1/fingerpint/convnet/conv1d_2/biasB&m_1/fingerpint/convnet/conv1d_2/kernelB$m_1/fingerpint/convnet/conv1d_3/biasB&m_1/fingerpint/convnet/conv1d_3/kernelB$m_1/fingerpint/convnet/conv1d_4/biasB&m_1/fingerpint/convnet/conv1d_4/kernelB$m_1/fingerpint/convnet/conv1d_5/biasB&m_1/fingerpint/convnet/conv1d_5/kernelB)m_1/fingerpint/fc_convnet/fc_encoder/biasB+m_1/fingerpint/fc_convnet/fc_encoder/kernelB*m_1/fingerpint/fc_convnet/out_encoder/biasB,m_1/fingerpint/fc_convnet/out_encoder/kernelBm_1/gru_cell/b_cBm_1/gru_cell/b_ruBm_1/gru_cell/w_cBm_1/gru_cell/w_ruBm_2/attn_focus/biasBm_2/attn_focus/kernelBm_2/compress_readout/biasBm_2/compress_readout/kernelBbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_2/decoder_output_proj/biasBm_2/decoder_output_proj/kernelB"m_2/fingerpint/convnet/conv1d/biasB$m_2/fingerpint/convnet/conv1d/kernelB$m_2/fingerpint/convnet/conv1d_1/biasB&m_2/fingerpint/convnet/conv1d_1/kernelB$m_2/fingerpint/convnet/conv1d_2/biasB&m_2/fingerpint/convnet/conv1d_2/kernelB$m_2/fingerpint/convnet/conv1d_3/biasB&m_2/fingerpint/convnet/conv1d_3/kernelB$m_2/fingerpint/convnet/conv1d_4/biasB&m_2/fingerpint/convnet/conv1d_4/kernelB$m_2/fingerpint/convnet/conv1d_5/biasB&m_2/fingerpint/convnet/conv1d_5/kernelB)m_2/fingerpint/fc_convnet/fc_encoder/biasB+m_2/fingerpint/fc_convnet/fc_encoder/kernelB*m_2/fingerpint/fc_convnet/out_encoder/biasB,m_2/fingerpint/fc_convnet/out_encoder/kernelBm_2/gru_cell/b_cBm_2/gru_cell/b_ruBm_2/gru_cell/w_cBm_2/gru_cell/w_ru*
dtype0*
_output_shapes
:`
?
%eval_saver/RestoreV2/shape_and_slicesConst*?
value?B?`B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:`
?
eval_saver/RestoreV2	RestoreV2eval_saver/Const!eval_saver/RestoreV2/tensor_names%eval_saver/RestoreV2/shape_and_slices*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*n
dtypesd
b2`
?
eval_saver/AssignAssignm_0/attn_focus/biaseval_saver/RestoreV2*
use_locking(*
T0*&
_class
loc:@m_0/attn_focus/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_1Assignm_0/attn_focus/kerneleval_saver/RestoreV2:1*
_output_shapes
:	?*
use_locking(*
T0*(
_class
loc:@m_0/attn_focus/kernel*
validate_shape(
?
eval_saver/Assign_2Assignm_0/compress_readout/biaseval_saver/RestoreV2:2*
use_locking(*
T0*,
_class"
 loc:@m_0/compress_readout/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_3Assignm_0/compress_readout/kerneleval_saver/RestoreV2:3*
use_locking(*
T0*.
_class$
" loc:@m_0/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@
?
eval_saver/Assign_4Assignbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaseval_saver/RestoreV2:4*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*u
_classk
igloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
?
eval_saver/Assign_5Assigndm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kerneleval_saver/RestoreV2:5*
use_locking(*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/Assign_6Assignam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biaseval_saver/RestoreV2:6*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*t
_classj
hfloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
?
eval_saver/Assign_7Assigncm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kerneleval_saver/RestoreV2:7*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
eval_saver/Assign_8AssignLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biaseval_saver/RestoreV2:8*
use_locking(*
T0*_
_classU
SQloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_9AssignNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneleval_saver/RestoreV2:9* 
_output_shapes
:
??*
use_locking(*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(
?
eval_saver/Assign_10Assignm_0/decoder_output_proj/biaseval_saver/RestoreV2:10*
use_locking(*
T0*/
_class%
#!loc:@m_0/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_11Assignm_0/decoder_output_proj/kerneleval_saver/RestoreV2:11*
use_locking(*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_12Assign"m_0/fingerpint/convnet/conv1d/biaseval_saver/RestoreV2:12*
use_locking(*
T0*5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_13Assign$m_0/fingerpint/convnet/conv1d/kerneleval_saver/RestoreV2:13*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:*
use_locking(
?
eval_saver/Assign_14Assign$m_0/fingerpint/convnet/conv1d_1/biaseval_saver/RestoreV2:14*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_15Assign&m_0/fingerpint/convnet/conv1d_1/kerneleval_saver/RestoreV2:15*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:
?
eval_saver/Assign_16Assign$m_0/fingerpint/convnet/conv1d_2/biaseval_saver/RestoreV2:16*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
eval_saver/Assign_17Assign&m_0/fingerpint/convnet/conv1d_2/kerneleval_saver/RestoreV2:17*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel
?
eval_saver/Assign_18Assign$m_0/fingerpint/convnet/conv1d_3/biaseval_saver/RestoreV2:18*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: 
?
eval_saver/Assign_19Assign&m_0/fingerpint/convnet/conv1d_3/kerneleval_saver/RestoreV2:19*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(*
T0
?
eval_saver/Assign_20Assign$m_0/fingerpint/convnet/conv1d_4/biaseval_saver/RestoreV2:20*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias*
validate_shape(
?
eval_saver/Assign_21Assign&m_0/fingerpint/convnet/conv1d_4/kerneleval_saver/RestoreV2:21*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @*
use_locking(
?
eval_saver/Assign_22Assign$m_0/fingerpint/convnet/conv1d_5/biaseval_saver/RestoreV2:22*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_23Assign&m_0/fingerpint/convnet/conv1d_5/kerneleval_saver/RestoreV2:23*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@*
use_locking(
?
eval_saver/Assign_24Assign)m_0/fingerpint/fc_convnet/fc_encoder/biaseval_saver/RestoreV2:24*
use_locking(*
T0*<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_25Assign+m_0/fingerpint/fc_convnet/fc_encoder/kerneleval_saver/RestoreV2:25*
use_locking(*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/Assign_26Assign*m_0/fingerpint/fc_convnet/out_encoder/biaseval_saver/RestoreV2:26*
use_locking(*
T0*=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_27Assign,m_0/fingerpint/fc_convnet/out_encoder/kerneleval_saver/RestoreV2:27*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
eval_saver/Assign_28Assignm_0/gru_cell/b_ceval_saver/RestoreV2:28*
use_locking(*
T0*#
_class
loc:@m_0/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_29Assignm_0/gru_cell/b_rueval_saver/RestoreV2:29*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_30Assignm_0/gru_cell/w_ceval_saver/RestoreV2:30*#
_class
loc:@m_0/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
eval_saver/Assign_31Assignm_0/gru_cell/w_rueval_saver/RestoreV2:31*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/Assign_32Assignm_1/attn_focus/biaseval_saver/RestoreV2:32*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*&
_class
loc:@m_1/attn_focus/bias
?
eval_saver/Assign_33Assignm_1/attn_focus/kerneleval_saver/RestoreV2:33*
T0*(
_class
loc:@m_1/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
eval_saver/Assign_34Assignm_1/compress_readout/biaseval_saver/RestoreV2:34*
T0*,
_class"
 loc:@m_1/compress_readout/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
eval_saver/Assign_35Assignm_1/compress_readout/kerneleval_saver/RestoreV2:35*
use_locking(*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@
?
eval_saver/Assign_36Assignbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaseval_saver/RestoreV2:36*
use_locking(*
T0*u
_classk
igloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_37Assigndm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kerneleval_saver/RestoreV2:37*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
eval_saver/Assign_38Assignam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biaseval_saver/RestoreV2:38*
_output_shapes	
:?*
use_locking(*
T0*t
_classj
hfloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(
?
eval_saver/Assign_39Assigncm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kerneleval_saver/RestoreV2:39*
use_locking(*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_40AssignLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biaseval_saver/RestoreV2:40*
T0*_
_classU
SQloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
eval_saver/Assign_41AssignNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneleval_saver/RestoreV2:41*
use_locking(*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/Assign_42Assignm_1/decoder_output_proj/biaseval_saver/RestoreV2:42*/
_class%
#!loc:@m_1/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
?
eval_saver/Assign_43Assignm_1/decoder_output_proj/kerneleval_saver/RestoreV2:43*
_output_shapes
:	?*
use_locking(*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel*
validate_shape(
?
eval_saver/Assign_44Assign"m_1/fingerpint/convnet/conv1d/biaseval_saver/RestoreV2:44*
use_locking(*
T0*5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_45Assign$m_1/fingerpint/convnet/conv1d/kerneleval_saver/RestoreV2:45*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:
?
eval_saver/Assign_46Assign$m_1/fingerpint/convnet/conv1d_1/biaseval_saver/RestoreV2:46*
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias*
validate_shape(
?
eval_saver/Assign_47Assign&m_1/fingerpint/convnet/conv1d_1/kerneleval_saver/RestoreV2:47*"
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel*
validate_shape(
?
eval_saver/Assign_48Assign$m_1/fingerpint/convnet/conv1d_2/biaseval_saver/RestoreV2:48*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
?
eval_saver/Assign_49Assign&m_1/fingerpint/convnet/conv1d_2/kerneleval_saver/RestoreV2:49*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel*
validate_shape(*"
_output_shapes
: 
?
eval_saver/Assign_50Assign$m_1/fingerpint/convnet/conv1d_3/biaseval_saver/RestoreV2:50*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
?
eval_saver/Assign_51Assign&m_1/fingerpint/convnet/conv1d_3/kerneleval_saver/RestoreV2:51*"
_output_shapes
:  *
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
validate_shape(
?
eval_saver/Assign_52Assign$m_1/fingerpint/convnet/conv1d_4/biaseval_saver/RestoreV2:52*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_53Assign&m_1/fingerpint/convnet/conv1d_4/kerneleval_saver/RestoreV2:53*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @
?
eval_saver/Assign_54Assign$m_1/fingerpint/convnet/conv1d_5/biaseval_saver/RestoreV2:54*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_55Assign&m_1/fingerpint/convnet/conv1d_5/kerneleval_saver/RestoreV2:55*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
eval_saver/Assign_56Assign)m_1/fingerpint/fc_convnet/fc_encoder/biaseval_saver/RestoreV2:56*
T0*<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
eval_saver/Assign_57Assign+m_1/fingerpint/fc_convnet/fc_encoder/kerneleval_saver/RestoreV2:57* 
_output_shapes
:
??*
use_locking(*
T0*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(
?
eval_saver/Assign_58Assign*m_1/fingerpint/fc_convnet/out_encoder/biaseval_saver/RestoreV2:58*
use_locking(*
T0*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_59Assign,m_1/fingerpint/fc_convnet/out_encoder/kerneleval_saver/RestoreV2:59*
use_locking(*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_60Assignm_1/gru_cell/b_ceval_saver/RestoreV2:60*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*#
_class
loc:@m_1/gru_cell/b_c
?
eval_saver/Assign_61Assignm_1/gru_cell/b_rueval_saver/RestoreV2:61*
use_locking(*
T0*$
_class
loc:@m_1/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_62Assignm_1/gru_cell/w_ceval_saver/RestoreV2:62*
use_locking(*
T0*#
_class
loc:@m_1/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/Assign_63Assignm_1/gru_cell/w_rueval_saver/RestoreV2:63*$
_class
loc:@m_1/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
eval_saver/Assign_64Assignm_2/attn_focus/biaseval_saver/RestoreV2:64*
_output_shapes	
:?*
use_locking(*
T0*&
_class
loc:@m_2/attn_focus/bias*
validate_shape(
?
eval_saver/Assign_65Assignm_2/attn_focus/kerneleval_saver/RestoreV2:65*
use_locking(*
T0*(
_class
loc:@m_2/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_66Assignm_2/compress_readout/biaseval_saver/RestoreV2:66*
use_locking(*
T0*,
_class"
 loc:@m_2/compress_readout/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_67Assignm_2/compress_readout/kerneleval_saver/RestoreV2:67*.
_class$
" loc:@m_2/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@*
use_locking(*
T0
?
eval_saver/Assign_68Assignbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaseval_saver/RestoreV2:68*
use_locking(*
T0*u
_classk
igloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_69Assigndm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kerneleval_saver/RestoreV2:69*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
eval_saver/Assign_70Assignam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biaseval_saver/RestoreV2:70*t
_classj
hfloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
eval_saver/Assign_71Assigncm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kerneleval_saver/RestoreV2:71*
use_locking(*
T0*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_72AssignLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biaseval_saver/RestoreV2:72*
use_locking(*
T0*_
_classU
SQloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_73AssignNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneleval_saver/RestoreV2:73* 
_output_shapes
:
??*
use_locking(*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(
?
eval_saver/Assign_74Assignm_2/decoder_output_proj/biaseval_saver/RestoreV2:74*
T0*/
_class%
#!loc:@m_2/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
eval_saver/Assign_75Assignm_2/decoder_output_proj/kerneleval_saver/RestoreV2:75*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(
?
eval_saver/Assign_76Assign"m_2/fingerpint/convnet/conv1d/biaseval_saver/RestoreV2:76*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias
?
eval_saver/Assign_77Assign$m_2/fingerpint/convnet/conv1d/kerneleval_saver/RestoreV2:77*"
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
validate_shape(
?
eval_saver/Assign_78Assign$m_2/fingerpint/convnet/conv1d_1/biaseval_saver/RestoreV2:78*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias
?
eval_saver/Assign_79Assign&m_2/fingerpint/convnet/conv1d_1/kerneleval_saver/RestoreV2:79*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:
?
eval_saver/Assign_80Assign$m_2/fingerpint/convnet/conv1d_2/biaseval_saver/RestoreV2:80*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
eval_saver/Assign_81Assign&m_2/fingerpint/convnet/conv1d_2/kerneleval_saver/RestoreV2:81*"
_output_shapes
: *
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
validate_shape(
?
eval_saver/Assign_82Assign$m_2/fingerpint/convnet/conv1d_3/biaseval_saver/RestoreV2:82*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
?
eval_saver/Assign_83Assign&m_2/fingerpint/convnet/conv1d_3/kerneleval_saver/RestoreV2:83*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  
?
eval_saver/Assign_84Assign$m_2/fingerpint/convnet/conv1d_4/biaseval_saver/RestoreV2:84*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
eval_saver/Assign_85Assign&m_2/fingerpint/convnet/conv1d_4/kerneleval_saver/RestoreV2:85*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @*
use_locking(*
T0
?
eval_saver/Assign_86Assign$m_2/fingerpint/convnet/conv1d_5/biaseval_saver/RestoreV2:86*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias*
validate_shape(*
_output_shapes
:@
?
eval_saver/Assign_87Assign&m_2/fingerpint/convnet/conv1d_5/kerneleval_saver/RestoreV2:87*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
eval_saver/Assign_88Assign)m_2/fingerpint/fc_convnet/fc_encoder/biaseval_saver/RestoreV2:88*
use_locking(*
T0*<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_89Assign+m_2/fingerpint/fc_convnet/fc_encoder/kerneleval_saver/RestoreV2:89*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
eval_saver/Assign_90Assign*m_2/fingerpint/fc_convnet/out_encoder/biaseval_saver/RestoreV2:90*
use_locking(*
T0*=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:
?
eval_saver/Assign_91Assign,m_2/fingerpint/fc_convnet/out_encoder/kerneleval_saver/RestoreV2:91*
use_locking(*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
eval_saver/Assign_92Assignm_2/gru_cell/b_ceval_saver/RestoreV2:92*
use_locking(*
T0*#
_class
loc:@m_2/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_93Assignm_2/gru_cell/b_rueval_saver/RestoreV2:93*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
eval_saver/Assign_94Assignm_2/gru_cell/w_ceval_saver/RestoreV2:94*
T0*#
_class
loc:@m_2/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
eval_saver/Assign_95Assignm_2/gru_cell/w_rueval_saver/RestoreV2:95*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
eval_saver/restore_allNoOp^eval_saver/Assign^eval_saver/Assign_1^eval_saver/Assign_10^eval_saver/Assign_11^eval_saver/Assign_12^eval_saver/Assign_13^eval_saver/Assign_14^eval_saver/Assign_15^eval_saver/Assign_16^eval_saver/Assign_17^eval_saver/Assign_18^eval_saver/Assign_19^eval_saver/Assign_2^eval_saver/Assign_20^eval_saver/Assign_21^eval_saver/Assign_22^eval_saver/Assign_23^eval_saver/Assign_24^eval_saver/Assign_25^eval_saver/Assign_26^eval_saver/Assign_27^eval_saver/Assign_28^eval_saver/Assign_29^eval_saver/Assign_3^eval_saver/Assign_30^eval_saver/Assign_31^eval_saver/Assign_32^eval_saver/Assign_33^eval_saver/Assign_34^eval_saver/Assign_35^eval_saver/Assign_36^eval_saver/Assign_37^eval_saver/Assign_38^eval_saver/Assign_39^eval_saver/Assign_4^eval_saver/Assign_40^eval_saver/Assign_41^eval_saver/Assign_42^eval_saver/Assign_43^eval_saver/Assign_44^eval_saver/Assign_45^eval_saver/Assign_46^eval_saver/Assign_47^eval_saver/Assign_48^eval_saver/Assign_49^eval_saver/Assign_5^eval_saver/Assign_50^eval_saver/Assign_51^eval_saver/Assign_52^eval_saver/Assign_53^eval_saver/Assign_54^eval_saver/Assign_55^eval_saver/Assign_56^eval_saver/Assign_57^eval_saver/Assign_58^eval_saver/Assign_59^eval_saver/Assign_6^eval_saver/Assign_60^eval_saver/Assign_61^eval_saver/Assign_62^eval_saver/Assign_63^eval_saver/Assign_64^eval_saver/Assign_65^eval_saver/Assign_66^eval_saver/Assign_67^eval_saver/Assign_68^eval_saver/Assign_69^eval_saver/Assign_7^eval_saver/Assign_70^eval_saver/Assign_71^eval_saver/Assign_72^eval_saver/Assign_73^eval_saver/Assign_74^eval_saver/Assign_75^eval_saver/Assign_76^eval_saver/Assign_77^eval_saver/Assign_78^eval_saver/Assign_79^eval_saver/Assign_8^eval_saver/Assign_80^eval_saver/Assign_81^eval_saver/Assign_82^eval_saver/Assign_83^eval_saver/Assign_84^eval_saver/Assign_85^eval_saver/Assign_86^eval_saver/Assign_87^eval_saver/Assign_88^eval_saver/Assign_89^eval_saver/Assign_9^eval_saver/Assign_90^eval_saver/Assign_91^eval_saver/Assign_92^eval_saver/Assign_93^eval_saver/Assign_94^eval_saver/Assign_95
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_4536ab1826f247e4bb4e178e03a9d83f/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?"
save/SaveV2/tensor_namesConst*?!
value?!B?!`Bm_0/attn_focus/biasBm_0/attn_focus/kernelBm_0/compress_readout/biasBm_0/compress_readout/kernelBbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_0/decoder_output_proj/biasBm_0/decoder_output_proj/kernelB"m_0/fingerpint/convnet/conv1d/biasB$m_0/fingerpint/convnet/conv1d/kernelB$m_0/fingerpint/convnet/conv1d_1/biasB&m_0/fingerpint/convnet/conv1d_1/kernelB$m_0/fingerpint/convnet/conv1d_2/biasB&m_0/fingerpint/convnet/conv1d_2/kernelB$m_0/fingerpint/convnet/conv1d_3/biasB&m_0/fingerpint/convnet/conv1d_3/kernelB$m_0/fingerpint/convnet/conv1d_4/biasB&m_0/fingerpint/convnet/conv1d_4/kernelB$m_0/fingerpint/convnet/conv1d_5/biasB&m_0/fingerpint/convnet/conv1d_5/kernelB)m_0/fingerpint/fc_convnet/fc_encoder/biasB+m_0/fingerpint/fc_convnet/fc_encoder/kernelB*m_0/fingerpint/fc_convnet/out_encoder/biasB,m_0/fingerpint/fc_convnet/out_encoder/kernelBm_0/gru_cell/b_cBm_0/gru_cell/b_ruBm_0/gru_cell/w_cBm_0/gru_cell/w_ruBm_1/attn_focus/biasBm_1/attn_focus/kernelBm_1/compress_readout/biasBm_1/compress_readout/kernelBbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_1/decoder_output_proj/biasBm_1/decoder_output_proj/kernelB"m_1/fingerpint/convnet/conv1d/biasB$m_1/fingerpint/convnet/conv1d/kernelB$m_1/fingerpint/convnet/conv1d_1/biasB&m_1/fingerpint/convnet/conv1d_1/kernelB$m_1/fingerpint/convnet/conv1d_2/biasB&m_1/fingerpint/convnet/conv1d_2/kernelB$m_1/fingerpint/convnet/conv1d_3/biasB&m_1/fingerpint/convnet/conv1d_3/kernelB$m_1/fingerpint/convnet/conv1d_4/biasB&m_1/fingerpint/convnet/conv1d_4/kernelB$m_1/fingerpint/convnet/conv1d_5/biasB&m_1/fingerpint/convnet/conv1d_5/kernelB)m_1/fingerpint/fc_convnet/fc_encoder/biasB+m_1/fingerpint/fc_convnet/fc_encoder/kernelB*m_1/fingerpint/fc_convnet/out_encoder/biasB,m_1/fingerpint/fc_convnet/out_encoder/kernelBm_1/gru_cell/b_cBm_1/gru_cell/b_ruBm_1/gru_cell/w_cBm_1/gru_cell/w_ruBm_2/attn_focus/biasBm_2/attn_focus/kernelBm_2/compress_readout/biasBm_2/compress_readout/kernelBbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_2/decoder_output_proj/biasBm_2/decoder_output_proj/kernelB"m_2/fingerpint/convnet/conv1d/biasB$m_2/fingerpint/convnet/conv1d/kernelB$m_2/fingerpint/convnet/conv1d_1/biasB&m_2/fingerpint/convnet/conv1d_1/kernelB$m_2/fingerpint/convnet/conv1d_2/biasB&m_2/fingerpint/convnet/conv1d_2/kernelB$m_2/fingerpint/convnet/conv1d_3/biasB&m_2/fingerpint/convnet/conv1d_3/kernelB$m_2/fingerpint/convnet/conv1d_4/biasB&m_2/fingerpint/convnet/conv1d_4/kernelB$m_2/fingerpint/convnet/conv1d_5/biasB&m_2/fingerpint/convnet/conv1d_5/kernelB)m_2/fingerpint/fc_convnet/fc_encoder/biasB+m_2/fingerpint/fc_convnet/fc_encoder/kernelB*m_2/fingerpint/fc_convnet/out_encoder/biasB,m_2/fingerpint/fc_convnet/out_encoder/kernelBm_2/gru_cell/b_cBm_2/gru_cell/b_ruBm_2/gru_cell/w_cBm_2/gru_cell/w_ru*
dtype0*
_output_shapes
:`
?
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:`*?
value?B?`B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?#
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesm_0/attn_focus/biasm_0/attn_focus/kernelm_0/compress_readout/biasm_0/compress_readout/kernelbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_0/decoder_output_proj/biasm_0/decoder_output_proj/kernel"m_0/fingerpint/convnet/conv1d/bias$m_0/fingerpint/convnet/conv1d/kernel$m_0/fingerpint/convnet/conv1d_1/bias&m_0/fingerpint/convnet/conv1d_1/kernel$m_0/fingerpint/convnet/conv1d_2/bias&m_0/fingerpint/convnet/conv1d_2/kernel$m_0/fingerpint/convnet/conv1d_3/bias&m_0/fingerpint/convnet/conv1d_3/kernel$m_0/fingerpint/convnet/conv1d_4/bias&m_0/fingerpint/convnet/conv1d_4/kernel$m_0/fingerpint/convnet/conv1d_5/bias&m_0/fingerpint/convnet/conv1d_5/kernel)m_0/fingerpint/fc_convnet/fc_encoder/bias+m_0/fingerpint/fc_convnet/fc_encoder/kernel*m_0/fingerpint/fc_convnet/out_encoder/bias,m_0/fingerpint/fc_convnet/out_encoder/kernelm_0/gru_cell/b_cm_0/gru_cell/b_rum_0/gru_cell/w_cm_0/gru_cell/w_rum_1/attn_focus/biasm_1/attn_focus/kernelm_1/compress_readout/biasm_1/compress_readout/kernelbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_1/decoder_output_proj/biasm_1/decoder_output_proj/kernel"m_1/fingerpint/convnet/conv1d/bias$m_1/fingerpint/convnet/conv1d/kernel$m_1/fingerpint/convnet/conv1d_1/bias&m_1/fingerpint/convnet/conv1d_1/kernel$m_1/fingerpint/convnet/conv1d_2/bias&m_1/fingerpint/convnet/conv1d_2/kernel$m_1/fingerpint/convnet/conv1d_3/bias&m_1/fingerpint/convnet/conv1d_3/kernel$m_1/fingerpint/convnet/conv1d_4/bias&m_1/fingerpint/convnet/conv1d_4/kernel$m_1/fingerpint/convnet/conv1d_5/bias&m_1/fingerpint/convnet/conv1d_5/kernel)m_1/fingerpint/fc_convnet/fc_encoder/bias+m_1/fingerpint/fc_convnet/fc_encoder/kernel*m_1/fingerpint/fc_convnet/out_encoder/bias,m_1/fingerpint/fc_convnet/out_encoder/kernelm_1/gru_cell/b_cm_1/gru_cell/b_rum_1/gru_cell/w_cm_1/gru_cell/w_rum_2/attn_focus/biasm_2/attn_focus/kernelm_2/compress_readout/biasm_2/compress_readout/kernelbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelm_2/decoder_output_proj/biasm_2/decoder_output_proj/kernel"m_2/fingerpint/convnet/conv1d/bias$m_2/fingerpint/convnet/conv1d/kernel$m_2/fingerpint/convnet/conv1d_1/bias&m_2/fingerpint/convnet/conv1d_1/kernel$m_2/fingerpint/convnet/conv1d_2/bias&m_2/fingerpint/convnet/conv1d_2/kernel$m_2/fingerpint/convnet/conv1d_3/bias&m_2/fingerpint/convnet/conv1d_3/kernel$m_2/fingerpint/convnet/conv1d_4/bias&m_2/fingerpint/convnet/conv1d_4/kernel$m_2/fingerpint/convnet/conv1d_5/bias&m_2/fingerpint/convnet/conv1d_5/kernel)m_2/fingerpint/fc_convnet/fc_encoder/bias+m_2/fingerpint/fc_convnet/fc_encoder/kernel*m_2/fingerpint/fc_convnet/out_encoder/bias,m_2/fingerpint/fc_convnet/out_encoder/kernelm_2/gru_cell/b_cm_2/gru_cell/b_rum_2/gru_cell/w_cm_2/gru_cell/w_ru*n
dtypesd
b2`
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?"
save/RestoreV2/tensor_namesConst*
_output_shapes
:`*?!
value?!B?!`Bm_0/attn_focus/biasBm_0/attn_focus/kernelBm_0/compress_readout/biasBm_0/compress_readout/kernelBbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_0/decoder_output_proj/biasBm_0/decoder_output_proj/kernelB"m_0/fingerpint/convnet/conv1d/biasB$m_0/fingerpint/convnet/conv1d/kernelB$m_0/fingerpint/convnet/conv1d_1/biasB&m_0/fingerpint/convnet/conv1d_1/kernelB$m_0/fingerpint/convnet/conv1d_2/biasB&m_0/fingerpint/convnet/conv1d_2/kernelB$m_0/fingerpint/convnet/conv1d_3/biasB&m_0/fingerpint/convnet/conv1d_3/kernelB$m_0/fingerpint/convnet/conv1d_4/biasB&m_0/fingerpint/convnet/conv1d_4/kernelB$m_0/fingerpint/convnet/conv1d_5/biasB&m_0/fingerpint/convnet/conv1d_5/kernelB)m_0/fingerpint/fc_convnet/fc_encoder/biasB+m_0/fingerpint/fc_convnet/fc_encoder/kernelB*m_0/fingerpint/fc_convnet/out_encoder/biasB,m_0/fingerpint/fc_convnet/out_encoder/kernelBm_0/gru_cell/b_cBm_0/gru_cell/b_ruBm_0/gru_cell/w_cBm_0/gru_cell/w_ruBm_1/attn_focus/biasBm_1/attn_focus/kernelBm_1/compress_readout/biasBm_1/compress_readout/kernelBbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_1/decoder_output_proj/biasBm_1/decoder_output_proj/kernelB"m_1/fingerpint/convnet/conv1d/biasB$m_1/fingerpint/convnet/conv1d/kernelB$m_1/fingerpint/convnet/conv1d_1/biasB&m_1/fingerpint/convnet/conv1d_1/kernelB$m_1/fingerpint/convnet/conv1d_2/biasB&m_1/fingerpint/convnet/conv1d_2/kernelB$m_1/fingerpint/convnet/conv1d_3/biasB&m_1/fingerpint/convnet/conv1d_3/kernelB$m_1/fingerpint/convnet/conv1d_4/biasB&m_1/fingerpint/convnet/conv1d_4/kernelB$m_1/fingerpint/convnet/conv1d_5/biasB&m_1/fingerpint/convnet/conv1d_5/kernelB)m_1/fingerpint/fc_convnet/fc_encoder/biasB+m_1/fingerpint/fc_convnet/fc_encoder/kernelB*m_1/fingerpint/fc_convnet/out_encoder/biasB,m_1/fingerpint/fc_convnet/out_encoder/kernelBm_1/gru_cell/b_cBm_1/gru_cell/b_ruBm_1/gru_cell/w_cBm_1/gru_cell/w_ruBm_2/attn_focus/biasBm_2/attn_focus/kernelBm_2/compress_readout/biasBm_2/compress_readout/kernelBbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBdm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBcm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBm_2/decoder_output_proj/biasBm_2/decoder_output_proj/kernelB"m_2/fingerpint/convnet/conv1d/biasB$m_2/fingerpint/convnet/conv1d/kernelB$m_2/fingerpint/convnet/conv1d_1/biasB&m_2/fingerpint/convnet/conv1d_1/kernelB$m_2/fingerpint/convnet/conv1d_2/biasB&m_2/fingerpint/convnet/conv1d_2/kernelB$m_2/fingerpint/convnet/conv1d_3/biasB&m_2/fingerpint/convnet/conv1d_3/kernelB$m_2/fingerpint/convnet/conv1d_4/biasB&m_2/fingerpint/convnet/conv1d_4/kernelB$m_2/fingerpint/convnet/conv1d_5/biasB&m_2/fingerpint/convnet/conv1d_5/kernelB)m_2/fingerpint/fc_convnet/fc_encoder/biasB+m_2/fingerpint/fc_convnet/fc_encoder/kernelB*m_2/fingerpint/fc_convnet/out_encoder/biasB,m_2/fingerpint/fc_convnet/out_encoder/kernelBm_2/gru_cell/b_cBm_2/gru_cell/b_ruBm_2/gru_cell/w_cBm_2/gru_cell/w_ru*
dtype0
?
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:`*?
value?B?`B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*n
dtypesd
b2`*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
?
save/AssignAssignm_0/attn_focus/biassave/RestoreV2*
use_locking(*
T0*&
_class
loc:@m_0/attn_focus/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_1Assignm_0/attn_focus/kernelsave/RestoreV2:1*
use_locking(*
T0*(
_class
loc:@m_0/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_2Assignm_0/compress_readout/biassave/RestoreV2:2*
use_locking(*
T0*,
_class"
 loc:@m_0/compress_readout/bias*
validate_shape(*
_output_shapes
:@
?
save/Assign_3Assignm_0/compress_readout/kernelsave/RestoreV2:3*.
_class$
" loc:@m_0/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@*
use_locking(*
T0
?
save/Assign_4Assignbm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biassave/RestoreV2:4*
_output_shapes	
:?*
use_locking(*
T0*u
_classk
igloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(
?
save/Assign_5Assigndm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelsave/RestoreV2:5*
T0*w
_classm
kiloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_6Assignam_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassave/RestoreV2:6*
use_locking(*
T0*t
_classj
hfloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_7Assigncm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelsave/RestoreV2:7*
use_locking(*
T0*v
_classl
jhloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_8AssignLm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biassave/RestoreV2:8*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*_
_classU
SQloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
save/Assign_9AssignNm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelsave/RestoreV2:9*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*a
_classW
USloc:@m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
save/Assign_10Assignm_0/decoder_output_proj/biassave/RestoreV2:10*
use_locking(*
T0*/
_class%
#!loc:@m_0/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_11Assignm_0/decoder_output_proj/kernelsave/RestoreV2:11*
use_locking(*
T0*1
_class'
%#loc:@m_0/decoder_output_proj/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_12Assign"m_0/fingerpint/convnet/conv1d/biassave/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@m_0/fingerpint/convnet/conv1d/bias
?
save/Assign_13Assign$m_0/fingerpint/convnet/conv1d/kernelsave/RestoreV2:13*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:
?
save/Assign_14Assign$m_0/fingerpint/convnet/conv1d_1/biassave/RestoreV2:14*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_1/bias
?
save/Assign_15Assign&m_0/fingerpint/convnet/conv1d_1/kernelsave/RestoreV2:15*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:
?
save/Assign_16Assign$m_0/fingerpint/convnet/conv1d_2/biassave/RestoreV2:16*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: *
use_locking(
?
save/Assign_17Assign&m_0/fingerpint/convnet/conv1d_2/kernelsave/RestoreV2:17*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_2/kernel*
validate_shape(*"
_output_shapes
: 
?
save/Assign_18Assign$m_0/fingerpint/convnet/conv1d_3/biassave/RestoreV2:18*
_output_shapes
: *
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_3/bias*
validate_shape(
?
save/Assign_19Assign&m_0/fingerpint/convnet/conv1d_3/kernelsave/RestoreV2:19*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  *
use_locking(
?
save/Assign_20Assign$m_0/fingerpint/convnet/conv1d_4/biassave/RestoreV2:20*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_4/bias
?
save/Assign_21Assign&m_0/fingerpint/convnet/conv1d_4/kernelsave/RestoreV2:21*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @*
use_locking(
?
save/Assign_22Assign$m_0/fingerpint/convnet/conv1d_5/biassave/RestoreV2:22*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_0/fingerpint/convnet/conv1d_5/bias*
validate_shape(
?
save/Assign_23Assign&m_0/fingerpint/convnet/conv1d_5/kernelsave/RestoreV2:23*
use_locking(*
T0*9
_class/
-+loc:@m_0/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
save/Assign_24Assign)m_0/fingerpint/fc_convnet/fc_encoder/biassave/RestoreV2:24*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@m_0/fingerpint/fc_convnet/fc_encoder/bias
?
save/Assign_25Assign+m_0/fingerpint/fc_convnet/fc_encoder/kernelsave/RestoreV2:25* 
_output_shapes
:
??*
use_locking(*
T0*>
_class4
20loc:@m_0/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(
?
save/Assign_26Assign*m_0/fingerpint/fc_convnet/out_encoder/biassave/RestoreV2:26*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*=
_class3
1/loc:@m_0/fingerpint/fc_convnet/out_encoder/bias
?
save/Assign_27Assign,m_0/fingerpint/fc_convnet/out_encoder/kernelsave/RestoreV2:27*
use_locking(*
T0*?
_class5
31loc:@m_0/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_28Assignm_0/gru_cell/b_csave/RestoreV2:28*
T0*#
_class
loc:@m_0/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_29Assignm_0/gru_cell/b_rusave/RestoreV2:29*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
save/Assign_30Assignm_0/gru_cell/w_csave/RestoreV2:30* 
_output_shapes
:
??*
use_locking(*
T0*#
_class
loc:@m_0/gru_cell/w_c*
validate_shape(
?
save/Assign_31Assignm_0/gru_cell/w_rusave/RestoreV2:31*
use_locking(*
T0*$
_class
loc:@m_0/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_32Assignm_1/attn_focus/biassave/RestoreV2:32*
use_locking(*
T0*&
_class
loc:@m_1/attn_focus/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_33Assignm_1/attn_focus/kernelsave/RestoreV2:33*
use_locking(*
T0*(
_class
loc:@m_1/attn_focus/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_34Assignm_1/compress_readout/biassave/RestoreV2:34*,
_class"
 loc:@m_1/compress_readout/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
?
save/Assign_35Assignm_1/compress_readout/kernelsave/RestoreV2:35*
use_locking(*
T0*.
_class$
" loc:@m_1/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@
?
save/Assign_36Assignbm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biassave/RestoreV2:36*
use_locking(*
T0*u
_classk
igloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_37Assigndm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelsave/RestoreV2:37*
use_locking(*
T0*w
_classm
kiloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_38Assignam_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassave/RestoreV2:38*
use_locking(*
T0*t
_classj
hfloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_39Assigncm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelsave/RestoreV2:39*
use_locking(*
T0*v
_classl
jhloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_40AssignLm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biassave/RestoreV2:40*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*_
_classU
SQloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
save/Assign_41AssignNm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelsave/RestoreV2:41*
T0*a
_classW
USloc:@m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_42Assignm_1/decoder_output_proj/biassave/RestoreV2:42*
use_locking(*
T0*/
_class%
#!loc:@m_1/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_43Assignm_1/decoder_output_proj/kernelsave/RestoreV2:43*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*1
_class'
%#loc:@m_1/decoder_output_proj/kernel
?
save/Assign_44Assign"m_1/fingerpint/convnet/conv1d/biassave/RestoreV2:44*
use_locking(*
T0*5
_class+
)'loc:@m_1/fingerpint/convnet/conv1d/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_45Assign$m_1/fingerpint/convnet/conv1d/kernelsave/RestoreV2:45*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:
?
save/Assign_46Assign$m_1/fingerpint/convnet/conv1d_1/biassave/RestoreV2:46*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_47Assign&m_1/fingerpint/convnet/conv1d_1/kernelsave/RestoreV2:47*
validate_shape(*"
_output_shapes
:*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_1/kernel
?
save/Assign_48Assign$m_1/fingerpint/convnet/conv1d_2/biassave/RestoreV2:48*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
save/Assign_49Assign&m_1/fingerpint/convnet/conv1d_2/kernelsave/RestoreV2:49*
validate_shape(*"
_output_shapes
: *
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_2/kernel
?
save/Assign_50Assign$m_1/fingerpint/convnet/conv1d_3/biassave/RestoreV2:50*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: 
?
save/Assign_51Assign&m_1/fingerpint/convnet/conv1d_3/kernelsave/RestoreV2:51*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  
?
save/Assign_52Assign$m_1/fingerpint/convnet/conv1d_4/biassave/RestoreV2:52*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_4/bias*
validate_shape(
?
save/Assign_53Assign&m_1/fingerpint/convnet/conv1d_4/kernelsave/RestoreV2:53*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @
?
save/Assign_54Assign$m_1/fingerpint/convnet/conv1d_5/biassave/RestoreV2:54*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_1/fingerpint/convnet/conv1d_5/bias
?
save/Assign_55Assign&m_1/fingerpint/convnet/conv1d_5/kernelsave/RestoreV2:55*
use_locking(*
T0*9
_class/
-+loc:@m_1/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@
?
save/Assign_56Assign)m_1/fingerpint/fc_convnet/fc_encoder/biassave/RestoreV2:56*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@m_1/fingerpint/fc_convnet/fc_encoder/bias
?
save/Assign_57Assign+m_1/fingerpint/fc_convnet/fc_encoder/kernelsave/RestoreV2:57*>
_class4
20loc:@m_1/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
save/Assign_58Assign*m_1/fingerpint/fc_convnet/out_encoder/biassave/RestoreV2:58*
use_locking(*
T0*=
_class3
1/loc:@m_1/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_59Assign,m_1/fingerpint/fc_convnet/out_encoder/kernelsave/RestoreV2:59*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*?
_class5
31loc:@m_1/fingerpint/fc_convnet/out_encoder/kernel
?
save/Assign_60Assignm_1/gru_cell/b_csave/RestoreV2:60*
use_locking(*
T0*#
_class
loc:@m_1/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?
?
save/Assign_61Assignm_1/gru_cell/b_rusave/RestoreV2:61*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*$
_class
loc:@m_1/gru_cell/b_ru
?
save/Assign_62Assignm_1/gru_cell/w_csave/RestoreV2:62*
T0*#
_class
loc:@m_1/gru_cell/w_c*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_63Assignm_1/gru_cell/w_rusave/RestoreV2:63*
use_locking(*
T0*$
_class
loc:@m_1/gru_cell/w_ru*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_64Assignm_2/attn_focus/biassave/RestoreV2:64*
T0*&
_class
loc:@m_2/attn_focus/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_65Assignm_2/attn_focus/kernelsave/RestoreV2:65*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0*(
_class
loc:@m_2/attn_focus/kernel
?
save/Assign_66Assignm_2/compress_readout/biassave/RestoreV2:66*
T0*,
_class"
 loc:@m_2/compress_readout/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
save/Assign_67Assignm_2/compress_readout/kernelsave/RestoreV2:67*
use_locking(*
T0*.
_class$
" loc:@m_2/compress_readout/kernel*
validate_shape(*
_output_shapes
:	?@
?
save/Assign_68Assignbm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biassave/RestoreV2:68*
T0*u
_classk
igloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save/Assign_69Assigndm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelsave/RestoreV2:69*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*w
_classm
kiloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
save/Assign_70Assignam_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassave/RestoreV2:70*
use_locking(*
T0*t
_classj
hfloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_71Assigncm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelsave/RestoreV2:71*
use_locking(*
T0*v
_classl
jhloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_72AssignLm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biassave/RestoreV2:72*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*_
_classU
SQloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
save/Assign_73AssignNm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelsave/RestoreV2:73*
use_locking(*
T0*a
_classW
USloc:@m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_74Assignm_2/decoder_output_proj/biassave/RestoreV2:74*
use_locking(*
T0*/
_class%
#!loc:@m_2/decoder_output_proj/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_75Assignm_2/decoder_output_proj/kernelsave/RestoreV2:75*
use_locking(*
T0*1
_class'
%#loc:@m_2/decoder_output_proj/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_76Assign"m_2/fingerpint/convnet/conv1d/biassave/RestoreV2:76*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*5
_class+
)'loc:@m_2/fingerpint/convnet/conv1d/bias
?
save/Assign_77Assign$m_2/fingerpint/convnet/conv1d/kernelsave/RestoreV2:77*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d/kernel*
validate_shape(*"
_output_shapes
:*
use_locking(
?
save/Assign_78Assign$m_2/fingerpint/convnet/conv1d_1/biassave/RestoreV2:78*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_1/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_79Assign&m_2/fingerpint/convnet/conv1d_1/kernelsave/RestoreV2:79*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_1/kernel*
validate_shape(*"
_output_shapes
:
?
save/Assign_80Assign$m_2/fingerpint/convnet/conv1d_2/biassave/RestoreV2:80*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_2/bias*
validate_shape(*
_output_shapes
: 
?
save/Assign_81Assign&m_2/fingerpint/convnet/conv1d_2/kernelsave/RestoreV2:81*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_2/kernel*
validate_shape(*"
_output_shapes
: *
use_locking(
?
save/Assign_82Assign$m_2/fingerpint/convnet/conv1d_3/biassave/RestoreV2:82*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_3/bias*
validate_shape(*
_output_shapes
: *
use_locking(
?
save/Assign_83Assign&m_2/fingerpint/convnet/conv1d_3/kernelsave/RestoreV2:83*
use_locking(*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_3/kernel*
validate_shape(*"
_output_shapes
:  
?
save/Assign_84Assign$m_2/fingerpint/convnet/conv1d_4/biassave/RestoreV2:84*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_4/bias*
validate_shape(*
_output_shapes
:@
?
save/Assign_85Assign&m_2/fingerpint/convnet/conv1d_4/kernelsave/RestoreV2:85*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_4/kernel*
validate_shape(*"
_output_shapes
: @*
use_locking(*
T0
?
save/Assign_86Assign$m_2/fingerpint/convnet/conv1d_5/biassave/RestoreV2:86*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*7
_class-
+)loc:@m_2/fingerpint/convnet/conv1d_5/bias
?
save/Assign_87Assign&m_2/fingerpint/convnet/conv1d_5/kernelsave/RestoreV2:87*
T0*9
_class/
-+loc:@m_2/fingerpint/convnet/conv1d_5/kernel*
validate_shape(*"
_output_shapes
:@@*
use_locking(
?
save/Assign_88Assign)m_2/fingerpint/fc_convnet/fc_encoder/biassave/RestoreV2:88*
_output_shapes	
:?*
use_locking(*
T0*<
_class2
0.loc:@m_2/fingerpint/fc_convnet/fc_encoder/bias*
validate_shape(
?
save/Assign_89Assign+m_2/fingerpint/fc_convnet/fc_encoder/kernelsave/RestoreV2:89*
use_locking(*
T0*>
_class4
20loc:@m_2/fingerpint/fc_convnet/fc_encoder/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_90Assign*m_2/fingerpint/fc_convnet/out_encoder/biassave/RestoreV2:90*
T0*=
_class3
1/loc:@m_2/fingerpint/fc_convnet/out_encoder/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save/Assign_91Assign,m_2/fingerpint/fc_convnet/out_encoder/kernelsave/RestoreV2:91*
use_locking(*
T0*?
_class5
31loc:@m_2/fingerpint/fc_convnet/out_encoder/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_92Assignm_2/gru_cell/b_csave/RestoreV2:92*#
_class
loc:@m_2/gru_cell/b_c*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_93Assignm_2/gru_cell/b_rusave/RestoreV2:93*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/b_ru*
validate_shape(*
_output_shapes	
:?
?
save/Assign_94Assignm_2/gru_cell/w_csave/RestoreV2:94*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*#
_class
loc:@m_2/gru_cell/w_c
?
save/Assign_95Assignm_2/gru_cell/w_rusave/RestoreV2:95*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*$
_class
loc:@m_2/gru_cell/w_ru
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95
-
save/restore_allNoOp^save/restore_shard?C
?
?
/tf_data_structured_function_wrapper_PYLQn2090Ew

arg0_0

arg1_0
arg2
arg3
arg4
arg5
arg6

arg7_0
arg8
arg9	
arg10
arg0
concat_1
truediv
split_1
arg1
concat_2
	truediv_1
mean
sqrt

concat
arg72DWrapper for passing nested structures to and from tf.data functions.I
ConstConst"/device:CPU:0*
valueB"  ?   *
dtype0H
split/split_dimConst"/device:CPU:0*
value	B : *
dtype0t
splitSplitVarg2Const:output:0split/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0D
Const_1Const"/device:CPU:0*
dtype0*
valueB: [
MeanMeanarg0_0Const_1:output:0"/device:CPU:0*
	keep_dims( *

Tidx0*
T0U
SquaredDifferenceSquaredDifferencearg0_0Mean:output:0"/device:CPU:0*
T0D
Const_2Const"/device:CPU:0*
dtype0*
valueB: l
Mean_1MeanSquaredDifference:z:0Const_2:output:0"/device:CPU:0*
T0*
	keep_dims( *

Tidx05
SqrtSqrtMean_1:output:0"/device:CPU:0*
T09
subSubarg0_0Mean:output:0"/device:CPU:0*
T0?
	truediv_0RealDivsub:z:0Sqrt:y:0"/device:CPU:0*
T0;
sub_1Subarg1_0Mean:output:0"/device:CPU:0*
T0C
truediv_1_0RealDiv	sub_1:z:0Sqrt:y:0"/device:CPU:0*
T09
sub_2Subarg3Mean:output:0"/device:CPU:0*
T0A
	truediv_2RealDiv	sub_2:z:0Sqrt:y:0"/device:CPU:0*
T0K
Const_3Const"/device:CPU:0*
dtype0*
valueB"  ?   J
split_1/split_dimConst"/device:CPU:0*
value	B : *
dtype0?
	split_1_0SplitVtruediv_2:z:0Const_3:output:0split_1/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0M
stackPackarg8arg10arg9"/device:CPU:0*
T0*

axis *
ND
concat/axisConst"/device:CPU:0*
value	B : *
dtype0y
concat_0ConcatV2arg4arg5arg6stack:output:0concat/axis:output:0"/device:CPU:0*
T0*
N*

Tidx0G
ExpandDims/dimConst"/device:CPU:0*
value	B : *
dtype0h

ExpandDims
ExpandDimsconcat_0:output:0ExpandDims/dim:output:0"/device:CPU:0*

Tdim0*
T0R
ExpandDims_1/dimConst"/device:CPU:0*
valueB :
?????????*
dtype0h
ExpandDims_1
ExpandDimstruediv_0:z:0ExpandDims_1/dim:output:0"/device:CPU:0*

Tdim0*
T0R
Tile/multiplesConst"/device:CPU:0*
valueB"     *
dtype0d
TileTileExpandDims:output:0Tile/multiples:output:0"/device:CPU:0*
T0*

Tmultiples0F
concat_1/axisConst"/device:CPU:0*
value	B :*
dtype0?

concat_1_0ConcatV2ExpandDims_1:output:0split:output:0split_1_0:output:0Tile:output:0concat_1/axis:output:0"/device:CPU:0*

Tidx0*
T0*
NT
Tile_1/multiplesConst"/device:CPU:0*
valueB"?      *
dtype0h
Tile_1TileExpandDims:output:0Tile_1/multiples:output:0"/device:CPU:0*

Tmultiples0*
T0F
concat_2/axisConst"/device:CPU:0*
value	B :*
dtype0?

concat_2_0ConcatV2split:output:1split_1_0:output:1Tile_1:output:0concat_2/axis:output:0"/device:CPU:0*

Tidx0*
T0*
N"
arg0arg0_0"
arg1arg1_0"
concat_1concat_1_0:output:0"
concat_2concat_2_0:output:0"
concatconcat_0:output:0"
arg7arg7_0"
meanMean:output:0"
truedivtruediv_0:z:0"
split_1split_1_0:output:0"
sqrtSqrt:y:0"
	truediv_1truediv_1_0:z:0
?
?
/tf_data_structured_function_wrapper_AntZNmXvL6g
arg0
arg1
arg2
arg3
arg4
arg5
arg6
arg7
arg8
arg9	
arg10
	lessequal
2DWrapper for passing nested structures to and from tf.data functions.C
Equal/yConst"/device:CPU:0*
valueB
 *    *
dtype0>
EqualEqualarg0Equal/y:output:0"/device:CPU:0*
T0A
ToInt32Cast	Equal:z:0"/device:CPU:0*

DstT0*

SrcT0
B
ConstConst"/device:CPU:0*
valueB: *
dtype0\
SumSumToInt32:y:0Const:output:0"/device:CPU:0*
T0*
	keep_dims( *

Tidx0E
LessEqual/yConst"/device:CPU:0*
dtype0*
value
B :?R
	LessEqual	LessEqualSum:output:0LessEqual/y:output:0"/device:CPU:0*
T0"
	lessequalLessEqual:z:0
?!
?
/tf_data_structured_function_wrapper_QiAPwAETA28
arg0

arg1_0

arg2_0

arg3_0

arg4_0

arg5_0

arg6_0

arg7_0
strided_slice_1_placeholder
strided_slice_2_placeholder
select_1	
split
strided_slice_1

select
arg1
arg2
arg3
arg4
arg5
arg6
arg72DWrapper for passing nested structures to and from tf.data functions.F
	Fill/dimsConst"/device:CPU:0*
valueB:?*
dtype0F

Fill/valueConst"/device:CPU:0*
valueB
 *  ?*
dtype0_
FillFillFill/dims:output:0Fill/value:output:0"/device:CPU:0*
T0*

index_type0D
concat/axisConst"/device:CPU:0*
dtype0*
value	B : j
concatConcatV2arg0Fill:output:0concat/axis:output:0"/device:CPU:0*
T0*
N*

Tidx0Q
strided_slice/stackConst"/device:CPU:0*
dtype0*
valueB:?S
strided_slice/stack_1Const"/device:CPU:0*
valueB:?*
dtype0R
strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0?
strided_sliceStridedSliceconcat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0"/device:CPU:0*
end_mask *
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask S
strided_slice_1/stackConst"/device:CPU:0*
valueB:?*
dtype0U
strided_slice_1/stack_1Const"/device:CPU:0*
valueB:?*
dtype0T
strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0?
strided_slice_1_0StridedSlicestrided_slice_1_placeholderstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0"/device:CPU:0*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask S
strided_slice_2/stackConst"/device:CPU:0*
valueB:?*
dtype0U
strided_slice_2/stack_1Const"/device:CPU:0*
valueB:?*
dtype0T
strided_slice_2/stack_2Const"/device:CPU:0*
dtype0*
valueB:?
strided_slice_2StridedSlicestrided_slice_2_placeholderstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0"/device:CPU:0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0M
CastCaststrided_slice_2:output:0"/device:CPU:0*

SrcT0*

DstT0?
Less/yConst"/device:CPU:0*
dtype0*
value	B : ?
LessLessCast:y:0Less/y:output:0"/device:CPU:0*
T0B
	Maximum/yConst"/device:CPU:0*
value	B : *
dtype0H
MaximumMaximumCast:y:0Maximum/y:output:0"/device:CPU:0*
T0F
GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0?
GatherV2GatherV2concat:output:0Maximum:z:0GatherV2/axis:output:0"/device:CPU:0*
Taxis0*
Tindices0*
Tparams0^
zeros_like/shape_as_tensorConst"/device:CPU:0*
valueB"Z     *
dtype0L
zeros_like/ConstConst"/device:CPU:0*
valueB
 *    *
dtype0|

zeros_likeFill#zeros_like/shape_as_tensor:output:0zeros_like/Const:output:0"/device:CPU:0*
T0*

index_type09
IsNanIsNanGatherV2:output:0"/device:CPU:0*
T03
or	LogicalOrLess:z:0	IsNan:y:0"/device:CPU:0X
SelectSelector:z:0zeros_like:output:0GatherV2:output:0"/device:CPU:0*
T0I
ConstConst"/device:CPU:0*
dtype0*
valueB"  ?   H
split/split_dimConst"/device:CPU:0*
value	B : *
dtype0?
split_0SplitVstrided_slice:output:0Const:output:0split/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0:
IsNan_1IsNansplit_0:output:0"/device:CPU:0*
T0M
zeros_like_1Const"/device:CPU:0*
valueB?*    *
dtype0`
Select_1SelectIsNan_1:y:0zeros_like_1:output:0split_0:output:0"/device:CPU:0*
T0"
selectSelect:output:0"
splitsplit_0:output:1"
arg1arg1_0"
arg2arg2_0"
arg3arg3_0"
arg4arg4_0"
arg5arg5_0"
arg6arg6_0"
arg7arg7_0"-
strided_slice_1strided_slice_1_0:output:0"
select_1Select_1:output:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"!
	iterators

input/Iterator:0"??
while_context????
?7
%m_0/cudnn_gru/rnn/while/while_context *"m_0/cudnn_gru/rnn/while/LoopCond:02m_0/cudnn_gru/rnn/while/Merge:0:"m_0/cudnn_gru/rnn/while/Identity:0Bm_0/cudnn_gru/rnn/while/Exit:0B m_0/cudnn_gru/rnn/while/Exit_1:0B m_0/cudnn_gru/rnn/while/Exit_2:0B m_0/cudnn_gru/rnn/while/Exit_3:0J?3
m_0/cudnn_gru/rnn/Minimum:0
m_0/cudnn_gru/rnn/TensorArray:0
Nm_0/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
!m_0/cudnn_gru/rnn/TensorArray_1:0
im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0
km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0
hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0
jm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0
Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0
Um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0
#m_0/cudnn_gru/rnn/strided_slice_1:0
m_0/cudnn_gru/rnn/while/Enter:0
!m_0/cudnn_gru/rnn/while/Enter_1:0
!m_0/cudnn_gru/rnn/while/Enter_2:0
!m_0/cudnn_gru/rnn/while/Enter_3:0
m_0/cudnn_gru/rnn/while/Exit:0
 m_0/cudnn_gru/rnn/while/Exit_1:0
 m_0/cudnn_gru/rnn/while/Exit_2:0
 m_0/cudnn_gru/rnn/while/Exit_3:0
"m_0/cudnn_gru/rnn/while/Identity:0
$m_0/cudnn_gru/rnn/while/Identity_1:0
$m_0/cudnn_gru/rnn/while/Identity_2:0
$m_0/cudnn_gru/rnn/while/Identity_3:0
$m_0/cudnn_gru/rnn/while/Less/Enter:0
m_0/cudnn_gru/rnn/while/Less:0
&m_0/cudnn_gru/rnn/while/Less_1/Enter:0
 m_0/cudnn_gru/rnn/while/Less_1:0
$m_0/cudnn_gru/rnn/while/LogicalAnd:0
"m_0/cudnn_gru/rnn/while/LoopCond:0
m_0/cudnn_gru/rnn/while/Merge:0
m_0/cudnn_gru/rnn/while/Merge:1
!m_0/cudnn_gru/rnn/while/Merge_1:0
!m_0/cudnn_gru/rnn/while/Merge_1:1
!m_0/cudnn_gru/rnn/while/Merge_2:0
!m_0/cudnn_gru/rnn/while/Merge_2:1
!m_0/cudnn_gru/rnn/while/Merge_3:0
!m_0/cudnn_gru/rnn/while/Merge_3:1
'm_0/cudnn_gru/rnn/while/NextIteration:0
)m_0/cudnn_gru/rnn/while/NextIteration_1:0
)m_0/cudnn_gru/rnn/while/NextIteration_2:0
)m_0/cudnn_gru/rnn/while/NextIteration_3:0
 m_0/cudnn_gru/rnn/while/Switch:0
 m_0/cudnn_gru/rnn/while/Switch:1
"m_0/cudnn_gru/rnn/while/Switch_1:0
"m_0/cudnn_gru/rnn/while/Switch_1:1
"m_0/cudnn_gru/rnn/while/Switch_2:0
"m_0/cudnn_gru/rnn/while/Switch_2:1
"m_0/cudnn_gru/rnn/while/Switch_3:0
"m_0/cudnn_gru/rnn/while/Switch_3:1
1m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0
3m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0
+m_0/cudnn_gru/rnn/while/TensorArrayReadV3:0
Cm_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
=m_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
m_0/cudnn_gru/rnn/while/add/y:0
m_0/cudnn_gru/rnn/while/add:0
!m_0/cudnn_gru/rnn/while/add_1/y:0
m_0/cudnn_gru/rnn/while/add_1:0
[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0
Um_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd:0
]m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0
Wm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1:0
]m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0
Wm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Const:0
Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0
Tm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul:0
\m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0
Vm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1:0
\m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0
Vm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2:0
Um_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid:0
Rm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh:0
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1:0
Ym_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis:0
Tm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat:0
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2:0
]m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dim:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:0
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1
Sm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/x:0
Qm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub:0?
jm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0\m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0V
!m_0/cudnn_gru/rnn/TensorArray_1:01m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0K
#m_0/cudnn_gru/rnn/strided_slice_1:0$m_0/cudnn_gru/rnn/while/Less/Enter:0?
Nm_0/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03m_0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0f
m_0/cudnn_gru/rnn/TensorArray:0Cm_0/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0?
Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0[m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0?
im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0]m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0E
m_0/cudnn_gru/rnn/Minimum:0&m_0/cudnn_gru/rnn/while/Less_1/Enter:0?
hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0]m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0?
km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0\m_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0?
Um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0Zm_0/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0Rm_0/cudnn_gru/rnn/while/Enter:0R!m_0/cudnn_gru/rnn/while/Enter_1:0R!m_0/cudnn_gru/rnn/while/Enter_2:0R!m_0/cudnn_gru/rnn/while/Enter_3:0Z#m_0/cudnn_gru/rnn/strided_slice_1:0
?
m_0/while/while_context
*m_0/while/LoopCond:02m_0/while/Merge:0:m_0/while/Identity:0Bm_0/while/Exit:0Bm_0/while/Exit_1:0Bm_0/while/Exit_2:0Bm_0/while/Exit_3:0Bm_0/while/Exit_4:0J?
m_0/TensorArray:0
m_0/TensorArray_1:0
#m_0/decoder_output_proj/bias/read:0
%m_0/decoder_output_proj/kernel/read:0
m_0/gru_cell/b_c/read:0
m_0/gru_cell/b_ru/read:0
m_0/gru_cell/w_c/read:0
m_0/gru_cell/w_ru/read:0
m_0/transpose_4:0
m_0/while/Enter:0
m_0/while/Enter_1:0
m_0/while/Enter_2:0
m_0/while/Enter_3:0
m_0/while/Enter_4:0
m_0/while/Exit:0
m_0/while/Exit_1:0
m_0/while/Exit_2:0
m_0/while/Exit_3:0
m_0/while/Exit_4:0
m_0/while/Identity:0
m_0/while/Identity_1:0
m_0/while/Identity_2:0
m_0/while/Identity_3:0
m_0/while/Identity_4:0
m_0/while/Less/y:0
m_0/while/Less:0
m_0/while/LoopCond:0
m_0/while/Merge:0
m_0/while/Merge:1
m_0/while/Merge_1:0
m_0/while/Merge_1:1
m_0/while/Merge_2:0
m_0/while/Merge_2:1
m_0/while/Merge_3:0
m_0/while/Merge_3:1
m_0/while/Merge_4:0
m_0/while/Merge_4:1
m_0/while/NextIteration:0
m_0/while/NextIteration_1:0
m_0/while/NextIteration_2:0
m_0/while/NextIteration_3:0
m_0/while/NextIteration_4:0
m_0/while/Switch:0
m_0/while/Switch:1
m_0/while/Switch_1:0
m_0/while/Switch_1:1
m_0/while/Switch_2:0
m_0/while/Switch_2:1
m_0/while/Switch_3:0
m_0/while/Switch_3:1
m_0/while/Switch_4:0
m_0/while/Switch_4:1
5m_0/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/m_0/while/TensorArrayWrite/TensorArrayWriteV3:0
7m_0/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0
1m_0/while/TensorArrayWrite_1/TensorArrayWriteV3:0
m_0/while/add/y:0
m_0/while/add:0
m_0/while/add_1/y:0
m_0/while/add_1:0
m_0/while/concat/axis:0
m_0/while/concat:0
-m_0/while/decoder_output_proj/BiasAdd/Enter:0
'm_0/while/decoder_output_proj/BiasAdd:0
,m_0/while/decoder_output_proj/MatMul/Enter:0
&m_0/while/decoder_output_proj/MatMul:0
'm_0/while/gru_cell/GRUBlockCell/Enter:0
)m_0/while/gru_cell/GRUBlockCell/Enter_1:0
)m_0/while/gru_cell/GRUBlockCell/Enter_2:0
)m_0/while/gru_cell/GRUBlockCell/Enter_3:0
!m_0/while/gru_cell/GRUBlockCell:0
!m_0/while/gru_cell/GRUBlockCell:1
!m_0/while/gru_cell/GRUBlockCell:2
!m_0/while/gru_cell/GRUBlockCell:3
m_0/while/strided_slice/Enter:0
m_0/while/strided_slice/stack:0
!m_0/while/strided_slice/stack_1:0
!m_0/while/strided_slice/stack_2:0
m_0/while/strided_slice:0U
%m_0/decoder_output_proj/kernel/read:0,m_0/while/decoder_output_proj/MatMul/Enter:0T
#m_0/decoder_output_proj/bias/read:0-m_0/while/decoder_output_proj/BiasAdd/Enter:0C
m_0/gru_cell/w_ru/read:0'm_0/while/gru_cell/GRUBlockCell/Enter:0D
m_0/gru_cell/w_c/read:0)m_0/while/gru_cell/GRUBlockCell/Enter_1:0L
m_0/TensorArray:07m_0/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0E
m_0/gru_cell/b_ru/read:0)m_0/while/gru_cell/GRUBlockCell/Enter_2:04
m_0/transpose_4:0m_0/while/strided_slice/Enter:0L
m_0/TensorArray_1:05m_0/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0D
m_0/gru_cell/b_c/read:0)m_0/while/gru_cell/GRUBlockCell/Enter_3:0Rm_0/while/Enter:0Rm_0/while/Enter_1:0Rm_0/while/Enter_2:0Rm_0/while/Enter_3:0Rm_0/while/Enter_4:0
?7
%m_1/cudnn_gru/rnn/while/while_context *"m_1/cudnn_gru/rnn/while/LoopCond:02m_1/cudnn_gru/rnn/while/Merge:0:"m_1/cudnn_gru/rnn/while/Identity:0Bm_1/cudnn_gru/rnn/while/Exit:0B m_1/cudnn_gru/rnn/while/Exit_1:0B m_1/cudnn_gru/rnn/while/Exit_2:0B m_1/cudnn_gru/rnn/while/Exit_3:0J?3
m_1/cudnn_gru/rnn/Minimum:0
m_1/cudnn_gru/rnn/TensorArray:0
Nm_1/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
!m_1/cudnn_gru/rnn/TensorArray_1:0
im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0
km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0
hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0
jm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0
Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0
Um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0
#m_1/cudnn_gru/rnn/strided_slice_1:0
m_1/cudnn_gru/rnn/while/Enter:0
!m_1/cudnn_gru/rnn/while/Enter_1:0
!m_1/cudnn_gru/rnn/while/Enter_2:0
!m_1/cudnn_gru/rnn/while/Enter_3:0
m_1/cudnn_gru/rnn/while/Exit:0
 m_1/cudnn_gru/rnn/while/Exit_1:0
 m_1/cudnn_gru/rnn/while/Exit_2:0
 m_1/cudnn_gru/rnn/while/Exit_3:0
"m_1/cudnn_gru/rnn/while/Identity:0
$m_1/cudnn_gru/rnn/while/Identity_1:0
$m_1/cudnn_gru/rnn/while/Identity_2:0
$m_1/cudnn_gru/rnn/while/Identity_3:0
$m_1/cudnn_gru/rnn/while/Less/Enter:0
m_1/cudnn_gru/rnn/while/Less:0
&m_1/cudnn_gru/rnn/while/Less_1/Enter:0
 m_1/cudnn_gru/rnn/while/Less_1:0
$m_1/cudnn_gru/rnn/while/LogicalAnd:0
"m_1/cudnn_gru/rnn/while/LoopCond:0
m_1/cudnn_gru/rnn/while/Merge:0
m_1/cudnn_gru/rnn/while/Merge:1
!m_1/cudnn_gru/rnn/while/Merge_1:0
!m_1/cudnn_gru/rnn/while/Merge_1:1
!m_1/cudnn_gru/rnn/while/Merge_2:0
!m_1/cudnn_gru/rnn/while/Merge_2:1
!m_1/cudnn_gru/rnn/while/Merge_3:0
!m_1/cudnn_gru/rnn/while/Merge_3:1
'm_1/cudnn_gru/rnn/while/NextIteration:0
)m_1/cudnn_gru/rnn/while/NextIteration_1:0
)m_1/cudnn_gru/rnn/while/NextIteration_2:0
)m_1/cudnn_gru/rnn/while/NextIteration_3:0
 m_1/cudnn_gru/rnn/while/Switch:0
 m_1/cudnn_gru/rnn/while/Switch:1
"m_1/cudnn_gru/rnn/while/Switch_1:0
"m_1/cudnn_gru/rnn/while/Switch_1:1
"m_1/cudnn_gru/rnn/while/Switch_2:0
"m_1/cudnn_gru/rnn/while/Switch_2:1
"m_1/cudnn_gru/rnn/while/Switch_3:0
"m_1/cudnn_gru/rnn/while/Switch_3:1
1m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0
3m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0
+m_1/cudnn_gru/rnn/while/TensorArrayReadV3:0
Cm_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
=m_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
m_1/cudnn_gru/rnn/while/add/y:0
m_1/cudnn_gru/rnn/while/add:0
!m_1/cudnn_gru/rnn/while/add_1/y:0
m_1/cudnn_gru/rnn/while/add_1:0
[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0
Um_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd:0
]m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0
Wm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1:0
]m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0
Wm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Const:0
Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0
Tm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul:0
\m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0
Vm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1:0
\m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0
Vm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2:0
Um_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid:0
Rm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh:0
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1:0
Ym_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis:0
Tm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat:0
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2:0
]m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dim:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:0
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1
Sm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/x:0
Qm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub:0?
jm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0\m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0?
km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0\m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0?
hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0]m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0?
im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0]m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0?
Nm_1/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0K
#m_1/cudnn_gru/rnn/strided_slice_1:0$m_1/cudnn_gru/rnn/while/Less/Enter:0?
Um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0Zm_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0f
m_1/cudnn_gru/rnn/TensorArray:0Cm_1/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0?
Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0[m_1/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0E
m_1/cudnn_gru/rnn/Minimum:0&m_1/cudnn_gru/rnn/while/Less_1/Enter:0V
!m_1/cudnn_gru/rnn/TensorArray_1:01m_1/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0Rm_1/cudnn_gru/rnn/while/Enter:0R!m_1/cudnn_gru/rnn/while/Enter_1:0R!m_1/cudnn_gru/rnn/while/Enter_2:0R!m_1/cudnn_gru/rnn/while/Enter_3:0Z#m_1/cudnn_gru/rnn/strided_slice_1:0
?
m_1/while/while_context
*m_1/while/LoopCond:02m_1/while/Merge:0:m_1/while/Identity:0Bm_1/while/Exit:0Bm_1/while/Exit_1:0Bm_1/while/Exit_2:0Bm_1/while/Exit_3:0Bm_1/while/Exit_4:0J?
m_1/TensorArray:0
m_1/TensorArray_1:0
#m_1/decoder_output_proj/bias/read:0
%m_1/decoder_output_proj/kernel/read:0
m_1/gru_cell/b_c/read:0
m_1/gru_cell/b_ru/read:0
m_1/gru_cell/w_c/read:0
m_1/gru_cell/w_ru/read:0
m_1/transpose_4:0
m_1/while/Enter:0
m_1/while/Enter_1:0
m_1/while/Enter_2:0
m_1/while/Enter_3:0
m_1/while/Enter_4:0
m_1/while/Exit:0
m_1/while/Exit_1:0
m_1/while/Exit_2:0
m_1/while/Exit_3:0
m_1/while/Exit_4:0
m_1/while/Identity:0
m_1/while/Identity_1:0
m_1/while/Identity_2:0
m_1/while/Identity_3:0
m_1/while/Identity_4:0
m_1/while/Less/y:0
m_1/while/Less:0
m_1/while/LoopCond:0
m_1/while/Merge:0
m_1/while/Merge:1
m_1/while/Merge_1:0
m_1/while/Merge_1:1
m_1/while/Merge_2:0
m_1/while/Merge_2:1
m_1/while/Merge_3:0
m_1/while/Merge_3:1
m_1/while/Merge_4:0
m_1/while/Merge_4:1
m_1/while/NextIteration:0
m_1/while/NextIteration_1:0
m_1/while/NextIteration_2:0
m_1/while/NextIteration_3:0
m_1/while/NextIteration_4:0
m_1/while/Switch:0
m_1/while/Switch:1
m_1/while/Switch_1:0
m_1/while/Switch_1:1
m_1/while/Switch_2:0
m_1/while/Switch_2:1
m_1/while/Switch_3:0
m_1/while/Switch_3:1
m_1/while/Switch_4:0
m_1/while/Switch_4:1
5m_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/m_1/while/TensorArrayWrite/TensorArrayWriteV3:0
7m_1/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0
1m_1/while/TensorArrayWrite_1/TensorArrayWriteV3:0
m_1/while/add/y:0
m_1/while/add:0
m_1/while/add_1/y:0
m_1/while/add_1:0
m_1/while/concat/axis:0
m_1/while/concat:0
-m_1/while/decoder_output_proj/BiasAdd/Enter:0
'm_1/while/decoder_output_proj/BiasAdd:0
,m_1/while/decoder_output_proj/MatMul/Enter:0
&m_1/while/decoder_output_proj/MatMul:0
'm_1/while/gru_cell/GRUBlockCell/Enter:0
)m_1/while/gru_cell/GRUBlockCell/Enter_1:0
)m_1/while/gru_cell/GRUBlockCell/Enter_2:0
)m_1/while/gru_cell/GRUBlockCell/Enter_3:0
!m_1/while/gru_cell/GRUBlockCell:0
!m_1/while/gru_cell/GRUBlockCell:1
!m_1/while/gru_cell/GRUBlockCell:2
!m_1/while/gru_cell/GRUBlockCell:3
m_1/while/strided_slice/Enter:0
m_1/while/strided_slice/stack:0
!m_1/while/strided_slice/stack_1:0
!m_1/while/strided_slice/stack_2:0
m_1/while/strided_slice:0D
m_1/gru_cell/b_c/read:0)m_1/while/gru_cell/GRUBlockCell/Enter_3:0E
m_1/gru_cell/b_ru/read:0)m_1/while/gru_cell/GRUBlockCell/Enter_2:0L
m_1/TensorArray:07m_1/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0T
#m_1/decoder_output_proj/bias/read:0-m_1/while/decoder_output_proj/BiasAdd/Enter:04
m_1/transpose_4:0m_1/while/strided_slice/Enter:0D
m_1/gru_cell/w_c/read:0)m_1/while/gru_cell/GRUBlockCell/Enter_1:0U
%m_1/decoder_output_proj/kernel/read:0,m_1/while/decoder_output_proj/MatMul/Enter:0C
m_1/gru_cell/w_ru/read:0'm_1/while/gru_cell/GRUBlockCell/Enter:0L
m_1/TensorArray_1:05m_1/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0Rm_1/while/Enter:0Rm_1/while/Enter_1:0Rm_1/while/Enter_2:0Rm_1/while/Enter_3:0Rm_1/while/Enter_4:0
?7
%m_2/cudnn_gru/rnn/while/while_context *"m_2/cudnn_gru/rnn/while/LoopCond:02m_2/cudnn_gru/rnn/while/Merge:0:"m_2/cudnn_gru/rnn/while/Identity:0Bm_2/cudnn_gru/rnn/while/Exit:0B m_2/cudnn_gru/rnn/while/Exit_1:0B m_2/cudnn_gru/rnn/while/Exit_2:0B m_2/cudnn_gru/rnn/while/Exit_3:0J?3
m_2/cudnn_gru/rnn/Minimum:0
m_2/cudnn_gru/rnn/TensorArray:0
Nm_2/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
!m_2/cudnn_gru/rnn/TensorArray_1:0
im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0
km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0
hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0
jm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0
Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0
Um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0
#m_2/cudnn_gru/rnn/strided_slice_1:0
m_2/cudnn_gru/rnn/while/Enter:0
!m_2/cudnn_gru/rnn/while/Enter_1:0
!m_2/cudnn_gru/rnn/while/Enter_2:0
!m_2/cudnn_gru/rnn/while/Enter_3:0
m_2/cudnn_gru/rnn/while/Exit:0
 m_2/cudnn_gru/rnn/while/Exit_1:0
 m_2/cudnn_gru/rnn/while/Exit_2:0
 m_2/cudnn_gru/rnn/while/Exit_3:0
"m_2/cudnn_gru/rnn/while/Identity:0
$m_2/cudnn_gru/rnn/while/Identity_1:0
$m_2/cudnn_gru/rnn/while/Identity_2:0
$m_2/cudnn_gru/rnn/while/Identity_3:0
$m_2/cudnn_gru/rnn/while/Less/Enter:0
m_2/cudnn_gru/rnn/while/Less:0
&m_2/cudnn_gru/rnn/while/Less_1/Enter:0
 m_2/cudnn_gru/rnn/while/Less_1:0
$m_2/cudnn_gru/rnn/while/LogicalAnd:0
"m_2/cudnn_gru/rnn/while/LoopCond:0
m_2/cudnn_gru/rnn/while/Merge:0
m_2/cudnn_gru/rnn/while/Merge:1
!m_2/cudnn_gru/rnn/while/Merge_1:0
!m_2/cudnn_gru/rnn/while/Merge_1:1
!m_2/cudnn_gru/rnn/while/Merge_2:0
!m_2/cudnn_gru/rnn/while/Merge_2:1
!m_2/cudnn_gru/rnn/while/Merge_3:0
!m_2/cudnn_gru/rnn/while/Merge_3:1
'm_2/cudnn_gru/rnn/while/NextIteration:0
)m_2/cudnn_gru/rnn/while/NextIteration_1:0
)m_2/cudnn_gru/rnn/while/NextIteration_2:0
)m_2/cudnn_gru/rnn/while/NextIteration_3:0
 m_2/cudnn_gru/rnn/while/Switch:0
 m_2/cudnn_gru/rnn/while/Switch:1
"m_2/cudnn_gru/rnn/while/Switch_1:0
"m_2/cudnn_gru/rnn/while/Switch_1:1
"m_2/cudnn_gru/rnn/while/Switch_2:0
"m_2/cudnn_gru/rnn/while/Switch_2:1
"m_2/cudnn_gru/rnn/while/Switch_3:0
"m_2/cudnn_gru/rnn/while/Switch_3:1
1m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0
3m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0
+m_2/cudnn_gru/rnn/while/TensorArrayReadV3:0
Cm_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
=m_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
m_2/cudnn_gru/rnn/while/add/y:0
m_2/cudnn_gru/rnn/while/add:0
!m_2/cudnn_gru/rnn/while/add_1/y:0
m_2/cudnn_gru/rnn/while/add_1:0
[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0
Um_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd:0
]m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0
Wm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1:0
]m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0
Wm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Const:0
Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0
Tm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul:0
\m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0
Vm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1:0
\m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0
Vm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2:0
Um_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid:0
Rm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh:0
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1:0
Ym_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis:0
Tm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat:0
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2:0
]m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dim:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:0
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1
Sm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/x:0
Qm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub:0K
#m_2/cudnn_gru/rnn/strided_slice_1:0$m_2/cudnn_gru/rnn/while/Less/Enter:0V
!m_2/cudnn_gru/rnn/TensorArray_1:01m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0?
hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0]m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0f
m_2/cudnn_gru/rnn/TensorArray:0Cm_2/cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0?
Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0[m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0?
im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0]m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0E
m_2/cudnn_gru/rnn/Minimum:0&m_2/cudnn_gru/rnn/while/Less_1/Enter:0?
jm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0\m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0?
km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0\m_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0?
Um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0Zm_2/cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0?
Nm_2/cudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:03m_2/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0Rm_2/cudnn_gru/rnn/while/Enter:0R!m_2/cudnn_gru/rnn/while/Enter_1:0R!m_2/cudnn_gru/rnn/while/Enter_2:0R!m_2/cudnn_gru/rnn/while/Enter_3:0Z#m_2/cudnn_gru/rnn/strided_slice_1:0
?
m_2/while/while_context
*m_2/while/LoopCond:02m_2/while/Merge:0:m_2/while/Identity:0Bm_2/while/Exit:0Bm_2/while/Exit_1:0Bm_2/while/Exit_2:0Bm_2/while/Exit_3:0Bm_2/while/Exit_4:0J?
m_2/TensorArray:0
m_2/TensorArray_1:0
#m_2/decoder_output_proj/bias/read:0
%m_2/decoder_output_proj/kernel/read:0
m_2/gru_cell/b_c/read:0
m_2/gru_cell/b_ru/read:0
m_2/gru_cell/w_c/read:0
m_2/gru_cell/w_ru/read:0
m_2/transpose_4:0
m_2/while/Enter:0
m_2/while/Enter_1:0
m_2/while/Enter_2:0
m_2/while/Enter_3:0
m_2/while/Enter_4:0
m_2/while/Exit:0
m_2/while/Exit_1:0
m_2/while/Exit_2:0
m_2/while/Exit_3:0
m_2/while/Exit_4:0
m_2/while/Identity:0
m_2/while/Identity_1:0
m_2/while/Identity_2:0
m_2/while/Identity_3:0
m_2/while/Identity_4:0
m_2/while/Less/y:0
m_2/while/Less:0
m_2/while/LoopCond:0
m_2/while/Merge:0
m_2/while/Merge:1
m_2/while/Merge_1:0
m_2/while/Merge_1:1
m_2/while/Merge_2:0
m_2/while/Merge_2:1
m_2/while/Merge_3:0
m_2/while/Merge_3:1
m_2/while/Merge_4:0
m_2/while/Merge_4:1
m_2/while/NextIteration:0
m_2/while/NextIteration_1:0
m_2/while/NextIteration_2:0
m_2/while/NextIteration_3:0
m_2/while/NextIteration_4:0
m_2/while/Switch:0
m_2/while/Switch:1
m_2/while/Switch_1:0
m_2/while/Switch_1:1
m_2/while/Switch_2:0
m_2/while/Switch_2:1
m_2/while/Switch_3:0
m_2/while/Switch_3:1
m_2/while/Switch_4:0
m_2/while/Switch_4:1
5m_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/m_2/while/TensorArrayWrite/TensorArrayWriteV3:0
7m_2/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0
1m_2/while/TensorArrayWrite_1/TensorArrayWriteV3:0
m_2/while/add/y:0
m_2/while/add:0
m_2/while/add_1/y:0
m_2/while/add_1:0
m_2/while/concat/axis:0
m_2/while/concat:0
-m_2/while/decoder_output_proj/BiasAdd/Enter:0
'm_2/while/decoder_output_proj/BiasAdd:0
,m_2/while/decoder_output_proj/MatMul/Enter:0
&m_2/while/decoder_output_proj/MatMul:0
'm_2/while/gru_cell/GRUBlockCell/Enter:0
)m_2/while/gru_cell/GRUBlockCell/Enter_1:0
)m_2/while/gru_cell/GRUBlockCell/Enter_2:0
)m_2/while/gru_cell/GRUBlockCell/Enter_3:0
!m_2/while/gru_cell/GRUBlockCell:0
!m_2/while/gru_cell/GRUBlockCell:1
!m_2/while/gru_cell/GRUBlockCell:2
!m_2/while/gru_cell/GRUBlockCell:3
m_2/while/strided_slice/Enter:0
m_2/while/strided_slice/stack:0
!m_2/while/strided_slice/stack_1:0
!m_2/while/strided_slice/stack_2:0
m_2/while/strided_slice:0T
#m_2/decoder_output_proj/bias/read:0-m_2/while/decoder_output_proj/BiasAdd/Enter:0D
m_2/gru_cell/w_c/read:0)m_2/while/gru_cell/GRUBlockCell/Enter_1:0L
m_2/TensorArray:07m_2/while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0L
m_2/TensorArray_1:05m_2/while/TensorArrayWrite/TensorArrayWriteV3/Enter:04
m_2/transpose_4:0m_2/while/strided_slice/Enter:0D
m_2/gru_cell/b_c/read:0)m_2/while/gru_cell/GRUBlockCell/Enter_3:0C
m_2/gru_cell/w_ru/read:0'm_2/while/gru_cell/GRUBlockCell/Enter:0E
m_2/gru_cell/b_ru/read:0)m_2/while/gru_cell/GRUBlockCell/Enter_2:0U
%m_2/decoder_output_proj/kernel/read:0,m_2/while/decoder_output_proj/MatMul/Enter:0Rm_2/while/Enter:0Rm_2/while/Enter_1:0Rm_2/while/Enter_2:0Rm_2/while/Enter_3:0Rm_2/while/Enter_4:0"??
	variables????
?
Pm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_0/compress_readout/kernel:0"m_0/compress_readout/kernel/Assign"m_0/compress_readout/kernel/read:02:m_0/compress_readout/kernel/Initializer/truncated_normal:08
?
m_0/compress_readout/bias:0 m_0/compress_readout/bias/Assign m_0/compress_readout/bias/read:02-m_0/compress_readout/bias/Initializer/zeros:08
?
&m_0/fingerpint/convnet/conv1d/kernel:0+m_0/fingerpint/convnet/conv1d/kernel/Assign+m_0/fingerpint/convnet/conv1d/kernel/read:02Cm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_0/fingerpint/convnet/conv1d/bias:0)m_0/fingerpint/convnet/conv1d/bias/Assign)m_0/fingerpint/convnet/conv1d/bias/read:026m_0/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_1/kernel:0-m_0/fingerpint/convnet/conv1d_1/kernel/Assign-m_0/fingerpint/convnet/conv1d_1/kernel/read:02Em_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_1/bias:0+m_0/fingerpint/convnet/conv1d_1/bias/Assign+m_0/fingerpint/convnet/conv1d_1/bias/read:028m_0/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_2/kernel:0-m_0/fingerpint/convnet/conv1d_2/kernel/Assign-m_0/fingerpint/convnet/conv1d_2/kernel/read:02Em_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_2/bias:0+m_0/fingerpint/convnet/conv1d_2/bias/Assign+m_0/fingerpint/convnet/conv1d_2/bias/read:028m_0/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_3/kernel:0-m_0/fingerpint/convnet/conv1d_3/kernel/Assign-m_0/fingerpint/convnet/conv1d_3/kernel/read:02Em_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_3/bias:0+m_0/fingerpint/convnet/conv1d_3/bias/Assign+m_0/fingerpint/convnet/conv1d_3/bias/read:028m_0/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_4/kernel:0-m_0/fingerpint/convnet/conv1d_4/kernel/Assign-m_0/fingerpint/convnet/conv1d_4/kernel/read:02Em_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_4/bias:0+m_0/fingerpint/convnet/conv1d_4/bias/Assign+m_0/fingerpint/convnet/conv1d_4/bias/read:028m_0/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_5/kernel:0-m_0/fingerpint/convnet/conv1d_5/kernel/Assign-m_0/fingerpint/convnet/conv1d_5/kernel/read:02Em_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_5/bias:0+m_0/fingerpint/convnet/conv1d_5/bias/Assign+m_0/fingerpint/convnet/conv1d_5/bias/read:028m_0/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_0/fingerpint/fc_convnet/fc_encoder/kernel:02m_0/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_0/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_0/fingerpint/fc_convnet/fc_encoder/bias:00m_0/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_0/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_0/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_0/fingerpint/fc_convnet/out_encoder/kernel:03m_0/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_0/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_0/fingerpint/fc_convnet/out_encoder/bias:01m_0/fingerpint/fc_convnet/out_encoder/bias/Assign1m_0/fingerpint/fc_convnet/out_encoder/bias/read:02>m_0/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_0/attn_focus/kernel:0m_0/attn_focus/kernel/Assignm_0/attn_focus/kernel/read:022m_0/attn_focus/kernel/Initializer/random_uniform:08
z
m_0/attn_focus/bias:0m_0/attn_focus/bias/Assignm_0/attn_focus/bias/read:02'm_0/attn_focus/bias/Initializer/zeros:08
{
m_0/gru_cell/w_ru:0m_0/gru_cell/w_ru/Assignm_0/gru_cell/w_ru/read:02.m_0/gru_cell/w_ru/Initializer/random_uniform:08
r
m_0/gru_cell/b_ru:0m_0/gru_cell/b_ru/Assignm_0/gru_cell/b_ru/read:02%m_0/gru_cell/b_ru/Initializer/Const:08
w
m_0/gru_cell/w_c:0m_0/gru_cell/w_c/Assignm_0/gru_cell/w_c/read:02-m_0/gru_cell/w_c/Initializer/random_uniform:08
n
m_0/gru_cell/b_c:0m_0/gru_cell/b_c/Assignm_0/gru_cell/b_c/read:02$m_0/gru_cell/b_c/Initializer/Const:08
?
 m_0/decoder_output_proj/kernel:0%m_0/decoder_output_proj/kernel/Assign%m_0/decoder_output_proj/kernel/read:02;m_0/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_0/decoder_output_proj/bias:0#m_0/decoder_output_proj/bias/Assign#m_0/decoder_output_proj/bias/read:020m_0/decoder_output_proj/bias/Initializer/zeros:08
?
Pm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_1/compress_readout/kernel:0"m_1/compress_readout/kernel/Assign"m_1/compress_readout/kernel/read:02:m_1/compress_readout/kernel/Initializer/truncated_normal:08
?
m_1/compress_readout/bias:0 m_1/compress_readout/bias/Assign m_1/compress_readout/bias/read:02-m_1/compress_readout/bias/Initializer/zeros:08
?
&m_1/fingerpint/convnet/conv1d/kernel:0+m_1/fingerpint/convnet/conv1d/kernel/Assign+m_1/fingerpint/convnet/conv1d/kernel/read:02Cm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_1/fingerpint/convnet/conv1d/bias:0)m_1/fingerpint/convnet/conv1d/bias/Assign)m_1/fingerpint/convnet/conv1d/bias/read:026m_1/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_1/kernel:0-m_1/fingerpint/convnet/conv1d_1/kernel/Assign-m_1/fingerpint/convnet/conv1d_1/kernel/read:02Em_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_1/bias:0+m_1/fingerpint/convnet/conv1d_1/bias/Assign+m_1/fingerpint/convnet/conv1d_1/bias/read:028m_1/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_2/kernel:0-m_1/fingerpint/convnet/conv1d_2/kernel/Assign-m_1/fingerpint/convnet/conv1d_2/kernel/read:02Em_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_2/bias:0+m_1/fingerpint/convnet/conv1d_2/bias/Assign+m_1/fingerpint/convnet/conv1d_2/bias/read:028m_1/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_3/kernel:0-m_1/fingerpint/convnet/conv1d_3/kernel/Assign-m_1/fingerpint/convnet/conv1d_3/kernel/read:02Em_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_3/bias:0+m_1/fingerpint/convnet/conv1d_3/bias/Assign+m_1/fingerpint/convnet/conv1d_3/bias/read:028m_1/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_4/kernel:0-m_1/fingerpint/convnet/conv1d_4/kernel/Assign-m_1/fingerpint/convnet/conv1d_4/kernel/read:02Em_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_4/bias:0+m_1/fingerpint/convnet/conv1d_4/bias/Assign+m_1/fingerpint/convnet/conv1d_4/bias/read:028m_1/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_5/kernel:0-m_1/fingerpint/convnet/conv1d_5/kernel/Assign-m_1/fingerpint/convnet/conv1d_5/kernel/read:02Em_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_5/bias:0+m_1/fingerpint/convnet/conv1d_5/bias/Assign+m_1/fingerpint/convnet/conv1d_5/bias/read:028m_1/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_1/fingerpint/fc_convnet/fc_encoder/kernel:02m_1/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_1/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_1/fingerpint/fc_convnet/fc_encoder/bias:00m_1/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_1/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_1/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_1/fingerpint/fc_convnet/out_encoder/kernel:03m_1/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_1/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_1/fingerpint/fc_convnet/out_encoder/bias:01m_1/fingerpint/fc_convnet/out_encoder/bias/Assign1m_1/fingerpint/fc_convnet/out_encoder/bias/read:02>m_1/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_1/attn_focus/kernel:0m_1/attn_focus/kernel/Assignm_1/attn_focus/kernel/read:022m_1/attn_focus/kernel/Initializer/random_uniform:08
z
m_1/attn_focus/bias:0m_1/attn_focus/bias/Assignm_1/attn_focus/bias/read:02'm_1/attn_focus/bias/Initializer/zeros:08
{
m_1/gru_cell/w_ru:0m_1/gru_cell/w_ru/Assignm_1/gru_cell/w_ru/read:02.m_1/gru_cell/w_ru/Initializer/random_uniform:08
r
m_1/gru_cell/b_ru:0m_1/gru_cell/b_ru/Assignm_1/gru_cell/b_ru/read:02%m_1/gru_cell/b_ru/Initializer/Const:08
w
m_1/gru_cell/w_c:0m_1/gru_cell/w_c/Assignm_1/gru_cell/w_c/read:02-m_1/gru_cell/w_c/Initializer/random_uniform:08
n
m_1/gru_cell/b_c:0m_1/gru_cell/b_c/Assignm_1/gru_cell/b_c/read:02$m_1/gru_cell/b_c/Initializer/Const:08
?
 m_1/decoder_output_proj/kernel:0%m_1/decoder_output_proj/kernel/Assign%m_1/decoder_output_proj/kernel/read:02;m_1/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_1/decoder_output_proj/bias:0#m_1/decoder_output_proj/bias/Assign#m_1/decoder_output_proj/bias/read:020m_1/decoder_output_proj/bias/Initializer/zeros:08
?
Pm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_2/compress_readout/kernel:0"m_2/compress_readout/kernel/Assign"m_2/compress_readout/kernel/read:02:m_2/compress_readout/kernel/Initializer/truncated_normal:08
?
m_2/compress_readout/bias:0 m_2/compress_readout/bias/Assign m_2/compress_readout/bias/read:02-m_2/compress_readout/bias/Initializer/zeros:08
?
&m_2/fingerpint/convnet/conv1d/kernel:0+m_2/fingerpint/convnet/conv1d/kernel/Assign+m_2/fingerpint/convnet/conv1d/kernel/read:02Cm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_2/fingerpint/convnet/conv1d/bias:0)m_2/fingerpint/convnet/conv1d/bias/Assign)m_2/fingerpint/convnet/conv1d/bias/read:026m_2/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_1/kernel:0-m_2/fingerpint/convnet/conv1d_1/kernel/Assign-m_2/fingerpint/convnet/conv1d_1/kernel/read:02Em_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_1/bias:0+m_2/fingerpint/convnet/conv1d_1/bias/Assign+m_2/fingerpint/convnet/conv1d_1/bias/read:028m_2/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_2/kernel:0-m_2/fingerpint/convnet/conv1d_2/kernel/Assign-m_2/fingerpint/convnet/conv1d_2/kernel/read:02Em_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_2/bias:0+m_2/fingerpint/convnet/conv1d_2/bias/Assign+m_2/fingerpint/convnet/conv1d_2/bias/read:028m_2/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_3/kernel:0-m_2/fingerpint/convnet/conv1d_3/kernel/Assign-m_2/fingerpint/convnet/conv1d_3/kernel/read:02Em_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_3/bias:0+m_2/fingerpint/convnet/conv1d_3/bias/Assign+m_2/fingerpint/convnet/conv1d_3/bias/read:028m_2/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_4/kernel:0-m_2/fingerpint/convnet/conv1d_4/kernel/Assign-m_2/fingerpint/convnet/conv1d_4/kernel/read:02Em_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_4/bias:0+m_2/fingerpint/convnet/conv1d_4/bias/Assign+m_2/fingerpint/convnet/conv1d_4/bias/read:028m_2/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_5/kernel:0-m_2/fingerpint/convnet/conv1d_5/kernel/Assign-m_2/fingerpint/convnet/conv1d_5/kernel/read:02Em_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_5/bias:0+m_2/fingerpint/convnet/conv1d_5/bias/Assign+m_2/fingerpint/convnet/conv1d_5/bias/read:028m_2/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_2/fingerpint/fc_convnet/fc_encoder/kernel:02m_2/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_2/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_2/fingerpint/fc_convnet/fc_encoder/bias:00m_2/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_2/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_2/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_2/fingerpint/fc_convnet/out_encoder/kernel:03m_2/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_2/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_2/fingerpint/fc_convnet/out_encoder/bias:01m_2/fingerpint/fc_convnet/out_encoder/bias/Assign1m_2/fingerpint/fc_convnet/out_encoder/bias/read:02>m_2/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_2/attn_focus/kernel:0m_2/attn_focus/kernel/Assignm_2/attn_focus/kernel/read:022m_2/attn_focus/kernel/Initializer/random_uniform:08
z
m_2/attn_focus/bias:0m_2/attn_focus/bias/Assignm_2/attn_focus/bias/read:02'm_2/attn_focus/bias/Initializer/zeros:08
{
m_2/gru_cell/w_ru:0m_2/gru_cell/w_ru/Assignm_2/gru_cell/w_ru/read:02.m_2/gru_cell/w_ru/Initializer/random_uniform:08
r
m_2/gru_cell/b_ru:0m_2/gru_cell/b_ru/Assignm_2/gru_cell/b_ru/read:02%m_2/gru_cell/b_ru/Initializer/Const:08
w
m_2/gru_cell/w_c:0m_2/gru_cell/w_c/Assignm_2/gru_cell/w_c/read:02-m_2/gru_cell/w_c/Initializer/random_uniform:08
n
m_2/gru_cell/b_c:0m_2/gru_cell/b_c/Assignm_2/gru_cell/b_c/read:02$m_2/gru_cell/b_c/Initializer/Const:08
?
 m_2/decoder_output_proj/kernel:0%m_2/decoder_output_proj/kernel/Assign%m_2/decoder_output_proj/kernel/read:02;m_2/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_2/decoder_output_proj/bias:0#m_2/decoder_output_proj/bias/Assign#m_2/decoder_output_proj/bias/read:020m_2/decoder_output_proj/bias/Initializer/zeros:08"©
trainable_variables????
?
Pm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_0/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_0/compress_readout/kernel:0"m_0/compress_readout/kernel/Assign"m_0/compress_readout/kernel/read:02:m_0/compress_readout/kernel/Initializer/truncated_normal:08
?
m_0/compress_readout/bias:0 m_0/compress_readout/bias/Assign m_0/compress_readout/bias/read:02-m_0/compress_readout/bias/Initializer/zeros:08
?
&m_0/fingerpint/convnet/conv1d/kernel:0+m_0/fingerpint/convnet/conv1d/kernel/Assign+m_0/fingerpint/convnet/conv1d/kernel/read:02Cm_0/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_0/fingerpint/convnet/conv1d/bias:0)m_0/fingerpint/convnet/conv1d/bias/Assign)m_0/fingerpint/convnet/conv1d/bias/read:026m_0/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_1/kernel:0-m_0/fingerpint/convnet/conv1d_1/kernel/Assign-m_0/fingerpint/convnet/conv1d_1/kernel/read:02Em_0/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_1/bias:0+m_0/fingerpint/convnet/conv1d_1/bias/Assign+m_0/fingerpint/convnet/conv1d_1/bias/read:028m_0/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_2/kernel:0-m_0/fingerpint/convnet/conv1d_2/kernel/Assign-m_0/fingerpint/convnet/conv1d_2/kernel/read:02Em_0/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_2/bias:0+m_0/fingerpint/convnet/conv1d_2/bias/Assign+m_0/fingerpint/convnet/conv1d_2/bias/read:028m_0/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_3/kernel:0-m_0/fingerpint/convnet/conv1d_3/kernel/Assign-m_0/fingerpint/convnet/conv1d_3/kernel/read:02Em_0/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_3/bias:0+m_0/fingerpint/convnet/conv1d_3/bias/Assign+m_0/fingerpint/convnet/conv1d_3/bias/read:028m_0/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_4/kernel:0-m_0/fingerpint/convnet/conv1d_4/kernel/Assign-m_0/fingerpint/convnet/conv1d_4/kernel/read:02Em_0/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_4/bias:0+m_0/fingerpint/convnet/conv1d_4/bias/Assign+m_0/fingerpint/convnet/conv1d_4/bias/read:028m_0/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_0/fingerpint/convnet/conv1d_5/kernel:0-m_0/fingerpint/convnet/conv1d_5/kernel/Assign-m_0/fingerpint/convnet/conv1d_5/kernel/read:02Em_0/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_0/fingerpint/convnet/conv1d_5/bias:0+m_0/fingerpint/convnet/conv1d_5/bias/Assign+m_0/fingerpint/convnet/conv1d_5/bias/read:028m_0/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_0/fingerpint/fc_convnet/fc_encoder/kernel:02m_0/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_0/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_0/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_0/fingerpint/fc_convnet/fc_encoder/bias:00m_0/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_0/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_0/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_0/fingerpint/fc_convnet/out_encoder/kernel:03m_0/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_0/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_0/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_0/fingerpint/fc_convnet/out_encoder/bias:01m_0/fingerpint/fc_convnet/out_encoder/bias/Assign1m_0/fingerpint/fc_convnet/out_encoder/bias/read:02>m_0/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_0/attn_focus/kernel:0m_0/attn_focus/kernel/Assignm_0/attn_focus/kernel/read:022m_0/attn_focus/kernel/Initializer/random_uniform:08
z
m_0/attn_focus/bias:0m_0/attn_focus/bias/Assignm_0/attn_focus/bias/read:02'm_0/attn_focus/bias/Initializer/zeros:08
{
m_0/gru_cell/w_ru:0m_0/gru_cell/w_ru/Assignm_0/gru_cell/w_ru/read:02.m_0/gru_cell/w_ru/Initializer/random_uniform:08
r
m_0/gru_cell/b_ru:0m_0/gru_cell/b_ru/Assignm_0/gru_cell/b_ru/read:02%m_0/gru_cell/b_ru/Initializer/Const:08
w
m_0/gru_cell/w_c:0m_0/gru_cell/w_c/Assignm_0/gru_cell/w_c/read:02-m_0/gru_cell/w_c/Initializer/random_uniform:08
n
m_0/gru_cell/b_c:0m_0/gru_cell/b_c/Assignm_0/gru_cell/b_c/read:02$m_0/gru_cell/b_c/Initializer/Const:08
?
 m_0/decoder_output_proj/kernel:0%m_0/decoder_output_proj/kernel/Assign%m_0/decoder_output_proj/kernel/read:02;m_0/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_0/decoder_output_proj/bias:0#m_0/decoder_output_proj/bias/Assign#m_0/decoder_output_proj/bias/read:020m_0/decoder_output_proj/bias/Initializer/zeros:08
?
Pm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_1/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_1/compress_readout/kernel:0"m_1/compress_readout/kernel/Assign"m_1/compress_readout/kernel/read:02:m_1/compress_readout/kernel/Initializer/truncated_normal:08
?
m_1/compress_readout/bias:0 m_1/compress_readout/bias/Assign m_1/compress_readout/bias/read:02-m_1/compress_readout/bias/Initializer/zeros:08
?
&m_1/fingerpint/convnet/conv1d/kernel:0+m_1/fingerpint/convnet/conv1d/kernel/Assign+m_1/fingerpint/convnet/conv1d/kernel/read:02Cm_1/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_1/fingerpint/convnet/conv1d/bias:0)m_1/fingerpint/convnet/conv1d/bias/Assign)m_1/fingerpint/convnet/conv1d/bias/read:026m_1/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_1/kernel:0-m_1/fingerpint/convnet/conv1d_1/kernel/Assign-m_1/fingerpint/convnet/conv1d_1/kernel/read:02Em_1/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_1/bias:0+m_1/fingerpint/convnet/conv1d_1/bias/Assign+m_1/fingerpint/convnet/conv1d_1/bias/read:028m_1/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_2/kernel:0-m_1/fingerpint/convnet/conv1d_2/kernel/Assign-m_1/fingerpint/convnet/conv1d_2/kernel/read:02Em_1/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_2/bias:0+m_1/fingerpint/convnet/conv1d_2/bias/Assign+m_1/fingerpint/convnet/conv1d_2/bias/read:028m_1/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_3/kernel:0-m_1/fingerpint/convnet/conv1d_3/kernel/Assign-m_1/fingerpint/convnet/conv1d_3/kernel/read:02Em_1/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_3/bias:0+m_1/fingerpint/convnet/conv1d_3/bias/Assign+m_1/fingerpint/convnet/conv1d_3/bias/read:028m_1/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_4/kernel:0-m_1/fingerpint/convnet/conv1d_4/kernel/Assign-m_1/fingerpint/convnet/conv1d_4/kernel/read:02Em_1/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_4/bias:0+m_1/fingerpint/convnet/conv1d_4/bias/Assign+m_1/fingerpint/convnet/conv1d_4/bias/read:028m_1/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_1/fingerpint/convnet/conv1d_5/kernel:0-m_1/fingerpint/convnet/conv1d_5/kernel/Assign-m_1/fingerpint/convnet/conv1d_5/kernel/read:02Em_1/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_1/fingerpint/convnet/conv1d_5/bias:0+m_1/fingerpint/convnet/conv1d_5/bias/Assign+m_1/fingerpint/convnet/conv1d_5/bias/read:028m_1/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_1/fingerpint/fc_convnet/fc_encoder/kernel:02m_1/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_1/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_1/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_1/fingerpint/fc_convnet/fc_encoder/bias:00m_1/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_1/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_1/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_1/fingerpint/fc_convnet/out_encoder/kernel:03m_1/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_1/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_1/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_1/fingerpint/fc_convnet/out_encoder/bias:01m_1/fingerpint/fc_convnet/out_encoder/bias/Assign1m_1/fingerpint/fc_convnet/out_encoder/bias/read:02>m_1/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_1/attn_focus/kernel:0m_1/attn_focus/kernel/Assignm_1/attn_focus/kernel/read:022m_1/attn_focus/kernel/Initializer/random_uniform:08
z
m_1/attn_focus/bias:0m_1/attn_focus/bias/Assignm_1/attn_focus/bias/read:02'm_1/attn_focus/bias/Initializer/zeros:08
{
m_1/gru_cell/w_ru:0m_1/gru_cell/w_ru/Assignm_1/gru_cell/w_ru/read:02.m_1/gru_cell/w_ru/Initializer/random_uniform:08
r
m_1/gru_cell/b_ru:0m_1/gru_cell/b_ru/Assignm_1/gru_cell/b_ru/read:02%m_1/gru_cell/b_ru/Initializer/Const:08
w
m_1/gru_cell/w_c:0m_1/gru_cell/w_c/Assignm_1/gru_cell/w_c/read:02-m_1/gru_cell/w_c/Initializer/random_uniform:08
n
m_1/gru_cell/b_c:0m_1/gru_cell/b_c/Assignm_1/gru_cell/b_c/read:02$m_1/gru_cell/b_c/Initializer/Const:08
?
 m_1/decoder_output_proj/kernel:0%m_1/decoder_output_proj/kernel/Assign%m_1/decoder_output_proj/kernel/read:02;m_1/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_1/decoder_output_proj/bias:0#m_1/decoder_output_proj/bias/Assign#m_1/decoder_output_proj/bias/read:020m_1/decoder_output_proj/bias/Initializer/zeros:08
?
Pm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignUm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Nm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Sm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignSm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02`m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
em_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0jm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignjm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
fm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0km_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assignkm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02?m_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
cm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0hm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assignhm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02um_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
dm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0im_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignim_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02vm_2/cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
?
m_2/compress_readout/kernel:0"m_2/compress_readout/kernel/Assign"m_2/compress_readout/kernel/read:02:m_2/compress_readout/kernel/Initializer/truncated_normal:08
?
m_2/compress_readout/bias:0 m_2/compress_readout/bias/Assign m_2/compress_readout/bias/read:02-m_2/compress_readout/bias/Initializer/zeros:08
?
&m_2/fingerpint/convnet/conv1d/kernel:0+m_2/fingerpint/convnet/conv1d/kernel/Assign+m_2/fingerpint/convnet/conv1d/kernel/read:02Cm_2/fingerpint/convnet/conv1d/kernel/Initializer/truncated_normal:08
?
$m_2/fingerpint/convnet/conv1d/bias:0)m_2/fingerpint/convnet/conv1d/bias/Assign)m_2/fingerpint/convnet/conv1d/bias/read:026m_2/fingerpint/convnet/conv1d/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_1/kernel:0-m_2/fingerpint/convnet/conv1d_1/kernel/Assign-m_2/fingerpint/convnet/conv1d_1/kernel/read:02Em_2/fingerpint/convnet/conv1d_1/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_1/bias:0+m_2/fingerpint/convnet/conv1d_1/bias/Assign+m_2/fingerpint/convnet/conv1d_1/bias/read:028m_2/fingerpint/convnet/conv1d_1/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_2/kernel:0-m_2/fingerpint/convnet/conv1d_2/kernel/Assign-m_2/fingerpint/convnet/conv1d_2/kernel/read:02Em_2/fingerpint/convnet/conv1d_2/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_2/bias:0+m_2/fingerpint/convnet/conv1d_2/bias/Assign+m_2/fingerpint/convnet/conv1d_2/bias/read:028m_2/fingerpint/convnet/conv1d_2/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_3/kernel:0-m_2/fingerpint/convnet/conv1d_3/kernel/Assign-m_2/fingerpint/convnet/conv1d_3/kernel/read:02Em_2/fingerpint/convnet/conv1d_3/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_3/bias:0+m_2/fingerpint/convnet/conv1d_3/bias/Assign+m_2/fingerpint/convnet/conv1d_3/bias/read:028m_2/fingerpint/convnet/conv1d_3/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_4/kernel:0-m_2/fingerpint/convnet/conv1d_4/kernel/Assign-m_2/fingerpint/convnet/conv1d_4/kernel/read:02Em_2/fingerpint/convnet/conv1d_4/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_4/bias:0+m_2/fingerpint/convnet/conv1d_4/bias/Assign+m_2/fingerpint/convnet/conv1d_4/bias/read:028m_2/fingerpint/convnet/conv1d_4/bias/Initializer/zeros:08
?
(m_2/fingerpint/convnet/conv1d_5/kernel:0-m_2/fingerpint/convnet/conv1d_5/kernel/Assign-m_2/fingerpint/convnet/conv1d_5/kernel/read:02Em_2/fingerpint/convnet/conv1d_5/kernel/Initializer/truncated_normal:08
?
&m_2/fingerpint/convnet/conv1d_5/bias:0+m_2/fingerpint/convnet/conv1d_5/bias/Assign+m_2/fingerpint/convnet/conv1d_5/bias/read:028m_2/fingerpint/convnet/conv1d_5/bias/Initializer/zeros:08
?
-m_2/fingerpint/fc_convnet/fc_encoder/kernel:02m_2/fingerpint/fc_convnet/fc_encoder/kernel/Assign2m_2/fingerpint/fc_convnet/fc_encoder/kernel/read:02Jm_2/fingerpint/fc_convnet/fc_encoder/kernel/Initializer/truncated_normal:08
?
+m_2/fingerpint/fc_convnet/fc_encoder/bias:00m_2/fingerpint/fc_convnet/fc_encoder/bias/Assign0m_2/fingerpint/fc_convnet/fc_encoder/bias/read:02=m_2/fingerpint/fc_convnet/fc_encoder/bias/Initializer/zeros:08
?
.m_2/fingerpint/fc_convnet/out_encoder/kernel:03m_2/fingerpint/fc_convnet/out_encoder/kernel/Assign3m_2/fingerpint/fc_convnet/out_encoder/kernel/read:02Km_2/fingerpint/fc_convnet/out_encoder/kernel/Initializer/truncated_normal:08
?
,m_2/fingerpint/fc_convnet/out_encoder/bias:01m_2/fingerpint/fc_convnet/out_encoder/bias/Assign1m_2/fingerpint/fc_convnet/out_encoder/bias/read:02>m_2/fingerpint/fc_convnet/out_encoder/bias/Initializer/zeros:08
?
m_2/attn_focus/kernel:0m_2/attn_focus/kernel/Assignm_2/attn_focus/kernel/read:022m_2/attn_focus/kernel/Initializer/random_uniform:08
z
m_2/attn_focus/bias:0m_2/attn_focus/bias/Assignm_2/attn_focus/bias/read:02'm_2/attn_focus/bias/Initializer/zeros:08
{
m_2/gru_cell/w_ru:0m_2/gru_cell/w_ru/Assignm_2/gru_cell/w_ru/read:02.m_2/gru_cell/w_ru/Initializer/random_uniform:08
r
m_2/gru_cell/b_ru:0m_2/gru_cell/b_ru/Assignm_2/gru_cell/b_ru/read:02%m_2/gru_cell/b_ru/Initializer/Const:08
w
m_2/gru_cell/w_c:0m_2/gru_cell/w_c/Assignm_2/gru_cell/w_c/read:02-m_2/gru_cell/w_c/Initializer/random_uniform:08
n
m_2/gru_cell/b_c:0m_2/gru_cell/b_c/Assignm_2/gru_cell/b_c/read:02$m_2/gru_cell/b_c/Initializer/Const:08
?
 m_2/decoder_output_proj/kernel:0%m_2/decoder_output_proj/kernel/Assign%m_2/decoder_output_proj/kernel/read:02;m_2/decoder_output_proj/kernel/Initializer/random_uniform:08
?
m_2/decoder_output_proj/bias:0#m_2/decoder_output_proj/bias/Assign#m_2/decoder_output_proj/bias/read:020m_2/decoder_output_proj/bias/Initializer/zeros:08"?
local_variables??
O
input/hits:0input/hits/Assigninput/hits/read:02input/feeder_vars/Const:0
`
input/lagged_ix:0input/lagged_ix/Assigninput/lagged_ix/read:02input/feeder_vars/Const_1:0
]
input/page_map:0input/page_map/Assigninput/page_map/read:02input/feeder_vars/Const_2:0
Z
input/page_ix:0input/page_ix/Assigninput/page_ix/read:02input/feeder_vars/Const_3:0
]
input/pf_agent:0input/pf_agent/Assigninput/pf_agent/read:02input/feeder_vars/Const_4:0
c
input/pf_country:0input/pf_country/Assigninput/pf_country/read:02input/feeder_vars/Const_5:0
Z
input/pf_site:0input/pf_site/Assigninput/pf_site/read:02input/feeder_vars/Const_6:0
r
input/page_popularity:0input/page_popularity/Assigninput/page_popularity/read:02input/feeder_vars/Const_7:0
l
input/year_autocorr:0input/year_autocorr/Assigninput/year_autocorr/read:02input/feeder_vars/Const_8:0
u
input/quarter_autocorr:0input/quarter_autocorr/Assigninput/quarter_autocorr/read:02input/feeder_vars/Const_9:0
O
input/dow:0input/dow/Assigninput/dow/read:02input/feeder_vars/Const_10:0*?
serving_default?
4
input+
input/IteratorGetNext:10?????????3
output)
	m_0/add:0??????????????????tensorflow/serving/predict