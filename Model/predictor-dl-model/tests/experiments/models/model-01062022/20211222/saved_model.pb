³©
/á.
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignSub
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 

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
¾
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
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype

Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0

IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
IteratorToStringHandle
resource_handle
string_handle
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

!
LoopCond	
input


output

,
MakeIterator
dataset
iterator
³

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

2	
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
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
Ó
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

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
2	
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
\
	RefSwitch
data"T
pred

output_false"T
output_true"T"	
Ttype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Þ
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype

TensorSliceDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0
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
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02
b'unknown'8±±

input/feeder_vars/ConstConst"/device:CPU:0*
dtype0* 
_output_shapes
:
ä¹	\*
valueB
ä¹	\*    
m

input/hits
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
ä¹	\*
shape:
ä¹	\

input/hits/AssignAssign
input/hitsinput/feeder_vars/Const"/device:CPU:0*
T0*
_class
loc:@input/hits* 
_output_shapes
:
ä¹	\

input/hits/readIdentity
input/hits"/device:CPU:0*
T0*
_class
loc:@input/hits* 
_output_shapes
:
ä¹	\
z
input/feeder_vars/Const_1Const"/device:CPU:0*
valueB\: *
dtype0*
_output_shapes

:\
n
input/lagged_ix
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:\*
shape
:\
¨
input/lagged_ix/AssignAssigninput/lagged_ixinput/feeder_vars/Const_1"/device:CPU:0*
_output_shapes

:\*
T0*"
_class
loc:@input/lagged_ix

input/lagged_ix/readIdentityinput/lagged_ix"/device:CPU:0*
T0*"
_class
loc:@input/lagged_ix*
_output_shapes

:\
u
input/feeder_vars/Const_2Const"/device:CPU:0*
dtype0*
_output_shapes

:ä¹	*
valueBä¹	B 
h
input/page_ix
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:ä¹	*
shape:ä¹	
 
input/page_ix/AssignAssigninput/page_ixinput/feeder_vars/Const_2"/device:CPU:0*
_output_shapes

:ä¹	*
T0* 
_class
loc:@input/page_ix

input/page_ix/readIdentityinput/page_ix"/device:CPU:0*
_output_shapes

:ä¹	*
T0* 
_class
loc:@input/page_ix

input/feeder_vars/Const_3Const"/device:CPU:0*
valueB
ä¹	*    *
dtype0* 
_output_shapes
:
ä¹	
o
input/pf_age
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
ä¹	*
shape:
ä¹	
¡
input/pf_age/AssignAssigninput/pf_ageinput/feeder_vars/Const_3"/device:CPU:0*
T0*
_class
loc:@input/pf_age* 
_output_shapes
:
ä¹	

input/pf_age/readIdentityinput/pf_age"/device:CPU:0*
T0*
_class
loc:@input/pf_age* 
_output_shapes
:
ä¹	

input/feeder_vars/Const_4Const"/device:CPU:0*
valueB
ä¹	*    *
dtype0* 
_output_shapes
:
ä¹	
n
input/pf_si
VariableV2"/device:CPU:0*
shape:
ä¹	*
dtype0* 
_output_shapes
:
ä¹	

input/pf_si/AssignAssigninput/pf_siinput/feeder_vars/Const_4"/device:CPU:0*
T0*
_class
loc:@input/pf_si* 
_output_shapes
:
ä¹	

input/pf_si/readIdentityinput/pf_si"/device:CPU:0*
T0*
_class
loc:@input/pf_si* 
_output_shapes
:
ä¹	

input/feeder_vars/Const_5Const"/device:CPU:0*
valueB
ä¹	*    *
dtype0* 
_output_shapes
:
ä¹	
s
input/pf_network
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
ä¹	*
shape:
ä¹	
­
input/pf_network/AssignAssigninput/pf_networkinput/feeder_vars/Const_5"/device:CPU:0*
T0*#
_class
loc:@input/pf_network* 
_output_shapes
:
ä¹	

input/pf_network/readIdentityinput/pf_network"/device:CPU:0*
T0*#
_class
loc:@input/pf_network* 
_output_shapes
:
ä¹	

input/feeder_vars/Const_6Const"/device:CPU:0*
valueB
ä¹	*    *
dtype0* 
_output_shapes
:
ä¹	
u
input/pf_price_cat
VariableV2"/device:CPU:0*
shape:
ä¹	*
dtype0* 
_output_shapes
:
ä¹	
³
input/pf_price_cat/AssignAssigninput/pf_price_catinput/feeder_vars/Const_6"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat* 
_output_shapes
:
ä¹	

input/pf_price_cat/readIdentityinput/pf_price_cat"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat* 
_output_shapes
:
ä¹	

input/feeder_vars/Const_7Const"/device:CPU:0*
valueB
ä¹	*    *
dtype0* 
_output_shapes
:
ä¹	
r
input/pf_gender
VariableV2"/device:CPU:0*
dtype0* 
_output_shapes
:
ä¹	*
shape:
ä¹	
ª
input/pf_gender/AssignAssigninput/pf_genderinput/feeder_vars/Const_7"/device:CPU:0*
T0*"
_class
loc:@input/pf_gender* 
_output_shapes
:
ä¹	

input/pf_gender/readIdentityinput/pf_gender"/device:CPU:0*
T0*"
_class
loc:@input/pf_gender* 
_output_shapes
:
ä¹	
y
input/feeder_vars/Const_8Const"/device:CPU:0*
valueBä¹	*    *
dtype0*
_output_shapes

:ä¹	
p
input/page_popularity
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:ä¹	*
shape:ä¹	
¸
input/page_popularity/AssignAssigninput/page_popularityinput/feeder_vars/Const_8"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes

:ä¹	

input/page_popularity/readIdentityinput/page_popularity"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes

:ä¹	
y
input/feeder_vars/Const_9Const"/device:CPU:0*
valueBä¹	*    *
dtype0*
_output_shapes

:ä¹	
q
input/quarter_autocorr
VariableV2"/device:CPU:0*
shape:ä¹	*
dtype0*
_output_shapes

:ä¹	
»
input/quarter_autocorr/AssignAssigninput/quarter_autocorrinput/feeder_vars/Const_9"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes

:ä¹	
 
input/quarter_autocorr/readIdentityinput/quarter_autocorr"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes

:ä¹	
~
input/feeder_vars/Const_10Const"/device:CPU:0*
valueB\*    *
dtype0*
_output_shapes

:\
h
	input/dow
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:\*
shape
:\

input/dow/AssignAssign	input/dowinput/feeder_vars/Const_10"/device:CPU:0*
T0*
_class
loc:@input/dow*
_output_shapes

:\
{
input/dow/readIdentity	input/dow"/device:CPU:0*
T0*
_class
loc:@input/dow*
_output_shapes

:\
~
input/feeder_vars/Const_11Const"/device:CPU:0*
valueB\*    *
dtype0*
_output_shapes

:\
l
input/holiday
VariableV2"/device:CPU:0*
dtype0*
_output_shapes

:\*
shape
:\
£
input/holiday/AssignAssigninput/holidayinput/feeder_vars/Const_11"/device:CPU:0*
T0* 
_class
loc:@input/holiday*
_output_shapes

:\

input/holiday/readIdentityinput/holiday"/device:CPU:0*
T0* 
_class
loc:@input/holiday*
_output_shapes

:\
p
input/varfeeder_saver/ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 

)input/varfeeder_saver/SaveV2/tensor_namesConst"/device:CPU:0*
valueBBdowBhitsBholidayB	lagged_ixBpage_ixBpage_popularityBpf_ageB	pf_genderB
pf_networkBpf_price_catBpf_siBquarter_autocorr*
dtype0*
_output_shapes
:

-input/varfeeder_saver/SaveV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

input/varfeeder_saver/SaveV2SaveV2input/varfeeder_saver/Const)input/varfeeder_saver/SaveV2/tensor_names-input/varfeeder_saver/SaveV2/shape_and_slices	input/dow
input/hitsinput/holidayinput/lagged_ixinput/page_ixinput/page_popularityinput/pf_ageinput/pf_genderinput/pf_networkinput/pf_price_catinput/pf_siinput/quarter_autocorr"/device:CPU:0*
dtypes
2
Ð
(input/varfeeder_saver/control_dependencyIdentityinput/varfeeder_saver/Const^input/varfeeder_saver/SaveV2"/device:CPU:0*
T0*.
_class$
" loc:@input/varfeeder_saver/Const*
_output_shapes
: 

,input/varfeeder_saver/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBdowBhitsBholidayB	lagged_ixBpage_ixBpage_popularityBpf_ageB	pf_genderB
pf_networkBpf_price_catBpf_siBquarter_autocorr*
dtype0*
_output_shapes
:

0input/varfeeder_saver/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

input/varfeeder_saver/RestoreV2	RestoreV2input/varfeeder_saver/Const,input/varfeeder_saver/RestoreV2/tensor_names0input/varfeeder_saver/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2
¨
input/varfeeder_saver/AssignAssign	input/dowinput/varfeeder_saver/RestoreV2"/device:CPU:0*
T0*
_class
loc:@input/dow*
_output_shapes

:\
°
input/varfeeder_saver/Assign_1Assign
input/hits!input/varfeeder_saver/RestoreV2:1"/device:CPU:0*
T0*
_class
loc:@input/hits* 
_output_shapes
:
ä¹	\
´
input/varfeeder_saver/Assign_2Assigninput/holiday!input/varfeeder_saver/RestoreV2:2"/device:CPU:0*
T0* 
_class
loc:@input/holiday*
_output_shapes

:\
¸
input/varfeeder_saver/Assign_3Assigninput/lagged_ix!input/varfeeder_saver/RestoreV2:3"/device:CPU:0*
T0*"
_class
loc:@input/lagged_ix*
_output_shapes

:\
²
input/varfeeder_saver/Assign_4Assigninput/page_ix!input/varfeeder_saver/RestoreV2:4"/device:CPU:0*
T0* 
_class
loc:@input/page_ix*
_output_shapes

:ä¹	
Â
input/varfeeder_saver/Assign_5Assigninput/page_popularity!input/varfeeder_saver/RestoreV2:5"/device:CPU:0*
T0*(
_class
loc:@input/page_popularity*
_output_shapes

:ä¹	
´
input/varfeeder_saver/Assign_6Assigninput/pf_age!input/varfeeder_saver/RestoreV2:6"/device:CPU:0*
T0*
_class
loc:@input/pf_age* 
_output_shapes
:
ä¹	
º
input/varfeeder_saver/Assign_7Assigninput/pf_gender!input/varfeeder_saver/RestoreV2:7"/device:CPU:0*
T0*"
_class
loc:@input/pf_gender* 
_output_shapes
:
ä¹	
¼
input/varfeeder_saver/Assign_8Assigninput/pf_network!input/varfeeder_saver/RestoreV2:8"/device:CPU:0*
T0*#
_class
loc:@input/pf_network* 
_output_shapes
:
ä¹	
À
input/varfeeder_saver/Assign_9Assigninput/pf_price_cat!input/varfeeder_saver/RestoreV2:9"/device:CPU:0*
T0*%
_class
loc:@input/pf_price_cat* 
_output_shapes
:
ä¹	
´
input/varfeeder_saver/Assign_10Assigninput/pf_si"input/varfeeder_saver/RestoreV2:10"/device:CPU:0*
T0*
_class
loc:@input/pf_si* 
_output_shapes
:
ä¹	
Æ
input/varfeeder_saver/Assign_11Assigninput/quarter_autocorr"input/varfeeder_saver/RestoreV2:11"/device:CPU:0*
T0*)
_class
loc:@input/quarter_autocorr*
_output_shapes

:ä¹	
Ä
!input/varfeeder_saver/restore_allNoOp^input/varfeeder_saver/Assign^input/varfeeder_saver/Assign_1 ^input/varfeeder_saver/Assign_10 ^input/varfeeder_saver/Assign_11^input/varfeeder_saver/Assign_2^input/varfeeder_saver/Assign_3^input/varfeeder_saver/Assign_4^input/varfeeder_saver/Assign_5^input/varfeeder_saver/Assign_6^input/varfeeder_saver/Assign_7^input/varfeeder_saver/Assign_8^input/varfeeder_saver/Assign_9"/device:CPU:0
\
input/countConst"/device:CPU:0*
value	B	 R*
dtype0	*
_output_shapes
: 
i
input/num_parallel_callsConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
b
input/batch_sizeConst"/device:CPU:0*
value
B	 R*
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
ï
input/IteratorIterator"/device:CPU:0*æ
output_shapesÔ
Ñ:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<3:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ*
_output_shapes
: *
	container *
output_types
2*
shared_name 
 
input/TensorSliceDatasetTensorSliceDatasetinput/hits/readinput/pf_age/readinput/pf_si/readinput/pf_network/readinput/pf_gender/readinput/page_ix/readinput/pf_price_cat/readinput/page_popularity/readinput/quarter_autocorr/read"/device:CPU:0*=
output_shapes,
*:\::::: :: : *!
_class
loc:@input/Iterator*
Toutput_types
2	*
_output_shapes
: 
ó
input/RepeatDatasetRepeatDatasetinput/TensorSliceDatasetinput/count"/device:CPU:0*=
output_shapes,
*:\::::: :: : *!
_class
loc:@input/Iterator*
_output_shapes
: *
output_types
2	
î
input/MapDataset
MapDatasetinput/RepeatDatasetinput/dow/readinput/lagged_ix/read"/device:CPU:0*W
output_shapesF
D:<:
:F:F::::: :: : *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_Zb9FVuuzPaw* 
output_types
2*

Targuments
2*
_output_shapes
: 
Ï
input/FilterDatasetFilterDatasetinput/MapDataset"/device:CPU:0*@
	predicate3R1
/tf_data_structured_function_wrapper_rQZVAeA9Zw4*
_output_shapes
: *W
output_shapesF
D:<:
:F:F::::: :: : *!
_class
loc:@input/Iterator* 
output_types
2*

Targuments
 
ë
input/ParallelMapDatasetParallelMapDatasetinput/FilterDatasetinput/num_parallel_calls"/device:CPU:0*
output_types
2*

Targuments
 *
_output_shapes
: *U
output_shapesD
B:<:<3:<:<:
:
2:
: : :.: *!
_class
loc:@input/Iterator*8
f3R1
/tf_data_structured_function_wrapper_V9fT6glnYME
¼
input/BatchDatasetV2BatchDatasetV2input/ParallelMapDatasetinput/batch_sizeinput/drop_remainder"/device:CPU:0*æ
output_shapesÔ
Ñ:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<3:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ*!
_class
loc:@input/Iterator*
_output_shapes
: *
output_types
2
¥
input/PrefetchDatasetPrefetchDatasetinput/BatchDatasetV2input/buffer_size"/device:CPU:0*æ
output_shapesÔ
Ñ:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<3:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ*!
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
»
input/IteratorGetNextIteratorGetNextinput/Iterator"/device:CPU:0*æ
output_shapesÔ
Ñ:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<3:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ*ç
_output_shapesÔ
Ñ:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<3:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ<:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
2:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ.:ÿÿÿÿÿÿÿÿÿ*
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
:<ÿÿÿÿÿÿÿÿÿ3
T
cudnn_gru/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
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

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

cudnn_gru/rnn/concatConcatV2cudnn_gru/rnn/concat/values_0cudnn_gru/rnn/rangecudnn_gru/rnn/concat/axis*
T0*
N*
_output_shapes
:

cudnn_gru/rnn/transpose	Transposeinput/IteratorGetNext:1cudnn_gru/rnn/concat*
T0*+
_output_shapes
:<ÿÿÿÿÿÿÿÿÿ3
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
ó
cudnn_gru/rnn/strided_sliceStridedSlicecudnn_gru/rnn/Shape!cudnn_gru/rnn/strided_slice/stack#cudnn_gru/rnn/strided_slice/stack_1#cudnn_gru/rnn/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Rcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ò
Ncudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims
ExpandDimscudnn_gru/rnn/strided_sliceRcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims/dim*
T0*
_output_shapes
:

Icudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstConst*
valueB:ô*
dtype0*
_output_shapes
:

Ocudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ð
Jcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatConcatV2Ncudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDimsIcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ConstOcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concat/axis*
T0*
N*
_output_shapes
:

Ocudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¡
Icudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zerosFillJcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/concatOcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros/Const*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô

Tcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
ö
Pcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1
ExpandDimscudnn_gru/rnn/strided_sliceTcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:

Kcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/Const_1Const*
valueB:ô*
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
%cudnn_gru/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%cudnn_gru/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ý
cudnn_gru/rnn/strided_slice_1StridedSlicecudnn_gru/rnn/Shape_1#cudnn_gru/rnn/strided_slice_1/stack%cudnn_gru/rnn/strided_slice_1/stack_1%cudnn_gru/rnn/strided_slice_1/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
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
ý
cudnn_gru/rnn/strided_slice_2StridedSlicecudnn_gru/rnn/Shape_2#cudnn_gru/rnn/strided_slice_2/stack%cudnn_gru/rnn/strided_slice_2/stack_1%cudnn_gru/rnn/strided_slice_2/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
^
cudnn_gru/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

cudnn_gru/rnn/ExpandDims
ExpandDimscudnn_gru/rnn/strided_slice_2cudnn_gru/rnn/ExpandDims/dim*
T0*
_output_shapes
:
^
cudnn_gru/rnn/ConstConst*
valueB:ô*
dtype0*
_output_shapes
:
]
cudnn_gru/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

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

