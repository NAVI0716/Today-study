Ï
î
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ö

embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô*'
shared_nameembedding_2/embeddings

*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings*
_output_shapes
:	ô*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
¦
%simple_rnn_3/simple_rnn_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%simple_rnn_3/simple_rnn_cell_3/kernel

9simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_3/simple_rnn_cell_3/kernel*
_output_shapes

:*
dtype0
º
/simple_rnn_3/simple_rnn_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
³
Csimple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel*
_output_shapes

:*
dtype0

#simple_rnn_3/simple_rnn_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#simple_rnn_3/simple_rnn_cell_3/bias

7simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_3/simple_rnn_cell_3/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
¡
"RMSprop/embedding_2/embeddings/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ô*3
shared_name$"RMSprop/embedding_2/embeddings/rms

6RMSprop/embedding_2/embeddings/rms/Read/ReadVariableOpReadVariableOp"RMSprop/embedding_2/embeddings/rms*
_output_shapes
:	ô*
dtype0

RMSprop/dense_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameRMSprop/dense_3/kernel/rms

.RMSprop/dense_3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/kernel/rms*
_output_shapes

:*
dtype0

RMSprop/dense_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_3/bias/rms

,RMSprop/dense_3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_3/bias/rms*
_output_shapes
:*
dtype0
¾
1RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*B
shared_name31RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms
·
ERMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms/Read/ReadVariableOpReadVariableOp1RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms*
_output_shapes

:*
dtype0
Ò
;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*L
shared_name=;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms
Ë
ORMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms*
_output_shapes

:*
dtype0
¶
/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms
¯
CRMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms/Read/ReadVariableOpReadVariableOp/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
È,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*,
valueù+Bö+ Bï+
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
ª
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*

$iter
	%decay
&learning_rate
'momentum
(rho	rmsY	rmsZ	rms[	)rms\	*rms]	+rms^*
.
0
)1
*2
+3
4
5*
.
0
)1
*2
+3
4
5*
* 
°
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

1serving_default* 
jd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
Ó

)kernel
*recurrent_kernel
+bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;_random_generator
<__call__
*=&call_and_return_all_conditional_losses*
* 

)0
*1
+2*

)0
*1
+2*
* 


>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_3/simple_rnn_cell_3/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_3/simple_rnn_cell_3/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

I0
J1*
* 
* 
* 
* 
* 
* 
* 
* 

)0
*1
+2*

)0
*1
+2*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
7	variables
8trainable_variables
9regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	Ptotal
	Qcount
R	variables
S	keras_api*
H
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

P0
Q1*

R	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

T0
U1*

W	variables*

VARIABLE_VALUE"RMSprop/embedding_2/embeddings/rmsXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_3/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/dense_3/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE1RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

!serving_default_embedding_2_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿd
û
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_2_inputembedding_2/embeddings%simple_rnn_3/simple_rnn_cell_3/kernel#simple_rnn_3/simple_rnn_cell_3/bias/simple_rnn_3/simple_rnn_cell_3/recurrent_kerneldense_3/kerneldense_3/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_167818
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
õ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_2/embeddings/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp9simple_rnn_3/simple_rnn_cell_3/kernel/Read/ReadVariableOpCsimple_rnn_3/simple_rnn_cell_3/recurrent_kernel/Read/ReadVariableOp7simple_rnn_3/simple_rnn_cell_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6RMSprop/embedding_2/embeddings/rms/Read/ReadVariableOp.RMSprop/dense_3/kernel/rms/Read/ReadVariableOp,RMSprop/dense_3/bias/rms/Read/ReadVariableOpERMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms/Read/ReadVariableOpORMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms/Read/ReadVariableOpCRMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_168479
Ì
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddingsdense_3/kerneldense_3/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rho%simple_rnn_3/simple_rnn_cell_3/kernel/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel#simple_rnn_3/simple_rnn_cell_3/biastotalcounttotal_1count_1"RMSprop/embedding_2/embeddings/rmsRMSprop/dense_3/kernel/rmsRMSprop/dense_3/bias/rms1RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_168552ÿ
÷

-__inference_sequential_4_layer_call_fn_167557

inputs
unknown:	ô
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_167447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

¹
-__inference_simple_rnn_3_layer_call_fn_167857
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167083o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Y

H__inference_sequential_4_layer_call_and_return_conditional_losses_167678

inputs6
#embedding_2_embedding_lookup_167561:	ôO
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:L
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:Q
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_2/embedding_lookup¢5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp¢6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢simple_rnn_3/whilea
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdë
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_167561embedding_2/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/167561*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0Æ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/167561*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
simple_rnn_3/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ±
simple_rnn_3/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0$simple_rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask²
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Æ
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ó
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0À
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#simple_rnn_3/simple_rnn_cell_3/TanhTanh&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ß
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_3_while_body_167605**
cond"R 
simple_rnn_3_while_cond_167604*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   é
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_3/MatMulMatMul%simple_rnn_3/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_2/embedding_lookup6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ü=
½
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167987
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167921*
condR
while_cond_167920*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ñ
®
H__inference_sequential_4_layer_call_and_return_conditional_losses_167246

inputs%
embedding_2_167110:	ô%
simple_rnn_3_167221:!
simple_rnn_3_167223:%
simple_rnn_3_167225: 
dense_3_167240:
dense_3_167242:
identity¢dense_3/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢$simple_rnn_3/StatefulPartitionedCallê
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_167110*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109½
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_3_167221simple_rnn_3_167223simple_rnn_3_167225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167220
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_3_167240dense_3_167242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_167239w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp ^dense_3/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
§=
»
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168203

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_168137*
condR
while_cond_168136*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ü=
½
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168095
inputs_0B
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_168029*
condR
while_cond_168028*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
½,
È
while_body_168137
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
½,
È
while_body_167326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¹

