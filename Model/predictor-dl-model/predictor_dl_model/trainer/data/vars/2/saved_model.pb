??
?,?,
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
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
shared_namestring ?"serve*1.10.02
b'unknown'8??
}
input/feeder_vars/ConstConst"/device:CPU:0*
valueB	?\Z*    *
dtype0*
_output_shapes
:	?\Z
k

input/hits
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
:	?\Z*
shape:	?\Z
?
input/hits/AssignAssign
input/hitsinput/feeder_vars/Const"/device:CPU:0*
T0*
_class
loc:@input/hits*
_output_shapes
:	?\Z

input/hits/readIdentity
input/hits"/device:CPU:0*
T0*
_class
loc:@input/hits*
_output_shapes
:	?\Z
z
input/feeder_vars/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes

:Z*
valueBZ: 
n
input/lagged_ix
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:Z*
shape
:Z
?
input/lagged_ix/AssignAssigninput/lagged_ixinput/feeder_vars/Const_1"/device:CPU:0*
T0*"
_class
loc:@input/lagged_ix*
_output_shapes

:Z
?
input/lagged_ix/readIdentityinput/lagged_ix"/device:CPU:0*
_output_shapes

:Z*
T0*"
_class
loc:@input/lagged_ix
s
input/feeder_vars/Const_2Const"/device:CPU:0*
valueB?\B *
dtype0*
_output_shapes	
:?\
f
input/page_ix
VariableV2"/device:CPU:0*
shape:?\*
dtype0*
_output_shapes	
:?\
?
input/page_ix/AssignAssigninput/page_ixinput/feeder_vars/Const_2"/device:CPU:0*
T0* 
_class
loc:@input/page_ix*
_output_shapes	
:?\
?
input/page_ix/readIdentityinput/page_ix"/device:CPU:0*
T0* 
_class
loc:@input/page_ix*
_output_shapes	
:?\

input/feeder_vars/Const_3Const"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
valueB	?\*    
m
input/pf_age
VariableV2"/device:CPU:0*
shape:	?\*
dtype0*
_output_shapes
:	?\
?
input/pf_age/AssignAssigninput/pf_ageinput/feeder_vars/Const_3"/device:CPU:0*
T0*
_class
loc:@input/pf_age*
_output_shapes
:	?\
?
input/pf_age/readIdentityinput/pf_age"/device:CPU:0*
_output_shapes
:	?\*
T0*
_class
loc:@input/pf_age

input/feeder_vars/Const_4Const"/device:CPU:0*
valueB	?\*    *
dtype0*
_output_shapes
:	?\
l
input/pf_si
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
shape:	?\
?
input/pf_si/AssignAssigninput/pf_siinput/feeder_vars/Const_4"/device:CPU:0*
T0*
_class
loc:@input/pf_si*
_output_shapes
:	?\
?
input/pf_si/readIdentityinput/pf_si"/device:CPU:0*
T0*
_class
loc:@input/pf_si*
_output_shapes
:	?\

input/feeder_vars/Const_5Const"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
valueB	?\*    
q
input/pf_network
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
shape:	?\
?
input/pf_network/AssignAssigninput/pf_networkinput/feeder_vars/Const_5"/device:CPU:0*
T0*#
_class
loc:@input/pf_network*
_output_shapes
:	?\
?
input/pf_network/readIdentityinput/pf_network"/device:CPU:0*
_output_shapes
:	?\*
T0*#
_class
loc:@input/pf_network

input/feeder_vars/Const_6Const"/device:CPU:0*
valueB	?\*    *
dtype0*
_output_shapes
:	?\
s
input/pf_price_cat
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
shape:	?\
?
input/pf_price_cat/AssignAssigninput/pf_price_catinput/feeder_vars/Const_6"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat*
_output_shapes
:	?\
?
input/pf_price_cat/readIdentityinput/pf_price_cat"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat*
_output_shapes
:	?\

input/feeder_vars/Const_7Const"/device:CPU:0*
dtype0*
_output_shapes
:	?\*
valueB	?\*    
p
input/pf_gender
VariableV2"/device:CPU:0*
shape:	?\*
dtype0*
_output_shapes
:	?\
?
input/pf_gender/AssignAssigninput/pf_genderinput/feeder_vars/Const_7"/device:CPU:0*
T0*"
_class
loc:@input/pf_gender*
_output_shapes
:	?\
?
input/pf_gender/readIdentityinput/pf_gender"/device:CPU:0*
T0*"
_class
loc:@input/pf_gender*
_output_shapes
:	?\
w
input/feeder_vars/Const_8Const"/device:CPU:0*
valueB?\*    *
dtype0*
_output_shapes	
:?\
n
input/page_popularity
VariableV2"/device:CPU:0*
dtype0*
_output_shapes	
:?\*
shape:?\
?
input/page_popularity/AssignAssigninput/page_popularityinput/feeder_vars/Const_8"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes	
:?\
?
input/page_popularity/readIdentityinput/page_popularity"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes	
:?\
w
input/feeder_vars/Const_9Const"/device:CPU:0*
dtype0*
_output_shapes	
:?\*
valueB?\*    
o
input/quarter_autocorr
VariableV2"/device:CPU:0*
dtype0*
_output_shapes	
:?\*
shape:?\
?
input/quarter_autocorr/AssignAssigninput/quarter_autocorrinput/feeder_vars/Const_9"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes	
:?\
?
input/quarter_autocorr/readIdentityinput/quarter_autocorr"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes	
:?\
~
input/feeder_vars/Const_10Const"/device:CPU:0*
dtype0*
_output_shapes

:Z*
valueBZ*    
h
	input/dow
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:Z*
shape
:Z
?
input/dow/AssignAssign	input/dowinput/feeder_vars/Const_10"/device:CPU:0*
_output_shapes