cudnn_gru/rnn/zerosFillcudnn_gru/rnn/concat_1cudnn_gru/rnn/zeros/Const*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
T
cudnn_gru/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ö
cudnn_gru/rnn/TensorArrayTensorArrayV3cudnn_gru/rnn/strided_slice_1*
identical_element_shapes(*9
tensor_array_name$"cudnn_gru/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *%
element_shape:ÿÿÿÿÿÿÿÿÿô
ö
cudnn_gru/rnn/TensorArray_1TensorArrayV3cudnn_gru/rnn/strided_slice_1*$
element_shape:ÿÿÿÿÿÿÿÿÿ3*8
tensor_array_name#!cudnn_gru/rnn/dynamic_rnn/input_0*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
m
&cudnn_gru/rnn/TensorArrayUnstack/ShapeShapecudnn_gru/rnn/transpose*
T0*
_output_shapes
:
~
4cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ò
.cudnn_gru/rnn/TensorArrayUnstack/strided_sliceStridedSlice&cudnn_gru/rnn/TensorArrayUnstack/Shape4cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack6cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_16cudnn_gru/rnn/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
n
,cudnn_gru/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
n
,cudnn_gru/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
à
&cudnn_gru/rnn/TensorArrayUnstack/rangeRange,cudnn_gru/rnn/TensorArrayUnstack/range/start.cudnn_gru/rnn/TensorArrayUnstack/strided_slice,cudnn_gru/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ª
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
cudnn_gru/rnn/MinimumMinimumcudnn_gru/rnn/strided_slice_1cudnn_gru/rnn/Maximum*
T0*
_output_shapes
: 
g
%cudnn_gru/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
¸
cudnn_gru/rnn/while/EnterEnter%cudnn_gru/rnn/while/iteration_counter*
T0*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
§
cudnn_gru/rnn/while/Enter_1Entercudnn_gru/rnn/time*
T0*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
°
cudnn_gru/rnn/while/Enter_2Entercudnn_gru/rnn/TensorArray:1*
T0*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context
ð
cudnn_gru/rnn/while/Enter_3EnterIcudnn_gru/rnn/MultiRNNCellZeroState/CudnnCompatibleGRUCellZeroState/zeros*
T0*
parallel_iterations *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*1

frame_name#!cudnn_gru/rnn/while/while_context

cudnn_gru/rnn/while/MergeMergecudnn_gru/rnn/while/Enter!cudnn_gru/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 

cudnn_gru/rnn/while/Merge_1Mergecudnn_gru/rnn/while/Enter_1#cudnn_gru/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 

cudnn_gru/rnn/while/Merge_2Mergecudnn_gru/rnn/while/Enter_2#cudnn_gru/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
¤
cudnn_gru/rnn/while/Merge_3Mergecudnn_gru/rnn/while/Enter_3#cudnn_gru/rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:ÿÿÿÿÿÿÿÿÿô: 
|
cudnn_gru/rnn/while/LessLesscudnn_gru/rnn/while/Mergecudnn_gru/rnn/while/Less/Enter*
T0*
_output_shapes
: 
È
cudnn_gru/rnn/while/Less/EnterEntercudnn_gru/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context

cudnn_gru/rnn/while/Less_1Lesscudnn_gru/rnn/while/Merge_1 cudnn_gru/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
Â
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
®
cudnn_gru/rnn/while/SwitchSwitchcudnn_gru/rnn/while/Mergecudnn_gru/rnn/while/LoopCond*
T0*,
_class"
 loc:@cudnn_gru/rnn/while/Merge*
_output_shapes
: : 
´
cudnn_gru/rnn/while/Switch_1Switchcudnn_gru/rnn/while/Merge_1cudnn_gru/rnn/while/LoopCond*
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_1*
_output_shapes
: : 
´
cudnn_gru/rnn/while/Switch_2Switchcudnn_gru/rnn/while/Merge_2cudnn_gru/rnn/while/LoopCond*
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_2*
_output_shapes
: : 
Ø
cudnn_gru/rnn/while/Switch_3Switchcudnn_gru/rnn/while/Merge_3cudnn_gru/rnn/while/LoopCond*
T0*.
_class$
" loc:@cudnn_gru/rnn/while/Merge_3*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô
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
:ÿÿÿÿÿÿÿÿÿô
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
ì
%cudnn_gru/rnn/while/TensorArrayReadV3TensorArrayReadV3+cudnn_gru/rnn/while/TensorArrayReadV3/Entercudnn_gru/rnn/while/Identity_1-cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
×
+cudnn_gru/rnn/while/TensorArrayReadV3/EnterEntercudnn_gru/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*1

frame_name#!cudnn_gru/rnn/while/while_context

-cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1EnterHcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *1

frame_name#!cudnn_gru/rnn/while/while_context

kcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB"'  è  *
dtype0*
_output_shapes
:

icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/minConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *ÍÌL½*
dtype0*
_output_shapes
: 

icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *ÍÌL=*
dtype0*
_output_shapes
: 
¤
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformkcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
§è*
seed±ÿå)*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
seed2
Æ
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/subSubicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/maxicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
Ú
icudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulMulscudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Ì
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformAddicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/mulicudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
ý
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel
VariableV2*
shape:
§è*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
dtype0* 
_output_shapes
:
§è

Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignAssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Ò
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/readIdentityJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
T0* 
_output_shapes
:
§è

Zcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/ConstConst*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueBè*  ?*
dtype0*
_output_shapes	
:è
ï
Hcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias
VariableV2*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
dtype0*
_output_shapes	
:è*
shape:è

Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignAssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasZcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
É
Mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/readIdentityHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
T0*
_output_shapes	
:è
Æ
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shapeConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB"3   ô  *
dtype0*
_output_shapes
:
·
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/minConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *ÍÌL½*
dtype0*
_output_shapes
: 
·
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/maxConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *ÍÌL=*
dtype0*
_output_shapes
: 
ä
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/shape*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
seed2*
dtype0*
_output_shapes
:	3ô*
seed±ÿå)

~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/subSub~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/max~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
®
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mulMulcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/RandomUniform~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/sub*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô

zcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformAdd~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/mul~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform/min*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
¥
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel
VariableV2*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
dtype0*
_output_shapes
:	3ô*
shape:	3ô
ë
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/AssignAssign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelzcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
û
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/readIdentity_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
T0*
_output_shapes
:	3ô
È
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shapeConst*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB"ô  ô  *
dtype0*
_output_shapes
:
¹
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/minConst*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *ÍÌL½*
dtype0*
_output_shapes
: 
¹
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxConst*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *ÍÌL=*
dtype0*
_output_shapes
: 
è
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformRandomUniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/shape*
seed±ÿå)*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
seed2*
dtype0* 
_output_shapes
:
ôô

cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/subSubcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/maxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
³
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulMulcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/RandomUniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/sub*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
¤
{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformAddcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/mulcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform/min*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
©
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel
VariableV2*
shape:
ôô*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
dtype0* 
_output_shapes
:
ôô
ð
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/AssignAssign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
þ
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/readIdentity`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
T0* 
_output_shapes
:
ôô
°
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zerosConst*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueBô*    *
dtype0*
_output_shapes	
:ô

]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias
VariableV2*
shape:ô*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
dtype0*
_output_shapes	
:ô
Ö
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/AssignAssign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
ó
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/readIdentity]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
T0*
_output_shapes	
:ô
²
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zerosConst*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueBô*    *
dtype0*
_output_shapes	
:ô

^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias
VariableV2*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
dtype0*
_output_shapes	
:ô*
shape:ô
Ú
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaspcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
õ
ccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/readIdentity^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
T0*
_output_shapes	
:ô
´
Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axisConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
²
Ncudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatConcatV2%cudnn_gru/rnn/while/TensorArrayReadV3cudnn_gru/rnn/while/Identity_3Scudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concat/axis*
T0*
N*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
±
Ncudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulMatMulNcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/concatTcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
º
Tcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/EnterEnterOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
§è*1

frame_name#!cudnn_gru/rnn/while/while_context
´
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAddBiasAddNcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMulUcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
´
Ucudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/EnterEnterMcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:è*1

frame_name#!cudnn_gru/rnn/while/while_context
Þ
Ocudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/SigmoidSigmoidOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
®
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/ConstConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
¸
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimConst^cudnn_gru/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ø
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitSplitWcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split/split_dimOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Sigmoid*
T0*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô*
	num_split

Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1MatMul%cudnn_gru/rnn/while/TensorArrayReadV3Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Ð
Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/EnterEnterdcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:	3ô*1

frame_name#!cudnn_gru/rnn/while/while_context
º
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1BiasAddPcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Ë
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/EnterEnterbcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:ô*1

frame_name#!cudnn_gru/rnn/while/while_context

Pcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2MatMulcudnn_gru/rnn/while/Identity_3Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Ò
Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/EnterEnterecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
ôô*1

frame_name#!cudnn_gru/rnn/while/while_context
º
Qcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2BiasAddPcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Ì
Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/EnterEnterccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:ô*1

frame_name#!cudnn_gru/rnn/while/while_context
§
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mulMulMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/splitQcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
¥
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/addAddQcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Ô
Lcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/TanhTanhKcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
±
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xConst^cudnn_gru/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¥
Kcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subSubMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub/xOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
¢
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1MulKcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/subLcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/Tanh*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
ø
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2MulOcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/split:1cudnn_gru/rnn/while/Identity_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
¥
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1AddMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_1Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/mul_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô

7cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3=cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Entercudnn_gru/rnn/while/Identity_1Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1cudnn_gru/rnn/while/Identity_2*
T0*`
_classV
TRloc:@cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
_output_shapes
: 
É
=cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntercudnn_gru/rnn/TensorArray*
T0*`
_classV
TRloc:@cudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
parallel_iterations *
is_constant(*
_output_shapes
:*1

frame_name#!cudnn_gru/rnn/while/while_context
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
!cudnn_gru/rnn/while/NextIterationNextIterationcudnn_gru/rnn/while/add*
T0*
_output_shapes
: 
p
#cudnn_gru/rnn/while/NextIteration_1NextIterationcudnn_gru/rnn/while/add_1*
T0*
_output_shapes
: 

#cudnn_gru/rnn/while/NextIteration_2NextIteration7cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
¶
#cudnn_gru/rnn/while/NextIteration_3NextIterationMcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/add_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
]
cudnn_gru/rnn/while/ExitExitcudnn_gru/rnn/while/Switch*
T0*
_output_shapes
: 
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
cudnn_gru/rnn/while/Exit_3Exitcudnn_gru/rnn/while/Switch_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
Â
0cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3cudnn_gru/rnn/TensorArraycudnn_gru/rnn/while/Exit_2*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
_output_shapes
: 

*cudnn_gru/rnn/TensorArrayStack/range/startConst*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 

*cudnn_gru/rnn/TensorArrayStack/range/deltaConst*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
value	B :*
dtype0*
_output_shapes
: 

$cudnn_gru/rnn/TensorArrayStack/rangeRange*cudnn_gru/rnn/TensorArrayStack/range/start0cudnn_gru/rnn/TensorArrayStack/TensorArraySizeV3*cudnn_gru/rnn/TensorArrayStack/range/delta*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¶
2cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3cudnn_gru/rnn/TensorArray$cudnn_gru/rnn/TensorArrayStack/rangecudnn_gru/rnn/while/Exit_2*,
_class"
 loc:@cudnn_gru/rnn/TensorArray*
dtype0*,
_output_shapes
:<ÿÿÿÿÿÿÿÿÿô*%
element_shape:ÿÿÿÿÿÿÿÿÿô
`
cudnn_gru/rnn/Const_1Const*
valueB:ô*
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

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
¥
cudnn_gru/rnn/concat_2ConcatV2cudnn_gru/rnn/concat_2/values_0cudnn_gru/rnn/range_1cudnn_gru/rnn/concat_2/axis*
T0*
N*
_output_shapes
:
©
cudnn_gru/rnn/transpose_1	Transpose2cudnn_gru/rnn/TensorArrayStack/TensorArrayGatherV3cudnn_gru/rnn/concat_2*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<ô
m
cudnn_gru/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:

cudnn_gru/transpose	Transposecudnn_gru/rnn/transpose_1cudnn_gru/transpose/perm*
T0*,
_output_shapes
:<ÿÿÿÿÿÿÿÿÿô
Z
cudnn_gru/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

cudnn_gru/ExpandDims
ExpandDimscudnn_gru/rnn/while/Exit_3cudnn_gru/ExpandDims/dim*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
F
L2LossL2Losscudnn_gru/transpose*
T0*
_output_shapes
: 
J
mul/yConst*
valueB
 *c*2*
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
:ÿÿÿÿÿÿÿÿÿô
d
strided_slice/stackConst*
valueB"    ÿÿÿÿ*
dtype0*
_output_shapes
:
f
strided_slice/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
f
strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
î
strided_sliceStridedSliceinput/IteratorGetNext:2strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
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
ÿÿÿÿÿÿÿÿÿ2
G
ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Y
ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
i

ExpandDims
ExpandDimsstrided_sliceExpandDims/dim*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
R
TensorArray/sizeConst*
value	B :
*
dtype0*
_output_shapes
: 
y
TensorArrayTensorArrayV3TensorArray/size*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
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
:ÿÿÿÿÿÿÿÿÿ*#

frame_namewhile/while_context
w
while/Enter_2Enterunstack*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*#

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
T0*
N*
_output_shapes
: : 
y
while/Merge_1Mergewhile/Enter_1while/NextIteration_1*
T0*
N*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 
z
while/Merge_2Mergewhile/Enter_2while/NextIteration_2*
T0*
N**
_output_shapes
:ÿÿÿÿÿÿÿÿÿô: 
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
while/SwitchSwitchwhile/Mergewhile/LoopCond*
T0*
_class
loc:@while/Merge*
_output_shapes
: : 

while/Switch_1Switchwhile/Merge_1while/LoopCond*
T0* 
_class
loc:@while/Merge_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
 
while/Switch_2Switchwhile/Merge_2while/LoopCond*
T0* 
_class
loc:@while/Merge_2*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô
|
while/Switch_3Switchwhile/Merge_3while/LoopCond*
T0* 
_class
loc:@while/Merge_3*
_output_shapes
: : 
|
while/Switch_4Switchwhile/Merge_4while/LoopCond*
T0* 
_class
loc:@while/Merge_4*
_output_shapes
: : 
K
while/IdentityIdentitywhile/Switch:1*
T0*
_output_shapes
: 
`
while/Identity_1Identitywhile/Switch_1:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
while/Identity_2Identitywhile/Switch_2:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
O
while/Identity_3Identitywhile/Switch_3:1*
T0*
_output_shapes
: 
O
while/Identity_4Identitywhile/Switch_4:1*
T0*
_output_shapes
: 
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
ê
while/strided_sliceStridedSlicewhile/strided_slice/Enterwhile/strided_slice/stackwhile/strided_slice/stack_1while/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

while/strided_slice/EnterEntertranspose_1*
T0*
is_constant(*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ2*#

frame_namewhile/while_context
d
while/concat/axisConst^while/Identity*
value	B :*
dtype0*
_output_shapes
: 

while/concatConcatV2while/Identity_1while/strided_slicewhile/concat/axis*
T0*
N*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
¡
.gru_cell/w_ru/Initializer/random_uniform/shapeConst* 
_class
loc:@gru_cell/w_ru*
valueB"'  è  *
dtype0*
_output_shapes
:

,gru_cell/w_ru/Initializer/random_uniform/minConst* 
_class
loc:@gru_cell/w_ru*
valueB
 *SÂ~½*
dtype0*
_output_shapes
: 

,gru_cell/w_ru/Initializer/random_uniform/maxConst* 
_class
loc:@gru_cell/w_ru*
valueB
 *SÂ~=*
dtype0*
_output_shapes
: 
Ñ
6gru_cell/w_ru/Initializer/random_uniform/RandomUniformRandomUniform.gru_cell/w_ru/Initializer/random_uniform/shape*
T0* 
_class
loc:@gru_cell/w_ru*
dtype0* 
_output_shapes
:
§è
Ò
,gru_cell/w_ru/Initializer/random_uniform/subSub,gru_cell/w_ru/Initializer/random_uniform/max,gru_cell/w_ru/Initializer/random_uniform/min*
T0* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
æ
,gru_cell/w_ru/Initializer/random_uniform/mulMul6gru_cell/w_ru/Initializer/random_uniform/RandomUniform,gru_cell/w_ru/Initializer/random_uniform/sub*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
Ø
(gru_cell/w_ru/Initializer/random_uniformAdd,gru_cell/w_ru/Initializer/random_uniform/mul,gru_cell/w_ru/Initializer/random_uniform/min*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è

gru_cell/w_ru
VariableV2*
shape:
§è* 
_class
loc:@gru_cell/w_ru*
dtype0* 
_output_shapes
:
§è
¤
gru_cell/w_ru/AssignAssigngru_cell/w_ru(gru_cell/w_ru/Initializer/random_uniform*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
z
gru_cell/w_ru/readIdentitygru_cell/w_ru*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è

gru_cell/b_ru/Initializer/ConstConst* 
_class
loc:@gru_cell/b_ru*
valueBè*  ?*
dtype0*
_output_shapes	
:è
y
gru_cell/b_ru
VariableV2*
shape:è* 
_class
loc:@gru_cell/b_ru*
dtype0*
_output_shapes	
:è

gru_cell/b_ru/AssignAssigngru_cell/b_rugru_cell/b_ru/Initializer/Const*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
u
gru_cell/b_ru/readIdentitygru_cell/b_ru*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

-gru_cell/w_c/Initializer/random_uniform/shapeConst*
_class
loc:@gru_cell/w_c*
valueB"'  ô  *
dtype0*
_output_shapes
:

+gru_cell/w_c/Initializer/random_uniform/minConst*
_class
loc:@gru_cell/w_c*
valueB
 *½½*
dtype0*
_output_shapes
: 

+gru_cell/w_c/Initializer/random_uniform/maxConst*
_class
loc:@gru_cell/w_c*
valueB
 *½=*
dtype0*
_output_shapes
: 
Î
5gru_cell/w_c/Initializer/random_uniform/RandomUniformRandomUniform-gru_cell/w_c/Initializer/random_uniform/shape*
T0*
_class
loc:@gru_cell/w_c*
dtype0* 
_output_shapes
:
§ô
Î
+gru_cell/w_c/Initializer/random_uniform/subSub+gru_cell/w_c/Initializer/random_uniform/max+gru_cell/w_c/Initializer/random_uniform/min*
T0*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
â
+gru_cell/w_c/Initializer/random_uniform/mulMul5gru_cell/w_c/Initializer/random_uniform/RandomUniform+gru_cell/w_c/Initializer/random_uniform/sub*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
Ô
'gru_cell/w_c/Initializer/random_uniformAdd+gru_cell/w_c/Initializer/random_uniform/mul+gru_cell/w_c/Initializer/random_uniform/min*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

gru_cell/w_c
VariableV2*
_class
loc:@gru_cell/w_c*
dtype0* 
_output_shapes
:
§ô*
shape:
§ô
 
gru_cell/w_c/AssignAssigngru_cell/w_c'gru_cell/w_c/Initializer/random_uniform*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
w
gru_cell/w_c/readIdentitygru_cell/w_c*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

gru_cell/b_c/Initializer/ConstConst*
_class
loc:@gru_cell/b_c*
valueBô*    *
dtype0*
_output_shapes	
:ô
w
gru_cell/b_c
VariableV2*
shape:ô*
_class
loc:@gru_cell/b_c*
dtype0*
_output_shapes	
:ô

gru_cell/b_c/AssignAssigngru_cell/b_cgru_cell/b_c/Initializer/Const*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
r
gru_cell/b_c/readIdentitygru_cell/b_c*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
Ì
while/gru_cell/GRUBlockCellGRUBlockCellwhile/concatwhile/Identity_2!while/gru_cell/GRUBlockCell/Enter#while/gru_cell/GRUBlockCell/Enter_1#while/gru_cell/GRUBlockCell/Enter_2#while/gru_cell/GRUBlockCell/Enter_3*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô:ÿÿÿÿÿÿÿÿÿô
¡
!while/gru_cell/GRUBlockCell/EnterEntergru_cell/w_ru/read*
T0*
is_constant(* 
_output_shapes
:
§è*#

frame_namewhile/while_context
¢
#while/gru_cell/GRUBlockCell/Enter_1Entergru_cell/w_c/read*
T0*
is_constant(* 
_output_shapes
:
§ô*#

frame_namewhile/while_context

#while/gru_cell/GRUBlockCell/Enter_2Entergru_cell/b_ru/read*
T0*
is_constant(*
_output_shapes	
:è*#

frame_namewhile/while_context

#while/gru_cell/GRUBlockCell/Enter_3Entergru_cell/b_c/read*
T0*
is_constant(*
_output_shapes	
:ô*#

frame_namewhile/while_context
»
;decoder_output_proj/kernel/Initializer/random_uniform/shapeConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB"ô     *
dtype0*
_output_shapes
:
­
9decoder_output_proj/kernel/Initializer/random_uniform/minConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB
 *à½*
dtype0*
_output_shapes
: 
­
9decoder_output_proj/kernel/Initializer/random_uniform/maxConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB
 *à=*
dtype0*
_output_shapes
: 

Cdecoder_output_proj/kernel/Initializer/random_uniform/RandomUniformRandomUniform;decoder_output_proj/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	ô*
seed±ÿå)*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
seed2

9decoder_output_proj/kernel/Initializer/random_uniform/subSub9decoder_output_proj/kernel/Initializer/random_uniform/max9decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 

9decoder_output_proj/kernel/Initializer/random_uniform/mulMulCdecoder_output_proj/kernel/Initializer/random_uniform/RandomUniform9decoder_output_proj/kernel/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

5decoder_output_proj/kernel/Initializer/random_uniformAdd9decoder_output_proj/kernel/Initializer/random_uniform/mul9decoder_output_proj/kernel/Initializer/random_uniform/min*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

decoder_output_proj/kernel
VariableV2*
shape:	ô*-
_class#
!loc:@decoder_output_proj/kernel*
dtype0*
_output_shapes
:	ô
×
!decoder_output_proj/kernel/AssignAssigndecoder_output_proj/kernel5decoder_output_proj/kernel/Initializer/random_uniform*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
 
decoder_output_proj/kernel/readIdentitydecoder_output_proj/kernel*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
¤
*decoder_output_proj/bias/Initializer/zerosConst*+
_class!
loc:@decoder_output_proj/bias*
valueB*    *
dtype0*
_output_shapes
:

decoder_output_proj/bias
VariableV2*+
_class!
loc:@decoder_output_proj/bias*
dtype0*
_output_shapes
:*
shape:
Á
decoder_output_proj/bias/AssignAssigndecoder_output_proj/bias*decoder_output_proj/bias/Initializer/zeros*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:

decoder_output_proj/bias/readIdentitydecoder_output_proj/bias*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
£
 while/decoder_output_proj/MatMulMatMulwhile/gru_cell/GRUBlockCell:3&while/decoder_output_proj/MatMul/Enter*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
²
&while/decoder_output_proj/MatMul/EnterEnterdecoder_output_proj/kernel/read*
T0*
is_constant(*
_output_shapes
:	ô*#

frame_namewhile/while_context
©
!while/decoder_output_proj/BiasAddBiasAdd while/decoder_output_proj/MatMul'while/decoder_output_proj/BiasAdd/Enter*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¬
'while/decoder_output_proj/BiasAdd/EnterEnterdecoder_output_proj/bias/read*
T0*
is_constant(*
_output_shapes
:*#

frame_namewhile/while_context

)while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3/while/TensorArrayWrite/TensorArrayWriteV3/Enterwhile/Identitywhile/gru_cell/GRUBlockCell:3while/Identity_4*
T0*.
_class$
" loc:@while/gru_cell/GRUBlockCell*
_output_shapes
: 
Ô
/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterTensorArray_1*
T0*.
_class$
" loc:@while/gru_cell/GRUBlockCell*
is_constant(*#

frame_namewhile/while_context*
_output_shapes
:

+while/TensorArrayWrite_1/TensorArrayWriteV3TensorArrayWriteV31while/TensorArrayWrite_1/TensorArrayWriteV3/Enterwhile/Identity!while/decoder_output_proj/BiasAddwhile/Identity_3*
T0*4
_class*
(&loc:@while/decoder_output_proj/BiasAdd*
_output_shapes
: 
Ú
1while/TensorArrayWrite_1/TensorArrayWriteV3/EnterEnterTensorArray*
T0*
is_constant(*4
_class*
(&loc:@while/decoder_output_proj/BiasAdd*
_output_shapes
:*#

frame_namewhile/while_context
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
while/NextIteration_1NextIteration!while/decoder_output_proj/BiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
while/NextIteration_2NextIterationwhile/gru_cell/GRUBlockCell:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
t
while/NextIteration_3NextIteration+while/TensorArrayWrite_1/TensorArrayWriteV3*
T0*
_output_shapes
: 
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
while/Exit_1Exitwhile/Switch_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
W
while/Exit_2Exitwhile/Switch_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
E
while/Exit_3Exitwhile/Switch_3*
T0*
_output_shapes
: 
E
while/Exit_4Exitwhile/Switch_4*
T0*
_output_shapes
: 

"TensorArrayStack/TensorArraySizeV3TensorArraySizeV3TensorArraywhile/Exit_3*
_class
loc:@TensorArray*
_output_shapes
: 
~
TensorArrayStack/range/startConst*
_class
loc:@TensorArray*
value	B : *
dtype0*
_output_shapes
: 
~
TensorArrayStack/range/deltaConst*
_class
loc:@TensorArray*
value	B :*
dtype0*
_output_shapes
: 
Ä
TensorArrayStack/rangeRangeTensorArrayStack/range/start"TensorArrayStack/TensorArraySizeV3TensorArrayStack/range/delta*
_class
loc:@TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
÷
$TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3TensorArrayTensorArrayStack/rangewhile/Exit_3*
_class
loc:@TensorArray*
dtype0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
element_shape:ÿÿÿÿÿÿÿÿÿ

SqueezeSqueeze$TensorArrayStack/TensorArrayGatherV3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ

$TensorArrayStack_1/TensorArraySizeV3TensorArraySizeV3TensorArray_1while/Exit_4* 
_class
loc:@TensorArray_1*
_output_shapes
: 

TensorArrayStack_1/range/startConst* 
_class
loc:@TensorArray_1*
value	B : *
dtype0*
_output_shapes
: 

TensorArrayStack_1/range/deltaConst* 
_class
loc:@TensorArray_1*
value	B :*
dtype0*
_output_shapes
: 
Î
TensorArrayStack_1/rangeRangeTensorArrayStack_1/range/start$TensorArrayStack_1/TensorArraySizeV3TensorArrayStack_1/range/delta* 
_class
loc:@TensorArray_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

&TensorArrayStack_1/TensorArrayGatherV3TensorArrayGatherV3TensorArray_1TensorArrayStack_1/rangewhile/Exit_4*%
element_shape:ÿÿÿÿÿÿÿÿÿô* 
_class
loc:@TensorArray_1*
dtype0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿô
[
L2Loss_1L2Loss&TensorArrayStack_1/TensorArrayGatherV3*
T0*
_output_shapes
: 
L
mul_1/yConst*
valueB
 *½75*
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

transpose_2/RangeRangetranspose_2/Range/starttranspose_2/Ranktranspose_2/Range/delta*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
j
transpose_2/sub_1Subtranspose_2/subtranspose_2/Range*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
o
transpose_2	TransposeSqueezetranspose_2/sub_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
[
ExpandDims_1/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
w
ExpandDims_1
ExpandDimsinput/IteratorGetNext:8ExpandDims_1/dim*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
[
ExpandDims_2/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
w
ExpandDims_2
ExpandDimsinput/IteratorGetNext:7ExpandDims_2/dim*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
b
mul_2Multranspose_2ExpandDims_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Z
addAddmul_2ExpandDims_2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
þ
IsVariableInitializedIsVariableInitializedJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
dtype0*
_output_shapes
: 
f
cond/SwitchSwitchIsVariableInitializedIsVariableInitialized*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
P
cond/pred_idIdentityIsVariableInitialized*
T0
*
_output_shapes
: 
T
	cond/readIdentitycond/read/Switch:1*
T0* 
_output_shapes
:
§è

cond/read/Switch	RefSwitchJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelcond/pred_id*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*,
_output_shapes
:
§è:
§è
¢
cond/Switch_1Switchecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformcond/pred_id*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*,
_output_shapes
:
§è:
§è
c

cond/MergeMergecond/Switch_1	cond/read*
T0*
N*"
_output_shapes
:
§è: 

ccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage
VariableV2*
shape:
§è*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
dtype0* 
_output_shapes
:
§è
â
ycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
dtype0*
_output_shapes
: 
ñ
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/SwitchSwitchycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/IsVariableInitializedycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: : 
ð
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_tIdentityqcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch:1*
T0
*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
î
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_fIdentityocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch*
T0
*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
÷
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_idIdentityycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
û
mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/readIdentityvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch:1*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Õ
tcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch	RefSwitchJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelpcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*,
_output_shapes
:
§è:
§è
ê
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch_1Switchecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniformpcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*,
_output_shapes
:
§è:
§è
î
ncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/MergeMergeqcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch_1mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
N*"
_output_shapes
:
§è: 
ù
Úcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0Switchncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Mergecond/pred_id*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*,
_output_shapes
:
§è:
§è
É
Ócudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0IdentityÜcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0:1*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Ø
Ôcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0Mergecond/Switch_1Ócudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
N*"
_output_shapes
:
§è: 
º
jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/AssignAssignccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverageÔcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage_0*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
ã
hcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/readIdentityccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
ü
IsVariableInitialized_1IsVariableInitializedHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
dtype0*
_output_shapes
: 
l
cond_1/SwitchSwitchIsVariableInitialized_1IsVariableInitialized_1*
T0
*
_output_shapes
: : 
M
cond_1/switch_tIdentitycond_1/Switch:1*
T0
*
_output_shapes
: 
K
cond_1/switch_fIdentitycond_1/Switch*
T0
*
_output_shapes
: 
T
cond_1/pred_idIdentityIsVariableInitialized_1*
T0
*
_output_shapes
: 
S
cond_1/readIdentitycond_1/read/Switch:1*
T0*
_output_shapes	
:è

cond_1/read/Switch	RefSwitchHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biascond_1/pred_id*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*"
_output_shapes
:è:è

cond_1/Switch_1SwitchZcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Constcond_1/pred_id*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*"
_output_shapes
:è:è
d
cond_1/MergeMergecond_1/Switch_1cond_1/read*
T0*
N*
_output_shapes
	:è: 

acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage
VariableV2*
shape:è*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
dtype0*
_output_shapes	
:è
Ü
wcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
dtype0*
_output_shapes
: 
é
mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/SwitchSwitchwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/IsVariableInitializedwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes
: : 
ê
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_tIdentityocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch:1*
T0
*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes
: 
è
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_fIdentitymcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch*
T0
*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes
: 
ñ
ncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_idIdentitywcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes
: 
ð
kcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/readIdentitytcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read/Switch:1*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
Ã
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read/Switch	RefSwitchHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*"
_output_shapes
:è:è
Ï
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch_1SwitchZcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Constncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*"
_output_shapes
:è:è
á
lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/MergeMergeocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch_1kcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
N*
_output_shapes
	:è: 
ë
Øcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0Switchlcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Mergecond_1/pred_id*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*"
_output_shapes
:è:è
¾
Ñcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0IdentityÚcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0:1*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
Ï
Òcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0Mergecond_1/Switch_1Ñcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
N*
_output_shapes
	:è: 
­
hcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/AssignAssignacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageÒcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond_1/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage_0*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
Ø
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/readIdentityacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
ª
IsVariableInitialized_2IsVariableInitialized_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
dtype0*
_output_shapes
: 
l
cond_2/SwitchSwitchIsVariableInitialized_2IsVariableInitialized_2*
T0
*
_output_shapes
: : 
M
cond_2/switch_tIdentitycond_2/Switch:1*
T0
*
_output_shapes
: 
K
cond_2/switch_fIdentitycond_2/Switch*
T0
*
_output_shapes
: 
T
cond_2/pred_idIdentityIsVariableInitialized_2*
T0
*
_output_shapes
: 
W
cond_2/readIdentitycond_2/read/Switch:1*
T0*
_output_shapes
:	3ô
¹
cond_2/read/Switch	RefSwitch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelcond_2/pred_id*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel**
_output_shapes
:	3ô:	3ô
Î
cond_2/Switch_1Switchzcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformcond_2/pred_id*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel**
_output_shapes
:	3ô:	3ô
h
cond_2/MergeMergecond_2/Switch_1cond_2/read*
T0*
N*!
_output_shapes
:	3ô: 
¾
xcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage
VariableV2*
shape:	3ô*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
dtype0*
_output_shapes
:	3ô
¢
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/IsVariableInitializedIsVariableInitialized_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
dtype0*
_output_shapes
: 
È
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/SwitchSwitchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/IsVariableInitializedcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: : 
±
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_tIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch:1*
T0
*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
¯
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_fIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch*
T0
*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
¸
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_idIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
»
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/readIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
©
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read/Switch	RefSwitch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel**
_output_shapes
:	3ô:	3ô
¾
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch_1Switchzcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel**
_output_shapes
:	3ô:	3ô
Ä
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/MergeMergecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
N*!
_output_shapes
:	3ô: 
Ð
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0Switchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Mergecond_2/pred_id*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel**
_output_shapes
:	3ô:	3ô
µ
ÿcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0Identitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0:1*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
Æ
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0Mergecond_2/Switch_1ÿcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
N*!
_output_shapes
:	3ô: 
¤
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/AssignAssignxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAveragecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond_2/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage_0*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
¡
}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/readIdentityxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
¬
IsVariableInitialized_3IsVariableInitialized`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
dtype0*
_output_shapes
: 
l
cond_3/SwitchSwitchIsVariableInitialized_3IsVariableInitialized_3*
T0
*
_output_shapes
: : 
M
cond_3/switch_tIdentitycond_3/Switch:1*
T0
*
_output_shapes
: 
K
cond_3/switch_fIdentitycond_3/Switch*
T0
*
_output_shapes
: 
T
cond_3/pred_idIdentityIsVariableInitialized_3*
T0
*
_output_shapes
: 
X
cond_3/readIdentitycond_3/read/Switch:1*
T0* 
_output_shapes
:
ôô
½
cond_3/read/Switch	RefSwitch`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelcond_3/pred_id*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*,
_output_shapes
:
ôô:
ôô
Ò
cond_3/Switch_1Switch{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformcond_3/pred_id*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*,
_output_shapes
:
ôô:
ôô
i
cond_3/MergeMergecond_3/Switch_1cond_3/read*
T0*
N*"
_output_shapes
:
ôô: 
Â
ycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage
VariableV2*
shape:
ôô*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
dtype0* 
_output_shapes
:
ôô
¥
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/IsVariableInitializedIsVariableInitialized`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
dtype0*
_output_shapes
: 
Ì
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/SwitchSwitchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/IsVariableInitializedcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: : 
´
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_tIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch:1*
T0
*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
²
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_fIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch*
T0
*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
»
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_idIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
¿
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/readIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
¯
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read/Switch	RefSwitch`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*,
_output_shapes
:
ôô:
ôô
Ä
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch_1Switch{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniformcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*,
_output_shapes
:
ôô:
ôô
É
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/MergeMergecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
N*"
_output_shapes
:
ôô: 
Ö
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0Switchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Mergecond_3/pred_id*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*,
_output_shapes
:
ôô:
ôô
»
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0Identitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0:1*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
Ì
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0Mergecond_3/Switch_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
N*"
_output_shapes
:
ôô: 
«
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/AssignAssignycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAveragecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond_3/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage_0*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
¥
~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/readIdentityycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
¦
IsVariableInitialized_4IsVariableInitialized]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
dtype0*
_output_shapes
: 
l
cond_4/SwitchSwitchIsVariableInitialized_4IsVariableInitialized_4*
T0
*
_output_shapes
: : 
M
cond_4/switch_tIdentitycond_4/Switch:1*
T0
*
_output_shapes
: 
K
cond_4/switch_fIdentitycond_4/Switch*
T0
*
_output_shapes
: 
T
cond_4/pred_idIdentityIsVariableInitialized_4*
T0
*
_output_shapes
: 
S
cond_4/readIdentitycond_4/read/Switch:1*
T0*
_output_shapes	
:ô
­
cond_4/read/Switch	RefSwitch]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascond_4/pred_id*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*"
_output_shapes
:ô:ô
¹
cond_4/Switch_1Switchocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeroscond_4/pred_id*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*"
_output_shapes
:ô:ô
d
cond_4/MergeMergecond_4/Switch_1cond_4/read*
T0*
N*
_output_shapes
	:ô: 
²
vcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage
VariableV2*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
dtype0*
_output_shapes	
:ô*
shape:ô

cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/IsVariableInitializedIsVariableInitialized]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
dtype0*
_output_shapes
: 
À
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/SwitchSwitchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/IsVariableInitializedcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes
: : 
«
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_tIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch:1*
T0
*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes
: 
©
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_fIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch*
T0
*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes
: 
²
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_idIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes
: 
±
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/readIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read/Switch:1*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô

cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read/Switch	RefSwitch]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biascudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*"
_output_shapes
:ô:ô
¥
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch_1Switchocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeroscudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*"
_output_shapes
:ô:ô
¸
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/MergeMergecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
N*
_output_shapes
	:ô: 
À
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0Switchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Mergecond_4/pred_id*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*"
_output_shapes
:ô:ô
§
ûcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0Identitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0:1*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¸
ücudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0Mergecond_4/Switch_1ûcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
N*
_output_shapes
	:ô: 

}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/AssignAssignvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverageücudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond_4/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_0*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô

{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/readIdentityvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¨
IsVariableInitialized_5IsVariableInitialized^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
dtype0*
_output_shapes
: 
l
cond_5/SwitchSwitchIsVariableInitialized_5IsVariableInitialized_5*
T0
*
_output_shapes
: : 
M
cond_5/switch_tIdentitycond_5/Switch:1*
T0
*
_output_shapes
: 
K
cond_5/switch_fIdentitycond_5/Switch*
T0
*
_output_shapes
: 
T
cond_5/pred_idIdentityIsVariableInitialized_5*
T0
*
_output_shapes
: 
S
cond_5/readIdentitycond_5/read/Switch:1*
T0*
_output_shapes	
:ô
¯
cond_5/read/Switch	RefSwitch^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biascond_5/pred_id*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*"
_output_shapes
:ô:ô
»
cond_5/Switch_1Switchpcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeroscond_5/pred_id*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*"
_output_shapes
:ô:ô
d
cond_5/MergeMergecond_5/Switch_1cond_5/read*
T0*
N*
_output_shapes
	:ô: 
´
wcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage
VariableV2*
shape:ô*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
dtype0*
_output_shapes	
:ô

cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/IsVariableInitializedIsVariableInitialized^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
dtype0*
_output_shapes
: 
Ä
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/SwitchSwitchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/IsVariableInitializedcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes
: : 
®
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_tIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch:1*
T0
*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes
: 
¬
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_fIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch*
T0
*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes
: 
µ
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_idIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes
: 
´
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/readIdentitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read/Switch:1*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô

cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read/Switch	RefSwitch^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biascudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*"
_output_shapes
:ô:ô
©
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch_1Switchpcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeroscudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*"
_output_shapes
:ô:ô
¼
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/MergeMergecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
N*
_output_shapes
	:ô: 
Ä
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0Switchcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Mergecond_5/pred_id*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*"
_output_shapes
:ô:ô
¬
ýcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0Identitycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/read/Switch_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0:1*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
½
þcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0Mergecond_5/Switch_1ýcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/read_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
N*
_output_shapes
	:ô: 

~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/AssignAssignwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverageþcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond_5/Merge_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage_0*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô

|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/readIdentitywcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô

IsVariableInitialized_6IsVariableInitializedgru_cell/w_ru* 
_class
loc:@gru_cell/w_ru*
dtype0*
_output_shapes
: 
l
cond_6/SwitchSwitchIsVariableInitialized_6IsVariableInitialized_6*
T0
*
_output_shapes
: : 
M
cond_6/switch_tIdentitycond_6/Switch:1*
T0
*
_output_shapes
: 
K
cond_6/switch_fIdentitycond_6/Switch*
T0
*
_output_shapes
: 
T
cond_6/pred_idIdentityIsVariableInitialized_6*
T0
*
_output_shapes
: 
X
cond_6/readIdentitycond_6/read/Switch:1*
T0* 
_output_shapes
:
§è

cond_6/read/Switch	RefSwitchgru_cell/w_rucond_6/pred_id*
T0* 
_class
loc:@gru_cell/w_ru*,
_output_shapes
:
§è:
§è
¬
cond_6/Switch_1Switch(gru_cell/w_ru/Initializer/random_uniformcond_6/pred_id*
T0* 
_class
loc:@gru_cell/w_ru*,
_output_shapes
:
§è:
§è
i
cond_6/MergeMergecond_6/Switch_1cond_6/read*
T0*
N*"
_output_shapes
:
§è: 

&gru_cell/w_ru/ExponentialMovingAverage
VariableV2* 
_class
loc:@gru_cell/w_ru*
dtype0* 
_output_shapes
:
§è*
shape:
§è
«
<gru_cell/w_ru/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedgru_cell/w_ru* 
_class
loc:@gru_cell/w_ru*
dtype0*
_output_shapes
: 
ý
2gru_cell/w_ru/ExponentialMovingAverage/cond/SwitchSwitch<gru_cell/w_ru/ExponentialMovingAverage/IsVariableInitialized<gru_cell/w_ru/ExponentialMovingAverage/IsVariableInitialized*
T0
* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: : 
¹
4gru_cell/w_ru/ExponentialMovingAverage/cond/switch_tIdentity4gru_cell/w_ru/ExponentialMovingAverage/cond/Switch:1*
T0
* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
·
4gru_cell/w_ru/ExponentialMovingAverage/cond/switch_fIdentity2gru_cell/w_ru/ExponentialMovingAverage/cond/Switch*
T0
* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
À
3gru_cell/w_ru/ExponentialMovingAverage/cond/pred_idIdentity<gru_cell/w_ru/ExponentialMovingAverage/IsVariableInitialized*
T0
* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
Ä
0gru_cell/w_ru/ExponentialMovingAverage/cond/readIdentity9gru_cell/w_ru/ExponentialMovingAverage/cond/read/Switch:1*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
á
7gru_cell/w_ru/ExponentialMovingAverage/cond/read/Switch	RefSwitchgru_cell/w_ru3gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id*
T0* 
_class
loc:@gru_cell/w_ru*,
_output_shapes
:
§è:
§è
ö
4gru_cell/w_ru/ExponentialMovingAverage/cond/Switch_1Switch(gru_cell/w_ru/Initializer/random_uniform3gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id*
T0* 
_class
loc:@gru_cell/w_ru*,
_output_shapes
:
§è:
§è
ú
1gru_cell/w_ru/ExponentialMovingAverage/cond/MergeMerge4gru_cell/w_ru/ExponentialMovingAverage/cond/Switch_10gru_cell/w_ru/ExponentialMovingAverage/cond/read*
T0* 
_class
loc:@gru_cell/w_ru*
N*"
_output_shapes
:
§è: 

bgru_cell/w_ru/ExponentialMovingAverage/cond_6/read/Switch_gru_cell/w_ru/ExponentialMovingAverage_0Switch1gru_cell/w_ru/ExponentialMovingAverage/cond/Mergecond_6/pred_id*
T0* 
_class
loc:@gru_cell/w_ru*,
_output_shapes
:
§è:
§è

[gru_cell/w_ru/ExponentialMovingAverage/cond_6/read_gru_cell/w_ru/ExponentialMovingAverage_0Identitydgru_cell/w_ru/ExponentialMovingAverage/cond_6/read/Switch_gru_cell/w_ru/ExponentialMovingAverage_0:1*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
«
\gru_cell/w_ru/ExponentialMovingAverage/cond_6/Merge_gru_cell/w_ru/ExponentialMovingAverage_0Mergecond_6/Switch_1[gru_cell/w_ru/ExponentialMovingAverage/cond_6/read_gru_cell/w_ru/ExponentialMovingAverage_0*
T0* 
_class
loc:@gru_cell/w_ru*
N*"
_output_shapes
:
§è: 

-gru_cell/w_ru/ExponentialMovingAverage/AssignAssign&gru_cell/w_ru/ExponentialMovingAverage\gru_cell/w_ru/ExponentialMovingAverage/cond_6/Merge_gru_cell/w_ru/ExponentialMovingAverage_0*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
¬
+gru_cell/w_ru/ExponentialMovingAverage/readIdentity&gru_cell/w_ru/ExponentialMovingAverage*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è

IsVariableInitialized_7IsVariableInitializedgru_cell/b_ru* 
_class
loc:@gru_cell/b_ru*
dtype0*
_output_shapes
: 
l
cond_7/SwitchSwitchIsVariableInitialized_7IsVariableInitialized_7*
T0
*
_output_shapes
: : 
M
cond_7/switch_tIdentitycond_7/Switch:1*
T0
*
_output_shapes
: 
K
cond_7/switch_fIdentitycond_7/Switch*
T0
*
_output_shapes
: 
T
cond_7/pred_idIdentityIsVariableInitialized_7*
T0
*
_output_shapes
: 
S
cond_7/readIdentitycond_7/read/Switch:1*
T0*
_output_shapes	
:è

cond_7/read/Switch	RefSwitchgru_cell/b_rucond_7/pred_id*
T0* 
_class
loc:@gru_cell/b_ru*"
_output_shapes
:è:è

cond_7/Switch_1Switchgru_cell/b_ru/Initializer/Constcond_7/pred_id*
T0* 
_class
loc:@gru_cell/b_ru*"
_output_shapes
:è:è
d
cond_7/MergeMergecond_7/Switch_1cond_7/read*
T0*
N*
_output_shapes
	:è: 

&gru_cell/b_ru/ExponentialMovingAverage
VariableV2* 
_class
loc:@gru_cell/b_ru*
dtype0*
_output_shapes	
:è*
shape:è
«
<gru_cell/b_ru/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedgru_cell/b_ru* 
_class
loc:@gru_cell/b_ru*
dtype0*
_output_shapes
: 
ý
2gru_cell/b_ru/ExponentialMovingAverage/cond/SwitchSwitch<gru_cell/b_ru/ExponentialMovingAverage/IsVariableInitialized<gru_cell/b_ru/ExponentialMovingAverage/IsVariableInitialized*
T0
* 
_class
loc:@gru_cell/b_ru*
_output_shapes
: : 
¹
4gru_cell/b_ru/ExponentialMovingAverage/cond/switch_tIdentity4gru_cell/b_ru/ExponentialMovingAverage/cond/Switch:1*
T0
* 
_class
loc:@gru_cell/b_ru*
_output_shapes
: 
·
4gru_cell/b_ru/ExponentialMovingAverage/cond/switch_fIdentity2gru_cell/b_ru/ExponentialMovingAverage/cond/Switch*
T0
* 
_class
loc:@gru_cell/b_ru*
_output_shapes
: 
À
3gru_cell/b_ru/ExponentialMovingAverage/cond/pred_idIdentity<gru_cell/b_ru/ExponentialMovingAverage/IsVariableInitialized*
T0
* 
_class
loc:@gru_cell/b_ru*
_output_shapes
: 
¿
0gru_cell/b_ru/ExponentialMovingAverage/cond/readIdentity9gru_cell/b_ru/ExponentialMovingAverage/cond/read/Switch:1*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
×
7gru_cell/b_ru/ExponentialMovingAverage/cond/read/Switch	RefSwitchgru_cell/b_ru3gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id*
T0* 
_class
loc:@gru_cell/b_ru*"
_output_shapes
:è:è
ã
4gru_cell/b_ru/ExponentialMovingAverage/cond/Switch_1Switchgru_cell/b_ru/Initializer/Const3gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id*
T0* 
_class
loc:@gru_cell/b_ru*"
_output_shapes
:è:è
õ
1gru_cell/b_ru/ExponentialMovingAverage/cond/MergeMerge4gru_cell/b_ru/ExponentialMovingAverage/cond/Switch_10gru_cell/b_ru/ExponentialMovingAverage/cond/read*
T0* 
_class
loc:@gru_cell/b_ru*
N*
_output_shapes
	:è: 
þ
bgru_cell/b_ru/ExponentialMovingAverage/cond_7/read/Switch_gru_cell/b_ru/ExponentialMovingAverage_0Switch1gru_cell/b_ru/ExponentialMovingAverage/cond/Mergecond_7/pred_id*
T0* 
_class
loc:@gru_cell/b_ru*"
_output_shapes
:è:è

[gru_cell/b_ru/ExponentialMovingAverage/cond_7/read_gru_cell/b_ru/ExponentialMovingAverage_0Identitydgru_cell/b_ru/ExponentialMovingAverage/cond_7/read/Switch_gru_cell/b_ru/ExponentialMovingAverage_0:1*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
¦
\gru_cell/b_ru/ExponentialMovingAverage/cond_7/Merge_gru_cell/b_ru/ExponentialMovingAverage_0Mergecond_7/Switch_1[gru_cell/b_ru/ExponentialMovingAverage/cond_7/read_gru_cell/b_ru/ExponentialMovingAverage_0*
T0* 
_class
loc:@gru_cell/b_ru*
N*
_output_shapes
	:è: 

-gru_cell/b_ru/ExponentialMovingAverage/AssignAssign&gru_cell/b_ru/ExponentialMovingAverage\gru_cell/b_ru/ExponentialMovingAverage/cond_7/Merge_gru_cell/b_ru/ExponentialMovingAverage_0*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
§
+gru_cell/b_ru/ExponentialMovingAverage/readIdentity&gru_cell/b_ru/ExponentialMovingAverage*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

IsVariableInitialized_8IsVariableInitializedgru_cell/w_c*
_class
loc:@gru_cell/w_c*
dtype0*
_output_shapes
: 
l
cond_8/SwitchSwitchIsVariableInitialized_8IsVariableInitialized_8*
T0
*
_output_shapes
: : 
M
cond_8/switch_tIdentitycond_8/Switch:1*
T0
*
_output_shapes
: 
K
cond_8/switch_fIdentitycond_8/Switch*
T0
*
_output_shapes
: 
T
cond_8/pred_idIdentityIsVariableInitialized_8*
T0
*
_output_shapes
: 
X
cond_8/readIdentitycond_8/read/Switch:1*
T0* 
_output_shapes
:
§ô

cond_8/read/Switch	RefSwitchgru_cell/w_ccond_8/pred_id*
T0*
_class
loc:@gru_cell/w_c*,
_output_shapes
:
§ô:
§ô
ª
cond_8/Switch_1Switch'gru_cell/w_c/Initializer/random_uniformcond_8/pred_id*
T0*
_class
loc:@gru_cell/w_c*,
_output_shapes
:
§ô:
§ô
i
cond_8/MergeMergecond_8/Switch_1cond_8/read*
T0*
N*"
_output_shapes
:
§ô: 

%gru_cell/w_c/ExponentialMovingAverage
VariableV2*
shape:
§ô*
_class
loc:@gru_cell/w_c*
dtype0* 
_output_shapes
:
§ô
¨
;gru_cell/w_c/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedgru_cell/w_c*
_class
loc:@gru_cell/w_c*
dtype0*
_output_shapes
: 
ù
1gru_cell/w_c/ExponentialMovingAverage/cond/SwitchSwitch;gru_cell/w_c/ExponentialMovingAverage/IsVariableInitialized;gru_cell/w_c/ExponentialMovingAverage/IsVariableInitialized*
T0
*
_class
loc:@gru_cell/w_c*
_output_shapes
: : 
¶
3gru_cell/w_c/ExponentialMovingAverage/cond/switch_tIdentity3gru_cell/w_c/ExponentialMovingAverage/cond/Switch:1*
T0
*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
´
3gru_cell/w_c/ExponentialMovingAverage/cond/switch_fIdentity1gru_cell/w_c/ExponentialMovingAverage/cond/Switch*
T0
*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
½
2gru_cell/w_c/ExponentialMovingAverage/cond/pred_idIdentity;gru_cell/w_c/ExponentialMovingAverage/IsVariableInitialized*
T0
*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
Á
/gru_cell/w_c/ExponentialMovingAverage/cond/readIdentity8gru_cell/w_c/ExponentialMovingAverage/cond/read/Switch:1*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
Ý
6gru_cell/w_c/ExponentialMovingAverage/cond/read/Switch	RefSwitchgru_cell/w_c2gru_cell/w_c/ExponentialMovingAverage/cond/pred_id*
T0*
_class
loc:@gru_cell/w_c*,
_output_shapes
:
§ô:
§ô
ò
3gru_cell/w_c/ExponentialMovingAverage/cond/Switch_1Switch'gru_cell/w_c/Initializer/random_uniform2gru_cell/w_c/ExponentialMovingAverage/cond/pred_id*
T0*
_class
loc:@gru_cell/w_c*,
_output_shapes
:
§ô:
§ô
ö
0gru_cell/w_c/ExponentialMovingAverage/cond/MergeMerge3gru_cell/w_c/ExponentialMovingAverage/cond/Switch_1/gru_cell/w_c/ExponentialMovingAverage/cond/read*
T0*
_class
loc:@gru_cell/w_c*
N*"
_output_shapes
:
§ô: 

`gru_cell/w_c/ExponentialMovingAverage/cond_8/read/Switch_gru_cell/w_c/ExponentialMovingAverage_0Switch0gru_cell/w_c/ExponentialMovingAverage/cond/Mergecond_8/pred_id*
T0*
_class
loc:@gru_cell/w_c*,
_output_shapes
:
§ô:
§ô

Ygru_cell/w_c/ExponentialMovingAverage/cond_8/read_gru_cell/w_c/ExponentialMovingAverage_0Identitybgru_cell/w_c/ExponentialMovingAverage/cond_8/read/Switch_gru_cell/w_c/ExponentialMovingAverage_0:1*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
¦
Zgru_cell/w_c/ExponentialMovingAverage/cond_8/Merge_gru_cell/w_c/ExponentialMovingAverage_0Mergecond_8/Switch_1Ygru_cell/w_c/ExponentialMovingAverage/cond_8/read_gru_cell/w_c/ExponentialMovingAverage_0*
T0*
_class
loc:@gru_cell/w_c*
N*"
_output_shapes
:
§ô: 

,gru_cell/w_c/ExponentialMovingAverage/AssignAssign%gru_cell/w_c/ExponentialMovingAverageZgru_cell/w_c/ExponentialMovingAverage/cond_8/Merge_gru_cell/w_c/ExponentialMovingAverage_0*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
©
*gru_cell/w_c/ExponentialMovingAverage/readIdentity%gru_cell/w_c/ExponentialMovingAverage*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

IsVariableInitialized_9IsVariableInitializedgru_cell/b_c*
_class
loc:@gru_cell/b_c*
dtype0*
_output_shapes
: 
l
cond_9/SwitchSwitchIsVariableInitialized_9IsVariableInitialized_9*
T0
*
_output_shapes
: : 
M
cond_9/switch_tIdentitycond_9/Switch:1*
T0
*
_output_shapes
: 
K
cond_9/switch_fIdentitycond_9/Switch*
T0
*
_output_shapes
: 
T
cond_9/pred_idIdentityIsVariableInitialized_9*
T0
*
_output_shapes
: 
S
cond_9/readIdentitycond_9/read/Switch:1*
T0*
_output_shapes	
:ô

cond_9/read/Switch	RefSwitchgru_cell/b_ccond_9/pred_id*
T0*
_class
loc:@gru_cell/b_c*"
_output_shapes
:ô:ô

cond_9/Switch_1Switchgru_cell/b_c/Initializer/Constcond_9/pred_id*
T0*
_class
loc:@gru_cell/b_c*"
_output_shapes
:ô:ô
d
cond_9/MergeMergecond_9/Switch_1cond_9/read*
T0*
N*
_output_shapes
	:ô: 

%gru_cell/b_c/ExponentialMovingAverage
VariableV2*
_class
loc:@gru_cell/b_c*
dtype0*
_output_shapes	
:ô*
shape:ô
¨
;gru_cell/b_c/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializedgru_cell/b_c*
_class
loc:@gru_cell/b_c*
dtype0*
_output_shapes
: 
ù
1gru_cell/b_c/ExponentialMovingAverage/cond/SwitchSwitch;gru_cell/b_c/ExponentialMovingAverage/IsVariableInitialized;gru_cell/b_c/ExponentialMovingAverage/IsVariableInitialized*
T0
*
_class
loc:@gru_cell/b_c*
_output_shapes
: : 
¶
3gru_cell/b_c/ExponentialMovingAverage/cond/switch_tIdentity3gru_cell/b_c/ExponentialMovingAverage/cond/Switch:1*
T0
*
_class
loc:@gru_cell/b_c*
_output_shapes
: 
´
3gru_cell/b_c/ExponentialMovingAverage/cond/switch_fIdentity1gru_cell/b_c/ExponentialMovingAverage/cond/Switch*
T0
*
_class
loc:@gru_cell/b_c*
_output_shapes
: 
½
2gru_cell/b_c/ExponentialMovingAverage/cond/pred_idIdentity;gru_cell/b_c/ExponentialMovingAverage/IsVariableInitialized*
T0
*
_class
loc:@gru_cell/b_c*
_output_shapes
: 
¼
/gru_cell/b_c/ExponentialMovingAverage/cond/readIdentity8gru_cell/b_c/ExponentialMovingAverage/cond/read/Switch:1*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
Ó
6gru_cell/b_c/ExponentialMovingAverage/cond/read/Switch	RefSwitchgru_cell/b_c2gru_cell/b_c/ExponentialMovingAverage/cond/pred_id*
T0*
_class
loc:@gru_cell/b_c*"
_output_shapes
:ô:ô
ß
3gru_cell/b_c/ExponentialMovingAverage/cond/Switch_1Switchgru_cell/b_c/Initializer/Const2gru_cell/b_c/ExponentialMovingAverage/cond/pred_id*
T0*
_class
loc:@gru_cell/b_c*"
_output_shapes
:ô:ô
ñ
0gru_cell/b_c/ExponentialMovingAverage/cond/MergeMerge3gru_cell/b_c/ExponentialMovingAverage/cond/Switch_1/gru_cell/b_c/ExponentialMovingAverage/cond/read*
T0*
_class
loc:@gru_cell/b_c*
N*
_output_shapes
	:ô: 
ú
`gru_cell/b_c/ExponentialMovingAverage/cond_9/read/Switch_gru_cell/b_c/ExponentialMovingAverage_0Switch0gru_cell/b_c/ExponentialMovingAverage/cond/Mergecond_9/pred_id*
T0*
_class
loc:@gru_cell/b_c*"
_output_shapes
:ô:ô

Ygru_cell/b_c/ExponentialMovingAverage/cond_9/read_gru_cell/b_c/ExponentialMovingAverage_0Identitybgru_cell/b_c/ExponentialMovingAverage/cond_9/read/Switch_gru_cell/b_c/ExponentialMovingAverage_0:1*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
¡
Zgru_cell/b_c/ExponentialMovingAverage/cond_9/Merge_gru_cell/b_c/ExponentialMovingAverage_0Mergecond_9/Switch_1Ygru_cell/b_c/ExponentialMovingAverage/cond_9/read_gru_cell/b_c/ExponentialMovingAverage_0*
T0*
_class
loc:@gru_cell/b_c*
N*
_output_shapes
	:ô: 

,gru_cell/b_c/ExponentialMovingAverage/AssignAssign%gru_cell/b_c/ExponentialMovingAverageZgru_cell/b_c/ExponentialMovingAverage/cond_9/Merge_gru_cell/b_c/ExponentialMovingAverage_0*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
¤
*gru_cell/b_c/ExponentialMovingAverage/readIdentity%gru_cell/b_c/ExponentialMovingAverage*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
¡
IsVariableInitialized_10IsVariableInitializeddecoder_output_proj/kernel*-
_class#
!loc:@decoder_output_proj/kernel*
dtype0*
_output_shapes
: 
o
cond_10/SwitchSwitchIsVariableInitialized_10IsVariableInitialized_10*
T0
*
_output_shapes
: : 
O
cond_10/switch_tIdentitycond_10/Switch:1*
T0
*
_output_shapes
: 
M
cond_10/switch_fIdentitycond_10/Switch*
T0
*
_output_shapes
: 
V
cond_10/pred_idIdentityIsVariableInitialized_10*
T0
*
_output_shapes
: 
Y
cond_10/readIdentitycond_10/read/Switch:1*
T0*
_output_shapes
:	ô
±
cond_10/read/Switch	RefSwitchdecoder_output_proj/kernelcond_10/pred_id*
T0*-
_class#
!loc:@decoder_output_proj/kernel**
_output_shapes
:	ô:	ô
Æ
cond_10/Switch_1Switch5decoder_output_proj/kernel/Initializer/random_uniformcond_10/pred_id*
T0*-
_class#
!loc:@decoder_output_proj/kernel**
_output_shapes
:	ô:	ô
k
cond_10/MergeMergecond_10/Switch_1cond_10/read*
T0*
N*!
_output_shapes
:	ô: 
´
3decoder_output_proj/kernel/ExponentialMovingAverage
VariableV2*
shape:	ô*-
_class#
!loc:@decoder_output_proj/kernel*
dtype0*
_output_shapes
:	ô
Ò
Idecoder_output_proj/kernel/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializeddecoder_output_proj/kernel*-
_class#
!loc:@decoder_output_proj/kernel*
dtype0*
_output_shapes
: 
±
?decoder_output_proj/kernel/ExponentialMovingAverage/cond/SwitchSwitchIdecoder_output_proj/kernel/ExponentialMovingAverage/IsVariableInitializedIdecoder_output_proj/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: : 
à
Adecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_tIdentityAdecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch:1*
T0
*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 
Þ
Adecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_fIdentity?decoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch*
T0
*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 
ç
@decoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_idIdentityIdecoder_output_proj/kernel/ExponentialMovingAverage/IsVariableInitialized*
T0
*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 
ê
=decoder_output_proj/kernel/ExponentialMovingAverage/cond/readIdentityFdecoder_output_proj/kernel/ExponentialMovingAverage/cond/read/Switch:1*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

Ddecoder_output_proj/kernel/ExponentialMovingAverage/cond/read/Switch	RefSwitchdecoder_output_proj/kernel@decoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id*
T0*-
_class#
!loc:@decoder_output_proj/kernel**
_output_shapes
:	ô:	ô
¨
Adecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch_1Switch5decoder_output_proj/kernel/Initializer/random_uniform@decoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id*
T0*-
_class#
!loc:@decoder_output_proj/kernel**
_output_shapes
:	ô:	ô
­
>decoder_output_proj/kernel/ExponentialMovingAverage/cond/MergeMergeAdecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch_1=decoder_output_proj/kernel/ExponentialMovingAverage/cond/read*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
N*!
_output_shapes
:	ô: 
¼
}decoder_output_proj/kernel/ExponentialMovingAverage/cond_10/read/Switch_decoder_output_proj/kernel/ExponentialMovingAverage_0Switch>decoder_output_proj/kernel/ExponentialMovingAverage/cond/Mergecond_10/pred_id*
T0*-
_class#
!loc:@decoder_output_proj/kernel**
_output_shapes
:	ô:	ô
Ü
vdecoder_output_proj/kernel/ExponentialMovingAverage/cond_10/read_decoder_output_proj/kernel/ExponentialMovingAverage_0Identitydecoder_output_proj/kernel/ExponentialMovingAverage/cond_10/read/Switch_decoder_output_proj/kernel/ExponentialMovingAverage_0:1*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
î
wdecoder_output_proj/kernel/ExponentialMovingAverage/cond_10/Merge_decoder_output_proj/kernel/ExponentialMovingAverage_0Mergecond_10/Switch_1vdecoder_output_proj/kernel/ExponentialMovingAverage/cond_10/read_decoder_output_proj/kernel/ExponentialMovingAverage_0*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
N*!
_output_shapes
:	ô: 
Ë
:decoder_output_proj/kernel/ExponentialMovingAverage/AssignAssign3decoder_output_proj/kernel/ExponentialMovingAveragewdecoder_output_proj/kernel/ExponentialMovingAverage/cond_10/Merge_decoder_output_proj/kernel/ExponentialMovingAverage_0*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
Ò
8decoder_output_proj/kernel/ExponentialMovingAverage/readIdentity3decoder_output_proj/kernel/ExponentialMovingAverage*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

IsVariableInitialized_11IsVariableInitializeddecoder_output_proj/bias*+
_class!
loc:@decoder_output_proj/bias*
dtype0*
_output_shapes
: 
o
cond_11/SwitchSwitchIsVariableInitialized_11IsVariableInitialized_11*
T0
*
_output_shapes
: : 
O
cond_11/switch_tIdentitycond_11/Switch:1*
T0
*
_output_shapes
: 
M
cond_11/switch_fIdentitycond_11/Switch*
T0
*
_output_shapes
: 
V
cond_11/pred_idIdentityIsVariableInitialized_11*
T0
*
_output_shapes
: 
T
cond_11/readIdentitycond_11/read/Switch:1*
T0*
_output_shapes
:
£
cond_11/read/Switch	RefSwitchdecoder_output_proj/biascond_11/pred_id*
T0*+
_class!
loc:@decoder_output_proj/bias* 
_output_shapes
::
¯
cond_11/Switch_1Switch*decoder_output_proj/bias/Initializer/zeroscond_11/pred_id*
T0*+
_class!
loc:@decoder_output_proj/bias* 
_output_shapes
::
f
cond_11/MergeMergecond_11/Switch_1cond_11/read*
T0*
N*
_output_shapes

:: 
¦
1decoder_output_proj/bias/ExponentialMovingAverage
VariableV2*+
_class!
loc:@decoder_output_proj/bias*
dtype0*
_output_shapes
:*
shape:
Ì
Gdecoder_output_proj/bias/ExponentialMovingAverage/IsVariableInitializedIsVariableInitializeddecoder_output_proj/bias*+
_class!
loc:@decoder_output_proj/bias*
dtype0*
_output_shapes
: 
©
=decoder_output_proj/bias/ExponentialMovingAverage/cond/SwitchSwitchGdecoder_output_proj/bias/ExponentialMovingAverage/IsVariableInitializedGdecoder_output_proj/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
: : 
Ú
?decoder_output_proj/bias/ExponentialMovingAverage/cond/switch_tIdentity?decoder_output_proj/bias/ExponentialMovingAverage/cond/Switch:1*
T0
*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
: 
Ø
?decoder_output_proj/bias/ExponentialMovingAverage/cond/switch_fIdentity=decoder_output_proj/bias/ExponentialMovingAverage/cond/Switch*
T0
*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
: 
á
>decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_idIdentityGdecoder_output_proj/bias/ExponentialMovingAverage/IsVariableInitialized*
T0
*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
: 
ß
;decoder_output_proj/bias/ExponentialMovingAverage/cond/readIdentityDdecoder_output_proj/bias/ExponentialMovingAverage/cond/read/Switch:1*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:

Bdecoder_output_proj/bias/ExponentialMovingAverage/cond/read/Switch	RefSwitchdecoder_output_proj/bias>decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id*
T0*+
_class!
loc:@decoder_output_proj/bias* 
_output_shapes
::

?decoder_output_proj/bias/ExponentialMovingAverage/cond/Switch_1Switch*decoder_output_proj/bias/Initializer/zeros>decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id*
T0*+
_class!
loc:@decoder_output_proj/bias* 
_output_shapes
::
 
<decoder_output_proj/bias/ExponentialMovingAverage/cond/MergeMerge?decoder_output_proj/bias/ExponentialMovingAverage/cond/Switch_1;decoder_output_proj/bias/ExponentialMovingAverage/cond/read*
T0*+
_class!
loc:@decoder_output_proj/bias*
N*
_output_shapes

:: 
ª
ydecoder_output_proj/bias/ExponentialMovingAverage/cond_11/read/Switch_decoder_output_proj/bias/ExponentialMovingAverage_0Switch<decoder_output_proj/bias/ExponentialMovingAverage/cond/Mergecond_11/pred_id*
T0*+
_class!
loc:@decoder_output_proj/bias* 
_output_shapes
::
Í
rdecoder_output_proj/bias/ExponentialMovingAverage/cond_11/read_decoder_output_proj/bias/ExponentialMovingAverage_0Identity{decoder_output_proj/bias/ExponentialMovingAverage/cond_11/read/Switch_decoder_output_proj/bias/ExponentialMovingAverage_0:1*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
ß
sdecoder_output_proj/bias/ExponentialMovingAverage/cond_11/Merge_decoder_output_proj/bias/ExponentialMovingAverage_0Mergecond_11/Switch_1rdecoder_output_proj/bias/ExponentialMovingAverage/cond_11/read_decoder_output_proj/bias/ExponentialMovingAverage_0*
T0*+
_class!
loc:@decoder_output_proj/bias*
N*
_output_shapes

:: 
¼
8decoder_output_proj/bias/ExponentialMovingAverage/AssignAssign1decoder_output_proj/bias/ExponentialMovingAveragesdecoder_output_proj/bias/ExponentialMovingAverage/cond_11/Merge_decoder_output_proj/bias/ExponentialMovingAverage_0*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
Ç
6decoder_output_proj/bias/ExponentialMovingAverage/readIdentity1decoder_output_proj/bias/ExponentialMovingAverage*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
c
ExponentialMovingAverage/decayConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
Ò
.ExponentialMovingAverage/AssignMovingAvg/sub/xConst*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

,ExponentialMovingAverage/AssignMovingAvg/subSub.ExponentialMovingAverage/AssignMovingAvg/sub/xExponentialMovingAverage/decay*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel*
_output_shapes
: 
ú
.ExponentialMovingAverage/AssignMovingAvg/sub_1Subhcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/readOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è

,ExponentialMovingAverage/AssignMovingAvg/mulMul.ExponentialMovingAverage/AssignMovingAvg/sub_1,ExponentialMovingAverage/AssignMovingAvg/sub*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Ò
(ExponentialMovingAverage/AssignMovingAvg	AssignSubccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage,ExponentialMovingAverage/AssignMovingAvg/mul*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
Ò
0ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.ExponentialMovingAverage/AssignMovingAvg_1/subSub0ExponentialMovingAverage/AssignMovingAvg_1/sub/xExponentialMovingAverage/decay*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes
: 
ñ
0ExponentialMovingAverage/AssignMovingAvg_1/sub_1Subfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/readMcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è

.ExponentialMovingAverage/AssignMovingAvg_1/mulMul0ExponentialMovingAverage/AssignMovingAvg_1/sub_1.ExponentialMovingAverage/AssignMovingAvg_1/sub*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
Í
*ExponentialMovingAverage/AssignMovingAvg_1	AssignSubacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_1/mul*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è
é
0ExponentialMovingAverage/AssignMovingAvg_2/sub/xConst*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.ExponentialMovingAverage/AssignMovingAvg_2/subSub0ExponentialMovingAverage/AssignMovingAvg_2/sub/xExponentialMovingAverage/decay*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
: 
º
0ExponentialMovingAverage/AssignMovingAvg_2/sub_1Sub}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/readdcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
µ
.ExponentialMovingAverage/AssignMovingAvg_2/mulMul0ExponentialMovingAverage/AssignMovingAvg_2/sub_1.ExponentialMovingAverage/AssignMovingAvg_2/sub*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
ÿ
*ExponentialMovingAverage/AssignMovingAvg_2	AssignSubxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_2/mul*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
ê
0ExponentialMovingAverage/AssignMovingAvg_3/sub/xConst*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.ExponentialMovingAverage/AssignMovingAvg_3/subSub0ExponentialMovingAverage/AssignMovingAvg_3/sub/xExponentialMovingAverage/decay*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel*
_output_shapes
: 
¾
0ExponentialMovingAverage/AssignMovingAvg_3/sub_1Sub~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/readecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
·
.ExponentialMovingAverage/AssignMovingAvg_3/mulMul0ExponentialMovingAverage/AssignMovingAvg_3/sub_1.ExponentialMovingAverage/AssignMovingAvg_3/sub*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô

*ExponentialMovingAverage/AssignMovingAvg_3	AssignSubycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_3/mul*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
ç
0ExponentialMovingAverage/AssignMovingAvg_4/sub/xConst*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.ExponentialMovingAverage/AssignMovingAvg_4/subSub0ExponentialMovingAverage/AssignMovingAvg_4/sub/xExponentialMovingAverage/decay*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes
: 
°
0ExponentialMovingAverage/AssignMovingAvg_4/sub_1Sub{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/readbcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¯
.ExponentialMovingAverage/AssignMovingAvg_4/mulMul0ExponentialMovingAverage/AssignMovingAvg_4/sub_1.ExponentialMovingAverage/AssignMovingAvg_4/sub*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
÷
*ExponentialMovingAverage/AssignMovingAvg_4	AssignSubvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_4/mul*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
è
0ExponentialMovingAverage/AssignMovingAvg_5/sub/xConst*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 

.ExponentialMovingAverage/AssignMovingAvg_5/subSub0ExponentialMovingAverage/AssignMovingAvg_5/sub/xExponentialMovingAverage/decay*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes
: 
³
0ExponentialMovingAverage/AssignMovingAvg_5/sub_1Sub|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/readccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
°
.ExponentialMovingAverage/AssignMovingAvg_5/mulMul0ExponentialMovingAverage/AssignMovingAvg_5/sub_1.ExponentialMovingAverage/AssignMovingAvg_5/sub*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
ù
*ExponentialMovingAverage/AssignMovingAvg_5	AssignSubwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_5/mul*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô

0ExponentialMovingAverage/AssignMovingAvg_6/sub/xConst* 
_class
loc:@gru_cell/w_ru*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ê
.ExponentialMovingAverage/AssignMovingAvg_6/subSub0ExponentialMovingAverage/AssignMovingAvg_6/sub/xExponentialMovingAverage/decay*
T0* 
_class
loc:@gru_cell/w_ru*
_output_shapes
: 
Å
0ExponentialMovingAverage/AssignMovingAvg_6/sub_1Sub+gru_cell/w_ru/ExponentialMovingAverage/readgru_cell/w_ru/read*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
ä
.ExponentialMovingAverage/AssignMovingAvg_6/mulMul0ExponentialMovingAverage/AssignMovingAvg_6/sub_1.ExponentialMovingAverage/AssignMovingAvg_6/sub*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
Ü
*ExponentialMovingAverage/AssignMovingAvg_6	AssignSub&gru_cell/w_ru/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_6/mul*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è

0ExponentialMovingAverage/AssignMovingAvg_7/sub/xConst* 
_class
loc:@gru_cell/b_ru*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ê
.ExponentialMovingAverage/AssignMovingAvg_7/subSub0ExponentialMovingAverage/AssignMovingAvg_7/sub/xExponentialMovingAverage/decay*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes
: 
À
0ExponentialMovingAverage/AssignMovingAvg_7/sub_1Sub+gru_cell/b_ru/ExponentialMovingAverage/readgru_cell/b_ru/read*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
ß
.ExponentialMovingAverage/AssignMovingAvg_7/mulMul0ExponentialMovingAverage/AssignMovingAvg_7/sub_1.ExponentialMovingAverage/AssignMovingAvg_7/sub*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è
×
*ExponentialMovingAverage/AssignMovingAvg_7	AssignSub&gru_cell/b_ru/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_7/mul*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

0ExponentialMovingAverage/AssignMovingAvg_8/sub/xConst*
_class
loc:@gru_cell/w_c*
valueB
 *  ?*
dtype0*
_output_shapes
: 
É
.ExponentialMovingAverage/AssignMovingAvg_8/subSub0ExponentialMovingAverage/AssignMovingAvg_8/sub/xExponentialMovingAverage/decay*
T0*
_class
loc:@gru_cell/w_c*
_output_shapes
: 
Â
0ExponentialMovingAverage/AssignMovingAvg_8/sub_1Sub*gru_cell/w_c/ExponentialMovingAverage/readgru_cell/w_c/read*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
ã
.ExponentialMovingAverage/AssignMovingAvg_8/mulMul0ExponentialMovingAverage/AssignMovingAvg_8/sub_1.ExponentialMovingAverage/AssignMovingAvg_8/sub*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô
Ú
*ExponentialMovingAverage/AssignMovingAvg_8	AssignSub%gru_cell/w_c/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_8/mul*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

0ExponentialMovingAverage/AssignMovingAvg_9/sub/xConst*
_class
loc:@gru_cell/b_c*
valueB
 *  ?*
dtype0*
_output_shapes
: 
É
.ExponentialMovingAverage/AssignMovingAvg_9/subSub0ExponentialMovingAverage/AssignMovingAvg_9/sub/xExponentialMovingAverage/decay*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes
: 
½
0ExponentialMovingAverage/AssignMovingAvg_9/sub_1Sub*gru_cell/b_c/ExponentialMovingAverage/readgru_cell/b_c/read*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
Þ
.ExponentialMovingAverage/AssignMovingAvg_9/mulMul0ExponentialMovingAverage/AssignMovingAvg_9/sub_1.ExponentialMovingAverage/AssignMovingAvg_9/sub*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
Õ
*ExponentialMovingAverage/AssignMovingAvg_9	AssignSub%gru_cell/b_c/ExponentialMovingAverage.ExponentialMovingAverage/AssignMovingAvg_9/mul*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô
¥
1ExponentialMovingAverage/AssignMovingAvg_10/sub/xConst*-
_class#
!loc:@decoder_output_proj/kernel*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ù
/ExponentialMovingAverage/AssignMovingAvg_10/subSub1ExponentialMovingAverage/AssignMovingAvg_10/sub/xExponentialMovingAverage/decay*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
: 
ì
1ExponentialMovingAverage/AssignMovingAvg_10/sub_1Sub8decoder_output_proj/kernel/ExponentialMovingAverage/readdecoder_output_proj/kernel/read*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
ó
/ExponentialMovingAverage/AssignMovingAvg_10/mulMul1ExponentialMovingAverage/AssignMovingAvg_10/sub_1/ExponentialMovingAverage/AssignMovingAvg_10/sub*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
÷
+ExponentialMovingAverage/AssignMovingAvg_10	AssignSub3decoder_output_proj/kernel/ExponentialMovingAverage/ExponentialMovingAverage/AssignMovingAvg_10/mul*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
£
1ExponentialMovingAverage/AssignMovingAvg_11/sub/xConst*+
_class!
loc:@decoder_output_proj/bias*
valueB
 *  ?*
dtype0*
_output_shapes
: 
×
/ExponentialMovingAverage/AssignMovingAvg_11/subSub1ExponentialMovingAverage/AssignMovingAvg_11/sub/xExponentialMovingAverage/decay*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
: 
á
1ExponentialMovingAverage/AssignMovingAvg_11/sub_1Sub6decoder_output_proj/bias/ExponentialMovingAverage/readdecoder_output_proj/bias/read*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
ì
/ExponentialMovingAverage/AssignMovingAvg_11/mulMul1ExponentialMovingAverage/AssignMovingAvg_11/sub_1/ExponentialMovingAverage/AssignMovingAvg_11/sub*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
î
+ExponentialMovingAverage/AssignMovingAvg_11	AssignSub1decoder_output_proj/bias/ExponentialMovingAverage/ExponentialMovingAverage/AssignMovingAvg_11/mul*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
¼
ExponentialMovingAverageNoOp)^ExponentialMovingAverage/AssignMovingAvg+^ExponentialMovingAverage/AssignMovingAvg_1,^ExponentialMovingAverage/AssignMovingAvg_10,^ExponentialMovingAverage/AssignMovingAvg_11+^ExponentialMovingAverage/AssignMovingAvg_2+^ExponentialMovingAverage/AssignMovingAvg_3+^ExponentialMovingAverage/AssignMovingAvg_4+^ExponentialMovingAverage/AssignMovingAvg_5+^ExponentialMovingAverage/AssignMovingAvg_6+^ExponentialMovingAverage/AssignMovingAvg_7+^ExponentialMovingAverage/AssignMovingAvg_8+^ExponentialMovingAverage/AssignMovingAvg_9

initNoOpf^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/Assignh^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/Assigne^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assign~^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/Assigng^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/AssignP^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Assigni^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/AssignR^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Assignk^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/Assign ^decoder_output_proj/bias/Assign9^decoder_output_proj/bias/ExponentialMovingAverage/Assign"^decoder_output_proj/kernel/Assign;^decoder_output_proj/kernel/ExponentialMovingAverage/Assign^gru_cell/b_c/Assign-^gru_cell/b_c/ExponentialMovingAverage/Assign^gru_cell/b_ru/Assign.^gru_cell/b_ru/ExponentialMovingAverage/Assign^gru_cell/w_c/Assign-^gru_cell/w_c/ExponentialMovingAverage/Assign^gru_cell/w_ru/Assign.^gru_cell/w_ru/ExponentialMovingAverage/Assign
X
deploy_saver/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

 deploy_saver/SaveV2/tensor_namesConst*É
value¿B¼Bwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverageBycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverageBvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverageBxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverageBacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageBccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverageB1decoder_output_proj/bias/ExponentialMovingAverageB3decoder_output_proj/kernel/ExponentialMovingAverageB%gru_cell/b_c/ExponentialMovingAverageB&gru_cell/b_ru/ExponentialMovingAverageB%gru_cell/w_c/ExponentialMovingAverageB&gru_cell/w_ru/ExponentialMovingAverage*
dtype0*
_output_shapes
:

$deploy_saver/SaveV2/shape_and_slicesConst*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

deploy_saver/SaveV2SaveV2deploy_saver/Const deploy_saver/SaveV2/tensor_names$deploy_saver/SaveV2/shape_and_slices^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneldecoder_output_proj/biasdecoder_output_proj/kernelgru_cell/b_cgru_cell/b_rugru_cell/w_cgru_cell/w_ru*
dtypes
2

deploy_saver/control_dependencyIdentitydeploy_saver/Const^deploy_saver/SaveV2*
T0*%
_class
loc:@deploy_saver/Const*
_output_shapes
: 
°
#deploy_saver/RestoreV2/tensor_namesConst"/device:CPU:0*É
value¿B¼Bwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverageBycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverageBvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverageBxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverageBacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageBccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverageB1decoder_output_proj/bias/ExponentialMovingAverageB3decoder_output_proj/kernel/ExponentialMovingAverageB%gru_cell/b_c/ExponentialMovingAverageB&gru_cell/b_ru/ExponentialMovingAverageB%gru_cell/w_c/ExponentialMovingAverageB&gru_cell/w_ru/ExponentialMovingAverage*
dtype0*
_output_shapes
:

'deploy_saver/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ö
deploy_saver/RestoreV2	RestoreV2deploy_saver/Const#deploy_saver/RestoreV2/tensor_names'deploy_saver/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2
®
deploy_saver/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasdeploy_saver/RestoreV2*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
»
deploy_saver/Assign_1Assign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kerneldeploy_saver/RestoreV2:1*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
°
deploy_saver/Assign_2Assign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasdeploy_saver/RestoreV2:2*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¸
deploy_saver/Assign_3Assign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kerneldeploy_saver/RestoreV2:3*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô

deploy_saver/Assign_4AssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasdeploy_saver/RestoreV2:4*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è

deploy_saver/Assign_5AssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kerneldeploy_saver/RestoreV2:5*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è
¥
deploy_saver/Assign_6Assigndecoder_output_proj/biasdeploy_saver/RestoreV2:6*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
®
deploy_saver/Assign_7Assigndecoder_output_proj/kerneldeploy_saver/RestoreV2:7*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

deploy_saver/Assign_8Assigngru_cell/b_cdeploy_saver/RestoreV2:8*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô

deploy_saver/Assign_9Assigngru_cell/b_rudeploy_saver/RestoreV2:9*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

deploy_saver/Assign_10Assigngru_cell/w_cdeploy_saver/RestoreV2:10*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

deploy_saver/Assign_11Assigngru_cell/w_rudeploy_saver/RestoreV2:11*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
À
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

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_f2b42014f54f40febb7b9fbe28e79064/part*
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

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
­
save/SaveV2/tensor_namesConst"/device:CPU:0*Ñ
valueÇBÄB^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverageB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverageB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverageB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverageBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverageBdecoder_output_proj/biasB1decoder_output_proj/bias/ExponentialMovingAverageBdecoder_output_proj/kernelB3decoder_output_proj/kernel/ExponentialMovingAverageBgru_cell/b_cB%gru_cell/b_c/ExponentialMovingAverageBgru_cell/b_ruB&gru_cell/b_ru/ExponentialMovingAverageBgru_cell/w_cB%gru_cell/w_c/ExponentialMovingAverageBgru_cell/w_ruB&gru_cell/w_ru/ExponentialMovingAverage*
dtype0*
_output_shapes
:
¢
save/SaveV2/shape_and_slicesConst"/device:CPU:0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ö
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biaswcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverageHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAveragedecoder_output_proj/bias1decoder_output_proj/bias/ExponentialMovingAveragedecoder_output_proj/kernel3decoder_output_proj/kernel/ExponentialMovingAveragegru_cell/b_c%gru_cell/b_c/ExponentialMovingAveragegru_cell/b_ru&gru_cell/b_ru/ExponentialMovingAveragegru_cell/w_c%gru_cell/w_c/ExponentialMovingAveragegru_cell/w_ru&gru_cell/w_ru/ExponentialMovingAverage"/device:CPU:0*&
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
°
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ñ
valueÇBÄB^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biasBwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverageB`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelBycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverageB]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biasBvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverageB_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelBxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverageBHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biasBacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverageBJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelBccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverageBdecoder_output_proj/biasB1decoder_output_proj/bias/ExponentialMovingAverageBdecoder_output_proj/kernelB3decoder_output_proj/kernel/ExponentialMovingAverageBgru_cell/b_cB%gru_cell/b_c/ExponentialMovingAverageBgru_cell/b_ruB&gru_cell/b_ru/ExponentialMovingAverageBgru_cell/w_cB%gru_cell/w_c/ExponentialMovingAverageBgru_cell/w_ruB&gru_cell/w_ru/ExponentialMovingAverage*
dtype0*
_output_shapes
:
¥
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2