Ú
2__inference_simple_rnn_cell_3_layer_call_fn_168345

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Ú
ª
while_cond_167325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167325___redundant_placeholder04
0while_while_cond_167325___redundant_placeholder14
0while_while_cond_167325___redundant_placeholder24
0while_while_cond_167325___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
	

-__inference_sequential_4_layer_call_fn_167479
embedding_2_input
unknown:	ô
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_167447o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input

ê
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168393

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
ò
¹
H__inference_sequential_4_layer_call_and_return_conditional_losses_167517
embedding_2_input%
embedding_2_167501:	ô%
simple_rnn_3_167504:!
simple_rnn_3_167506:%
simple_rnn_3_167508: 
dense_3_167511:
dense_3_167513:
identity¢dense_3/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢$simple_rnn_3/StatefulPartitionedCallõ
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_167501*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109½
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_3_167504simple_rnn_3_167506simple_rnn_3_167508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167392
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_3_167511dense_3_167513*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_167239w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp ^dense_3/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input
Ú
ª
while_cond_167153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167153___redundant_placeholder04
0while_while_cond_167153___redundant_placeholder14
0while_while_cond_167153___redundant_placeholder24
0while_while_cond_167153___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
þ
·
-__inference_simple_rnn_3_layer_call_fn_167868

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
÷

-__inference_sequential_4_layer_call_fn_167540

inputs
unknown:	ô
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_167246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
§=
»
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167220

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167154*
condR
while_cond_167153*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ú
ª
while_cond_167920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167920___redundant_placeholder04
0while_while_cond_167920___redundant_placeholder14
0while_while_cond_167920___redundant_placeholder24
0while_while_cond_167920___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Y

H__inference_sequential_4_layer_call_and_return_conditional_losses_167799

inputs6
#embedding_2_embedding_lookup_167682:	ôO
=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:L
>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:Q
?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identity¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢embedding_2/embedding_lookup¢5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp¢6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢simple_rnn_3/whilea
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdë
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_167682embedding_2/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/167682*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0Æ
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/167682*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
simple_rnn_3/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:j
 simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_3/strided_sliceStridedSlicesimple_rnn_3/Shape:output:0)simple_rnn_3/strided_slice/stack:output:0+simple_rnn_3/strided_slice/stack_1:output:0+simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/zeros/packedPack#simple_rnn_3/strided_slice:output:0$simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_3/zerosFill"simple_rnn_3/zeros/packed:output:0!simple_rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ±