:Z*
T0*
_class
loc:@input/dow
{
input/dow/readIdentity	input/dow"/device:CPU:0*
T0*
_class
loc:@input/dow*
_output_shapes

:Z
~
input/feeder_vars/Const_11Const"/device:CPU:0*
valueBZ*    *
dtype0*
_output_shapes

:Z
l
input/holiday
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:Z*
shape
:Z
?
input/holiday/AssignAssigninput/holidayinput/feeder_vars/Const_11"/device:CPU:0*
T0* 
_class
loc:@input/holiday*
_output_shapes

:Z
?
input/holiday/readIdentityinput/holiday"/device:CPU:0*
T0* 
_class
loc:@input/holiday*
_output_shapes

:Z
p
input/varfeeder_saver/ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
)input/varfeeder_saver/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?BdowBhitsBholidayB	lagged_ixBpage_ixBpage_popularityBpf_ageB	pf_genderB
pf_networkBpf_price_catBpf_siBquarter_autocorr*
dtype0*
_output_shapes
:
?
-input/varfeeder_saver/SaveV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
input/varfeeder_saver/SaveV2SaveV2input/varfeeder_saver/Const)input/varfeeder_saver/SaveV2/tensor_names-input/varfeeder_saver/SaveV2/shape_and_slices	input/dow
input/hitsinput/holidayinput/lagged_ixinput/page_ixinput/page_popularityinput/pf_ageinput/pf_genderinput/pf_networkinput/pf_price_catinput/pf_siinput/quarter_autocorr"/device:CPU:0*
dtypes
2
?
(input/varfeeder_saver/control_dependencyIdentityinput/varfeeder_saver/Const^input/varfeeder_saver/SaveV2"/device:CPU:0*
T0*.
_class$
" loc:@input/varfeeder_saver/Const*
_output_shapes
: 
?
,input/varfeeder_saver/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BdowBhitsBholidayB	lagged_ixBpage_ixBpage_popularityBpf_ageB	pf_genderB
pf_networkBpf_price_catBpf_siBquarter_autocorr*
dtype0*
_output_shapes
:
?
0input/varfeeder_saver/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
input/varfeeder_saver/RestoreV2	RestoreV2input/varfeeder_saver/Const,input/varfeeder_saver/RestoreV2/tensor_names0input/varfeeder_saver/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2
?
input/varfeeder_saver/AssignAssign	input/dowinput/varfeeder_saver/RestoreV2"/device:CPU:0*
T0*
_class
loc:@input/dow*
_output_shapes

:Z
?
input/varfeeder_saver/Assign_1Assign
input/hits!input/varfeeder_saver/RestoreV2:1"/device:CPU:0*
_output_shapes
:	?\Z*
T0*
_class
loc:@input/hits
?
input/varfeeder_saver/Assign_2Assigninput/holiday!input/varfeeder_saver/RestoreV2:2"/device:CPU:0*
_output_shapes

:Z*
T0* 
_class
loc:@input/holiday
?
input/varfeeder_saver/Assign_3Assigninput/lagged_ix!input/varfeeder_saver/RestoreV2:3"/device:CPU:0*
_output_shapes

:Z*
T0*"
_class
loc:@input/lagged_ix
?
input/varfeeder_saver/Assign_4Assigninput/page_ix!input/varfeeder_saver/RestoreV2:4"/device:CPU:0*
T0* 
_class
loc:@input/page_ix*
_output_shapes	
:?\
?
input/varfeeder_saver/Assign_5Assigninput/page_popularity!input/varfeeder_saver/RestoreV2:5"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes	
:?\
?
input/varfeeder_saver/Assign_6Assigninput/pf_age!input/varfeeder_saver/RestoreV2:6"/device:CPU:0*
T0*
_class
loc:@input/pf_age*
_output_shapes
:	?\
?
input/varfeeder_saver/Assign_7Assigninput/pf_gender!input/varfeeder_saver/RestoreV2:7"/device:CPU:0*
_output_shapes
:	?\*
T0*"
_class
loc:@input/pf_gender
?
input/varfeeder_saver/Assign_8Assigninput/pf_network!input/varfeeder_saver/RestoreV2:8"/device:CPU:0*
T0*#
_class
loc:@input/pf_network*
_output_shapes
:	?\
?
input/varfeeder_saver/Assign_9Assigninput/pf_price_cat!input/varfeeder_saver/RestoreV2:9"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat*
_output_shapes
:	?\
?
input/varfeeder_saver/Assign_10Assigninput/pf_si"input/varfeeder_saver/RestoreV2:10"/device:CPU:0*
T0*
_class
loc:@input/pf_si*
_output_shapes
:	?\
?
input/varfeeder_saver/Assign_11Assigninput/quarter_autocorr"input/varfeeder_saver/RestoreV2:11"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes	
:?\
?
!input/varfeeder_saver/restore_allNoOp^input/varfeeder_saver/Assign^input/varfeeder_saver/Assign_1 ^input/varfeeder_saver/Assign_10 ^input/varfeeder_saver/Assign_11^input/varfeeder_saver/Assign_2^input/varfeeder_saver/Assign_3^input/varfeeder_saver/Assign_4^input/varfeeder_saver/Assign_5^input/varfeeder_saver/Assign_6^input/varfeeder_saver/Assign_7^input/varfeeder_saver/Assign_8^input/varfeeder_saver/Assign_9"/device:CPU:0
\
input/countConst"/device:CPU:0*
dtype0	*
_output_shapes
: *
value	B	 R
i
input/num_parallel_callsConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
b
input/batch_sizeConst"/device:CPU:0*
value
B	 R?*
dtype0	*
_output_shapes
: 
e
input/drop_remainderConst"/device:CPU:0*
value	B
 Z *
dtype0
*
_output_shapes
: 
b
input/buffer_sizeConst"/device:CPU:0*
value	B	 R*
dtype0	*
_output_shapes
: 
?
input/IteratorIterator"/device:CPU:0*
_output_shapes
: *
	container *
output_types
2*
shared_name *?
output_shapes?
?:?????????<:?????????<:?????????<:?????????<:?????????
:?????????
:?????????
:?????????:?????????:?????????:?????????
?
input/TensorSliceDatasetTensorSliceDatasetinput/hits/readinput/pf_age/readinput/pf_si/readinput/pf_network/readinput/pf_gender/readinput/page_ix/readinput/pf_price_cat/readinput/page_popularity/readinput/quarter_autocorr/read"/device:CPU:0*
_output_shapes
: *=
output_shapes,
*:Z::::: :: : *!
_class
loc:@input/Iterator*
Toutput_types
2	
?
input/RepeatDatasetRepeatDatasetinput/TensorSliceDatasetinput/count"/device:CPU:0*
output_types
2	*=
output_shapes,
*:Z::::: :: : *!
_class
loc:@input/Iterator*
_output_shapes
: 
?
input/MapDataset
MapDatasetinput/RepeatDatasetinput/dow/readinput/lagged_ix/read"/device:CPU:0*

Targuments
2*
_output_shapes
: *W
output_shapesF
D:<:
:F:F::::: :: : *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_epZmJMI8HJI* 
output_types
2
?
input/FilterDatasetFilterDatasetinput/MapDataset"/device:CPU:0* 
output_types
2*

Targuments
 *@
	predicate3R1
/tf_data_structured_function_wrapper_rQZVAeA9Zw4*
_output_shapes
: *W
output_shapesF
D:<:
:F:F::::: :: : *!
_class
loc:@input/Iterator
?
input/ParallelMapDatasetParallelMapDatasetinput/FilterDatasetinput/num_parallel_calls"/device:CPU:0*U
output_shapesD
B:<:<:<:<:
:
:
: : :: *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_V9fT6glnYME*
output_types
2*

Targuments
 *
_output_shapes
: 
?
input/BatchDatasetV2BatchDatasetV2input/ParallelMapDatasetinput/batch_sizeinput/drop_remainder"/device:CPU:0*?
output_shapes?
?:?????????<:?????????<:?????????<:?????????<:?????????
:?????????
:?????????
:?????????:?????????:?????????:?????????*!
_class
loc:@input/Iterator*
_output_shapes
: *
output_types
2
?
input/PrefetchDatasetPrefetchDatasetinput/BatchDatasetV2input/buffer_size"/device:CPU:0*?
output_shapes?
?:?????????<:?????????<:?????????<:?????????<:?????????
:?????????
:?????????
:?????????:?????????:?????????:?????????*!
_class
loc:@input/Iterator*
_output_shapes
: *
output_types
2
{
input/MakeIteratorMakeIteratorinput/PrefetchDatasetinput/Iterator"/device:CPU:0*!
_class
loc:@input/Iterator
m
input/IteratorToStringHandleIteratorToStringHandleinput/Iterator"/device:CPU:0*
_output_shapes
: 
?
input/IteratorGetNextIteratorGetNextinput/Iterator"/device:CPU:0*?
output_shapes?
?:?????????<:?????????<:?????????<:?????????<:?????????
:?????????
:?????????
:?????????:?????????:?????????:?????????*?
_output_shapes?
?:?????????<:?????????<:?????????<:?????????<:?????????
:?????????
:?????????
:?????????:?????????:?????????:?????????*
output_types
2
c
transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
u
	transpose	Transposeinput/IteratorGetNext:1transpose/perm*
T0*+
_output_shapes
:<?????????
T
cudnn_gru/rnn/RankConst*
dtype0*
_output_shapes
: *
value	B :
[
cudnn_gru/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
[
cudnn_gru/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/rangeRangecudnn_gru/rnn/range/startcudnn_gru/rnn/Rankcudnn_gru/rnn/range/delta*
_output_shapes
:
n
cudnn_gru/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
[
cudnn_gru/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/concatConcatV2cudnn_gru/rnn/concat/values_0cudnn_gru/rnn/rangecudnn_gru/rnn/concat/axis*
T0*
N*
_output_shapes
:
?
cudnn_gru/rnn/transpose	Transposeinput/IteratorGetNext:1cudnn_gru/rnn/concat*+
_output_shapes
:<?????????*
T0
Z
cudnn_gru/rnn/ShapeShapecudnn_gru/rnn/transpose*
T0*
_output_shapes
:
k
!cudnn_gru/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
m
#cudnn_gru/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#cudnn_gru/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
cudnn_gru/rnn/strided_sliceStridedSlicecudnn_gru/rnn/Shape!cudnn_gru/rnn/strided_slice/stack#cudnn_gru/rnn/strided_slice/stack_1#cudnn_gru/rnn/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
?
Rcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
Ncudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims
ExpandDimscudnn_gru/rnn/strided_sliceRcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dim*
_output_shapes
:*
T0
?
Icudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
?
Ocudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
Jcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatConcatV2Ncudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDimsIcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstOcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:
?
Ocudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
Icudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zerosFillJcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatOcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/Const*(
_output_shapes
:??????????*
T0
?
Tcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
Pcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1
ExpandDimscudnn_gru/rnn/strided_sliceTcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:
?
Kcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
\
cudnn_gru/rnn/Shape_1Shapecudnn_gru/rnn/transpose*
T0*
_output_shapes
:
m
#cudnn_gru/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%cudnn_gru/rnn/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
o
%cudnn_gru/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
cudnn_gru/rnn/strided_slice_1StridedSlicecudnn_gru/rnn/Shape_1#cudnn_gru/rnn/strided_slice_1/stack%cudnn_gru/rnn/strided_slice_1/stack_1%cudnn_gru/rnn/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
\
cudnn_gru/rnn/Shape_2Shapecudnn_gru/rnn/transpose*
T0*
_output_shapes
:
m
#cudnn_gru/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
o
%cudnn_gru/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%cudnn_gru/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
cudnn_gru/rnn/strided_slice_2StridedSlicecudnn_gru/rnn/Shape_2#cudnn_gru/rnn/strided_slice_2/stack%cudnn_gru/rnn/strided_slice_2/stack_1%cudnn_gru/rnn/strided_slice_2/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
^
cudnn_gru/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/ExpandDims
ExpandDimscudnn_gru/rnn/strided_slice_2cudnn_gru/rnn/ExpandDims/dim*
T0*
_output_shapes
:
^
cudnn_gru/rnn/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
]
cudnn_gru/rnn/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
cudnn_gru/rnn/concat_1ConcatV2cudnn_gru/rnn/ExpandDimscudnn_gru/rnn/Constcudnn_gru/rnn/concat_1/axis*
T0*
N*
_output_shapes
:
^
cudnn_gru/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/zerosFillcudnn_gru/rnn/concat_1cudnn_gru/rnn/zeros/Const*
T0*(
_output_shapes
:??????????
T
cudnn_gru/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/TensorArrayTensorArrayV3cudnn_gru/rnn/strided_slice_1*%
element_shape:??????????*9
tensor_array_name$"cudnn_gru/rnn/dynamic_rnn/output_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
?
cudnn_gru/rnn/TensorArray_1TensorArrayV3cudnn_gru/rnn/strided_slice_1*
dtype0*
_output_shapes

:: *$
element_shape:?????????*8
tensor_array_name#!cudnn_gru/rnn/dynamic_rnn/input_0*
identical_element_shapes(
m
&cudnn_gru/rnn/TensorArrayUnstack/ShapeShapecudnn_gru/rnn/transpose*
T0*
_output_shapes
:
~
4cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
?
6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
?
6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
.cudnn_gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice&cudnn_gru/rnn/TensorArrayUnstack/Shape4cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_16cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
n
,cudnn_gru/rnn/TensorArrayUnstack/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
n
,cudnn_gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
&cudnn_gru/rnn/TensorArrayUnstack/rangeRange,cudnn_gru/rnn/TensorArrayUnstack/range/start.cudnn_gru/rnn/TensorArrayUnstack/strided_slice,cudnn_gru/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????
?
Hcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3cudnn_gru/rnn/TensorArray_1&cudnn_gru/rnn/TensorArrayUnstack/rangecudnn_gru/rnn/transposecudnn_gru/rnn/TensorArray_1:1*
T0**
_class 
loc:@cudnn_gru/rnn/transpose*
_output_shapes
: 
Y
cudnn_gru/rnn/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
y
cudnn_gru/rnn/MaximumMaximumcudnn_gru/rnn/Maximum/xcudnn_gru/rnn/strided_slice_1*
T0*
_output_shapes
: 
w
cudnn_gru/rnn/MinimumMinimumcudnn_gru/rnn/strided_slice_1cudnn_gru/rnn/Maximum*
_output_shapes
: *
T0
g
%cudnn_gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/while/EnterEnter%cudnn_gru/rnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context*
T0
?
cudnn_gru/rnn/while/Enter_1Entercudnn_gru/rnn/time*
T0*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
?
cudnn_gru/rnn/while/Enter_2Entercudnn_gru/rnn/TensorArray:1*
T0*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
?
cudnn_gru/rnn/while/Enter_3EnterIcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros*
T0*
parallel_iterations *(
_output_shapes
:??????????*1

frame_name#!cudnn_gru/rnn/while/while_context
?
cudnn_gru/rnn/while/MergeMergecudnn_gru/rnn/while/Enter!cudnn_gru/rnn/while/NextIteration*
N*
_output_shapes
: : *
T0
?
cudnn_gru/rnn/while/Merge_1Mergecudnn_gru/rnn/while/Enter_1#cudnn_gru/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
?
cudnn_gru/rnn/while/Merge_2Mergecudnn_gru/rnn/while/Enter_2#cudnn_gru/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
?
cudnn_gru/rnn/while/Merge_3Mergecudnn_gru/rnn/while/Enter_3#cudnn_gru/rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:??????????: 
|
cudnn_gru/rnn/while/LessLesscudnn_gru/rnn/while/Mergecudnn_gru/rnn/while/Less/Enter*
T0*
_output_shapes
: 
?
cudnn_gru/rnn/while/Less/EnterEntercudnn_gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
?
cudnn_gru/rnn/while/Less_1Lesscudnn_gru/rnn/while/Merge_1 cudnn_gru/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
?
 cudnn_gru/rnn/while/Less_1/EnterEntercudnn_gru/rnn/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
z
cudnn_gru/rnn/while/LogicalAnd
LogicalAndcudnn_gru/rnn/while/Lesscudnn_gru/rnn/while/Less_1*
_output_shapes
: 
`
cudnn_gru/rnn/while/LoopCondLoopCondcudnn_gru/rnn/while/LogicalAnd*
_output_shapes
: 
?
cudnn_gru/rnn/while/SwitchSwitchcudnn_gru/rnn/while/Mergecudnn_gru/rnn/while/LoopCond*
T0*,
_class"
 loc:@cudnn_gru/rnn/while/Merge*
_output_shapes
: : 
?
cudnn_gru/rnn/while/Switch_1Switchcudnn_gru/rnn/while/Merge_1cudnn_gru/rnn/while/LoopCond*
_output_shapes
: : *
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_1
?
cudnn_gru/rnn/while/Switch_2Switchcudnn_gru/rnn/while/Merge_2cudnn_gru/rnn/while/LoopCond*
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_2*
_output_shapes
: : 
?
cudnn_gru/rnn/while/Switch_3Switchcudnn_gru/rnn/while/Merge_3cudnn_gru/rnn/while/LoopCond*
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_3*<
_output_shapes*
(:??????????:??????????
g
cudnn_gru/rnn/while/IdentityIdentitycudnn_gru/rnn/while/Switch:1*
T0*
_output_shapes
: 
k
cudnn_gru/rnn/while/Identity_1Identitycudnn_gru/rnn/while/Switch_1:1*
T0*
_output_shapes
: 
k
cudnn_gru/rnn/while/Identity_2Identitycudnn_gru/rnn/while/Switch_2:1*
T0*
_output_shapes
: 
}
cudnn_gru/rnn/while/Identity_3Identitycudnn_gru/rnn/while/Switch_3:1*
T0*(
_output_shapes
:??????????
z
cudnn_gru/rnn/while/add/yConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
x
cudnn_gru/rnn/while/addAddcudnn_gru/rnn/while/Identitycudnn_gru/rnn/while/add/y*
T0*
_output_shapes
: 
?
%cudnn_gru/rnn/while/TensorArrayReadV3TensorArrayReadV3+cudnn_gru/rnn/while/TensorArrayReadV3/Entercudnn_gru/rnn/while/Identity_1-cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
+cudnn_gru/rnn/while/TensorArrayReadV3/EnterEntercudnn_gru/rnn/TensorArray_1*
parallel_iterations *
_output_shapes
:*1

frame_name#!cudnn_gru/rnn/while/while_context*
T0*
is_constant(
?
-cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1EnterHcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
?
kcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB"?     *
dtype0*
_output_shapes
:
?
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/minConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *??L=
?
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformkcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
seed2
?
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/subSubicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
?
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulMulscudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformAddicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shape:
??*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
?
Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignAssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/readIdentityJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
T0* 
_output_shapes
:
??
?
Zcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/ConstConst*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
Hcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shape:?*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
?
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignAssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasZcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:?
?
Mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/readIdentityHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shapeConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB"   ?  *
dtype0*
_output_shapes
:
?
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/minConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L?*
dtype0*
_output_shapes
: 
?
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/maxConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
seed2
?
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/subSub~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/max~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
?
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mulMul?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniform~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/sub*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
zcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformAdd~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mul~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
VariableV2*
shape:	?*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
dtype0*
_output_shapes
:	?
?
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/AssignAssign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelzcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/readIdentity_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?*
T0
?
?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB"?  ?  
?
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L?
?
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxConst*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *??L=*
dtype0*
_output_shapes
: 
?
?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniform?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*
seed???)*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
seed2
?
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/subSubcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
?
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulMul?cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/sub*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformAddcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
VariableV2*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
dtype0* 
_output_shapes
:
??*
shape:
??
?
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/AssignAssign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/readIdentity`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
T0* 
_output_shapes
:
??
?
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:?*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueB?*    
?
]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
VariableV2*
shape:?*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
dtype0*
_output_shapes	
:?
?
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/AssignAssign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:?
?
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/readIdentity]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
T0*
_output_shapes	
:?
?
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zerosConst*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueB?*    *
dtype0*
_output_shapes	
:?
?
^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
VariableV2*
shape:?*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
dtype0*
_output_shapes	
:?
?
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaspcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:?
?
ccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/readIdentity^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:?*
T0
?
Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axisConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Ncudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatConcatV2%cudnn_gru/rnn/while/TensorArrayReadV3cudnn_gru/rnn/while/Identity_3Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis*
N*(
_output_shapes
:??????????*
T0
?
Ncudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulMatMulNcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatTcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter*(
_output_shapes
:??????????*
T0
?
Tcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/EnterEnterOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAddBiasAddNcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulUcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter*
T0*(
_output_shapes
:??????????
?
Ucudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/EnterEnterMcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/SigmoidSigmoidOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd*(
_output_shapes
:??????????*
T0
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/ConstConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitSplitWcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid*<
_output_shapes*
(:??????????:??????????*
	num_split*
T0
?
Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1MatMul%cudnn_gru/rnn/while/TensorArrayReadV3Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter*
T0*(
_output_shapes
:??????????
?
Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/EnterEnterdcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	?*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1BiasAddPcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter*
T0*(
_output_shapes
:??????????
?
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/EnterEnterbcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2MatMulcudnn_gru/rnn/while/Identity_3Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter*
T0*(
_output_shapes
:??????????
?
Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/EnterEnterecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
??*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2BiasAddPcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter*(
_output_shapes
:??????????*
T0
?
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/EnterEnterccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:?*1

frame_name#!cudnn_gru/rnn/while/while_context
?
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mulMulMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitQcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2*
T0*(
_output_shapes
:??????????
?
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/addAddQcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul*
T0*(
_output_shapes
:??????????
?
Lcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/TanhTanhKcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add*
T0*(
_output_shapes
:??????????
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xConst^cudnn_gru/rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subSubMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1MulKcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subLcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh*(
_output_shapes
:??????????*
T0
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2MulOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1cudnn_gru/rnn/while/Identity_3*
T0*(
_output_shapes
:??????????
?
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1AddMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2*
T0*(
_output_shapes
:??????????
?
7cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3=cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Entercudnn_gru/rnn/while/Identity_1Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1cudnn_gru/rnn/while/Identity_2*
T0*`
_classV
TRloc:@cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
_output_shapes
: 
?
=cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntercudnn_gru/rnn/TensorArray*
parallel_iterations *
is_constant(*
_output_shapes
:*1

frame_name#!cudnn_gru/rnn/while/while_context*
T0*`
_classV
TRloc:@cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1
|
cudnn_gru/rnn/while/add_1/yConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
~
cudnn_gru/rnn/while/add_1Addcudnn_gru/rnn/while/Identity_1cudnn_gru/rnn/while/add_1/y*
T0*
_output_shapes
: 
l
!cudnn_gru/rnn/while/NextIterationNextIterationcudnn_gru/rnn/while/add*
_output_shapes
: *
T0
p
#cudnn_gru/rnn/while/NextIteration_1NextIterationcudnn_gru/rnn/while/add_1*
T0*
_output_shapes
: 
?
#cudnn_gru/rnn/while/NextIteration_2NextIteration7cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
?
#cudnn_gru/rnn/while/NextIteration_3NextIterationMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
T0*(
_output_shapes
:??????????
]
cudnn_gru/rnn/while/ExitExitcudnn_gru/rnn/while/Switch*
_output_shapes
: *
T0
a
cudnn_gru/rnn/while/Exit_1Exitcudnn_gru/rnn/while/Switch_1*
T0*
_output_shapes
: 
a
cudnn_gru/rnn/while/Exit_2Exitcudnn_gru/rnn/while/Switch_2*
T0*
_output_shapes
: 
s
cudnn_gru/rnn/while/Exit_3Exitcudnn_gru/rnn/while/Switch_3*(
_output_shapes
:??????????*
T0
?
0cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3cudnn_gru/rnn/TensorArraycudnn_gru/rnn/while/Exit_2*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
_output_shapes
: 
?
*cudnn_gru/rnn/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
value	B : 
?
*cudnn_gru/rnn/TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
value	B :
?
$cudnn_gru/rnn/TensorArrayStack/rangeRange*cudnn_gru/rnn/TensorArrayStack/range/start0cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3*cudnn_gru/rnn/TensorArrayStack/range/delta*#
_output_shapes
:?????????*,
_class"
 loc:@cudnn_gru/rnn/TensorArray
?
2cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3cudnn_gru/rnn/TensorArray$cudnn_gru/rnn/TensorArrayStack/rangecudnn_gru/rnn/while/Exit_2*%
element_shape:??????????*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
dtype0*,
_output_shapes
:<??????????
`
cudnn_gru/rnn/Const_1Const*
valueB:?*
dtype0*
_output_shapes
:
V
cudnn_gru/rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
]
cudnn_gru/rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
]
cudnn_gru/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/range_1Rangecudnn_gru/rnn/range_1/startcudnn_gru/rnn/Rank_1cudnn_gru/rnn/range_1/delta*
_output_shapes
:
p
cudnn_gru/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
]
cudnn_gru/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/rnn/concat_2ConcatV2cudnn_gru/rnn/concat_2/values_0cudnn_gru/rnn/range_1cudnn_gru/rnn/concat_2/axis*
N*
_output_shapes
:*
T0
?
cudnn_gru/rnn/transpose_1	Transpose2cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3cudnn_gru/rnn/concat_2*
T0*,
_output_shapes
:?????????<?
m
cudnn_gru/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
?
cudnn_gru/transpose	Transposecudnn_gru/rnn/transpose_1cudnn_gru/transpose/perm*,
_output_shapes
:<??????????*
T0
Z
cudnn_gru/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
?
cudnn_gru/ExpandDims
ExpandDimscudnn_gru/rnn/while/Exit_3cudnn_gru/ExpandDims/dim*,
_output_shapes
:??????????*
T0
F
L2LossL2Losscudnn_gru/transpose*
T0*
_output_shapes
: 
J
mul/yConst*
valueB
 *c*?2*
dtype0*
_output_shapes
: 
:
mulMulL2Lossmul/y*
T0*
_output_shapes
: 
e
unstackUnpackcudnn_gru/ExpandDims*	
num*
T0*(
_output_shapes
:??????????
d
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"    ????
f
strided_slice/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
f
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
?
strided_sliceStridedSliceinput/IteratorGetNext:2strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:?????????*
Index0*
T0
e
transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
y
transpose_1	Transposeinput/IteratorGetNext:5transpose_1/perm*
T0*+
_output_shapes
:
?????????
G
ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Y
ExpandDims/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
i

ExpandDims
ExpandDimsstrided_sliceExpandDims/dim*
T0*'
_output_shapes
:?????????
R
TensorArray/sizeConst*
value	B :
*
dtype0*
_output_shapes
: 
y
TensorArrayTensorArrayV3TensorArray/size*
dtype0*
_output_shapes

:: *
identical_element_shapes(
T
TensorArray_1/sizeConst*
value	B :
*
dtype0*
_output_shapes
: 
}
TensorArray_1TensorArrayV3TensorArray_1/size*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
a
while/EnterEnterConst*
T0*
_output_shapes
: *#

frame_namewhile/while_context
y
while/Enter_1Enter
ExpandDims*
T0*'
_output_shapes
:?????????*#

frame_namewhile/while_context
w
while/Enter_2Enterunstack*
T0*(
_output_shapes
:??????????*#

frame_namewhile/while_context
k
while/Enter_3EnterTensorArray:1*
T0*
_output_shapes
: *#

frame_namewhile/while_context
m
while/Enter_4EnterTensorArray_1:1*
T0*
_output_shapes
: *#

frame_namewhile/while_context
b
while/MergeMergewhile/Enterwhile/NextIteration*
N*
_output_shapes
: : *
T0
y
while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N*)
_output_shapes
:?????????: 
z
while/Merge_2Mergewhile/Enter_2while/NextIteration_2*
T0*
N**
_output_shapes
:??????????: 
h
while/Merge_3Mergewhile/Enter_3while/NextIteration_3*
T0*
N*
_output_shapes
: : 
h
while/Merge_4Mergewhile/Enter_4while/NextIteration_4*
T0*
N*
_output_shapes
: : 
\
while/Less/yConst^while/Merge*
value	B :
*
dtype0*
_output_shapes
: 
N

while/LessLesswhile/Mergewhile/Less/y*
T0*
_output_shapes
: 
>
while/LoopCondLoopCond
while/Less*
_output_shapes
: 
v
while/SwitchSwitchwhile/Mergewhile/LoopCond*
_output_shapes
: : *
T0*
_class
loc:@while/Merge
?
while/Switch_1Switchwhile/Merge_1while/LoopCond*
T0* 
_class
loc:@while/Merge_1*:
_output_shapes(
&:?????????:?????????
?
while/Switch_2Switchwhile/Merge_2while/LoopCond*
T0* 
_class
loc:@while/Merge_2*<
_output_shapes*
(:??????????:??????????
|
while/Switch_3Switchwhile/Merge_3while/LoopCond*
_output_shapes
: : *
T0* 
_class
loc:@while/Merge_3
|
while/Switch_4Switchwhile/Merge_4while/LoopCond*
T0* 
_class
loc:@while/Merge_4*
_output_shapes
: : 
K
while/IdentityIdentitywhile/Switch:1*
_output_shapes
: *
T0
`
while/Identity_1Identitywhile/Switch_1:1*
T0*'
_output_shapes
:?????????
a
while/Identity_2Identitywhile/Switch_2:1*
T0*(
_output_shapes
:??????????
O
while/Identity_3Identitywhile/Switch_3:1*
_output_shapes
: *
T0
O
while/Identity_4Identitywhile/Switch_4:1*
_output_shapes
: *
T0
^
while/add/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
N
	while/addAddwhile/Identitywhile/add/y*
T0*
_output_shapes
: 
_
while/strided_slice/stackPackwhile/Identity*
T0*
N*
_output_shapes
:
\
while/strided_slice/stack_1Pack	while/add*
T0*
N*
_output_shapes
:
v
while/strided_slice/stack_2Const^while/Identity*
valueB:*
dtype0*
_output_shapes
:
?
while/strided_sliceStridedSlicewhile/strided_slice/Enterwhile/strided_slice/stackwhile/strided_slice/stack_1while/strided_slice/stack_2*'
_output_shapes
:?????????*
shrink_axis_mask*
T0*
Index0
?
while/strided_slice/EnterEntertranspose_1*+
_output_shapes
:
?????????*#

frame_namewhile/while_context*
T0*
is_constant(
d
while/concat/axisConst^while/Identity*
dtype0*
_output_shapes
: *
value	B :
?
while/concatConcatV2while/Identity_1while/strided_slicewhile/concat/axis*
T0*
N*'
_output_shapes
:?????????
?
.gru_cell/w_ru/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:* 
_class
loc:@gru_cell/w_ru*
valueB"?     
?
,gru_cell/w_ru/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: * 
_class
loc:@gru_cell/w_ru*
valueB
 *?c??
?
,gru_cell/w_ru/Initializer/random_uniform/maxConst* 
_class
loc:@gru_cell/w_ru*
valueB
 *?c?=*
dtype0*
_output_shapes
: 
?
6gru_cell/w_ru/Initializer/random_uniform/RandomUniformRandomUniform.gru_cell/w_ru/Initializer/random_uniform/shape*
T0* 
_class
loc:@gru_cell/w_ru*
dtype0* 
_output_shapes
:
??
?
,gru_cell/w_ru/Initializer/random_uniform/subSub,gru_cell/w_ru/Initializer/random_uniform/max,gru_cell/w_ru/Initializer/random_uniform/min*
T0* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
?
,gru_cell/w_ru/Initializer/random_uniform/mulMul6gru_cell/w_ru/Initializer/random_uniform/RandomUniform,gru_cell/w_ru/Initializer/random_uniform/sub*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
??
?
(gru_cell/w_ru/Initializer/random_uniformAdd,gru_cell/w_ru/Initializer/random_uniform/mul,gru_cell/w_ru/Initializer/random_uniform/min*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
??
?
gru_cell/w_ru
VariableV2* 
_class
loc:@gru_cell/w_ru*
dtype0* 
_output_shapes
:
??*
shape:
??
?
gru_cell/w_ru/AssignAssigngru_cell/w_ru(gru_cell/w_ru/Initializer/random_uniform*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
??
z
gru_cell/w_ru/readIdentitygru_cell/w_ru* 
_output_shapes
:
??*
T0* 
_class
loc:@gru_cell/w_ru
?
gru_cell/b_ru/Initializer/ConstConst* 
_class
loc:@gru_cell/b_ru*
valueB?*  ??*
dtype0*
_output_shapes	
:?
y
gru_cell/b_ru
VariableV2* 
_class
loc:@gru_cell/b_ru*
dtype0*
_output_shapes	
:?*
shape:?
?
gru_cell/b_ru/AssignAssigngru_cell/b_rugru_cell/b_ru/Initializer/Const*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:?
u
gru_cell/b_ru/readIdentitygru_cell/b_ru*
_output_shapes	
:?*
T0* 
_class
loc:@gru_cell/b_ru
?
-gru_cell/w_c/Initializer/random_uniform/shapeConst*
_class
loc:@gru_cell/w_c*
valueB"?  ?  *
dtype0*
_output_shapes
:
?
+gru_cell/w_c/Initializer/random_uniform/minConst*
_class
loc:@gru_cell/w_c*
valueB
 *?®?*
dtype0*
_output_shapes
: 
?
+gru_cell/w_c/Initializer/random_uniform/maxConst*
_class
loc:@gru_cell/w_c*
valueB
 *?®=*
dtype0*
_output_shapes
: 
?
5gru_cell/w_c/Initializer/random_uniform/RandomUniformRandomUniform-gru_cell/w_c/Initializer/random_uniform/shape*
T0*
_class
loc:@gru_cell/w_c*
dtype0* 
_output_shapes
:
??
?
+gru_cell/w_c/Initializer/random_uniform/subSub+gru_cell/w_c/Initializer/random_uniform/max+gru_cell/w_c/Initializer/random_uniform/min*
T0*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
?
+gru_cell/w_c/Initializer/random_uniform/mulMul5gru_cell/w_c/Initializer/random_uniform/RandomUniform+gru_cell/w_c/Initializer/random_uniform/sub*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
?
'gru_cell/w_c/Initializer/random_uniformAdd+gru_cell/w_c/Initializer/random_uniform/mul+gru_cell/w_c/Initializer/random_uniform/min*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
?
gru_cell/w_c
VariableV2*
shape:
??*
_class
loc:@gru_cell/w_c*
dtype0* 
_output_shapes
:
??
?
gru_cell/w_c/AssignAssigngru_cell/w_c'gru_cell/w_c/Initializer/random_uniform*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
w
gru_cell/w_c/readIdentitygru_cell/w_c*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
?
gru_cell/b_c/Initializer/ConstConst*
_class
loc:@gru_cell/b_c*
valueB?*    *
dtype0*
_output_shapes	
:?
w
gru_cell/b_c
VariableV2*
_class
loc:@gru_cell/b_c*
dtype0*
_output_shapes	
:?*
shape:?
?
gru_cell/b_c/AssignAssigngru_cell/b_cgru_cell/b_c/Initializer/Const*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:?
r
gru_cell/b_c/readIdentitygru_cell/b_c*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:?
?
while/gru_cell/GRUBlockCellGRUBlockCellwhile/concatwhile/Identity_2!while/gru_cell/GRUBlockCell/Enter#while/gru_cell/GRUBlockCell/Enter_1#while/gru_cell/GRUBlockCell/Enter_2#while/gru_cell/GRUBlockCell/Enter_3*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????
?
!while/gru_cell/GRUBlockCell/EnterEntergru_cell/w_ru/read*
T0*
is_constant(* 
_output_shapes
:
??*#

frame_namewhile/while_context
?
#while/gru_cell/GRUBlockCell/Enter_1Entergru_cell/w_c/read*
T0*
is_constant(* 
_output_shapes
:
??*#

frame_namewhile/while_context
?
#while/gru_cell/GRUBlockCell/Enter_2Entergru_cell/b_ru/read*
T0*
is_constant(*
_output_shapes	
:?*#

frame_namewhile/while_context
?
#while/gru_cell/GRUBlockCell/Enter_3Entergru_cell/b_c/read*
T0*
is_constant(*
_output_shapes	
:?*#

frame_namewhile/while_context
?
;decoder_output_proj/kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB"?     *
dtype0*
_output_shapes
:
?
9decoder_output_proj/kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB
 *ʃ??*
dtype0*
_output_shapes
: 
?
9decoder_output_proj/kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB
 *ʃ?=*
dtype0*
_output_shapes
: 
?
Cdecoder_output_proj/kernel/Initializer/random_uniform/RandomUniformRandomUniform;decoder_output_proj/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*
seed???)*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
seed2
?
9decoder_output_proj/kernel/Initializer/random_uniform/subSub9decoder_output_proj/kernel/Initializer/random_uniform/max9decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 
?
9decoder_output_proj/kernel/Initializer/random_uniform/mulMulCdecoder_output_proj/kernel/Initializer/random_uniform/RandomUniform9decoder_output_proj/kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	?
?
5decoder_output_proj/kernel/Initializer/random_uniformAdd9decoder_output_proj/kernel/Initializer/random_uniform/mul9decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	?
?
decoder_output_proj/kernel
VariableV2*
shape:	?*-
_class#
!loc:@decoder_output_proj/kernel*
dtype0*
_output_shapes
:	?
?
!decoder_output_proj/kernel/AssignAssigndecoder_output_proj/kernel5decoder_output_proj/kernel/Initializer/random_uniform*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	?
?
decoder_output_proj/kernel/readIdentitydecoder_output_proj/kernel*
_output_shapes
:	?*
T0*-
_class#
!loc:@decoder_output_proj/kernel
?
*decoder_output_proj/bias/Initializer/zerosConst*+
_class!
loc:@decoder_output_proj/bias*
valueB*    *
dtype0*
_output_shapes
:
?
decoder_output_proj/bias
VariableV2*
shape:*+
_class!
loc:@decoder_output_proj/bias*
dtype0*
_output_shapes
:
?
decoder_output_proj/bias/AssignAssigndecoder_output_proj/bias*decoder_output_proj/bias/Initializer/zeros*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
?
decoder_output_proj/bias/readIdentitydecoder_output_proj/bias*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
?
 while/decoder_output_proj/MatMulMatMulwhile/gru_cell/GRUBlockCell:3&while/decoder_output_proj/MatMul/Enter*'
_output_shapes
:?????????*
T0
?
&while/decoder_output_proj/MatMul/EnterEnterdecoder_output_proj/kernel/read*
T0*
is_constant(*
_output_shapes
:	?*#

frame_namewhile/while_context
?
!while/decoder_output_proj/BiasAddBiasAdd while/decoder_output_proj/MatMul'while/decoder_output_proj/BiasAdd/Enter*
T0*'
_output_shapes
:?????????
?
'while/decoder_output_proj/BiasAdd/EnterEnterdecoder_output_proj/bias/read*
T0*
is_constant(*
_output_shapes
:*#

frame_namewhile/while_context
?
)while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3/while/TensorArrayWrite/TensorArrayWriteV3/Enterwhile/Identitywhile/gru_cell/GRUBlockCell:3while/Identity_4*
T0*.
_class$
" loc:@while/gru_cell/GRUBlockCell*
_output_shapes
: 
?
/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_1*
_output_shapes
:*#

frame_namewhile/while_context*
T0*.
_class$
" loc:@while/gru_cell/GRUBlockCell*
is_constant(
?
+while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV31while/TensorArrayWrite_1/TensorArrayWriteV3/Enterwhile/Identity!while/decoder_output_proj/BiasAddwhile/Identity_3*
T0*4
_class*
(&loc:@while/decoder_output_proj/BiasAdd*
_output_shapes
: 
?
1while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterTensorArray*
T0*
is_constant(*4
_class*
(&loc:@while/decoder_output_proj/BiasAdd*#

frame_namewhile/while_context*
_output_shapes
:
`
while/add_1/yConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 
R
while/add_1Addwhile/Identitywhile/add_1/y*
T0*
_output_shapes
: 
R
while/NextIterationNextIterationwhile/add_1*
T0*
_output_shapes
: 
{
while/NextIteration_1NextIteration!while/decoder_output_proj/BiasAdd*'
_output_shapes
:?????????*
T0
x
while/NextIteration_2NextIterationwhile/gru_cell/GRUBlockCell:3*
T0*(
_output_shapes
:??????????
t
while/NextIteration_3NextIteration+while/TensorArrayWrite_1/TensorArrayWriteV3*
_output_shapes
: *
T0
r
while/NextIteration_4NextIteration)while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
A

while/ExitExitwhile/Switch*
T0*
_output_shapes
: 
V
while/Exit_1Exitwhile/Switch_1*'
_output_shapes
:?????????*
T0
W
while/Exit_2Exitwhile/Switch_2*
T0*(
_output_shapes
:??????????
E
while/Exit_3Exitwhile/Switch_3*
_output_shapes
: *
T0
E
while/Exit_4Exitwhile/Switch_4*
T0*
_output_shapes
: 
?
"TensorArrayStack/TensorArraySizeV3TensorArraySizeV3TensorArraywhile/Exit_3*
_output_shapes
: *
_class
loc:@TensorArray
~
TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
_class
loc:@TensorArray*
value	B : 
~
TensorArrayStack/range/deltaConst*
dtype0*
_output_shapes
: *
_class
loc:@TensorArray*
value	B :
?
TensorArrayStack/rangeRangeTensorArrayStack/range/start"TensorArrayStack/TensorArraySizeV3TensorArrayStack/range/delta*
_class
loc:@TensorArray*#
_output_shapes
:?????????
?
$TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3TensorArrayTensorArrayStack/rangewhile/Exit_3*$
element_shape:?????????*
_class
loc:@TensorArray*
dtype0*4
_output_shapes"
 :??????????????????
?
SqueezeSqueeze$TensorArrayStack/TensorArrayGatherV3*
squeeze_dims

?????????*
T0*0
_output_shapes
:??????????????????
?
$TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3TensorArray_1while/Exit_4* 
_class
loc:@TensorArray_1*
_output_shapes
: 
?
TensorArrayStack_1/range/startConst* 
_class
loc:@TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 
?
TensorArrayStack_1/range/deltaConst* 
_class
loc:@TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
?
TensorArrayStack_1/rangeRangeTensorArrayStack_1/range/start$TensorArrayStack_1/TensorArraySizeV3TensorArrayStack_1/range/delta*#
_output_shapes
:?????????* 
_class
loc:@TensorArray_1
?
&TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3TensorArray_1TensorArrayStack_1/rangewhile/Exit_4*%
element_shape:??????????* 
_class
loc:@TensorArray_1*
dtype0*5
_output_shapes#
!:???????????????????
[
L2Loss_1L2Loss&TensorArrayStack_1/TensorArrayGatherV3*
T0*
_output_shapes
: 
L
mul_1/yConst*
valueB
 *?75*
dtype0*
_output_shapes
: 
@
mul_1MulL2Loss_1mul_1/y*
T0*
_output_shapes
: 
B
transpose_2/RankRankSqueeze*
T0*
_output_shapes
: 
S
transpose_2/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
\
transpose_2/subSubtranspose_2/Ranktranspose_2/sub/y*
T0*
_output_shapes
: 
Y
transpose_2/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
Y
transpose_2/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
?
transpose_2/RangeRangetranspose_2/Range/starttranspose_2/Ranktranspose_2/Range/delta*#
_output_shapes
:?????????
j
transpose_2/sub_1Subtranspose_2/subtranspose_2/Range*
T0*#
_output_shapes
:?????????
o
transpose_2	TransposeSqueezetranspose_2/sub_1*
T0*0
_output_shapes
:??????????????????
[
ExpandDims_1/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
w
ExpandDims_1
ExpandDimsinput/IteratorGetNext:8ExpandDims_1/dim*'
_output_shapes
:?????????*
T0
[
ExpandDims_2/dimConst*
valueB :
?????????*
dtype0*
_output_shapes
: 
w
ExpandDims_2
ExpandDimsinput/IteratorGetNext:7ExpandDims_2/dim*
T0*'
_output_shapes
:?????????
b
mul_2Multranspose_2ExpandDims_1*
T0*0
_output_shapes
:??????????????????
Z
addAddmul_2ExpandDims_2*
T0*0
_output_shapes
:??????????????????
X
deploy_saver/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
 deploy_saver/SaveV2/tensor_namesConst*?
value?B?B^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBdecoder_output_proj/biasBdecoder_output_proj/kernelBgru_cell/b_cBgru_cell/b_ruBgru_cell/w_cBgru_cell/w_ru*
dtype0*
_output_shapes
:
?
$deploy_saver/SaveV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
deploy_saver/SaveV2SaveV2deploy_saver/Const deploy_saver/SaveV2/tensor_names$deploy_saver/SaveV2/shape_and_slices^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneldecoder_output_proj/biasdecoder_output_proj/kernelgru_cell/b_cgru_cell/b_rugru_cell/w_cgru_cell/w_ru*
dtypes
2
?
deploy_saver/control_dependencyIdentitydeploy_saver/Const^deploy_saver/SaveV2*
T0*%
_class
loc:@deploy_saver/Const*
_output_shapes
: 
?
#deploy_saver/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?B^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBdecoder_output_proj/biasBdecoder_output_proj/kernelBgru_cell/b_cBgru_cell/b_ruBgru_cell/w_cBgru_cell/w_ru*
dtype0*
_output_shapes
:
?
'deploy_saver/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
deploy_saver/RestoreV2	RestoreV2deploy_saver/Const#deploy_saver/RestoreV2/tensor_names'deploy_saver/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*D
_output_shapes2
0::::::::::::
?
deploy_saver/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdeploy_saver/RestoreV2*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:?
?
deploy_saver/Assign_1Assign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kerneldeploy_saver/RestoreV2:1*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
??
?
deploy_saver/Assign_2Assign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasdeploy_saver/RestoreV2:2*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:?
?
deploy_saver/Assign_3Assign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kerneldeploy_saver/RestoreV2:3*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
deploy_saver/Assign_4AssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasdeploy_saver/RestoreV2:4*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:?
?
deploy_saver/Assign_5AssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneldeploy_saver/RestoreV2:5*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
deploy_saver/Assign_6Assigndecoder_output_proj/biasdeploy_saver/RestoreV2:6*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
?
deploy_saver/Assign_7Assigndecoder_output_proj/kerneldeploy_saver/RestoreV2:7*
_output_shapes
:	?*
T0*-
_class#
!loc:@decoder_output_proj/kernel
?
deploy_saver/Assign_8Assigngru_cell/b_cdeploy_saver/RestoreV2:8*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:?
?
deploy_saver/Assign_9Assigngru_cell/b_rudeploy_saver/RestoreV2:9*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:?
?
deploy_saver/Assign_10Assigngru_cell/w_cdeploy_saver/RestoreV2:10*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
?
deploy_saver/Assign_11Assigngru_cell/w_rudeploy_saver/RestoreV2:11*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
??
?
deploy_saver/restore_allNoOp^deploy_saver/Assign^deploy_saver/Assign_1^deploy_saver/Assign_10^deploy_saver/Assign_11^deploy_saver/Assign_2^deploy_saver/Assign_3^deploy_saver/Assign_4^deploy_saver/Assign_5^deploy_saver/Assign_6^deploy_saver/Assign_7^deploy_saver/Assign_8^deploy_saver/Assign_9

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables

init_all_tables_1NoOp
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_64cb157da6de4c47aac4e54018d83531/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*?
value?B?B^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBdecoder_output_proj/biasBdecoder_output_proj/kernelBgru_cell/b_cBgru_cell/b_ruBgru_cell/w_cBgru_cell/w_ru*
dtype0*
_output_shapes
:
?
save/SaveV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneldecoder_output_proj/biasdecoder_output_proj/kernelgru_cell/b_cgru_cell/b_rugru_cell/w_cgru_cell/w_ru"/device:CPU:0*
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*?
value?B?B^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBdecoder_output_proj/biasBdecoder_output_proj/kernelBgru_cell/b_cBgru_cell/b_ruBgru_cell/w_cBgru_cell/w_ru
?
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*+
value"B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2
?
save/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biassave/RestoreV2*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:?
?
save/Assign_1Assign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelsave/RestoreV2:1* 
_output_shapes
:
??*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
?
save/Assign_2Assign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassave/RestoreV2:2*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:?
?
save/Assign_3Assign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelsave/RestoreV2:3*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	?
?
save/Assign_4AssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biassave/RestoreV2:4*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:?
?
save/Assign_5AssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelsave/RestoreV2:5*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
??
?
save/Assign_6Assigndecoder_output_proj/biassave/RestoreV2:6*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
?
save/Assign_7Assigndecoder_output_proj/kernelsave/RestoreV2:7*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	?
~
save/Assign_8Assigngru_cell/b_csave/RestoreV2:8*
_output_shapes	
:?*
T0*
_class
loc:@gru_cell/b_c
?
save/Assign_9Assigngru_cell/b_rusave/RestoreV2:9*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:?
?
save/Assign_10Assigngru_cell/w_csave/RestoreV2:10*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
??
?
save/Assign_11Assigngru_cell/w_rusave/RestoreV2:11*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
??
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard?>
?
?
/tf_data_structured_function_wrapper_V9fT6glnYME

arg0_0

arg1_0
arg2
arg3
arg4
arg5
arg6
arg7

arg8_0
arg9	
arg10	
arg11
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
arg82DWrapper for passing nested structures to and from tf.data functions.I
ConstConst"/device:CPU:0*
valueB"<   
   *
dtype0H
split/split_dimConst"/device:CPU:0*
value	B : *
dtype0t
splitSplitVarg2Const:output:0split/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0D
Const_1Const"/device:CPU:0*
valueB: *
dtype0>
MeanMeanarg0_0Const_1:output:0"/device:CPU:0*
T0U
SquaredDifferenceSquaredDifferencearg0_0Mean:output:0"/device:CPU:0*
T0D
Const_2Const"/device:CPU:0*
valueB: *
dtype0O
Mean_1MeanSquaredDifference:z:0Const_2:output:0"/device:CPU:0*
T05
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
valueB"<   
   J
split_1/split_dimConst"/device:CPU:0*
value	B : *
dtype0?
	split_1_0SplitVtruediv_2:z:0Const_3:output:0split_1/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0<
stackPackarg10arg11"/device:CPU:0*
T0*
ND
concat/axisConst"/device:CPU:0*
dtype0*
value	B : y
concat_0ConcatV2arg4arg5arg6arg7arg9stack:output:0concat/axis:output:0"/device:CPU:0*
T0*
NG
ExpandDims/dimConst"/device:CPU:0*
value	B : *
dtype0\

ExpandDims
ExpandDimsconcat_0:output:0ExpandDims/dim:output:0"/device:CPU:0*
T0R
ExpandDims_1/dimConst"/device:CPU:0*
valueB :
?????????*
dtype0\
ExpandDims_1
ExpandDimstruediv_0:z:0ExpandDims_1/dim:output:0"/device:CPU:0*
T0R
Tile/multiplesConst"/device:CPU:0*
valueB"<      *
dtype0R
TileTileExpandDims:output:0Tile/multiples:output:0"/device:CPU:0*
T0F
concat_1/axisConst"/device:CPU:0*
value	B :*
dtype0?

concat_1_0ConcatV2ExpandDims_1:output:0split:output:0split_1_0:output:0Tile:output:0concat_1/axis:output:0"/device:CPU:0*
T0*
NT
Tile_1/multiplesConst"/device:CPU:0*
valueB"
      *
dtype0V
Tile_1TileExpandDims:output:0Tile_1/multiples:output:0"/device:CPU:0*
T0F
concat_2/axisConst"/device:CPU:0*
value	B :*
dtype0?

concat_2_0ConcatV2split:output:1split_1_0:output:1Tile_1:output:0concat_2/axis:output:0"/device:CPU:0*
N*
T0"
concatconcat_0:output:0"
meanMean:output:0"
arg8arg8_0"
truedivtruediv_0:z:0"
split_1split_1_0:output:0"
sqrtSqrt:y:0"
	truediv_1truediv_1_0:z:0"
arg0arg0_0"
arg1arg1_0"
concat_1concat_1_0:output:0"
concat_2concat_2_0:output:0
?
?
/tf_data_structured_function_wrapper_epZmJMI8HJI
arg0

arg1_0

arg2_0

arg3_0

arg4_0

arg5_0

arg6_0

arg7_0

arg8_0
strided_slice_1_placeholder
strided_slice_2_placeholder
select_1	
split
strided_slice_1

select
arg1
arg2
arg3
arg4
arg5
arg6
arg7
arg82DWrapper for passing nested structures to and from tf.data functions.F
	Fill/dimsConst"/device:CPU:0*
valueB:
*
dtype0F

Fill/valueConst"/device:CPU:0*
valueB
 *  ?*
dtype0M
FillFillFill/dims:output:0Fill/value:output:0"/device:CPU:0*
T0D
concat/axisConst"/device:CPU:0*
value	B : *
dtype0^
concatConcatV2arg0Fill:output:0concat/axis:output:0"/device:CPU:0*
T0*
NP
strided_slice/stackConst"/device:CPU:0*
valueB:*
dtype0R
strided_slice/stack_1Const"/device:CPU:0*
valueB:Y*
dtype0R
strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0?
strided_sliceStridedSliceconcat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0R
strided_slice_1/stackConst"/device:CPU:0*
valueB:*
dtype0T
strided_slice_1/stack_1Const"/device:CPU:0*
valueB:Y*
dtype0T
strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
valueB:?
strided_slice_1_0StridedSlicestrided_slice_1_placeholderstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0"/device:CPU:0*
T0*
Index0R
strided_slice_2/stackConst"/device:CPU:0*
dtype0*
valueB:T
strided_slice_2/stack_1Const"/device:CPU:0*
valueB:Y*
dtype0T
strided_slice_2/stack_2Const"/device:CPU:0*
dtype0*
valueB:?
strided_slice_2StridedSlicestrided_slice_2_placeholderstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0"/device:CPU:0*
Index0*
T0M
CastCaststrided_slice_2:output:0"/device:CPU:0*

SrcT0*

DstT0?
Less/yConst"/device:CPU:0*
value	B : *
dtype0?
LessLessCast:y:0Less/y:output:0"/device:CPU:0*
T0B
	Maximum/yConst"/device:CPU:0*
value	B : *
dtype0H
MaximumMaximumCast:y:0Maximum/y:output:0"/device:CPU:0*
T0F
GatherV2/axisConst"/device:CPU:0*
dtype0*
value	B : ?
GatherV2GatherV2concat:output:0Maximum:z:0GatherV2/axis:output:0"/device:CPU:0*
Tindices0*
Tparams0*
Taxis0N

zeros_likeConst"/device:CPU:0*
valueBF*    *
dtype09
IsNanIsNanGatherV2:output:0"/device:CPU:0*
T03
or	LogicalOrLess:z:0	IsNan:y:0"/device:CPU:0X
SelectSelector:z:0zeros_like:output:0GatherV2:output:0"/device:CPU:0*
T0I
ConstConst"/device:CPU:0*
valueB"<   
   *
dtype0H
split/split_dimConst"/device:CPU:0*
value	B : *
dtype0?
split_0SplitVstrided_slice:output:0Const:output:0split/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0:
IsNan_1IsNansplit_0:output:0"/device:CPU:0*
T0L
zeros_like_1Const"/device:CPU:0*
valueB<*    *
dtype0`
Select_1SelectIsNan_1:y:0zeros_like_1:output:0split_0:output:0"/device:CPU:0*
T0"
arg4arg4_0"
arg5arg5_0"
arg6arg6_0"
arg7arg7_0"-
strided_slice_1strided_slice_1_0:output:0"
arg8arg8_0"
selectSelect:output:0"
splitsplit_0:output:1"
select_1Select_1:output:0"
arg1arg1_0"
arg2arg2_0"
arg3arg3_0
?
?
/tf_data_structured_function_wrapper_rQZVAeA9Zw4
arg0
arg1
arg2
arg3
arg4
arg5
arg6
arg7
arg8
arg9	
arg10	
arg11
	lessequal
2DWrapper for passing nested structures to and from tf.data functions.C
Equal/yConst"/device:CPU:0*
dtype0*
valueB
 *    >
EqualEqualarg0Equal/y:output:0"/device:CPU:0*
T0A
ToInt32Cast	Equal:z:0"/device:CPU:0*

DstT0*

SrcT0
B
ConstConst"/device:CPU:0*
valueB: *
dtype0?
SumSumToInt32:y:0Const:output:0"/device:CPU:0*
T0D
LessEqual/yConst"/device:CPU:0*
value	B :;*
dtype0R
	LessEqual	LessEqualSum:output:0LessEqual/y:output:0"/device:CPU:0*
T0"
	lessequalLessEqual:z:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"?
	variables??
?
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignQcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assigngcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assigndcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
k
gru_cell/w_ru:0gru_cell/w_ru/Assigngru_cell/w_ru/read:02*gru_cell/w_ru/Initializer/random_uniform:08
b
gru_cell/b_ru:0gru_cell/b_ru/Assigngru_cell/b_ru/read:02!gru_cell/b_ru/Initializer/Const:08
g
gru_cell/w_c:0gru_cell/w_c/Assigngru_cell/w_c/read:02)gru_cell/w_c/Initializer/random_uniform:08
^
gru_cell/b_c:0gru_cell/b_c/Assigngru_cell/b_c/read:02 gru_cell/b_c/Initializer/Const:08
?
decoder_output_proj/kernel:0!decoder_output_proj/kernel/Assign!decoder_output_proj/kernel/read:027decoder_output_proj/kernel/Initializer/random_uniform:08
?
decoder_output_proj/bias:0decoder_output_proj/bias/Assigndecoder_output_proj/bias/read:02,decoder_output_proj/bias/Initializer/zeros:08"?H
while_context?H?H
?3
!cudnn_gru/rnn/while/while_context *cudnn_gru/rnn/while/LoopCond:02cudnn_gru/rnn/while/Merge:0:cudnn_gru/rnn/while/Identity:0Bcudnn_gru/rnn/while/Exit:0Bcudnn_gru/rnn/while/Exit_1:0Bcudnn_gru/rnn/while/Exit_2:0Bcudnn_gru/rnn/while/Exit_3:0J?0
cudnn_gru/rnn/Minimum:0
cudnn_gru/rnn/TensorArray:0
Jcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
cudnn_gru/rnn/TensorArray_1:0
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0
Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0
cudnn_gru/rnn/strided_slice_1:0
cudnn_gru/rnn/while/Enter:0
cudnn_gru/rnn/while/Enter_1:0
cudnn_gru/rnn/while/Enter_2:0
cudnn_gru/rnn/while/Enter_3:0
cudnn_gru/rnn/while/Exit:0
cudnn_gru/rnn/while/Exit_1:0
cudnn_gru/rnn/while/Exit_2:0
cudnn_gru/rnn/while/Exit_3:0
cudnn_gru/rnn/while/Identity:0
 cudnn_gru/rnn/while/Identity_1:0
 cudnn_gru/rnn/while/Identity_2:0
 cudnn_gru/rnn/while/Identity_3:0
 cudnn_gru/rnn/while/Less/Enter:0
cudnn_gru/rnn/while/Less:0
"cudnn_gru/rnn/while/Less_1/Enter:0
cudnn_gru/rnn/while/Less_1:0
 cudnn_gru/rnn/while/LogicalAnd:0
cudnn_gru/rnn/while/LoopCond:0
cudnn_gru/rnn/while/Merge:0
cudnn_gru/rnn/while/Merge:1
cudnn_gru/rnn/while/Merge_1:0
cudnn_gru/rnn/while/Merge_1:1
cudnn_gru/rnn/while/Merge_2:0
cudnn_gru/rnn/while/Merge_2:1
cudnn_gru/rnn/while/Merge_3:0
cudnn_gru/rnn/while/Merge_3:1
#cudnn_gru/rnn/while/NextIteration:0
%cudnn_gru/rnn/while/NextIteration_1:0
%cudnn_gru/rnn/while/NextIteration_2:0
%cudnn_gru/rnn/while/NextIteration_3:0
cudnn_gru/rnn/while/Switch:0
cudnn_gru/rnn/while/Switch:1
cudnn_gru/rnn/while/Switch_1:0
cudnn_gru/rnn/while/Switch_1:1
cudnn_gru/rnn/while/Switch_2:0
cudnn_gru/rnn/while/Switch_2:1
cudnn_gru/rnn/while/Switch_3:0
cudnn_gru/rnn/while/Switch_3:1
-cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0
/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0
'cudnn_gru/rnn/while/TensorArrayReadV3:0
?cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
9cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
cudnn_gru/rnn/while/add/y:0
cudnn_gru/rnn/while/add:0
cudnn_gru/rnn/while/add_1/y:0
cudnn_gru/rnn/while/add_1:0
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd:0
Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0
Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1:0
Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0
Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Const:0
Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0
Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul:0
Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0
Rcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1:0
Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0
Rcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2:0
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid:0
Ncudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh:0
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1:0
Ucudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis:0
Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat:0
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2:0
Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dim:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:0
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/x:0
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub:0}
Jcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0C
cudnn_gru/rnn/strided_slice_1:0 cudnn_gru/rnn/while/Less/Enter:0?
Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0^
cudnn_gru/rnn/TensorArray:0?cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0?
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0=
cudnn_gru/rnn/Minimum:0"cudnn_gru/rnn/while/Less_1/Enter:0N
cudnn_gru/rnn/TensorArray_1:0-cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0?
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0?
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0?
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0?
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0Rcudnn_gru/rnn/while/Enter:0Rcudnn_gru/rnn/while/Enter_1:0Rcudnn_gru/rnn/while/Enter_2:0Rcudnn_gru/rnn/while/Enter_3:0Zcudnn_gru/rnn/strided_slice_1:0
?
while/while_context
*while/LoopCond:02while/Merge:0:while/Identity:0Bwhile/Exit:0Bwhile/Exit_1:0Bwhile/Exit_2:0Bwhile/Exit_3:0Bwhile/Exit_4:0J?
TensorArray:0
TensorArray_1:0
decoder_output_proj/bias/read:0
!decoder_output_proj/kernel/read:0
gru_cell/b_c/read:0
gru_cell/b_ru/read:0
gru_cell/w_c/read:0
gru_cell/w_ru/read:0
transpose_1:0
while/Enter:0
while/Enter_1:0
while/Enter_2:0
while/Enter_3:0
while/Enter_4:0
while/Exit:0
while/Exit_1:0
while/Exit_2:0
while/Exit_3:0
while/Exit_4:0
while/Identity:0
while/Identity_1:0
while/Identity_2:0
while/Identity_3:0
while/Identity_4:0
while/Less/y:0
while/Less:0
while/LoopCond:0
while/Merge:0
while/Merge:1
while/Merge_1:0
while/Merge_1:1
while/Merge_2:0
while/Merge_2:1
while/Merge_3:0
while/Merge_3:1
while/Merge_4:0
while/Merge_4:1
while/NextIteration:0
while/NextIteration_1:0
while/NextIteration_2:0
while/NextIteration_3:0
while/NextIteration_4:0
while/Switch:0
while/Switch:1
while/Switch_1:0
while/Switch_1:1
while/Switch_2:0
while/Switch_2:1
while/Switch_3:0
while/Switch_3:1
while/Switch_4:0
while/Switch_4:1
1while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
+while/TensorArrayWrite/TensorArrayWriteV3:0
3while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0
-while/TensorArrayWrite_1/TensorArrayWriteV3:0
while/add/y:0
while/add:0
while/add_1/y:0
while/add_1:0
while/concat/axis:0
while/concat:0
)while/decoder_output_proj/BiasAdd/Enter:0
#while/decoder_output_proj/BiasAdd:0
(while/decoder_output_proj/MatMul/Enter:0
"while/decoder_output_proj/MatMul:0
#while/gru_cell/GRUBlockCell/Enter:0
%while/gru_cell/GRUBlockCell/Enter_1:0
%while/gru_cell/GRUBlockCell/Enter_2:0
%while/gru_cell/GRUBlockCell/Enter_3:0
while/gru_cell/GRUBlockCell:0
while/gru_cell/GRUBlockCell:1
while/gru_cell/GRUBlockCell:2
while/gru_cell/GRUBlockCell:3
while/strided_slice/Enter:0
while/strided_slice/stack:0
while/strided_slice/stack_1:0
while/strided_slice/stack_2:0
while/strided_slice:0D
TensorArray:03while/TensorArrayWrite_1/TensorArrayWriteV3/Enter:0L
decoder_output_proj/bias/read:0)while/decoder_output_proj/BiasAdd/Enter:0<
gru_cell/w_c/read:0%while/gru_cell/GRUBlockCell/Enter_1:0M
!decoder_output_proj/kernel/read:0(while/decoder_output_proj/MatMul/Enter:0,
transpose_1:0while/strided_slice/Enter:0;
gru_cell/w_ru/read:0#while/gru_cell/GRUBlockCell/Enter:0D
TensorArray_1:01while/TensorArrayWrite/TensorArrayWriteV3/Enter:0<
gru_cell/b_c/read:0%while/gru_cell/GRUBlockCell/Enter_3:0=
gru_cell/b_ru/read:0%while/gru_cell/GRUBlockCell/Enter_2:0Rwhile/Enter:0Rwhile/Enter_1:0Rwhile/Enter_2:0Rwhile/Enter_3:0Rwhile/Enter_4:0",
saved_model_main_op

init_all_tables_1"!
	iterators

input/Iterator:0"?
trainable_variables??
?
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignQcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
?
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
?
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
?
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assigngcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
?
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assigndcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
?
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
k
gru_cell/w_ru:0gru_cell/w_ru/Assigngru_cell/w_ru/read:02*gru_cell/w_ru/Initializer/random_uniform:08
b
gru_cell/b_ru:0gru_cell/b_ru/Assigngru_cell/b_ru/read:02!gru_cell/b_ru/Initializer/Const:08
g
gru_cell/w_c:0gru_cell/w_c/Assigngru_cell/w_c/read:02)gru_cell/w_c/Initializer/random_uniform:08
^
gru_cell/b_c:0gru_cell/b_c/Assigngru_cell/b_c/read:02 gru_cell/b_c/Initializer/Const:08
?
decoder_output_proj/kernel:0!decoder_output_proj/kernel/Assign!decoder_output_proj/kernel/read:027decoder_output_proj/kernel/Initializer/random_uniform:08
?
decoder_output_proj/bias:0decoder_output_proj/bias/Assigndecoder_output_proj/bias/read:02,decoder_output_proj/bias/Initializer/zeros:08"?	
local_variables?	?	
O
input/hits:0input/hits/Assigninput/hits/read:02input/feeder_vars/Const:0
`
input/lagged_ix:0input/lagged_ix/Assigninput/lagged_ix/read:02input/feeder_vars/Const_1:0
Z
input/page_ix:0input/page_ix/Assigninput/page_ix/read:02input/feeder_vars/Const_2:0
W
input/pf_age:0input/pf_age/Assigninput/pf_age/read:02input/feeder_vars/Const_3:0
T
input/pf_si:0input/pf_si/Assigninput/pf_si/read:02input/feeder_vars/Const_4:0
c
input/pf_network:0input/pf_network/Assigninput/pf_network/read:02input/feeder_vars/Const_5:0
i
input/pf_price_cat:0input/pf_price_cat/Assigninput/pf_price_cat/read:02input/feeder_vars/Const_6:0
`
input/pf_gender:0input/pf_gender/Assigninput/pf_gender/read:02input/feeder_vars/Const_7:0
r
input/page_popularity:0input/page_popularity/Assigninput/page_popularity/read:02input/feeder_vars/Const_8:0
u
input/quarter_autocorr:0input/quarter_autocorr/Assigninput/quarter_autocorr/read:02input/feeder_vars/Const_9:0
O
input/dow:0input/dow/Assigninput/dow/read:02input/feeder_vars/Const_10:0
[
input/holiday:0input/holiday/Assigninput/holiday/read:02input/feeder_vars/Const_11:0*?
serving_default?
5
normstd*
input/IteratorGetNext:8?????????
?
page_features.
input/IteratorGetNext:9?????????
7
truex.
input/IteratorGetNext:0?????????<
7
normx.
input/IteratorGetNext:2?????????<
=
laggedx2
input/IteratorGetNext:3?????????<
6
normmean*
input/IteratorGetNext:7?????????
7
truey.
input/IteratorGetNext:4?????????

7
normy.
input/IteratorGetNext:6?????????

5
pageix+
input/IteratorGetNext:10?????????
;
timex2
input/IteratorGetNext:1?????????<
;
timey2
input/IteratorGetNext:5?????????
-
pred%
add:0??????????????????tensorflow/serving/predict