save/AssignAssign^cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/biassave/RestoreV2*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
»
save/Assign_1Assignwcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAveragesave/RestoreV2:1*
T0*q
_classg
ecloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias*
_output_shapes	
:ô
«
save/Assign_2Assign`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernelsave/RestoreV2:2*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
Ä
save/Assign_3Assignycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAveragesave/RestoreV2:3*
T0*s
_classi
geloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel* 
_output_shapes
:
ôô
 
save/Assign_4Assign]cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/biassave/RestoreV2:4*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¹
save/Assign_5Assignvcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAveragesave/RestoreV2:5*
T0*p
_classf
dbloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias*
_output_shapes	
:ô
¨
save/Assign_6Assign_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernelsave/RestoreV2:6*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
Á
save/Assign_7Assignxcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAveragesave/RestoreV2:7*
T0*r
_classh
fdloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel*
_output_shapes
:	3ô
ö
save/Assign_8AssignHcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/biassave/RestoreV2:8*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è

save/Assign_9Assignacudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAveragesave/RestoreV2:9*
T0*[
_classQ
OMloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias*
_output_shapes	
:è

save/Assign_10AssignJcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernelsave/RestoreV2:10*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è

save/Assign_11Assignccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAveragesave/RestoreV2:11*
T0*]
_classS
QOloc:@cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel* 
_output_shapes
:
§è

save/Assign_12Assigndecoder_output_proj/biassave/RestoreV2:12*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
°
save/Assign_13Assign1decoder_output_proj/bias/ExponentialMovingAveragesave/RestoreV2:13*
T0*+
_class!
loc:@decoder_output_proj/bias*
_output_shapes
:
 
save/Assign_14Assigndecoder_output_proj/kernelsave/RestoreV2:14*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô
¹
save/Assign_15Assign3decoder_output_proj/kernel/ExponentialMovingAveragesave/RestoreV2:15*
T0*-
_class#
!loc:@decoder_output_proj/kernel*
_output_shapes
:	ô

save/Assign_16Assigngru_cell/b_csave/RestoreV2:16*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô

save/Assign_17Assign%gru_cell/b_c/ExponentialMovingAveragesave/RestoreV2:17*
T0*
_class
loc:@gru_cell/b_c*
_output_shapes	
:ô

save/Assign_18Assigngru_cell/b_rusave/RestoreV2:18*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

save/Assign_19Assign&gru_cell/b_ru/ExponentialMovingAveragesave/RestoreV2:19*
T0* 
_class
loc:@gru_cell/b_ru*
_output_shapes	
:è

save/Assign_20Assigngru_cell/w_csave/RestoreV2:20*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

save/Assign_21Assign%gru_cell/w_c/ExponentialMovingAveragesave/RestoreV2:21*
T0*
_class
loc:@gru_cell/w_c* 
_output_shapes
:
§ô

save/Assign_22Assigngru_cell/w_rusave/RestoreV2:22*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
 
save/Assign_23Assign&gru_cell/w_ru/ExponentialMovingAveragesave/RestoreV2:23*
T0* 
_class
loc:@gru_cell/w_ru* 
_output_shapes
:
§è
¦
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard>
Î
­
/tf_data_structured_function_wrapper_Zb9FVuuzPaw
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
 *  À*
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
valueB:*
dtype0R
strided_slice/stack_1Const"/device:CPU:0*
valueB:\*
dtype0R
strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0±
strided_sliceStridedSliceconcat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0"/device:CPU:0*
Index0*
T0R
strided_slice_1/stackConst"/device:CPU:0*
valueB:*
dtype0T
strided_slice_1/stack_1Const"/device:CPU:0*
valueB:\*
dtype0T
strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0Ç
strided_slice_1_0StridedSlicestrided_slice_1_placeholderstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0"/device:CPU:0*
T0*
Index0R
strided_slice_2/stackConst"/device:CPU:0*
valueB:*
dtype0T
strided_slice_2/stack_1Const"/device:CPU:0*
valueB:\*
dtype0T
strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0Å
strided_slice_2StridedSlicestrided_slice_2_placeholderstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0"/device:CPU:0*
T0*
Index0M
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
GatherV2/axisConst"/device:CPU:0*
value	B : *
dtype0
GatherV2GatherV2concat:output:0Maximum:z:0GatherV2/axis:output:0"/device:CPU:0*
Taxis0*
Tindices0*
Tparams0N

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
dtype0
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
T0"
select_1Select_1:output:0"
arg1arg1_0"
arg2arg2_0"
arg3arg3_0"
arg4arg4_0"
arg5arg5_0"
arg6arg6_0"
arg7arg7_0"-
strided_slice_1strided_slice_1_0:output:0"
arg8arg8_0"
splitsplit_0:output:1"
selectSelect:output:0
À
ú
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
valueB"<   
   *
dtype0J
split_1/split_dimConst"/device:CPU:0*
value	B : *
dtype0
	split_1_0SplitVtruediv_2:z:0Const_3:output:0split_1/split_dim:output:0"/device:CPU:0*
T0*
	num_split*

Tlen0<
stackPackarg10arg11"/device:CPU:0*
T0*
ND
concat/axisConst"/device:CPU:0*
value	B : *
dtype0y
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
ÿÿÿÿÿÿÿÿÿ*
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
dtype0

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
dtype0

concat_2_0ConcatV2split:output:1split_1_0:output:1Tile_1:output:0concat_2/axis:output:0"/device:CPU:0*
T0*
N"
arg8arg8_0"
truedivtruediv_0:z:0"
split_1split_1_0:output:0"
sqrtSqrt:y:0"
	truediv_1truediv_1_0:z:0"
arg0arg0_0"
arg1arg1_0"
concat_1concat_1_0:output:0"
concat_2concat_2_0:output:0"
concatconcat_0:output:0"
meanMean:output:0


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
Equal/yConst"/device:CPU:0*
valueB
 *    *
dtype0>
EqualEqualarg0Equal/y:output:0"/device:CPU:0*
T0A
ToInt32Cast	Equal:z:0"/device:CPU:0*

SrcT0
*

DstT0B
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
save/Const:0save/Identity:0save/restore_all (5 @F8"Ù
trainable_variablesÁ¾
ß
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignQcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
Î
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
³
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
·
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assigngcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
¢
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assigndcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
¦
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
k
gru_cell/w_ru:0gru_cell/w_ru/Assigngru_cell/w_ru/read:02*gru_cell/w_ru/Initializer/random_uniform:08
b
gru_cell/b_ru:0gru_cell/b_ru/Assigngru_cell/b_ru/read:02!gru_cell/b_ru/Initializer/Const:08
g
gru_cell/w_c:0gru_cell/w_c/Assigngru_cell/w_c/read:02)gru_cell/w_c/Initializer/random_uniform:08
^
gru_cell/b_c:0gru_cell/b_c/Assigngru_cell/b_c/read:02 gru_cell/b_c/Initializer/Const:08

decoder_output_proj/kernel:0!decoder_output_proj/kernel/Assign!decoder_output_proj/kernel/read:027decoder_output_proj/kernel/Initializer/random_uniform:08

decoder_output_proj/bias:0decoder_output_proj/bias/Assigndecoder_output_proj/bias/read:02,decoder_output_proj/bias/Initializer/zeros:08" 	
local_variables		
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
input/holiday:0input/holiday/Assigninput/holiday/read:02input/feeder_vars/Const_11:0"2
	variables22
ß
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignQcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
Î
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
³
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
·
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assigngcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
¢
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assigndcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
¦
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
k
gru_cell/w_ru:0gru_cell/w_ru/Assigngru_cell/w_ru/read:02*gru_cell/w_ru/Initializer/random_uniform:08
b
gru_cell/b_ru:0gru_cell/b_ru/Assigngru_cell/b_ru/read:02!gru_cell/b_ru/Initializer/Const:08
g
gru_cell/w_c:0gru_cell/w_c/Assigngru_cell/w_c/read:02)gru_cell/w_c/Initializer/random_uniform:08
^
gru_cell/b_c:0gru_cell/b_c/Assigngru_cell/b_c/read:02 gru_cell/b_c/Initializer/Const:08

decoder_output_proj/kernel:0!decoder_output_proj/kernel/Assign!decoder_output_proj/kernel/read:027decoder_output_proj/kernel/Initializer/random_uniform:08

decoder_output_proj/bias:0decoder_output_proj/bias/Assigndecoder_output_proj/bias/read:02,decoder_output_proj/bias/Initializer/zeros:08
Í
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage:0jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/Assignjcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/read:02cond/Merge:0
É
ccudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage:0hcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/Assignhcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/read:02cond_1/Merge:0

zcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/Assigncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/read:02cond_2/Merge:0

{cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/Assigncudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/read:02cond_3/Merge:0

xcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage:0}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/Assign}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/read:02cond_4/Merge:0

ycudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage:0~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/Assign~cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/read:02cond_5/Merge:0

(gru_cell/w_ru/ExponentialMovingAverage:0-gru_cell/w_ru/ExponentialMovingAverage/Assign-gru_cell/w_ru/ExponentialMovingAverage/read:02cond_6/Merge:0

(gru_cell/b_ru/ExponentialMovingAverage:0-gru_cell/b_ru/ExponentialMovingAverage/Assign-gru_cell/b_ru/ExponentialMovingAverage/read:02cond_7/Merge:0

'gru_cell/w_c/ExponentialMovingAverage:0,gru_cell/w_c/ExponentialMovingAverage/Assign,gru_cell/w_c/ExponentialMovingAverage/read:02cond_8/Merge:0

'gru_cell/b_c/ExponentialMovingAverage:0,gru_cell/b_c/ExponentialMovingAverage/Assign,gru_cell/b_c/ExponentialMovingAverage/read:02cond_9/Merge:0
À
5decoder_output_proj/kernel/ExponentialMovingAverage:0:decoder_output_proj/kernel/ExponentialMovingAverage/Assign:decoder_output_proj/kernel/ExponentialMovingAverage/read:02cond_10/Merge:0
º
3decoder_output_proj/bias/ExponentialMovingAverage:08decoder_output_proj/bias/ExponentialMovingAverage/Assign8decoder_output_proj/bias/ExponentialMovingAverage/read:02cond_11/Merge:0"åH
while_contextÓHÐH
Ö3
!cudnn_gru/rnn/while/while_context *cudnn_gru/rnn/while/LoopCond:02cudnn_gru/rnn/while/Merge:0:cudnn_gru/rnn/while/Identity:0Bcudnn_gru/rnn/while/Exit:0Bcudnn_gru/rnn/while/Exit_1:0Bcudnn_gru/rnn/while/Exit_2:0Bcudnn_gru/rnn/while/Exit_3:0J¾0
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
Mcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/sub:0«
Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:0Vcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul/Enter:0^
cudnn_gru/rnn/TensorArray:0?cudnn_gru/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0ª
Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:0Wcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd/Enter:0=
cudnn_gru/rnn/Minimum:0"cudnn_gru/rnn/while/Less_1/Enter:0N
cudnn_gru/rnn/TensorArray_1:0-cudnn_gru/rnn/while/TensorArrayReadV3/Enter:0Ã
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:0Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_2/Enter:0Â
fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:0Xcudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/MatMul_1/Enter:0Á
dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:0Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_1/Enter:0Â
ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:0Ycudnn_gru/rnn/while/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/BiasAdd_2/Enter:0}
Jcudnn_gru/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0/cudnn_gru/rnn/while/TensorArrayReadV3/Enter_1:0C
cudnn_gru/rnn/strided_slice_1:0 cudnn_gru/rnn/while/Less/Enter:0Rcudnn_gru/rnn/while/Enter:0Rcudnn_gru/rnn/while/Enter_1:0Rcudnn_gru/rnn/while/Enter_2:0Rcudnn_gru/rnn/while/Enter_3:0Zcudnn_gru/rnn/strided_slice_1:0
ô
while/while_context
*while/LoopCond:02while/Merge:0:while/Identity:0Bwhile/Exit:0Bwhile/Exit_1:0Bwhile/Exit_2:0Bwhile/Exit_3:0Bwhile/Exit_4:0J
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
gru_cell/b_ru/read:0%while/gru_cell/GRUBlockCell/Enter_2:0Rwhile/Enter:0Rwhile/Enter_1:0Rwhile/Enter_2:0Rwhile/Enter_3:0Rwhile/Enter_4:0"Þ
moving_average_variablesÁ¾
ß
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0Qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/AssignQcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/read:02gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:08
Î
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/AssignOcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/read:02\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:08
³
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0fcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Assignfcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/read:02|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:08
·
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Assigngcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/read:02}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:08
¢
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0dcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Assigndcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/read:02qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:08
¦
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Assignecudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/read:02rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:08
k
gru_cell/w_ru:0gru_cell/w_ru/Assigngru_cell/w_ru/read:02*gru_cell/w_ru/Initializer/random_uniform:08
b
gru_cell/b_ru:0gru_cell/b_ru/Assigngru_cell/b_ru/read:02!gru_cell/b_ru/Initializer/Const:08
g
gru_cell/w_c:0gru_cell/w_c/Assigngru_cell/w_c/read:02)gru_cell/w_c/Initializer/random_uniform:08
^
gru_cell/b_c:0gru_cell/b_c/Assigngru_cell/b_c/read:02 gru_cell/b_c/Initializer/Const:08

decoder_output_proj/kernel:0!decoder_output_proj/kernel/Assign!decoder_output_proj/kernel/read:027decoder_output_proj/kernel/Initializer/random_uniform:08

decoder_output_proj/bias:0decoder_output_proj/bias/Assigndecoder_output_proj/bias/read:02,decoder_output_proj/bias/Initializer/zeros:08"
cond_context
Ì
cond/cond_textcond/pred_id:0cond/switch_t:0 *
cond/pred_id:0
cond/read/Switch:1
cond/read:0
cond/switch_t:0
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0b
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0cond/read/Switch:1 
cond/pred_id:0cond/pred_id:0

cond/cond_text_1cond/pred_id:0cond/switch_f:0*Ê
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:0z
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:0cond/Switch_1:0 
cond/pred_id:0cond/pred_id:0
¶

rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/cond_textrcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_t:0 *Ô
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0
vcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch:1
ocudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read:0
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_t:0
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0è
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0Æ
Lcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel:0vcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/read/Switch:1
ê

tcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/cond_text_1rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_f:0*
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch_1:0
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch_1:1
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0
scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/switch_f:0
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:0è
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/pred_id:0Þ
gcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/Initializer/random_uniform:0scudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/kernel/ExponentialMovingAverage/cond/Switch_1:0
Ü
cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 * 
cond_1/pred_id:0
cond_1/read/Switch:1
cond_1/read:0
cond_1/switch_t:0
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0$
cond_1/pred_id:0cond_1/pred_id:0b
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0cond_1/read/Switch:1
þ
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*Â
cond_1/Switch_1:0
cond_1/Switch_1:1
cond_1/pred_id:0
cond_1/switch_f:0
\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:0$
cond_1/pred_id:0cond_1/pred_id:0q
\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:0cond_1/Switch_1:0


pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/cond_textpcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_t:0 *Â
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0
tcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read/Switch:1
mcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_t:0
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0Â
Jcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias:0tcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/read/Switch:1ä
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0
À

rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/cond_text_1pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_f:0*ä
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch_1:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch_1:1
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/switch_f:0
\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:0ä
pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0pcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/pred_id:0Ñ
\cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/Initializer/Const:0qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/gates/bias/ExponentialMovingAverage/cond/Switch_1:0

cond_2/cond_textcond_2/pred_id:0cond_2/switch_t:0 *Î
cond_2/pred_id:0
cond_2/read/Switch:1
cond_2/read:0
cond_2/switch_t:0
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0$
cond_2/pred_id:0cond_2/pred_id:0y
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0cond_2/read/Switch:1
¿
cond_2/cond_text_1cond_2/pred_id:0cond_2/switch_f:0*
cond_2/Switch_1:0
cond_2/Switch_1:1
cond_2/pred_id:0
cond_2/switch_f:0
|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:0$
cond_2/pred_id:0cond_2/pred_id:0
|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:0cond_2/Switch_1:0
¼
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/cond_textcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_t:0 *	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_t:0
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0ñ
acudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1
ð
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/cond_text_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_f:0*Ì	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch_1:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/switch_f:0
|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
|cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/Initializer/random_uniform:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/kernel/ExponentialMovingAverage/cond/Switch_1:0

cond_3/cond_textcond_3/pred_id:0cond_3/switch_t:0 *Ð
cond_3/pred_id:0
cond_3/read/Switch:1
cond_3/read:0
cond_3/switch_t:0
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0$
cond_3/pred_id:0cond_3/pred_id:0z
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0cond_3/read/Switch:1
Á
cond_3/cond_text_1cond_3/pred_id:0cond_3/switch_f:0*
cond_3/Switch_1:0
cond_3/Switch_1:1
cond_3/pred_id:0
cond_3/switch_f:0
}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:0$
cond_3/pred_id:0cond_3/pred_id:0
}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:0cond_3/Switch_1:0
È
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/cond_textcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_t:0 *¡	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_t:0
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0ó
bcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
ü
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/cond_text_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_f:0*Õ	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch_1:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/switch_f:0
}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/pred_id:0
}cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/Initializer/random_uniform:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/kernel/ExponentialMovingAverage/cond/Switch_1:0

cond_4/cond_textcond_4/pred_id:0cond_4/switch_t:0 *Ê
cond_4/pred_id:0
cond_4/read/Switch:1
cond_4/read:0
cond_4/switch_t:0
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0$
cond_4/pred_id:0cond_4/pred_id:0w
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0cond_4/read/Switch:1
©
cond_4/cond_text_1cond_4/pred_id:0cond_4/switch_f:0*í
cond_4/Switch_1:0
cond_4/Switch_1:1
cond_4/pred_id:0
cond_4/switch_f:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:0$
cond_4/pred_id:0cond_4/pred_id:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:0cond_4/Switch_1:0
¤
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/cond_textcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_t:0 *	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_t:0
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0í
_cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0
Æ
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/cond_text_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_f:0*¨	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch_1:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/switch_f:0
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:0ü
qcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/Initializer/zeros:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/input_projection/bias/ExponentialMovingAverage/cond/pred_id:0

cond_5/cond_textcond_5/pred_id:0cond_5/switch_t:0 *Ì
cond_5/pred_id:0
cond_5/read/Switch:1
cond_5/read:0
cond_5/switch_t:0
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0x
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0cond_5/read/Switch:1$
cond_5/pred_id:0cond_5/pred_id:0
«
cond_5/cond_text_1cond_5/pred_id:0cond_5/switch_f:0*ï
cond_5/Switch_1:0
cond_5/Switch_1:1
cond_5/pred_id:0
cond_5/switch_f:0
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:0$
cond_5/pred_id:0cond_5/pred_id:0
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:0cond_5/Switch_1:0
°
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/cond_textcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_t:0 *	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_t:0
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0ï
`cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/read/Switch:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0
Ò
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/cond_text_1cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_f:0*±	
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch_1:1
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/switch_f:0
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:0þ
rcudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/Initializer/zeros:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/Switch_1:0
cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0cudnn_gru/rnn/multi_rnn_cell/cell_0/cudnn_compatible_gru_cell/candidate/hidden_projection/bias/ExponentialMovingAverage/cond/pred_id:0
æ
cond_6/cond_textcond_6/pred_id:0cond_6/switch_t:0 *ª
cond_6/pred_id:0
cond_6/read/Switch:1
cond_6/read:0
cond_6/switch_t:0
gru_cell/w_ru:0'
gru_cell/w_ru:0cond_6/read/Switch:1$
cond_6/pred_id:0cond_6/pred_id:0