simple_rnn_3/transpose	Transpose0embedding_2/embedding_lookup/Identity_1:output:0$simple_rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ^
simple_rnn_3/Shape_1Shapesimple_rnn_3/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_3/strided_slice_1StridedSlicesimple_rnn_3/Shape_1:output:0+simple_rnn_3/strided_slice_1/stack:output:0-simple_rnn_3/strided_slice_1/stack_1:output:0-simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÛ
simple_rnn_3/TensorArrayV2TensorListReserve1simple_rnn_3/TensorArrayV2/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Bsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
4simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_3/transpose:y:0Ksimple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒl
"simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
simple_rnn_3/strided_slice_2StridedSlicesimple_rnn_3/transpose:y:0+simple_rnn_3/strided_slice_2/stack:output:0-simple_rnn_3/strided_slice_2/stack_1:output:0-simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask²
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Æ
%simple_rnn_3/simple_rnn_cell_3/MatMulMatMul%simple_rnn_3/strided_slice_2:output:0<simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ó
&simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0=simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0À
'simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMulsimple_rnn_3/zeros:output:0>simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
"simple_rnn_3/simple_rnn_cell_3/addAddV2/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:01simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#simple_rnn_3/simple_rnn_cell_3/TanhTanh&simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
*simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ß
simple_rnn_3/TensorArrayV2_1TensorListReserve3simple_rnn_3/TensorArrayV2_1/element_shape:output:0%simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒS
simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿa
simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_3/whileWhile(simple_rnn_3/while/loop_counter:output:0.simple_rnn_3/while/maximum_iterations:output:0simple_rnn_3/time:output:0%simple_rnn_3/TensorArrayV2_1:handle:0simple_rnn_3/zeros:output:0%simple_rnn_3/strided_slice_1:output:0Dsimple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource>simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource?simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_3_while_body_167726**
cond"R 
simple_rnn_3_while_cond_167725*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
=simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   é
/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_3/while:output:3Fsimple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0u
"simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿn
$simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
simple_rnn_3/strided_slice_3StridedSlice8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_3/strided_slice_3/stack:output:0-simple_rnn_3/strided_slice_3/stack_1:output:0-simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskr
simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ½
simple_rnn_3/transpose_1	Transpose8simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_3/MatMulMatMul%simple_rnn_3/strided_slice_3:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_2/embedding_lookup6^simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5^simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp7^simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp^simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2n
5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp5simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2l
4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp4simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2p
6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp6simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2(
simple_rnn_3/whilesimple_rnn_3/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
4

H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167083

inputs*
simple_rnn_cell_3_167008:&
simple_rnn_cell_3_167010:*
simple_rnn_cell_3_167012:
identity¢)simple_rnn_cell_3/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskç
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_167008simple_rnn_cell_3_167010simple_rnn_cell_3_167012*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166968n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_167008simple_rnn_cell_3_167010simple_rnn_cell_3_167012*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167020*
condR
while_cond_167019*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
è
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166848

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Ú
ª
while_cond_167019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167019___redundant_placeholder04
0while_while_cond_167019___redundant_placeholder14
0while_while_cond_167019___redundant_placeholder24
0while_while_cond_167019___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ú
ª
while_cond_168244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_168244___redundant_placeholder04
0while_while_cond_168244___redundant_placeholder14
0while_while_cond_168244___redundant_placeholder24
0while_while_cond_168244___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ñ
®
H__inference_sequential_4_layer_call_and_return_conditional_losses_167447

inputs%
embedding_2_167431:	ô%
simple_rnn_3_167434:!
simple_rnn_3_167436:%
simple_rnn_3_167438: 
dense_3_167441:
dense_3_167443:
identity¢dense_3/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢$simple_rnn_3/StatefulPartitionedCallê
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_167431*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109½
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_3_167434simple_rnn_3_167436simple_rnn_3_167438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167392
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_3_167441dense_3_167443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_167239w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp ^dense_3/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
º

¡
simple_rnn_3_while_cond_1676046
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167604___redundant_placeholder0N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167604___redundant_placeholder1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167604___redundant_placeholder2N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167604___redundant_placeholder3
simple_rnn_3_while_identity

simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
©

,__inference_embedding_2_layer_call_fn_167825

inputs
unknown:	ô
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


ô
C__inference_dense_3_layer_call_and_return_conditional_losses_168331

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½,
È
while_body_168029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
½,
È
while_body_167154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
½,
È
while_body_167921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ò
¹
H__inference_sequential_4_layer_call_and_return_conditional_losses_167498
embedding_2_input%
embedding_2_167482:	ô%
simple_rnn_3_167485:!
simple_rnn_3_167487:%
simple_rnn_3_167489: 
dense_3_167492:
dense_3_167494:
identity¢dense_3/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢$simple_rnn_3/StatefulPartitionedCallõ
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_167482*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109½
$simple_rnn_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0simple_rnn_3_167485simple_rnn_3_167487simple_rnn_3_167489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167220
dense_3/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_3/StatefulPartitionedCall:output:0dense_3_167492dense_3_167494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_167239w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
NoOpNoOp ^dense_3/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall%^simple_rnn_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2L
$simple_rnn_3/StatefulPartitionedCall$simple_rnn_3/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input
º

¡
simple_rnn_3_while_cond_1677256
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_28
4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167725___redundant_placeholder0N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167725___redundant_placeholder1N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167725___redundant_placeholder2N
Jsimple_rnn_3_while_simple_rnn_3_while_cond_167725___redundant_placeholder3
simple_rnn_3_while_identity

simple_rnn_3/while/LessLesssimple_rnn_3_while_placeholder4simple_rnn_3_while_less_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
§=
»
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167392

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167326*
condR
while_cond_167325*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


ô
C__inference_dense_3_layer_call_and_return_conditional_losses_167239

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

-__inference_sequential_4_layer_call_fn_167261
embedding_2_input
unknown:	ô
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_167246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input
þ
·
-__inference_simple_rnn_3_layer_call_fn_167879

inputs
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167392o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ëi
¬
!__inference__wrapped_model_166800
embedding_2_inputC
0sequential_4_embedding_2_embedding_lookup_166683:	ô\
Jsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource:Y
Ksequential_4_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource:^
Lsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource:E
3sequential_4_dense_3_matmul_readvariableop_resource:B
4sequential_4_dense_3_biasadd_readvariableop_resource:
identity¢+sequential_4/dense_3/BiasAdd/ReadVariableOp¢*sequential_4/dense_3/MatMul/ReadVariableOp¢)sequential_4/embedding_2/embedding_lookup¢Bsequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Asequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp¢Csequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢sequential_4/simple_rnn_3/whiley
sequential_4/embedding_2/CastCastembedding_2_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
)sequential_4/embedding_2/embedding_lookupResourceGather0sequential_4_embedding_2_embedding_lookup_166683!sequential_4/embedding_2/Cast:y:0*
Tindices0*C
_class9
75loc:@sequential_4/embedding_2/embedding_lookup/166683*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0í
2sequential_4/embedding_2/embedding_lookup/IdentityIdentity2sequential_4/embedding_2/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_4/embedding_2/embedding_lookup/166683*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd³
4sequential_4/embedding_2/embedding_lookup/Identity_1Identity;sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
sequential_4/simple_rnn_3/ShapeShape=sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:w
-sequential_4/simple_rnn_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_4/simple_rnn_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_4/simple_rnn_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'sequential_4/simple_rnn_3/strided_sliceStridedSlice(sequential_4/simple_rnn_3/Shape:output:06sequential_4/simple_rnn_3/strided_slice/stack:output:08sequential_4/simple_rnn_3/strided_slice/stack_1:output:08sequential_4/simple_rnn_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_4/simple_rnn_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Á
&sequential_4/simple_rnn_3/zeros/packedPack0sequential_4/simple_rnn_3/strided_slice:output:01sequential_4/simple_rnn_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_4/simple_rnn_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    º
sequential_4/simple_rnn_3/zerosFill/sequential_4/simple_rnn_3/zeros/packed:output:0.sequential_4/simple_rnn_3/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
(sequential_4/simple_rnn_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
#sequential_4/simple_rnn_3/transpose	Transpose=sequential_4/embedding_2/embedding_lookup/Identity_1:output:01sequential_4/simple_rnn_3/transpose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿx
!sequential_4/simple_rnn_3/Shape_1Shape'sequential_4/simple_rnn_3/transpose:y:0*
T0*
_output_shapes
:y
/sequential_4/simple_rnn_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)sequential_4/simple_rnn_3/strided_slice_1StridedSlice*sequential_4/simple_rnn_3/Shape_1:output:08sequential_4/simple_rnn_3/strided_slice_1/stack:output:0:sequential_4/simple_rnn_3/strided_slice_1/stack_1:output:0:sequential_4/simple_rnn_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5sequential_4/simple_rnn_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
'sequential_4/simple_rnn_3/TensorArrayV2TensorListReserve>sequential_4/simple_rnn_3/TensorArrayV2/element_shape:output:02sequential_4/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ 
Osequential_4/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ®
Asequential_4/simple_rnn_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_4/simple_rnn_3/transpose:y:0Xsequential_4/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒy
/sequential_4/simple_rnn_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_4/simple_rnn_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
)sequential_4/simple_rnn_3/strided_slice_2StridedSlice'sequential_4/simple_rnn_3/transpose:y:08sequential_4/simple_rnn_3/strided_slice_2/stack:output:0:sequential_4/simple_rnn_3/strided_slice_2/stack_1:output:0:sequential_4/simple_rnn_3/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskÌ
Asequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpJsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0í
2sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMulMatMul2sequential_4/simple_rnn_3/strided_slice_2:output:0Isequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÊ
Bsequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpKsequential_4_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ú
3sequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAddBiasAdd<sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul:product:0Jsequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Csequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpLsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ç
4sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1MatMul(sequential_4/simple_rnn_3/zeros:output:0Ksequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
/sequential_4/simple_rnn_3/simple_rnn_cell_3/addAddV2<sequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd:output:0>sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0sequential_4/simple_rnn_3/simple_rnn_cell_3/TanhTanh3sequential_4/simple_rnn_3/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7sequential_4/simple_rnn_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
)sequential_4/simple_rnn_3/TensorArrayV2_1TensorListReserve@sequential_4/simple_rnn_3/TensorArrayV2_1/element_shape:output:02sequential_4/simple_rnn_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ`
sequential_4/simple_rnn_3/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_4/simple_rnn_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿn
,sequential_4/simple_rnn_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ª
sequential_4/simple_rnn_3/whileWhile5sequential_4/simple_rnn_3/while/loop_counter:output:0;sequential_4/simple_rnn_3/while/maximum_iterations:output:0'sequential_4/simple_rnn_3/time:output:02sequential_4/simple_rnn_3/TensorArrayV2_1:handle:0(sequential_4/simple_rnn_3/zeros:output:02sequential_4/simple_rnn_3/strided_slice_1:output:0Qsequential_4/simple_rnn_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_readvariableop_resourceKsequential_4_simple_rnn_3_simple_rnn_cell_3_biasadd_readvariableop_resourceLsequential_4_simple_rnn_3_simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *7
body/R-
+sequential_4_simple_rnn_3_while_body_166727*7
cond/R-
+sequential_4_simple_rnn_3_while_cond_166726*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Jsequential_4/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
<sequential_4/simple_rnn_3/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_4/simple_rnn_3/while:output:3Ssequential_4/simple_rnn_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0
/sequential_4/simple_rnn_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1sequential_4/simple_rnn_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_4/simple_rnn_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
)sequential_4/simple_rnn_3/strided_slice_3StridedSliceEsequential_4/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:08sequential_4/simple_rnn_3/strided_slice_3/stack:output:0:sequential_4/simple_rnn_3/strided_slice_3/stack_1:output:0:sequential_4/simple_rnn_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
*sequential_4/simple_rnn_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ä
%sequential_4/simple_rnn_3/transpose_1	TransposeEsequential_4/simple_rnn_3/TensorArrayV2Stack/TensorListStack:tensor:03sequential_4/simple_rnn_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
*sequential_4/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¿
sequential_4/dense_3/MatMulMatMul2sequential_4/simple_rnn_3/strided_slice_3:output:02sequential_4/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_4/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_4/dense_3/BiasAddBiasAdd%sequential_4/dense_3/MatMul:product:03sequential_4/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_4/dense_3/SigmoidSigmoid%sequential_4/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity sequential_4/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp,^sequential_4/dense_3/BiasAdd/ReadVariableOp+^sequential_4/dense_3/MatMul/ReadVariableOp*^sequential_4/embedding_2/embedding_lookupC^sequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpB^sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpD^sequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp ^sequential_4/simple_rnn_3/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 2Z
+sequential_4/dense_3/BiasAdd/ReadVariableOp+sequential_4/dense_3/BiasAdd/ReadVariableOp2X
*sequential_4/dense_3/MatMul/ReadVariableOp*sequential_4/dense_3/MatMul/ReadVariableOp2V
)sequential_4/embedding_2/embedding_lookup)sequential_4/embedding_2/embedding_lookup2
Bsequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOpBsequential_4/simple_rnn_3/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Asequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOpAsequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul/ReadVariableOp2
Csequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOpCsequential_4/simple_rnn_3/simple_rnn_cell_3/MatMul_1/ReadVariableOp2B
sequential_4/simple_rnn_3/whilesequential_4/simple_rnn_3/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input

¹
-__inference_simple_rnn_3_layer_call_fn_167846
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_166924o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

ê
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168376

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
§=
»
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168311

inputsB
0simple_rnn_cell_3_matmul_readvariableop_resource:?
1simple_rnn_cell_3_biasadd_readvariableop_resource:D
2simple_rnn_cell_3_matmul_1_readvariableop_resource:
identity¢(simple_rnn_cell_3/BiasAdd/ReadVariableOp¢'simple_rnn_cell_3/MatMul/ReadVariableOp¢)simple_rnn_cell_3/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
'simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMulMatMulstrided_slice_2:output:0/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
simple_rnn_cell_3/BiasAddBiasAdd"simple_rnn_cell_3/MatMul:product:00simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_3_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0
simple_rnn_cell_3/MatMul_1MatMulzeros:output:01simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_cell_3/addAddV2"simple_rnn_cell_3/BiasAdd:output:0$simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
simple_rnn_cell_3/TanhTanhsimple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ø
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_3_matmul_readvariableop_resource1simple_rnn_cell_3_biasadd_readvariableop_resource2simple_rnn_cell_3_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_168245*
condR
while_cond_168244*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:dÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
NoOpNoOp)^simple_rnn_cell_3/BiasAdd/ReadVariableOp(^simple_rnn_cell_3/MatMul/ReadVariableOp*^simple_rnn_cell_3/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : 2T
(simple_rnn_cell_3/BiasAdd/ReadVariableOp(simple_rnn_cell_3/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_3/MatMul/ReadVariableOp'simple_rnn_cell_3/MatMul/ReadVariableOp2V
)simple_rnn_cell_3/MatMul_1/ReadVariableOp)simple_rnn_cell_3/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ñ3


__inference__traced_save_168479
file_prefix5
1savev2_embedding_2_embeddings_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableopD
@savev2_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableopN
Jsavev2_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_rmsprop_embedding_2_embeddings_rms_read_readvariableop9
5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_3_bias_rms_read_readvariableopP
Lsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_kernel_rms_read_readvariableopZ
Vsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_rms_read_readvariableopN
Jsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_bias_rms_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¾

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ç	
valueÝ	BÚ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_2_embeddings_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop@savev2_simple_rnn_3_simple_rnn_cell_3_kernel_read_readvariableopJsavev2_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_read_readvariableop>savev2_simple_rnn_3_simple_rnn_cell_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_rmsprop_embedding_2_embeddings_rms_read_readvariableop5savev2_rmsprop_dense_3_kernel_rms_read_readvariableop3savev2_rmsprop_dense_3_bias_rms_read_readvariableopLsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_kernel_rms_read_readvariableopVsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_rms_read_readvariableopJsavev2_rmsprop_simple_rnn_3_simple_rnn_cell_3_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :	ô::: : : : : :::: : : : :	ô:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	ô:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$	 

_output_shapes

::$
 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	ô:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
¤	
¥
G__inference_embedding_2_layer_call_and_return_conditional_losses_167835

inputs*
embedding_lookup_167829:	ô
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
embedding_lookupResourceGatherembedding_lookup_167829Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/167829*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/167829*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
!
Ñ
while_body_167020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_3_167042_0:.
 while_simple_rnn_cell_3_167044_0:2
 while_simple_rnn_cell_3_167046_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_3_167042:,
while_simple_rnn_cell_3_167044:0
while_simple_rnn_cell_3_167046:¢/while/simple_rnn_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_3_167042_0 while_simple_rnn_cell_3_167044_0 while_simple_rnn_cell_3_167046_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166968á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_3_167042 while_simple_rnn_cell_3_167042_0"B
while_simple_rnn_cell_3_167044 while_simple_rnn_cell_3_167044_0"B
while_simple_rnn_cell_3_167046 while_simple_rnn_cell_3_167046_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
À

(__inference_dense_3_layer_call_fn_168320

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_167239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤	
¥
G__inference_embedding_2_layer_call_and_return_conditional_losses_167109

inputs*
embedding_lookup_167103:	ô
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd»
embedding_lookupResourceGatherembedding_lookup_167103Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/167103*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0¢
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/167103*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ò8
Î
simple_rnn_3_while_body_1677266
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:T
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:Y
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:R
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:W
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ç
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ê
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0å
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ñ
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_3/while/simple_rnn_cell_3/TanhTanh,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: :éèÒ¤
simple_rnn_3/while/Identity_4Identity-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0^simple_rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"Ü
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


+sequential_4_simple_rnn_3_while_cond_166726P
Lsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_loop_counterV
Rsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_maximum_iterations/
+sequential_4_simple_rnn_3_while_placeholder1
-sequential_4_simple_rnn_3_while_placeholder_11
-sequential_4_simple_rnn_3_while_placeholder_2R
Nsequential_4_simple_rnn_3_while_less_sequential_4_simple_rnn_3_strided_slice_1h
dsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_cond_166726___redundant_placeholder0h
dsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_cond_166726___redundant_placeholder1h
dsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_cond_166726___redundant_placeholder2h
dsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_cond_166726___redundant_placeholder3,
(sequential_4_simple_rnn_3_while_identity
Ê
$sequential_4/simple_rnn_3/while/LessLess+sequential_4_simple_rnn_3_while_placeholderNsequential_4_simple_rnn_3_while_less_sequential_4_simple_rnn_3_strided_slice_1*
T0*
_output_shapes
: 
(sequential_4/simple_rnn_3/while/IdentityIdentity(sequential_4/simple_rnn_3/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_4_simple_rnn_3_while_identity1sequential_4/simple_rnn_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
W
è
"__inference__traced_restore_168552
file_prefix:
'assignvariableop_embedding_2_embeddings:	ô3
!assignvariableop_1_dense_3_kernel:-
assignvariableop_2_dense_3_bias:)
assignvariableop_3_rmsprop_iter:	 *
 assignvariableop_4_rmsprop_decay: 2
(assignvariableop_5_rmsprop_learning_rate: -
#assignvariableop_6_rmsprop_momentum: (
assignvariableop_7_rmsprop_rho: J
8assignvariableop_8_simple_rnn_3_simple_rnn_cell_3_kernel:T
Bassignvariableop_9_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel:E
7assignvariableop_10_simple_rnn_3_simple_rnn_cell_3_bias:#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: I
6assignvariableop_15_rmsprop_embedding_2_embeddings_rms:	ô@
.assignvariableop_16_rmsprop_dense_3_kernel_rms::
,assignvariableop_17_rmsprop_dense_3_bias_rms:W
Eassignvariableop_18_rmsprop_simple_rnn_3_simple_rnn_cell_3_kernel_rms:a
Oassignvariableop_19_rmsprop_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_rms:Q
Cassignvariableop_20_rmsprop_simple_rnn_3_simple_rnn_cell_3_bias_rms:
identity_22¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Á

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ç	
valueÝ	BÚ	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_rmsprop_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_rmsprop_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp(assignvariableop_5_rmsprop_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_rmsprop_momentumIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_rmsprop_rhoIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_simple_rnn_3_simple_rnn_cell_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_9AssignVariableOpBassignvariableop_9_simple_rnn_3_simple_rnn_cell_3_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_10AssignVariableOp7assignvariableop_10_simple_rnn_3_simple_rnn_cell_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_15AssignVariableOp6assignvariableop_15_rmsprop_embedding_2_embeddings_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp.assignvariableop_16_rmsprop_dense_3_kernel_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_rmsprop_dense_3_bias_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_18AssignVariableOpEassignvariableop_18_rmsprop_simple_rnn_3_simple_rnn_cell_3_kernel_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:À
AssignVariableOp_19AssignVariableOpOassignvariableop_19_rmsprop_simple_rnn_3_simple_rnn_cell_3_recurrent_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_20AssignVariableOpCassignvariableop_20_rmsprop_simple_rnn_3_simple_rnn_cell_3_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
!
Ñ
while_body_166861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_simple_rnn_cell_3_166883_0:.
 while_simple_rnn_cell_3_166885_0:2
 while_simple_rnn_cell_3_166887_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_simple_rnn_cell_3_166883:,
while_simple_rnn_cell_3_166885:0
while_simple_rnn_cell_3_166887:¢/while/simple_rnn_cell_3/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¢
/while/simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_3_166883_0 while_simple_rnn_cell_3_166885_0 while_simple_rnn_cell_3_166887_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166848á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder8while/simple_rnn_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity8while/simple_rnn_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~

while/NoOpNoOp0^while/simple_rnn_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_3_166883 while_simple_rnn_cell_3_166883_0"B
while_simple_rnn_cell_3_166885 while_simple_rnn_cell_3_166885_0"B
while_simple_rnn_cell_3_166887 while_simple_rnn_cell_3_166887_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/while/simple_rnn_cell_3/StatefulPartitionedCall/while/simple_rnn_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
4

H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_166924

inputs*
simple_rnn_cell_3_166849:&
simple_rnn_cell_3_166851:*
simple_rnn_cell_3_166853:
identity¢)simple_rnn_cell_3/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskç
)simple_rnn_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_3_166849simple_rnn_cell_3_166851simple_rnn_cell_3_166853*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166848n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_3_166849simple_rnn_cell_3_166851simple_rnn_cell_3_166853*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_166861*
condR
while_cond_166860*8
output_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp*^simple_rnn_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2V
)simple_rnn_cell_3/StatefulPartitionedCall)simple_rnn_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
ª
while_cond_168028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_168028___redundant_placeholder04
0while_while_cond_168028___redundant_placeholder14
0while_while_cond_168028___redundant_placeholder24
0while_while_cond_168028___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
è

$__inference_signature_wrapper_167818
embedding_2_input
unknown:	ô
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_166800o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿd: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
+
_user_specified_nameembedding_2_input
Ú
ª
while_cond_168136
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_168136___redundant_placeholder04
0while_while_cond_168136___redundant_placeholder14
0while_while_cond_168136___redundant_placeholder24
0while_while_cond_168136___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ò8
Î
simple_rnn_3_while_body_1676056
2simple_rnn_3_while_simple_rnn_3_while_loop_counter<
8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations"
simple_rnn_3_while_placeholder$
 simple_rnn_3_while_placeholder_1$
 simple_rnn_3_while_placeholder_25
1simple_rnn_3_while_simple_rnn_3_strided_slice_1_0q
msimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0W
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:T
Fsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:Y
Gsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
simple_rnn_3_while_identity!
simple_rnn_3_while_identity_1!
simple_rnn_3_while_identity_2!
simple_rnn_3_while_identity_3!
simple_rnn_3_while_identity_43
/simple_rnn_3_while_simple_rnn_3_strided_slice_1o
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorU
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:R
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:W
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
Dsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ç
6simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_3_while_placeholderMsimple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ê
+simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMul=simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Bsimple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0å
,simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAdd5simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Csimple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0Ñ
-simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul simple_rnn_3_while_placeholder_2Dsimple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
(simple_rnn_3/while/simple_rnn_cell_3/addAddV25simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:07simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)simple_rnn_3/while/simple_rnn_cell_3/TanhTanh,simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
7simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_3_while_placeholder_1simple_rnn_3_while_placeholder-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒZ
simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/while/addAddV2simple_rnn_3_while_placeholder!simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_3/while/add_1AddV22simple_rnn_3_while_simple_rnn_3_while_loop_counter#simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_3/while/IdentityIdentitysimple_rnn_3/while/add_1:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_3/while/Identity_1Identity8simple_rnn_3_while_simple_rnn_3_while_maximum_iterations^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_3/while/Identity_2Identitysimple_rnn_3/while/add:z:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: À
simple_rnn_3/while/Identity_3IdentityGsimple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_3/while/NoOp*
T0*
_output_shapes
: :éèÒ¤
simple_rnn_3/while/Identity_4Identity-simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0^simple_rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
simple_rnn_3/while/NoOpNoOp<^simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;^simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp=^simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_3_while_identity$simple_rnn_3/while/Identity:output:0"G
simple_rnn_3_while_identity_1&simple_rnn_3/while/Identity_1:output:0"G
simple_rnn_3_while_identity_2&simple_rnn_3/while/Identity_2:output:0"G
simple_rnn_3_while_identity_3&simple_rnn_3/while/Identity_3:output:0"G
simple_rnn_3_while_identity_4&simple_rnn_3/while/Identity_4:output:0"d
/simple_rnn_3_while_simple_rnn_3_strided_slice_11simple_rnn_3_while_simple_rnn_3_strided_slice_1_0"
Dsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceFsimple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"
Esimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceGsimple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"
Csimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceEsimple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"Ü
ksimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensormsimple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2z
;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp;simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2x
:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2|
<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp<simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
èD
Ø
+sequential_4_simple_rnn_3_while_body_166727P
Lsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_loop_counterV
Rsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_maximum_iterations/
+sequential_4_simple_rnn_3_while_placeholder1
-sequential_4_simple_rnn_3_while_placeholder_11
-sequential_4_simple_rnn_3_while_placeholder_2O
Ksequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_strided_slice_1_0
sequential_4_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0d
Rsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0:a
Ssequential_4_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:f
Tsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:,
(sequential_4_simple_rnn_3_while_identity.
*sequential_4_simple_rnn_3_while_identity_1.
*sequential_4_simple_rnn_3_while_identity_2.
*sequential_4_simple_rnn_3_while_identity_3.
*sequential_4_simple_rnn_3_while_identity_4M
Isequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_strided_slice_1
sequential_4_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorb
Psequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource:_
Qsequential_4_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource:d
Rsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢Hsequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢Gsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp¢Isequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp¢
Qsequential_4/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ©
Csequential_4/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_4_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0+sequential_4_simple_rnn_3_while_placeholderZsequential_4/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0Ú
Gsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOpRsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0
8sequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMulMatMulJsequential_4/simple_rnn_3/while/TensorArrayV2Read/TensorListGetItem:item:0Osequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
Hsequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOpSsequential_4_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0
9sequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAddBiasAddBsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul:product:0Psequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
Isequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOpTsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ø
:sequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1MatMul-sequential_4_simple_rnn_3_while_placeholder_2Qsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
5sequential_4/simple_rnn_3/while/simple_rnn_cell_3/addAddV2Bsequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd:output:0Dsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
6sequential_4/simple_rnn_3/while/simple_rnn_cell_3/TanhTanh9sequential_4/simple_rnn_3/while/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
Dsequential_4/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_4_simple_rnn_3_while_placeholder_1+sequential_4_simple_rnn_3_while_placeholder:sequential_4/simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒg
%sequential_4/simple_rnn_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ª
#sequential_4/simple_rnn_3/while/addAddV2+sequential_4_simple_rnn_3_while_placeholder.sequential_4/simple_rnn_3/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_4/simple_rnn_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ï
%sequential_4/simple_rnn_3/while/add_1AddV2Lsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_loop_counter0sequential_4/simple_rnn_3/while/add_1/y:output:0*
T0*
_output_shapes
: §
(sequential_4/simple_rnn_3/while/IdentityIdentity)sequential_4/simple_rnn_3/while/add_1:z:0%^sequential_4/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: Ò
*sequential_4/simple_rnn_3/while/Identity_1IdentityRsequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_while_maximum_iterations%^sequential_4/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: §
*sequential_4/simple_rnn_3/while/Identity_2Identity'sequential_4/simple_rnn_3/while/add:z:0%^sequential_4/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: ç
*sequential_4/simple_rnn_3/while/Identity_3IdentityTsequential_4/simple_rnn_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_4/simple_rnn_3/while/NoOp*
T0*
_output_shapes
: :éèÒË
*sequential_4/simple_rnn_3/while/Identity_4Identity:sequential_4/simple_rnn_3/while/simple_rnn_cell_3/Tanh:y:0%^sequential_4/simple_rnn_3/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
$sequential_4/simple_rnn_3/while/NoOpNoOpI^sequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpH^sequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpJ^sequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_4_simple_rnn_3_while_identity1sequential_4/simple_rnn_3/while/Identity:output:0"a
*sequential_4_simple_rnn_3_while_identity_13sequential_4/simple_rnn_3/while/Identity_1:output:0"a
*sequential_4_simple_rnn_3_while_identity_23sequential_4/simple_rnn_3/while/Identity_2:output:0"a
*sequential_4_simple_rnn_3_while_identity_33sequential_4/simple_rnn_3/while/Identity_3:output:0"a
*sequential_4_simple_rnn_3_while_identity_43sequential_4/simple_rnn_3/while/Identity_4:output:0"
Isequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_strided_slice_1Ksequential_4_simple_rnn_3_while_sequential_4_simple_rnn_3_strided_slice_1_0"¨
Qsequential_4_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resourceSsequential_4_simple_rnn_3_while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"ª
Rsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resourceTsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"¦
Psequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resourceRsequential_4_simple_rnn_3_while_simple_rnn_cell_3_matmul_readvariableop_resource_0"
sequential_4_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_3_tensorarrayunstack_tensorlistfromtensorsequential_4_simple_rnn_3_while_tensorarrayv2read_tensorlistgetitem_sequential_4_simple_rnn_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2
Hsequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOpHsequential_4/simple_rnn_3/while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2
Gsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOpGsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul/ReadVariableOp2
Isequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpIsequential_4/simple_rnn_3/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¹

Ú
2__inference_simple_rnn_cell_3_layer_call_fn_168359

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0
Ú
ª
while_cond_166860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_166860___redundant_placeholder04
0while_while_cond_166860___redundant_placeholder14
0while_while_cond_166860___redundant_placeholder24
0while_while_cond_166860___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ý
è
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_166968

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
TanhTanhadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
½,
È
while_body_168245
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_simple_rnn_cell_3_matmul_readvariableop_resource_0:G
9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0:L
:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_simple_rnn_cell_3_matmul_readvariableop_resource:E
7while_simple_rnn_cell_3_biasadd_readvariableop_resource:J
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:¢.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp¢-while/simple_rnn_cell_3/MatMul/ReadVariableOp¢/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0¦
-while/simple_rnn_cell_3/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_3_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ã
while/simple_rnn_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/simple_rnn_cell_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0¾
while/simple_rnn_cell_3/BiasAddBiasAdd(while/simple_rnn_cell_3/MatMul:product:06while/simple_rnn_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0ª
 while/simple_rnn_cell_3/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_3/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
while/simple_rnn_cell_3/addAddV2(while/simple_rnn_cell_3/BiasAdd:output:0*while/simple_rnn_cell_3/MatMul_1:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
while/simple_rnn_cell_3/TanhTanhwhile/simple_rnn_cell_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder while/simple_rnn_cell_3/Tanh:y:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ}
while/Identity_4Identity while/simple_rnn_cell_3/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß

while/NoOpNoOp/^while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_3/MatMul/ReadVariableOp0^while/simple_rnn_cell_3/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_3_biasadd_readvariableop_resource9while_simple_rnn_cell_3_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_3_matmul_1_readvariableop_resource:while_simple_rnn_cell_3_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_3_matmul_readvariableop_resource8while_simple_rnn_cell_3_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :ÿÿÿÿÿÿÿÿÿ: : : : : 2`
.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp.while/simple_rnn_cell_3/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_3/MatMul/ReadVariableOp-while/simple_rnn_cell_3/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp/while/simple_rnn_cell_3/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: "ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
O
embedding_2_input:
#serving_default_embedding_2_input:0ÿÿÿÿÿÿÿÿÿd;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:p
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer

$iter
	%decay
&learning_rate
'momentum
(rho	rmsY	rmsZ	rms[	)rms\	*rms]	+rms^"
	optimizer
J
0
)1
*2
+3
4
5"
trackable_list_wrapper
J
0
)1
*2
+3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_4_layer_call_fn_167261
-__inference_sequential_4_layer_call_fn_167540
-__inference_sequential_4_layer_call_fn_167557
-__inference_sequential_4_layer_call_fn_167479À
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
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_167678
H__inference_sequential_4_layer_call_and_return_conditional_losses_167799
H__inference_sequential_4_layer_call_and_return_conditional_losses_167498
H__inference_sequential_4_layer_call_and_return_conditional_losses_167517À
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
kwonlydefaultsª 
annotationsª *
 
ÖBÓ
!__inference__wrapped_model_166800embedding_2_input"
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
annotationsª *
 
,
1serving_default"
signature_map
):'	ô2embedding_2/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_2_layer_call_fn_167825¢
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
annotationsª *
 
ñ2î
G__inference_embedding_2_layer_call_and_return_conditional_losses_167835¢
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
annotationsª *
 
è

)kernel
*recurrent_kernel
+bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;_random_generator
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_simple_rnn_3_layer_call_fn_167846
-__inference_simple_rnn_3_layer_call_fn_167857
-__inference_simple_rnn_3_layer_call_fn_167868
-__inference_simple_rnn_3_layer_call_fn_167879Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167987
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168095
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168203
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168311Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :2dense_3/kernel
:2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_3_layer_call_fn_168320¢
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
annotationsª *
 