cond_6/cond_text_1cond_6/pred_id:0cond_6/switch_f:0*Þ
cond_6/Switch_1:0
cond_6/Switch_1:1
cond_6/pred_id:0
cond_6/switch_f:0
*gru_cell/w_ru/Initializer/random_uniform:0$
cond_6/pred_id:0cond_6/pred_id:0?
*gru_cell/w_ru/Initializer/random_uniform:0cond_6/Switch_1:0
Ø
5gru_cell/w_ru/ExponentialMovingAverage/cond/cond_text5gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:06gru_cell/w_ru/ExponentialMovingAverage/cond/switch_t:0 *­
5gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:0
9gru_cell/w_ru/ExponentialMovingAverage/cond/read/Switch:1
2gru_cell/w_ru/ExponentialMovingAverage/cond/read:0
6gru_cell/w_ru/ExponentialMovingAverage/cond/switch_t:0
gru_cell/w_ru:0L
gru_cell/w_ru:09gru_cell/w_ru/ExponentialMovingAverage/cond/read/Switch:1n
5gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:05gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:0

7gru_cell/w_ru/ExponentialMovingAverage/cond/cond_text_15gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:06gru_cell/w_ru/ExponentialMovingAverage/cond/switch_f:0*á
6gru_cell/w_ru/ExponentialMovingAverage/cond/Switch_1:0
6gru_cell/w_ru/ExponentialMovingAverage/cond/Switch_1:1
5gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:0
6gru_cell/w_ru/ExponentialMovingAverage/cond/switch_f:0
*gru_cell/w_ru/Initializer/random_uniform:0n
5gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:05gru_cell/w_ru/ExponentialMovingAverage/cond/pred_id:0d
*gru_cell/w_ru/Initializer/random_uniform:06gru_cell/w_ru/ExponentialMovingAverage/cond/Switch_1:0
æ
cond_7/cond_textcond_7/pred_id:0cond_7/switch_t:0 *ª
cond_7/pred_id:0
cond_7/read/Switch:1
cond_7/read:0
cond_7/switch_t:0
gru_cell/b_ru:0'
gru_cell/b_ru:0cond_7/read/Switch:1$
cond_7/pred_id:0cond_7/pred_id:0

cond_7/cond_text_1cond_7/pred_id:0cond_7/switch_f:0*Ì
cond_7/Switch_1:0
cond_7/Switch_1:1
cond_7/pred_id:0
cond_7/switch_f:0
!gru_cell/b_ru/Initializer/Const:0$
cond_7/pred_id:0cond_7/pred_id:06
!gru_cell/b_ru/Initializer/Const:0cond_7/Switch_1:0
Ø
5gru_cell/b_ru/ExponentialMovingAverage/cond/cond_text5gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:06gru_cell/b_ru/ExponentialMovingAverage/cond/switch_t:0 *­
5gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:0
9gru_cell/b_ru/ExponentialMovingAverage/cond/read/Switch:1
2gru_cell/b_ru/ExponentialMovingAverage/cond/read:0
6gru_cell/b_ru/ExponentialMovingAverage/cond/switch_t:0
gru_cell/b_ru:0L
gru_cell/b_ru:09gru_cell/b_ru/ExponentialMovingAverage/cond/read/Switch:1n
5gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:05gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:0
ú
7gru_cell/b_ru/ExponentialMovingAverage/cond/cond_text_15gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:06gru_cell/b_ru/ExponentialMovingAverage/cond/switch_f:0*Ï
6gru_cell/b_ru/ExponentialMovingAverage/cond/Switch_1:0
6gru_cell/b_ru/ExponentialMovingAverage/cond/Switch_1:1
5gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:0
6gru_cell/b_ru/ExponentialMovingAverage/cond/switch_f:0
!gru_cell/b_ru/Initializer/Const:0n
5gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:05gru_cell/b_ru/ExponentialMovingAverage/cond/pred_id:0[
!gru_cell/b_ru/Initializer/Const:06gru_cell/b_ru/ExponentialMovingAverage/cond/Switch_1:0
ä
cond_8/cond_textcond_8/pred_id:0cond_8/switch_t:0 *¨
cond_8/pred_id:0
cond_8/read/Switch:1
cond_8/read:0
cond_8/switch_t:0
gru_cell/w_c:0$
cond_8/pred_id:0cond_8/pred_id:0&
gru_cell/w_c:0cond_8/read/Switch:1

cond_8/cond_text_1cond_8/pred_id:0cond_8/switch_f:0*Ü
cond_8/Switch_1:0
cond_8/Switch_1:1
cond_8/pred_id:0
cond_8/switch_f:0
)gru_cell/w_c/Initializer/random_uniform:0$
cond_8/pred_id:0cond_8/pred_id:0>
)gru_cell/w_c/Initializer/random_uniform:0cond_8/Switch_1:0
Ì
4gru_cell/w_c/ExponentialMovingAverage/cond/cond_text4gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:05gru_cell/w_c/ExponentialMovingAverage/cond/switch_t:0 *¤
4gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:0
8gru_cell/w_c/ExponentialMovingAverage/cond/read/Switch:1
1gru_cell/w_c/ExponentialMovingAverage/cond/read:0
5gru_cell/w_c/ExponentialMovingAverage/cond/switch_t:0
gru_cell/w_c:0J
gru_cell/w_c:08gru_cell/w_c/ExponentialMovingAverage/cond/read/Switch:1l
4gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:04gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:0