í2ê
C__inference_dense_3_layer_call_and_return_conditional_losses_168331¢
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
annotationsª *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
7:52%simple_rnn_3/simple_rnn_cell_3/kernel
A:?2/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel
1:/2#simple_rnn_3/simple_rnn_cell_3/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÕBÒ
$__inference_signature_wrapper_167818embedding_2_input"
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
annotationsª *
 
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
5
)0
*1
+2"
trackable_list_wrapper
5
)0
*1
+2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
7	variables
8trainable_variables
9regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¬2©
2__inference_simple_rnn_cell_3_layer_call_fn_168345
2__inference_simple_rnn_cell_3_layer_call_fn_168359¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168376
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168393¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	Ptotal
	Qcount
R	variables
S	keras_api"
_tf_keras_metric
^
	Ttotal
	Ucount
V
_fn_kwargs
W	variables
X	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
P0
Q1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
T0
U1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
3:1	ô2"RMSprop/embedding_2/embeddings/rms
*:(2RMSprop/dense_3/kernel/rms
$:"2RMSprop/dense_3/bias/rms
A:?21RMSprop/simple_rnn_3/simple_rnn_cell_3/kernel/rms
K:I2;RMSprop/simple_rnn_3/simple_rnn_cell_3/recurrent_kernel/rms
;:92/RMSprop/simple_rnn_3/simple_rnn_cell_3/bias/rms
!__inference__wrapped_model_166800w)+*:¢7
0¢-
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ£
C__inference_dense_3_layer_call_and_return_conditional_losses_168331\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_3_layer_call_fn_168320O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿª
G__inference_embedding_2_layer_call_and_return_conditional_losses_167835_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 
,__inference_embedding_2_layer_call_fn_167825R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿd¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_167498s)+*B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_167517s)+*B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_167678h)+*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_167799h)+*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_167261f)+*B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_167479f)+*B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_167540[)+*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_167557[)+*7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_167818)+*O¢L
¢ 
EªB
@
embedding_2_input+(
embedding_2_inputÿÿÿÿÿÿÿÿÿd"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿÉ
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_167987})+*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168095})+*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168203m)+*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_simple_rnn_3_layer_call_and_return_conditional_losses_168311m)+*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
-__inference_simple_rnn_3_layer_call_fn_167846p)+*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
-__inference_simple_rnn_3_layer_call_fn_167857p)+*O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_simple_rnn_3_layer_call_fn_167868`)+*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_simple_rnn_3_layer_call_fn_167879`)+*?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168376·)+*\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 
M__inference_simple_rnn_cell_3_layer_call_and_return_conditional_losses_168393·)+*\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "R¢O
H¢E

0/0ÿÿÿÿÿÿÿÿÿ
$!

0/1/0ÿÿÿÿÿÿÿÿÿ
 à
2__inference_simple_rnn_cell_3_layer_call_fn_168345©)+*\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p 
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿà
2__inference_simple_rnn_cell_3_layer_call_fn_168359©)+*\¢Y
R¢O
 
inputsÿÿÿÿÿÿÿÿÿ
'¢$
"
states/0ÿÿÿÿÿÿÿÿÿ
p
ª "D¢A

0ÿÿÿÿÿÿÿÿÿ
"

1/0ÿÿÿÿÿÿÿÿÿ