6gru_cell/w_c/ExponentialMovingAverage/cond/cond_text_14gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:05gru_cell/w_c/ExponentialMovingAverage/cond/switch_f:0*Ø
5gru_cell/w_c/ExponentialMovingAverage/cond/Switch_1:0
5gru_cell/w_c/ExponentialMovingAverage/cond/Switch_1:1
4gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:0
5gru_cell/w_c/ExponentialMovingAverage/cond/switch_f:0
)gru_cell/w_c/Initializer/random_uniform:0l
4gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:04gru_cell/w_c/ExponentialMovingAverage/cond/pred_id:0b
)gru_cell/w_c/Initializer/random_uniform:05gru_cell/w_c/ExponentialMovingAverage/cond/Switch_1:0
ä
cond_9/cond_textcond_9/pred_id:0cond_9/switch_t:0 *¨
cond_9/pred_id:0
cond_9/read/Switch:1
cond_9/read:0
cond_9/switch_t:0
gru_cell/b_c:0$
cond_9/pred_id:0cond_9/pred_id:0&
gru_cell/b_c:0cond_9/read/Switch:1

cond_9/cond_text_1cond_9/pred_id:0cond_9/switch_f:0*Ê
cond_9/Switch_1:0
cond_9/Switch_1:1
cond_9/pred_id:0
cond_9/switch_f:0
 gru_cell/b_c/Initializer/Const:05
 gru_cell/b_c/Initializer/Const:0cond_9/Switch_1:0$
cond_9/pred_id:0cond_9/pred_id:0
Ì
4gru_cell/b_c/ExponentialMovingAverage/cond/cond_text4gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:05gru_cell/b_c/ExponentialMovingAverage/cond/switch_t:0 *¤
4gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:0
8gru_cell/b_c/ExponentialMovingAverage/cond/read/Switch:1
1gru_cell/b_c/ExponentialMovingAverage/cond/read:0
5gru_cell/b_c/ExponentialMovingAverage/cond/switch_t:0
gru_cell/b_c:0J
gru_cell/b_c:08gru_cell/b_c/ExponentialMovingAverage/cond/read/Switch:1l
4gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:04gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:0
î
6gru_cell/b_c/ExponentialMovingAverage/cond/cond_text_14gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:05gru_cell/b_c/ExponentialMovingAverage/cond/switch_f:0*Æ
5gru_cell/b_c/ExponentialMovingAverage/cond/Switch_1:0
5gru_cell/b_c/ExponentialMovingAverage/cond/Switch_1:1
4gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:0
5gru_cell/b_c/ExponentialMovingAverage/cond/switch_f:0
 gru_cell/b_c/Initializer/Const:0l
4gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:04gru_cell/b_c/ExponentialMovingAverage/cond/pred_id:0Y
 gru_cell/b_c/Initializer/Const:05gru_cell/b_c/ExponentialMovingAverage/cond/Switch_1:0

cond_10/cond_textcond_10/pred_id:0cond_10/switch_t:0 *Ë
cond_10/pred_id:0
cond_10/read/Switch:1
cond_10/read:0
cond_10/switch_t:0
decoder_output_proj/kernel:05
decoder_output_proj/kernel:0cond_10/read/Switch:1&
cond_10/pred_id:0cond_10/pred_id:0
¾
cond_10/cond_text_1cond_10/pred_id:0cond_10/switch_f:0*ÿ
cond_10/Switch_1:0
cond_10/Switch_1:1
cond_10/pred_id:0
cond_10/switch_f:0
7decoder_output_proj/kernel/Initializer/random_uniform:0M
7decoder_output_proj/kernel/Initializer/random_uniform:0cond_10/Switch_1:0&
cond_10/pred_id:0cond_10/pred_id:0
õ
Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/cond_textBdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_t:0 *£
Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0
Fdecoder_output_proj/kernel/ExponentialMovingAverage/cond/read/Switch:1
?decoder_output_proj/kernel/ExponentialMovingAverage/cond/read:0
Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_t:0
decoder_output_proj/kernel:0f
decoder_output_proj/kernel:0Fdecoder_output_proj/kernel/ExponentialMovingAverage/cond/read/Switch:1
Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0
©
Ddecoder_output_proj/kernel/ExponentialMovingAverage/cond/cond_text_1Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_f:0*×
Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch_1:0
Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch_1:1
Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0
Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/switch_f:0
7decoder_output_proj/kernel/Initializer/random_uniform:0
Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0Bdecoder_output_proj/kernel/ExponentialMovingAverage/cond/pred_id:0~
7decoder_output_proj/kernel/Initializer/random_uniform:0Cdecoder_output_proj/kernel/ExponentialMovingAverage/cond/Switch_1:0

cond_11/cond_textcond_11/pred_id:0cond_11/switch_t:0 *Ç
cond_11/pred_id:0
cond_11/read/Switch:1
cond_11/read:0
cond_11/switch_t:0
decoder_output_proj/bias:03
decoder_output_proj/bias:0cond_11/read/Switch:1&
cond_11/pred_id:0cond_11/pred_id:0
¨
cond_11/cond_text_1cond_11/pred_id:0cond_11/switch_f:0*é
cond_11/Switch_1:0
cond_11/Switch_1:1
cond_11/pred_id:0
cond_11/switch_f:0
,decoder_output_proj/bias/Initializer/zeros:0&
cond_11/pred_id:0cond_11/pred_id:0B
,decoder_output_proj/bias/Initializer/zeros:0cond_11/Switch_1:0
Ý
@decoder_output_proj/bias/ExponentialMovingAverage/cond/cond_text@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0Adecoder_output_proj/bias/ExponentialMovingAverage/cond/switch_t:0 *
@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0
Ddecoder_output_proj/bias/ExponentialMovingAverage/cond/read/Switch:1
=decoder_output_proj/bias/ExponentialMovingAverage/cond/read:0
Adecoder_output_proj/bias/ExponentialMovingAverage/cond/switch_t:0
decoder_output_proj/bias:0
@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0b
decoder_output_proj/bias:0Ddecoder_output_proj/bias/ExponentialMovingAverage/cond/read/Switch:1
ÿ
Bdecoder_output_proj/bias/ExponentialMovingAverage/cond/cond_text_1@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0Adecoder_output_proj/bias/ExponentialMovingAverage/cond/switch_f:0*³
Adecoder_output_proj/bias/ExponentialMovingAverage/cond/Switch_1:0
Adecoder_output_proj/bias/ExponentialMovingAverage/cond/Switch_1:1
@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0
Adecoder_output_proj/bias/ExponentialMovingAverage/cond/switch_f:0
,decoder_output_proj/bias/Initializer/zeros:0q
,decoder_output_proj/bias/Initializer/zeros:0Adecoder_output_proj/bias/ExponentialMovingAverage/cond/Switch_1:0
@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0@decoder_output_proj/bias/ExponentialMovingAverage/cond/pred_id:0",
saved_model_main_op

init_all_tables_1"!
	iterators

input/Iterator:0*ê
serving_defaultÖ
5
normstd*
input/IteratorGetNext:8ÿÿÿÿÿÿÿÿÿ
?
page_features.
input/IteratorGetNext:9ÿÿÿÿÿÿÿÿÿ.
=
laggedx2
input/IteratorGetNext:3ÿÿÿÿÿÿÿÿÿ<
7
truex.
input/IteratorGetNext:0ÿÿÿÿÿÿÿÿÿ<
7
normx.
input/IteratorGetNext:2ÿÿÿÿÿÿÿÿÿ<
6
normmean*
input/IteratorGetNext:7ÿÿÿÿÿÿÿÿÿ
7
truey.
input/IteratorGetNext:4ÿÿÿÿÿÿÿÿÿ

7
normy.
input/IteratorGetNext:6ÿÿÿÿÿÿÿÿÿ

5
pageix+
input/IteratorGetNext:10ÿÿÿÿÿÿÿÿÿ
;
timex2
input/IteratorGetNext:1ÿÿÿÿÿÿÿÿÿ<3
;
timey2
input/IteratorGetNext:5ÿÿÿÿÿÿÿÿÿ
24
predictions%
add:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿtensorflow/serving/predict