
��5	/host:CPU�b����	python��"*6���)�մ��"*notTraced-nonXla" "5���������"4Џ�������"3𓲐����"/������Ȱ".�㳓��".�Ч���".�Ҟ���".؃����".������".�����".������".������".������".�����".製���".赴���".�����".������".ط����".�����".������".������".蚜���".��կ��".������".��Ѳ��".������
".�Ϛ���
".����".������".�ފ��
".�����".������".�ⱏ،".������
".ؑ֐��
".������".��ˤȈ".�߱�ȩ".�咦��".�����".ȏ˧��".Ы����".�퉩��".��۩��".������".��̫��
".����ؒ".��Ƿ��".������
".����Ȧ".�؈���".ئ����".������".���ؒ".������".������".����ؒ".�����".������".������
 ������
"  "  "7Ј������"m#؇ށ�"
 �����
"  "  "7������ى"m#�ɵ��"
 �����
"  "  "8���م���"
 ������
"*
LogicalAnd"  "*dynamic" "*[0]"
 ������
"*
LogicalAnd"  "
*output" 
"*[]"   ">�ï�����0"A��蝈���#"@�ܴ�����#"
"7��ᔊ�܇"m#�����"
 ������
"  "  "
؆��	�Q"!*div_no_nan_1/ReadVariableOp_6"*div_no_nan_1/AddN_1"   ""  "=����	��"
��"
���"*div_no_nan/ReadVariableOp_5"*div_no_nan/AddN_1"   ""  "=��؄
���"
���"*div_no_nan/ReadVariableOp"*div_no_nan/AddN"   ""  "=����
���"
��"!*div_no_nan_1/ReadVariableOp_1"*div_no_nan_1/AddN"   ""  ">���
����"
����"!*div_no_nan_2/ReadVariableOp_6"*div_no_nan_2/AddN_1"   ""  ">��������"
*,/job:localhost/replica:0/task:0/device:CPU:0"=��ԅл�"
 ������
"*OptionalHasValue_3"
*output" 
"*[]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "7�������"
 ������
"*Adam/Cast_5"
*output" "*[]"   "r#�О�"
 ������
"  "  "   "=�㗙�ӊ
"
 ������
"  "  "   "r#�í�"
 ������
"  "  "   "=������"
"
 ������
"*
Adam/Pow_3"
*output" "*[]"   "=�������"
 ������
"*OptionalHasValue_1"
*output" 
"*[]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "=�����̝"
 ������
"*Cast"
*output" 	"*[]"   "/%����н�"*Cast"
*Cast_1"   ""  "� ����"
 �¡���
"*SameWorkerRecvDone"  "*dynamic" 	"*[]"   "=�ҵ����"
"
 ���ǟ�
"*
Adam/Pow_4"
*output" "*[]"   "r#����"
 ���ǟ�
"  "  "   "=�������
"
"
 �����
"*SameWorkerRecvDone"  "*dynamic" "*[32,45056,2]"7�������"
 ������
"  "  "   "r#����"
 ���ǟ�
"  "  "   "7�������"
 ���ҟ�
"*SameWorkerRecvDone"  "*dynamic" "*[32,45056,2]"=����*��"
 ������
"  "  "   "� ���+"
 ������
"*
*output" "*
[32,45056]"   "� ���+"
 �����
"*strided_slice_1"
*output" "*
[32,45056]"   "w#����+"
 ������
"  "  "   "� ����+"
 �����
"*stft/Pad"
[32,46592]"   "� ب��+"
 ������
"*
stft/Pad_1"
[32,46592]"   "w#����+"
 �����
"  "  "   "� ����,"*gpu_host_bfc"  "
 ������
"(*$stft/stft_tf.signal.stft/frame/add_1"
*output" "
*[88,4]"   "� �̴�,"*gpu_host_bfc"  "
 ������
"**&stft/stft_tf.signal.stft_1/frame/add_1"
*output" "
*[88,4]"   "� ���,"
 ������
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "�#����,"*gpu_host_bfc"  "
 ������
"
 �̡���
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "7���,���"
 �����
"-*)stft/stft_tf.signal.stft_1/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#ȉ��."
 ������
"  "  "   "s#����."
 �̡���
"  "  "   "� ���."
 �����
"#*stft/stft_tf.signal.stft_1/rfft"
*output" "*[32,1,88,1025]"   "� ����0"
 �����
"#*stft/stft_tf.signal.stft_1/rfft"
[46159872]"   "�#����2"
 �����
"#*stft/stft_tf.signal.stft_1/rfft"
 �����
"  "  "   "� ���2"
 �����
"*strided_slice_3"
*output" "*[32,88,1024,1]"   "w#����2"
 �����
"  "  "   "� ��ީ2"
 �����
"*magnitude/Abs_1"
*output" "*[32,88,1024,1]"   "w#І��2"
 �����
"  "  "   "� ����2"
 ������
"*magnitude_to_decibel/Max_1"
 �¡���
"*magnitude_to_decibel/Max_1"
 �¡���
"*magnitude_to_decibel/Max_1"
 ������
"  "  "   "� ����2"
 ����
"%*!vq_vae/functional_1/conv2d/Conv2D"
*output" "*[32,64,44,512]"   "� ����3"
 �¡���
"%*!vq_vae/functional_1/conv2d/Conv2D"
[64,1,4,4]"   "� �ǃ�3"
 �����
"%*!vq_vae/functional_1/conv2d/Conv2D"
 �����
"%*!vq_vae/functional_1/conv2d/Conv2D"
 �¡���
"%*!vq_vae/functional_1/conv2d/Conv2D"
 �����
"%*!vq_vae/functional_1/conv2d_1/Relu"
*output" "*[32,128,22,256]"   "� ����3"
 ����
"%*!vq_vae/functional_1/conv2d_1/Relu"
 ������
"%*!vq_vae/functional_1/conv2d_1/Relu"
 ������
"%*!vq_vae/functional_1/conv2d_1/Relu"
 ����
"%*!vq_vae/functional_1/conv2d_1/Relu"
 ����
"'*#vq_vae/functional_1/conv2d_2/Conv2D"
*output" "*[32,128,22,256]"   "� ����3"
 �����
"'*#vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_2/Conv2D"
 �����
"'*#vq_vae/functional_1/conv2d_2/Conv2D"
 �����
""*vq_vae/functional_1/re_lu/Relu"
*output" "*[32,128,22,256]"   "� ����3"
 �����
"$* vq_vae/functional_1/re_lu_1/Relu"
*output" "*[32,32,22,256]"   "� ���3"
 �����
"$* vq_vae/functional_1/re_lu_1/Relu"
 �����
"$* vq_vae/functional_1/re_lu_1/Relu"
 �����
"$* vq_vae/functional_1/re_lu_1/Relu"
 �����
"$* vq_vae/functional_1/re_lu_1/Relu"
 �����
"'*#vq_vae/functional_1/conv2d_4/Conv2D"
*output" "*[32,128,22,256]"   "� ȶߌ4"
 ����
"'*#vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_4/Conv2D"
 ����
"'*#vq_vae/functional_1/conv2d_4/Conv2D"
 �����
"  "  "   "� ��ۧ4"
 �����
"$* vq_vae/functional_1/re_lu_2/Relu"
*output" "*[32,128,22,256]"   "� ����4"
 ����
"$* vq_vae/functional_1/re_lu_3/Relu"
*output" "*[32,32,22,256]"   "� 𜖯4"
 ����
"$* vq_vae/functional_1/re_lu_3/Relu"
 ����
"$* vq_vae/functional_1/re_lu_3/Relu"
 ����
"$* vq_vae/functional_1/re_lu_3/Relu"
 ����
"$* vq_vae/functional_1/re_lu_3/Relu"
 ����
"'*#vq_vae/functional_1/conv2d_6/Conv2D"
*output" "*[32,128,22,256]"   "� ঍�4"
 �����
"'*#vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"'*#vq_vae/functional_1/conv2d_6/Conv2D"
 �����
"'*#vq_vae/functional_1/conv2d_6/Conv2D"
 ����
"  "  "   "� ����4"
 ����
"%*!vq_vae/functional_3/conv2d_7/Relu"
*output" "*[32,64,11,128]"   "� ���4"
 �����
"%*!vq_vae/functional_3/conv2d_7/Relu"
 ������
"%*!vq_vae/functional_3/conv2d_7/Relu"
*[8456]"   "�#���4"
 ������
"%*!vq_vae/functional_3/conv2d_7/Relu"
 �����
"%*!vq_vae/functional_3/conv2d_7/Relu"
 �����
"'*#vq_vae/functional_3/conv2d_8/Conv2D"
*output" "*[32,128,11,128]"   "� ����4"
 ������
"'*#vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"'*#vq_vae/functional_3/conv2d_8/Conv2D"
[86114304]"   "�#���5"
 ������
"'*#vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"'*#vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"$* vq_vae/functional_3/re_lu_5/Relu"
*output" "*[32,128,11,128]"   "� ��Ȕ5"
 ������
"$* vq_vae/functional_3/re_lu_6/Relu"
*output" "*[32,32,11,128]"   "� �Σ�5"
 ������
"$* vq_vae/functional_3/re_lu_6/Relu"
 ������
"$* vq_vae/functional_3/re_lu_6/Relu"
 ������
"$* vq_vae/functional_3/re_lu_6/Relu"
 ������
"$* vq_vae/functional_3/re_lu_6/Relu"
 ������
"(*$vq_vae/functional_3/conv2d_10/Conv2D"
*output" "*[32,128,11,128]"   "� ����5"
 ������
"(*$vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"(*$vq_vae/functional_3/conv2d_10/Conv2D"
*[8456]"   "�#��͹5"
 ������
"(*$vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"(*$vq_vae/functional_3/conv2d_10/Conv2D"
 �����
"  "  "   "� ����5"
 �����
"$* vq_vae/functional_3/re_lu_7/Relu"
*output" "*[32,128,11,128]"   "� ����5"
 ������
"$* vq_vae/functional_3/re_lu_8/Relu"
*output" "*[32,32,11,128]"   "� Ȓ��5"
 �����
"$* vq_vae/functional_3/re_lu_8/Relu"
 �����
"$* vq_vae/functional_3/re_lu_8/Relu"
 �����
"$* vq_vae/functional_3/re_lu_8/Relu"
 �����
"$* vq_vae/functional_3/re_lu_8/Relu"
 �����
"(*$vq_vae/functional_3/conv2d_12/Conv2D"
*output" "*[32,128,11,128]"   "� ����5"
 �����
"(*$vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"(*$vq_vae/functional_3/conv2d_12/Conv2D"
*[8456]"   "�#����5"
 ������
"(*$vq_vae/functional_3/conv2d_12/Conv2D"
 �����
"(*$vq_vae/functional_3/conv2d_12/Conv2D"
 �����
"  "  "   "� ����5"
 �����
"*vq_vae/conv2d_23/Conv2D"
*output" "*[32,256,11,128]"   "� ؗ��5"
 �����
"*vq_vae/conv2d_23/Conv2D"
 ������
"*vq_vae/conv2d_23/Conv2D"
*[8456]"   "�#𒠋6"
 ������
"*vq_vae/conv2d_23/Conv2D"
 �����
"*vq_vae/conv2d_23/Conv2D"
 �����
"D*@vq_vae/conv2d_23/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ����6"
 ����
"*vq_vae/vector_quantizer/pow"
*output" "*[45056,256]"   "� �ߔ�6"
 ����
""*vq_vae/vector_quantizer/MatMul"
*output" "*[45056,512]"   "x#�й�6"
 �����
"  "  "   "� ��ܸ6"
 �����
"*vq_vae/vector_quantizer/Sum"
 ����
"  "  "   "� ذ��6"
 �����
"*vq_vae/vector_quantizer/add"
*output" "*[45056,512]"   "v#���6"
 �����
"  "  "   "t#����6"
 ������
"  "  "   "x#����6"
 ����
"  "  "   "� ���6"
 �����
""*vq_vae/vector_quantizer/ArgMin"
*output" 	"*[45056]"   "x#���6"
 �����
"  "  "   "� ����6"
 �����
"#*vq_vae/vector_quantizer/one_hot"
*output" "*[45056,512]"   "v#����6"
 �����
"  "  "   "� �ͨ�6"
 ����
"$* vq_vae/vector_quantizer/MatMul_1"
*output" "*[45056,256]"   "� ���6"
 ����
"G*Cvq_vae/vector_quantizer/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "x#�׬�6"
 ����
"  "  "   "� �ǂ�6"
 ����
"3*/gradient_tape/vq_vae/vector_quantizer/pow_2/mul"
*output" "*[32,256,11,128]"   "� ����6"
 �����
"!*vq_vae/vector_quantizer/pow_2"
*output" "*[32,256,11,128]"   "x#����6"
 ����
"  "  "   "� ����6"
 ����
"I*Evq_vae/vector_quantizer/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ����7"
 ������
" *vq_vae/vector_quantizer/Mean"
 ������
" *vq_vae/vector_quantizer/Mean"
*[5887]"   "�#���7"
 ������
" *vq_vae/vector_quantizer/Mean"
 �����
"  "  "   "� ����7"
 �����
"&*"vq_vae/functional_5/conv2d_13/Relu"
*output" "*[32,128,11,128]"   "� �Ł�7"
 �����
"&*"vq_vae/functional_5/conv2d_13/Relu"
 �����
"&*"vq_vae/functional_5/conv2d_13/Relu"
 �����
"&*"vq_vae/functional_5/conv2d_13/Relu"
 �����
"&*"vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,gradient_tape/vq_vae/vector_quantizer/Prod_2"
*output" "*[]"   "x#����7"
 ����
"  "  "   "� ��ɵ7"
 ������
"!*vq_vae/vector_quantizer/mul_1"
*output" "*[]"   "� ����7"
 ����
"%*!vq_vae/functional_5/re_lu_10/Relu"
*output" "*[32,128,11,128]"   "s#����7"
 ������
"  "  "   "� ����7"
 �����
"%*!vq_vae/functional_5/re_lu_11/Relu"
*output" "*[32,32,11,128]"   "� �Ȁ�7"
 �����
"%*!vq_vae/functional_5/re_lu_11/Relu"
 �����
"%*!vq_vae/functional_5/re_lu_11/Relu"
 �����
"%*!vq_vae/functional_5/re_lu_11/Relu"
 �����
"%*!vq_vae/functional_5/re_lu_11/Relu"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ���7"
 �����
"(*$vq_vae/functional_5/conv2d_15/Conv2D"
*output" "*[32,128,11,128]"   "� ����7"
 �����
"(*$vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"(*$vq_vae/functional_5/conv2d_15/Conv2D"
*[8456]"   "�#��Ȕ8"
 ������
"(*$vq_vae/functional_5/conv2d_15/Conv2D"
 �����
"(*$vq_vae/functional_5/conv2d_15/Conv2D"
 �����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ��ҡ8"
 �����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 ����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 ����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 �����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 ����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 �����
".**vq_vae/conv2d_transpose_3/conv2d_transpose"
 �����
"%*!vq_vae/functional_5/re_lu_12/Relu"
*output" "*[32,128,11,128]"   "� Ȏ��9"
 �����
"%*!vq_vae/functional_5/re_lu_13/Relu"
*output" "*[32,32,11,128]"   "� л�9"
 �����
"%*!vq_vae/functional_5/re_lu_13/Relu"
 ������
"%*!vq_vae/functional_5/re_lu_13/Relu"
 ������
"%*!vq_vae/functional_5/re_lu_13/Relu"
 �����
"%*!vq_vae/functional_5/re_lu_13/Relu"
 �����
"(*$vq_vae/functional_5/conv2d_17/Conv2D"
*output" "*[32,128,11,128]"   "� ��Ƞ9"
3��?" ����" ��	" ��	"
 �����
"(*$vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"(*$vq_vae/functional_5/conv2d_17/Conv2D"
*[8456]"   "�#��ñ9"
3��?" ����" �B" �D"
 ������
"(*$vq_vae/functional_5/conv2d_17/Conv2D"
 �����
"(*$vq_vae/functional_5/conv2d_17/Conv2D"
 �����
"  "  "   "� ��9"
 ����
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ���9"
 ������
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 �����
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 �����
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ����
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 �����
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"9*5vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
\ñӤ?" ����" ����" ����"
 �����
"*vq_vae/concatenate/concat"
*output" "*[32,384,22,256]"   "x#����:"
 �����
"  "  "   "� ���:"
\ñӤ?" ����" ���X" ���X"
 ����
"*vq_vae/conv2d_24/Conv2D"
*output" "*[32,256,22,256]"   "� Пޝ:"
 ������
"*vq_vae/conv2d_24/Conv2D"
\ñӤ?" ����" ��" ��"
 ������
"*vq_vae/conv2d_24/Conv2D"
 �����
"D*@vq_vae/conv2d_24/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ؆��:"
 �����
"!*vq_vae/vector_quantizer_1/pow"
*output" "*[180224,256]"   "� ����:"
 ����
"$* vq_vae/vector_quantizer_1/MatMul"
*output" "*[180224,512]"   "x#����:"
 �����
"  "  "   "� ���:"
 ������
"!*vq_vae/vector_quantizer_1/Sum"
 �����
"  "  "   "� ഓ�:"
 ��΀�
"!*vq_vae/vector_quantizer_1/add"
*output" "*[180224,512]"   "v#����:"
 ������
"  "  "   "t#����:"
 ������
"  "  "   "z#����:"
 ����
"  "  "   "� �ȯ�:"
 ������
"$* vq_vae/vector_quantizer_1/ArgMin"
*output" 	"*[180224]"   "z#����:"
 ��΀�
"  "  "   "� ����:"
 �����
"%*!vq_vae/vector_quantizer_1/one_hot"
*output" "*[180224,512]"   "v#����:"
 ������
"  "  "   "� ����:"
 �����
"&*"vq_vae/vector_quantizer_1/MatMul_1"
*output" "*[180224,256]"   "� ��Æ;"
 �����
"I*Evq_vae/vector_quantizer_1/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "x#����;"
 �����
"  "  "   "� �̈�;"
 �����
"5*1gradient_tape/vq_vae/vector_quantizer_1/pow_2/mul"
*output" "*[32,256,22,256]"   "� �ъ�;"
 ��΀�
"#*vq_vae/vector_quantizer_1/pow_2"
*output" "*[32,256,22,256]"   "x#��ʙ;"
 �����
"  "  "   "� ����;"
 �����
"K*Gvq_vae/vector_quantizer_1/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ���;"
 ������
""*vq_vae/vector_quantizer_1/Mean"
 ������
""*vq_vae/vector_quantizer_1/Mean"
*[5887]"   "�#����;"
 ������
""*vq_vae/vector_quantizer_1/Mean"
 ��΀�
"  "  "   "� ����;"
" �ڤ�"l����?" ����" ����" ����"
 ��΀�
"*vq_vae/concatenate_1/concat"
*output" "*[32,512,22,256]"   "x#����;"
 ����
"  "  "   "x#���;"
 ����
"  "  "   "� ��ĸ;"*gpu_host_bfc"  "
 ������
"2*.gradient_tape/vq_vae/vector_quantizer_1/Prod_2"
*output" "*[]"   "x#����;"
 �����
"  "  "   "� ���;"
 ������
"#*vq_vae/vector_quantizer_1/mul_1"
*output" "*[]"   "� ����;"
 �����
"&*"vq_vae/functional_7/conv2d_18/Relu"
*output" "*[32,128,22,256]"   "� �ȍ�;"
 ������
"&*"vq_vae/functional_7/conv2d_18/Relu"
 �����
"&*"vq_vae/functional_7/conv2d_18/Relu"
 �����
"&*"vq_vae/functional_7/conv2d_18/Relu"
 ������
"&*"vq_vae/functional_7/conv2d_18/Relu"
 ������
"  "  "   "s#����;"
 ������
"  "  "   "� �֡�;"
 �򸢀�
"%*!vq_vae/functional_7/re_lu_14/Relu"
*output" "*[32,128,22,256]"   "� ���;"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �닋<"
 �����
"%*!vq_vae/functional_7/re_lu_15/Relu"
*output" "*[32,32,22,256]"   "� �퇍<"
 �����
"%*!vq_vae/functional_7/re_lu_15/Relu"
 ������
"%*!vq_vae/functional_7/re_lu_15/Relu"
 ������
"%*!vq_vae/functional_7/re_lu_15/Relu"
 �����
"%*!vq_vae/functional_7/re_lu_15/Relu"
 �����
"(*$vq_vae/functional_7/conv2d_20/Conv2D"
*output" "*[32,128,22,256]"   "� ��ή<"
 �����
"(*$vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"(*$vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"(*$vq_vae/functional_7/conv2d_20/Conv2D"
 �����
"(*$vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����<"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����<"
 ����
"%*!vq_vae/functional_7/re_lu_16/Relu"
*output" "*[32,128,22,256]"   "� ����<"
" �ڤ�"9ӄ�'c�?" ����" ���" ���"
 �����
"%*!vq_vae/functional_7/re_lu_17/Relu"
*output" "*[32,32,22,256]"   "� ����<"
" �ڛ�"L泗�`�?" ����" ��	" ��	"
 �����
"%*!vq_vae/functional_7/re_lu_17/Relu"
" �؂�"�x�(4Z�?" ����" ��" ��"
 ������
"%*!vq_vae/functional_7/re_lu_17/Relu"
" �ڛ�"L泗�`�?" ����" ��" ��"
 ������
"%*!vq_vae/functional_7/re_lu_17/Relu"
" �ڤ�"9ӄ�'c�?" ����" ��	" ��	"
 �����
"%*!vq_vae/functional_7/re_lu_17/Relu"
" �ڤ�"Y���.
 �����
"(*$vq_vae/functional_7/conv2d_22/Conv2D"
*output" "*[32,128,22,256]"   "� ����="
" �ڛ�"�x9U�?" ����" ��	" ��	"
 �����
"(*$vq_vae/functional_7/conv2d_22/Conv2D"
" ����"�C����?" ����" ��" ��"
 ������
"(*$vq_vae/functional_7/conv2d_22/Conv2D"
" �ڛ�"�x9U�?" ����" ��" ��"
 ������
"(*$vq_vae/functional_7/conv2d_22/Conv2D"
" �ڤ�"Y���.
 �����
"(*$vq_vae/functional_7/conv2d_22/Conv2D"
" �ڤ�"9ӄ�'c�?" ����" ���," ���,"
 �����
"  "  "   "� ��ˤ="
 �����
";*7vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
*output" "*[32,64,44,512]"   "� ����="
 ������
";*7vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
 �����
";*7vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" �ڄ�"�1��}ؤ?" ����" ���X" ����"
 �����
";*7vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" �ڤ�"i���?" ����" �� " �� "
 ������
";*7vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ���"H�q.#�?" ����" ���" ���"
 ������
";*7vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
*output" "*[32,1,88,1024]"   "� Ȼ��="
" ���"3܀�#�?" ����" � " �<"
 ������
";*7vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
[64,1,4,4]"   "� Ч��="
" ����"S�q�d�?" ����" ���" ���"
 �����
";*7vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ���"3܀�#�?" ����" ���" ���"
 ������
";*7vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ���"H�q.#�?" ����" � " �<"
 ������
";*7vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" �ڤ�"�+���d�?" ����" ���" ���"
 ������
"*gradient_tape/pow_1/mul"
*output" "*[32,1,88,1024]"   "� ���>"
" �ؤ�"�+���d�?" ����" " �"
 ������
"*Mean"
" ����"S�q�d�?" ����" �-" �<"
 ������
"*Mean"
*[5887]"   "�#���>"
" �ؤ�"�+���d�?" ����" �-" �<"
 ������
"*Mean"
 ������
"*gradient_tape/Prod"
*output" "*[]"   "x#ȡ֝>"
" ���"H�q.#�?" ����" ���" ���"
 �����
"  "  "   "s#����>"
" ���"H�q.#�?" ����" " �"
 ������
"  "  "   "� ����>"
" �ڤ�"�+���d�?" ����" ���" ���"
 �����
"*gradient_tape/Pow/mul"
*output" "*[32,1,88,1024]"   "� �ԛ�>"
" ���"�������?" ����" ���" ���"
 ������
"	*mul_3"
*output" "*[32,1,88,1024]"   "� ����>"
" �ڤ�",�����?" ����" ���" ���"
 �����
"	*mul_4"
*output" "*[32,1,88,1024]"   "� ���>"
" �ؤ�"�N�X��?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����>"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ���>"
 ������
"*Complex"
*output" "*[32,1,88,1024]"   "x#����>"
" ���"�cr�%�?" ����" ���" ���"
 ������
"  "  "   "x#����>"
" �ؤ�"�N�X��?" ����" ���" ���"
 �����
"  "  "   "� ���>"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� Дʈ?"
 ������
"7*3inverse_stft/inverse_stft_tf.signal.istft/irfft/Pad"
" ����"@1�d��?" ����" ���" ���"
 ������
"  "  "   "� ����?"
 ������
"3*/inverse_stft/inverse_stft_tf.signal.istft/irfft"
*output" "*[32,1,88,2048]"   "� ����@"
 ������
"3*/inverse_stft/inverse_stft_tf.signal.istft/irfft"
[46159872]"   "�#����@"
 ������
"3*/inverse_stft/inverse_stft_tf.signal.istft/irfft"
" �ؤ�"�N�X��?" ����" ���" ���"
 ������
"  "  "   "� �ݗ�A"
" ����"�`�%��?" ����" �" �<"
 ������
"F*Bgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/ones"
*output" "
*[1023]"   "� ��ݠA"
" ����"�l���?" ����" � " �""
 ������
"H*Dgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/concat"
*output" "
*[1025]"   "t#��ëA"
" ����"�����?" ����" �" �<"
 ������
"  "  "   "� ����A"
 ������
"A*=inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Pad"
" ���"g
Bfԡ?" ����" ���" ���"
 ������
"  "  "   "� ����A"
 �����
"G*Cinverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose"
*output" "*[32,1,4,92,512]"   "x#����A"
" ���"g
Bfԡ?" ����" ���" ���"
 ������
"  "  "   "� ����A"
 ������
"M*Iinverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3"
*output" "*[32,1,364,512]"   "x#����A"
 �����
"  "  "   "� ����A"*gpu_host_bfc"  "
 ������
"S*Ogradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Shape_1"
*output" "*[5]"   "� �Ũ�A"
 �����
"A*=inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Sum"
[32,46592]"   "x#����A"
" ����"�"Ъ��?" ����" ���" ���"
 ������
"  "  "   "� В��A"
" ����"�"Ъ��?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   "� ����B"
" ��ح"��Z?��?" ����" ���" ���"
 ������
"*strided_slice_4"
*output" "*[32,45056,1]"   "x#����B"
" ��İ"��0� �?" ����" ���" ���"
 �����
"  "  "   "x#��ȖB"
" ����"�7�ݙd�?" ����" ���" ���"
 ������
"  "  "   "� ���B"
" ��İ"��0� �?" ����" ���" ���"
 ������
"*gradient_tape/pow_2/Pow"
*output" "*[32,45056,1]"   "s#����B"
" ��İ"��0� �?" ����" " �"
 ������
"  "  "   "� �얫B"*gpu_host_bfc"  "
 ������
"*Size"
*output" "*[]"   "� ����B"
" ���"F�6���?" ����" ���" ���"
 ������
"
*output" "*[32,45056,1]"   "� ��˷B"
" ���"���ۂ��?" ����" " �"
 ������
"*gradient_tape/add_3/Sum"
" ���"���d��?" ����" �-" �<"
 ������
"*gradient_tape/add_3/Sum"
*[5887]"   "�#����B"
" ���"���ۂ��?" ����" �-" �<"
 ������
"*gradient_tape/add_3/Sum"
" ���"���ۂ��?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ؄��B"
" ���"���ۂ��?" ����" " �"
 ������
"*Sum"
" ���"W��Ma��?" ����" �-" �<"
 ������
"*Sum"
*[5887]"   "�#୪�B"
" ���"���ۂ��?" ����" �-" �<"
 ������
"*Sum"
" ��İ"D�2v�?" ����" ���" ���"
 ������
"  "  "   "s#����B"
" ��İ"��0� �?" ����" " �"
 ������
"  "  "   "� ����B"
" ��İ"D�2v�?" ����" " �"
 ������
"5*1gradient_tape/vq_vae/vector_quantizer/mul_1/Mul_1"
*output" "*[]"   "� Ц��B"
 �����
".**gradient_tape/vq_vae/vector_quantizer/Tile"
*output" "*[32,11,128,256]"   "� ����B"
 �����
"0*,gradient_tape/vq_vae/vector_quantizer_1/Tile"
*output" "*[32,22,256,256]"   "� ����B"
 ��ւ�
"*gradient_tape/Tile"
*output" "*[32,88,1024,1]"   "s#����B"
 ������
"  "  "   "x#����B"
 ������
"  "  "   "� ����C"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����C"
 ���ۂ�
"0*,gradient_tape/vq_vae/vector_quantizer/Tile_1"
*output" "*[32,11,128,256]"   "� ��ǖC"
 �����
"2*.gradient_tape/vq_vae/vector_quantizer_1/Tile_1"
*output" "*[32,22,256,256]"   "s#���C"
 ������
"  "  "   "� ȂڞC"
 ���Ƀ�
"2*.gradient_tape/strided_slice_4/StridedSliceGrad"
*output" "*[32,46592,1]"   "x#���C"
 ������
"  "  "   "� ���C"
 ������
"l*hgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_4/StridedSliceGrad"
*output" "*[32,1,46592]"   "x#����C"
 ���Ƀ�
"  "  "   ">���C����"
 ���ݟ�
"5*1replica_1/stft/stft_tf.signal.stft/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#���C"
 ���͟�
"  "  "   "s#��ҽC"
 ���ǟ�
"  "  "   "� ����C"
 �����
"+*'replica_1/stft/stft_tf.signal.stft/rfft"
*output" "*[32,1,88,1025]"   "� ����F"
 �����
"+*'replica_1/stft/stft_tf.signal.stft/rfft"
[46159872]"   "�#؟��F"
 �����
"+*'replica_1/stft/stft_tf.signal.stft/rfft"
 ���ݟ�
"  "  "   "� ��F"
 ���ݟ�
"*replica_1/strided_slice_2"
*output" "*[32,88,1024,1]"   "w#����F"
 �����
"  "  "   "� ����F"
 ���͟�
"*replica_1/magnitude/Abs"
*output" "*[32,88,1024,1]"   "� ����F"
 �����
"*replica_1/phase/Angle"
*output" "*[32,88,1024,1]"   "w#����F"
 ���ݟ�
"  "  "   "� ����F"
 ���ݟ�
"*
*output" "*[32,88,1024,1]"   "� ���G"
 ���ǟ�
"&*"replica_1/magnitude_to_decibel/Max"
 ���ǟ�
"&*"replica_1/magnitude_to_decibel/Max"
 ���ǟ�
"&*"replica_1/magnitude_to_decibel/Max"
 ���ǟ�
"  "  "   ">��ũG�둻"
 �����
"7*3replica_1/stft/stft_tf.signal.stft_1/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#����G"
 ���۟�
"  "  "   "s#����G"
 ���ǟ�
"  "  "   "� ���G"
 ������
"-*)replica_1/stft/stft_tf.signal.stft_1/rfft"
*output" "*[32,1,88,1025]"   "� ����H"
 �ԭ���
"-*)replica_1/stft/stft_tf.signal.stft_1/rfft"
[46159872]"   "�#���I"
 �ԭ���
"-*)replica_1/stft/stft_tf.signal.stft_1/rfft"
 �����
"  "  "   "� ����I"
 �����
"*replica_1/strided_slice_3"
*output" "*[32,88,1024,1]"   "w#����I"
 ������
"  "  "   "� ��؍I"
 �����
"*replica_1/magnitude/Abs_1"
*output" "*[32,88,1024,1]"   "w#����I"
 �����
"  "  "   "� ���I"
 ���ǟ�
"(*$replica_1/magnitude_to_decibel/Max_1"
 ���ǟ�
"(*$replica_1/magnitude_to_decibel/Max_1"
 ���ǟ�
"(*$replica_1/magnitude_to_decibel/Max_1"
 ���ǟ�
"  "  "   "� ؓ��I"
 �����
"/*+replica_1/vq_vae/functional_1/conv2d/Conv2D"
*output" "*[32,64,44,512]"   "� ��I"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d/Conv2D"
[64,1,4,4]"   "� Т��I"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d/Conv2D"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d/Conv2D"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d/Conv2D"
 ���Ơ�
"/*+replica_1/vq_vae/functional_1/conv2d_1/Relu"
*output" "*[32,128,22,256]"   "� ����I"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d_1/Relu"
 ���؟�
"/*+replica_1/vq_vae/functional_1/conv2d_1/Relu"
 ���؟�
"/*+replica_1/vq_vae/functional_1/conv2d_1/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_1/conv2d_1/Relu"
 �����
"1*-replica_1/vq_vae/functional_1/conv2d_2/Conv2D"
*output" "*[32,128,22,256]"   "� ���I"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_1/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_1/vq_vae/functional_1/conv2d_2/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
",*(replica_1/vq_vae/functional_1/re_lu/Relu"
*output" "*[32,128,22,256]"   "� 𢄜J"
 ���ʡ�
".**replica_1/vq_vae/functional_1/re_lu_1/Relu"
*output" "*[32,32,22,256]"   "� �Ό�J"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_1/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_1/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_1/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_1/Relu"
 ���ա�
"1*-replica_1/vq_vae/functional_1/conv2d_4/Conv2D"
*output" "*[32,128,22,256]"   "� ����J"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_4/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_4/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_4/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_4/Conv2D"
 ���ա�
"  "  "   "� ����J"
 ���ա�
".**replica_1/vq_vae/functional_1/re_lu_2/Relu"
*output" "*[32,128,22,256]"   "� ���J"
 ������
".**replica_1/vq_vae/functional_1/re_lu_3/Relu"
*output" "*[32,32,22,256]"   "� ة��J"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_3/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_3/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_3/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_1/re_lu_3/Relu"
 ������
"1*-replica_1/vq_vae/functional_1/conv2d_6/Conv2D"
*output" "*[32,128,22,256]"   "� ����J"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_6/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_6/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_6/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"  "  "   "� ����K"
 ���؟�
"/*+replica_1/vq_vae/functional_3/conv2d_7/Relu"
*output" "*[32,64,11,128]"   "� �ɼ�K"
 ���ǟ�
"/*+replica_1/vq_vae/functional_3/conv2d_7/Relu"
 ������
"/*+replica_1/vq_vae/functional_3/conv2d_7/Relu"
*[8456]"   "�#����K"
 ������
"/*+replica_1/vq_vae/functional_3/conv2d_7/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_3/conv2d_7/Relu"
 ������
"1*-replica_1/vq_vae/functional_3/conv2d_8/Conv2D"
*output" "*[32,128,11,128]"   "� ���K"
 ���ǟ�
"1*-replica_1/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"1*-replica_1/vq_vae/functional_3/conv2d_8/Conv2D"
[86114304]"   "�#����K"
 ������
"1*-replica_1/vq_vae/functional_3/conv2d_8/Conv2D"
 ���ǟ�
"1*-replica_1/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
".**replica_1/vq_vae/functional_3/re_lu_5/Relu"
*output" "*[32,128,11,128]"   "� ����K"
 ������
".**replica_1/vq_vae/functional_3/re_lu_6/Relu"
*output" "*[32,32,11,128]"   "� �系K"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_6/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_6/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_6/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_6/Relu"
 ������
"2*.replica_1/vq_vae/functional_3/conv2d_10/Conv2D"
*output" "*[32,128,11,128]"   "� ����K"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_10/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_10/Conv2D"
*[8456]"   "�#����K"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_10/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"  "  "   "� ț��K"
 ������
".**replica_1/vq_vae/functional_3/re_lu_7/Relu"
*output" "*[32,128,11,128]"   "� ����K"
 ������
".**replica_1/vq_vae/functional_3/re_lu_8/Relu"
*output" "*[32,32,11,128]"   "� �ð�K"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_8/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_8/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_8/Relu"
 ���ǟ�
".**replica_1/vq_vae/functional_3/re_lu_8/Relu"
 ��첢�
"2*.replica_1/vq_vae/functional_3/conv2d_12/Conv2D"
*output" "*[32,128,11,128]"   "� ���L"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_12/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_12/Conv2D"
*[8456]"   "�#؀��L"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_12/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_3/conv2d_12/Conv2D"
 ��첢�
"  "  "   "� ���L"
 ��첢�
"%*!replica_1/vq_vae/conv2d_23/Conv2D"
*output" "*[32,256,11,128]"   "� ���L"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_23/Conv2D"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_23/Conv2D"
*[8456]"   "�#Ȣ�L"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_23/Conv2D"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_23/Conv2D"
 ���Ȣ�
"N*Jreplica_1/vq_vae/conv2d_23/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� �οL"
 ���ޢ�
")*%replica_1/vq_vae/vector_quantizer/pow"
*output" "*[45056,256]"   "� ����L"
 ������
",*(replica_1/vq_vae/vector_quantizer/MatMul"
*output" "*[45056,512]"   "x#����L"
 ���Ȣ�
"  "  "   "� ����L"
 ���ǟ�
")*%replica_1/vq_vae/vector_quantizer/Sum"
 ���ޢ�
"  "  "   "� �ځ�L"
 ���Ȣ�
")*%replica_1/vq_vae/vector_quantizer/add"
*output" "*[45056,512]"   "v#����L"
 ���ǟ�
"  "  "   "t#����L"
 ���ǟ�
"  "  "   "x#����L"
 ������
"  "  "   "� ����L"
 ���ǟ�
",*(replica_1/vq_vae/vector_quantizer/ArgMin"
*output" 	"*[45056]"   "x#����L"
 ���Ȣ�
"  "  "   "� ����L"
 ���Ȣ�
"-*)replica_1/vq_vae/vector_quantizer/one_hot"
*output" "*[45056,512]"   "v#����L"
 ���ǟ�
"  "  "   "� �̤�L"
 ������
".**replica_1/vq_vae/vector_quantizer/MatMul_1"
*output" "*[45056,256]"   "� ���L"
 ��슣�
"Q*Mreplica_1/vq_vae/vector_quantizer/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "x#����L"
 ������
"  "  "   "� ����L"
 ������
"=*9gradient_tape/replica_1/vq_vae/vector_quantizer/pow_2/mul"
*output" "*[32,256,11,128]"   "� �Ϻ�M"
 ��젣�
"+*'replica_1/vq_vae/vector_quantizer/pow_2"
*output" "*[32,256,11,128]"   "x#����M"
 ��슣�
"  "  "   "� ����M"
 ��슣�
"S*Oreplica_1/vq_vae/vector_quantizer/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ��ÐM"
 ���ǟ�
"**&replica_1/vq_vae/vector_quantizer/Mean"
 ���ǟ�
"**&replica_1/vq_vae/vector_quantizer/Mean"
*[5887]"   "�#����M"
 ���ǟ�
"**&replica_1/vq_vae/vector_quantizer/Mean"
 ��젣�
"  "  "   "� Ȑ��M"
 ��젣�
"0*,replica_1/vq_vae/functional_5/conv2d_13/Relu"
*output" "*[32,128,11,128]"   "� �җ�M"
 ��쫣�
"0*,replica_1/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_1/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_1/vq_vae/functional_5/conv2d_13/Relu"
 ��쫣�
"0*,replica_1/vq_vae/functional_5/conv2d_13/Relu"
 ������
":*6gradient_tape/replica_1/vq_vae/vector_quantizer/Prod_2"
*output" "*[]"   "x#��ӼM"
 ��슣�
"  "  "   "� ����M"
 ���ǟ�
"+*'replica_1/vq_vae/vector_quantizer/mul_1"
*output" "*[]"   "� ���M"
 ��슣�
"/*+replica_1/vq_vae/functional_5/re_lu_10/Relu"
*output" "*[32,128,11,128]"   "s#����M"
 ���ǟ�
"  "  "   "� ����M"
 ��앣�
"/*+replica_1/vq_vae/functional_5/re_lu_11/Relu"
*output" "*[32,32,11,128]"   "� ����M"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_11/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_11/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_11/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_11/Relu"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� Л��N"
 ��쫣�
"2*.replica_1/vq_vae/functional_5/conv2d_15/Conv2D"
*output" "*[32,128,11,128]"   "� ����N"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_15/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_15/Conv2D"
*[8456]"   "�#��ӚN"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_15/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_15/Conv2D"
 ��춣�
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ��N"
 ��̘��
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ��쎤�
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 �����
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ��춣�
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 �����
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ��̘��
"8*4replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ��춣�
"/*+replica_1/vq_vae/functional_5/re_lu_12/Relu"
*output" "*[32,128,11,128]"   "� �⒃O"
 ��̘��
"/*+replica_1/vq_vae/functional_5/re_lu_13/Relu"
*output" "*[32,32,11,128]"   "� ��߄O"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_13/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_13/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_13/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_5/re_lu_13/Relu"
 ������
"2*.replica_1/vq_vae/functional_5/conv2d_17/Conv2D"
*output" "*[32,128,11,128]"   "� ���O"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_17/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_17/Conv2D"
*[8456]"   "�#�駫O"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_17/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"  "  "   "� �ʪ�O"
 �����
"C*?replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ����O"
 ������
"C*?replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ��쾥�
"C*?replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 �����
"C*?replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ��얦�
"'*#replica_1/vq_vae/concatenate/concat"
*output" "*[32,384,22,256]"   "x#����O"
 ��쾥�
"  "  "   "� ����O"
 �����
"%*!replica_1/vq_vae/conv2d_24/Conv2D"
*output" "*[32,256,22,256]"   "� ����O"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_24/Conv2D"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_24/Conv2D"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_24/Conv2D"
 ���ǟ�
"%*!replica_1/vq_vae/conv2d_24/Conv2D"
 ��쾥�
"N*Jreplica_1/vq_vae/conv2d_24/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ����P"
 ��욧�
"+*'replica_1/vq_vae/vector_quantizer_1/pow"
*output" "*[180224,256]"   "� ؀֝P"
 �����
".**replica_1/vq_vae/vector_quantizer_1/MatMul"
*output" "*[180224,512]"   "x#����P"
 ��쾥�
"  "  "   "� �І�P"
 ���ǟ�
"+*'replica_1/vq_vae/vector_quantizer_1/Sum"
 ��욧�
"  "  "   "� ����P"
 ��좩�
"+*'replica_1/vq_vae/vector_quantizer_1/add"
*output" "*[180224,512]"   "v#����P"
 ���ǟ�
"  "  "   "t#��ֵP"
 ���ǟ�
"  "  "   "z#�뷹P"
 �����
"  "  "   "� �ڒ�P"
 ������
".**replica_1/vq_vae/vector_quantizer_1/ArgMin"
*output" 	"*[180224]"   "z#�륿P"
 ��좩�
"  "  "   "� ؾ��P"
 ��욧�
"/*+replica_1/vq_vae/vector_quantizer_1/one_hot"
*output" "*[180224,512]"   "v#����P"
$�ĥ?" ���" ��X" ��X"
 ������
"  "  "   "� �ƹ�P"
 ��쾥�
"0*,replica_1/vq_vae/vector_quantizer_1/MatMul_1"
*output" "*[180224,256]"   "� Ћ��P"
 ���ʨ�
"S*Oreplica_1/vq_vae/vector_quantizer_1/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "x#�՚�P"
 ��쾥�
"  "  "   "� 蛶�P"
 ��쾥�
"?*;gradient_tape/replica_1/vq_vae/vector_quantizer_1/pow_2/mul"
*output" "*[32,256,22,256]"   "� ���P"
 ��좩�
"-*)replica_1/vq_vae/vector_quantizer_1/pow_2"
*output" "*[32,256,22,256]"   "x#�֡�P"
 ���ʨ�
"  "  "   "� ����P"
 ���ʨ�
"U*Qreplica_1/vq_vae/vector_quantizer_1/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ����P"
 ���ǟ�
",*(replica_1/vq_vae/vector_quantizer_1/Mean"
 ���ǟ�
",*(replica_1/vq_vae/vector_quantizer_1/Mean"
*[5887]"   "�#����P"
 ���ǟ�
",*(replica_1/vq_vae/vector_quantizer_1/Mean"
 ��좩�
"  "  "   "� ����P"
" ����"j�}��(�?" ���" ����" ����"
 ��좩�
")*%replica_1/vq_vae/concatenate_1/concat"
*output" "*[32,512,22,256]"   "x#Ѐ��P"
 ��쎤�
"  "  "   "x#����P"
 �����
"  "  "   "� �߮�Q"*gpu_host_bfc"  "
 �Ȇ���
"<*8gradient_tape/replica_1/vq_vae/vector_quantizer_1/Prod_2"
*output" "*[]"   "x#��Q"
 ���ʨ�
"  "  "   "� ���Q"
 ���ǟ�
"-*)replica_1/vq_vae/vector_quantizer_1/mul_1"
*output" "*[]"   "� ��Q"
 ���ʨ�
"0*,replica_1/vq_vae/functional_7/conv2d_18/Relu"
*output" "*[32,128,22,256]"   "� ػ��Q"
 ������
"0*,replica_1/vq_vae/functional_7/conv2d_18/Relu"
 ���Ҫ�
"0*,replica_1/vq_vae/functional_7/conv2d_18/Relu"
 ���Ҫ�
"0*,replica_1/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_1/vq_vae/functional_7/conv2d_18/Relu"
 ���ǟ�
"  "  "   "s#��®Q"
 ���ǟ�
"  "  "   "� ��ѱQ"
 ������
"/*+replica_1/vq_vae/functional_7/re_lu_14/Relu"
*output" "*[32,128,22,256]"   "� ����Q"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����Q"
 ������
"/*+replica_1/vq_vae/functional_7/re_lu_15/Relu"
*output" "*[32,32,22,256]"   "� ����Q"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_15/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_15/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_15/Relu"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_15/Relu"
 ���̣�
"2*.replica_1/vq_vae/functional_7/conv2d_20/Conv2D"
*output" "*[32,128,22,256]"   "� ����Q"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_20/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_20/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_20/Conv2D"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_20/Conv2D"
 �̆���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �귙R"*gpu_host_bfc"  "
 �І���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �璤R"
" ���".���ݥ?" ���" ���," ���,"
 ������
"/*+replica_1/vq_vae/functional_7/re_lu_16/Relu"
*output" "*[32,128,22,256]"   "� ��ϪR"
" ���"0.Ui�k�?" ���" ���" ���"
 ��줤�
"/*+replica_1/vq_vae/functional_7/re_lu_17/Relu"
*output" "*[32,32,22,256]"   "� ����R"
" ����"���n/i�?" ���" ��	" ��	"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_17/Relu"
" ��Ǘ"��̤�b�?" ���" ��" ��"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_17/Relu"
" ����"���n/i�?" ���" ��" ��"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_17/Relu"
" ���"0.Ui�k�?" ���" ��	" ��	"
 ���ǟ�
"/*+replica_1/vq_vae/functional_7/re_lu_17/Relu"
" ����"���m�?" ���" ���," ���,"
 ��쯤�
"2*.replica_1/vq_vae/functional_7/conv2d_22/Conv2D"
*output" "*[32,128,22,256]"   "� ����R"
" ����"�����?" ���" ��	" ��	"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"���ns�?" ���" ��" ��"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"�����?" ���" ��" ��"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"���m�?" ���" ��	" ��	"
 ���ǟ�
"2*.replica_1/vq_vae/functional_7/conv2d_22/Conv2D"
" ���"0.Ui�k�?" ���" ���," ���,"
 ��쯤�
"  "  "   "� ����R"
 ��쯤�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
*output" "*[32,64,44,512]"   "� ����R"
 ���ǟ�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
 ���Ҫ�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ����"��鲘ؤ?" ���" ���X" ����"
 ��쯤�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ���",�e|��?" ���" �� " ��?"
 ���ǟ�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" �٩�"�T"?�+�?" ���" ���" ���"
 ������
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
*output" "*[32,1,88,1024]"   "� ȳ��S"
" ����"	�*x�+�?" ���" � " � "
 ���ǟ�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
[64,1,4,4]"   "� ���S"
" ���"�\/�Wm�?" ���" ���" ���"
 ��쯤�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ����"	�*x�+�?" ���" ���" ���"
 ������
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" �٩�"�T"?�+�?" ���" � " � "
 ���ǟ�
"E*Areplica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ���"��&�hm�?" ���" ���" ���"
 ������
"%*!gradient_tape/replica_1/pow_1/mul"
*output" "*[32,1,88,1024]"   "� ����S"
" ���"��&�hm�?" ���" " �"
 ���ǟ�
"*replica_1/Mean"
" ���"�b4�Mm�?" ���" �-" �."
 ���ǟ�
"*replica_1/Mean"
*[5887]"   "�#���S"
" ���"��&�hm�?" ���" �-" �."
 ���ǟ�
"*replica_1/Mean"
 �҆���
" *gradient_tape/replica_1/Prod"
*output" "*[]"   "x#����S"
" �ש�"�T"?�+�?" ���" ���" ���"
 ���͟�
"  "  "   "s#����S"
" �٩�"�T"?�+�?" ���" " �"
 ���ǟ�
"  "  "   "� ����S"
" ���"��&�hm�?" ���" ���" ���"
 ���͟�
"*replica_1/Sqrt"
*output" "*[32,1,88,1024]"   "� �ڗ�S"
" �٩�"iSu�l��?" ���" ���" ���"
 ������
"*replica_1/mul_3"
*output" "*[32,1,88,1024]"   "� ����T"
" ���"�g��?" ���" ���" ���"
 ��캤�
"*replica_1/mul_4"
*output" "*[32,1,88,1024]"   "� ��ׇT"
" ���"�g��?" ���" " �"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����T"*gpu_host_bfc"  "
 �؆���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ��T"
 ������
"*replica_1/Complex"
*output" "*[32,1,88,1024]"   "x#����T"
 ������
"  "  "   "x#���T"
" ���"�g��?" ���" ���" ���"
 ��캤�
"  "  "   "� ��߭T"*gpu_host_bfc"  "
 �܆���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� 踆�T"
 ���ˤ�
"A*=replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/Pad"
" ���"�?x�?" ���" ���" ���"
 ������
"  "  "   "� ����T"
 ������
"=*9replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft"
*output" "*[32,1,88,2048]"   "� ����V"
 �ԭ֤�
"=*9replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft"
[46159872]"   "�#�鄦V"
 �ԭ֤�
"=*9replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft"
" ���"�g��?" ���" ���" ���"
 ���ˤ�
"  "  "   "� ���V"
" ���"b���?" ���" �" � "
 ���ǟ�
"P*Lgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/ones"
*output" "
*[1023]"   "� л��V"
" ���"n!~��?" ���" � " �""
 ���ǟ�
"R*Ngradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/concat"
*output" "
*[1025]"   "t#����V"
" ���"�E��?" ���" �" � "
 ���ǟ�
"  "  "   "� ��܁W"
 ������
"K*Greplica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Pad"
" ����"�̇Vݡ?" ���" ���" ���"
 ������
"  "  "   "� ��όW"
 ���ˤ�
"Q*Mreplica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose"
*output" "*[32,1,4,92,512]"   "x#�І�W"
" ����"�̇Vݡ?" ���" ���" ���"
 ������
"  "  "   "� �屗W"
 ������
"W*Sreplica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3"
*output" "*[32,1,364,512]"   "x#����W"
 ���ˤ�
"  "  "   "� �ȋ�W"*gpu_host_bfc"  "
 �����
"]*Ygradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Shape_1"
*output" "*[5]"   "� С��W"
 ���ˤ�
"K*Greplica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Sum"
[32,46592]"   "x#���W"
" ����"�AnШ
�?" ���" ���" ���"
 ������
"  "  "   "� ��ıW"
" ����"��ou�
�?" ���" " �"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   "� ����W"
" ����"+O ���?" ���" ���" ���"
 ������
"*replica_1/strided_slice_4"
*output" "*[32,45056,1]"   "x#����W"
" ����"�����
 ���ˤ�
"  "  "   "x#����W"
" ���"�	1�Tm�?" ���" ���" ���"
 ������
"  "  "   "� ����W"
" ����"�����
 ������
"%*!gradient_tape/replica_1/pow_2/Pow"
*output" "*[32,45056,1]"   "s#����W"
" ����"�����
 ���ǟ�
"  "  "   "� ����W"*gpu_host_bfc"  "
 �����
"*replica_1/Size"
*output" "*[]"   "� ��W"
" ����"\_mX��?" ���" ���" ���"
 ������
"*replica_1/ones_like"
*output" "*[32,45056,1]"   "� ؾ��W"
" ����"\_mX��?" ���" " �"
 ���ǟ�
"%*!gradient_tape/replica_1/add_3/Sum"
" ����"�Č�=��?" ���" �-" �."
 ���ǟ�
"%*!gradient_tape/replica_1/add_3/Sum"
*[5887]"   "�#����W"
" ����"\_mX��?" ���" �-" �."
 ���ǟ�
"%*!gradient_tape/replica_1/add_3/Sum"
" ����"�U��?" ���" " �"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ��܃X"
" ����"�U��?" ���" " �"
 ���ǟ�
"*
" ����"�Č�=��?" ���" �-" �."
 ���ǟ�
"*
*[5887]"   "�#��يX"
" ����"�U��?" ���" �-" �."
 ���ǟ�
"*
" ���"6�2<Qm�?" ���" ���" ���"
 ���ǟ�
"  "  "   "s#�٢�X"
" ���"6�2<Qm�?" ���" " �"
 ���ǟ�
"  "  "   "� ��ǛX"
" ���"6�2<Qm�?" ���" " �"
 ���ǟ�
"?*;gradient_tape/replica_1/vq_vae/vector_quantizer/mul_1/Mul_1"
*output" "*[]"   "� ���X"
 ��캤�
"8*4gradient_tape/replica_1/vq_vae/vector_quantizer/Tile"
*output" "*[32,11,128,256]"   "� �̽�X"
 ���Ф�
":*6gradient_tape/replica_1/vq_vae/vector_quantizer_1/Tile"
*output" "*[32,22,256,256]"   "� 𝱩X"
 ���ǟ�
" *gradient_tape/replica_1/Tile"
*output" "*[32,88,1024,1]"   "s#����X"
 ���ǟ�
"  "  "   "x#���X"
 ������
"  "  "   "� �㛺X"*gpu_host_bfc"  "
 �����
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����X"
 ��쪫�
":*6gradient_tape/replica_1/vq_vae/vector_quantizer/Tile_1"
*output" "*[32,11,128,256]"   "� ����X"
 ������
"<*8gradient_tape/replica_1/vq_vae/vector_quantizer_1/Tile_1"
*output" "*[32,22,256,256]"   "s#����X"
 ���ǟ�
"  "  "   "� ����X"
 ��올�
"<*8gradient_tape/replica_1/strided_slice_4/StridedSliceGrad"
*output" "*[32,46592,1]"   "x#॥�X"
 ������
"  "  "   "� ����X"
 ������
"v*rgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_4/StridedSliceGrad"
*output" "*[32,1,46592]"   "x#����X"
 ��올�
"  "  "   ">�������F"
 ������
":*6gradient_tape/replica_3/vq_vae/vector_quantizer/Cast_1"
*output" "*[]"   "t#��탎"
 ������
"  "  "   "t#��݌�"
 ������
"  "  "   "� ��ď�"
 ������
"e*agradient_tape/replica_3/vq_vae/vector_quantizer/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"e*agradient_tape/replica_3/vq_vae/vector_quantizer/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#�����"
 ������
"  "  "   "y#��鞎"
 ������
"  "  "   "� Ȯ���"
 ������
"e*agradient_tape/replica_3/vq_vae/vector_quantizer/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "y#ࣵ��"
 ������
"  "  "   "� И੎"
 ������
"C*?gradient_tape/replica_3/vq_vae/vector_quantizer/MatMul_1/MatMul"
*output" "
 ������
"  "  "   "y#�Ƕ��"
 ������
"  "  "   "@������ӕ��"
 ������
"0*,gradient_tape/vq_vae/vector_quantizer/Cast_1"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� �����"
 ��σ�
"[*Wgradient_tape/vq_vae/vector_quantizer/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#��Ǥ�"
?" ����" ���" ���"
 �����
"  "  "   "� ��樂"
 �����
"[*Wgradient_tape/vq_vae/vector_quantizer/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#�γ��"
 ���ۂ�
"  "  "   "y#���"
 �����
"  "  "   "� 讟��"
 �����
"[*Wgradient_tape/vq_vae/vector_quantizer/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "y#���ſ"
 ��σ�
"  "  "   "� ��п"
 ������
"9*5gradient_tape/vq_vae/vector_quantizer/MatMul_1/MatMul"
*output" "
 �����
"  "  "   "y#Ȼ��"
 �����
"  "  "   ">Ѐ�����3"
 ������
"
*Cast_2"
*output" "*[]"   "t#����"
 ������
"  "  "   "t#��ڄ�"
 ������
"  "  "   "� �����"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   ">��������"
 ������
" *gradient_tape/replica_3/Cast"
*output" "*[]"   "t#�嶮�"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "y#�鸹�"
 ������
"  "  "   ">��������D"
 ���ǟ�
"<*8gradient_tape/replica_1/vq_vae/vector_quantizer_1/Cast_1"
*output" "*[]"   "t#�����"
 ���ǟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "� �����"
 ��올�
"g*cgradient_tape/replica_1/vq_vae/vector_quantizer_1/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�����"
 ���Ф�
"  "  "   "� ����"
 ��캤�
"g*cgradient_tape/replica_1/vq_vae/vector_quantizer_1/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�����"
 ������
"  "  "   "z#����"
 ��캤�
"  "  "   "� �����"
 ������
"g*cgradient_tape/replica_1/vq_vae/vector_quantizer_1/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "y#�����"
 ��올�
"  "  "   "� �����"
 ���Ȣ�
"E*Agradient_tape/replica_1/vq_vae/vector_quantizer_1/MatMul_1/MatMul"
*output" "
" �ɪ�"@�]��}�?" ���" ���X" ���m"
 ������
"  "  "   "{#�م��"
 ��욧�
"  "  "   ">������ق"
 ������
" *gradient_tape/replica_2/Cast"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#�Խ��"
 ������
"  "  "   "y#�֋��"
 �����
"  "  "   ">�������"
 �І���
"  "  "   "t#к���"*gpu_host_bfc"  "
 ������
"  "  "   "t#�����"*gpu_host_bfc"  "
 ������
"  "  "   "E(�������"*div_no_nan_2/AddN_1"*div_no_nan_2"   ""  "� ��ԭ�"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "?��ݲ����"
 ������
"  "  "   "� ��Ƚ�"
 �����
"W*Sgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/BroadcastTo"
*output" "*[32,1,4,91,512]"   "y#�����"
 ������
"  "  "   "t#�����"*gpu_host_bfc"  "
 ������
"  "  "   "� �Ď��"
 ������
"l*hgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3/StridedSliceGrad"
*output" "*[32,1,368,512]"   "y#�Ρ��"
 �����
"  "  "   "� �����"
 ����
"_*[gradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose/transpose"
*output" "*[32,1,92,4,512]"   "y#�����"
 ������
"  "  "   "� �����"
 �����
"S*Ogradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Slice_1"
*output" "*[32,1,88,2048]"   "y#�����"
 ����
"  "  "   "u#�����"
 ������
"  "  "   "� �¨��"
 �����
"F*Bgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
*output" "*[32,1,88,1025]"   "� ��ȯ�"
 ������
"F*Bgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
[46159872]"   "�#ȶֺ�"
 ������
"F*Bgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
 �����
"  "  "   "� �����"*gpu_host_bfc"  "
 ������
"Q*Mgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/strided_slice_1"
*output" "*[1]"   "� �����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[1]"   ">Ț������"
 ������
"  "  "   "?иݝ��ҝ�"
 ������
"F*Bgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#��Ϯ�"
 ������
"  "  "   "� ��ð�"
 �ڢ���
"H*Dgradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast_1"
*output" "
*[1025]"   "u#�����"
 ������
"  "  "   "u#��Ӻ�"
 �ڢ���
"  "  "   "� ��ټ�"
 �����
"I*Egradient_tape/inverse_stft/inverse_stft_tf.signal.istft/irfft/Slice_1"
*output" "*[32,1,88,1024]"   "y#����"
 �����
"  "  "   "� �����"
 �����
"^*Zgradient_tape/Complex/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_complex64_Imag"
*output" "*[32,1,88,1024]"   "� �����"
 �����
"*gradient_tape/Complex/Real"
*output" "*[32,88,1024,1]"   "y#�����"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "y#�ը��"
 �����
"  "  "   "y#�����"
 ����
"  "  "   "y#����"
 �����
"  "  "   "y#蛵��"
 ������
"  "  "   "� ��Ԅ�"
 ��ւ�
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
*output" "*[32,64,44,512]"   "� ����"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
[64,1,4,4]"   "� ����"
 �����
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
 �����
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
 ������
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_2/BiasAdd/BiasAddGrad"
*output" "*[1]"   "� �����"
 ������
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� �����"
 �С���
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�����"
 �С���
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "� �����"
 �����
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
*output" "*[32,128,22,256]"   "� �����"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"P*Lgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� �����"
" ���"�۵η?" ����" ���X" ���X"
 �����
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ���"�۵η?" ����" " �"
 ������
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ���"�۵η?" ����" " �"
 ������
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 �����
"L*Hgradient_tape/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ������
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� �����"
 �����
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*[4452]"   "�#��۪�"
 ������
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 �����
"^*Zgradient_tape/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ��ւ�
"  "  "   "y#�ԭ�"
 �����
"  "  "   "� ��߯�"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� Ȼ���"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� Ќ���"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �С���
"K*Ggradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 �С���
"K*Ggradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� 覱��"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ��Ċ�"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ؾ���"
fL�?" ����" ���" ���"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
fL�?" ����" " �"
 �С���
"C*?gradient_tape/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
fL�?" ����" " �"
 �С���
"C*?gradient_tape/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#�����"
 ����
"  "  "   "y#����"
 �����
"  "  "   "� ؟���"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �С���
"K*Ggradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#����"
 �С���
"K*Ggradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �С���
"C*?gradient_tape/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��ޒ�"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �ԡ���
"C*?gradient_tape/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �ԡ���
"C*?gradient_tape/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� �蓠�"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ����"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �Ǧ��"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �ԡ���
"C*?gradient_tape/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �޿��"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �֡���
"C*?gradient_tape/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �֡���
"C*?gradient_tape/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �����
"C*?gradient_tape/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#�����"
 �򸢀�
"  "  "   "y#؟���"
 �����
"  "  "   "y#؈���"
 �����
"  "  "   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
*output" "*[32,512,22,256]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
" �꒟"��c���?" ����" ����" ����"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ��σ�
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
}�?" ����" ����" ����"
 ��σ�
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 �֡���
"C*?gradient_tape/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ����
"C*?gradient_tape/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �ڡ���
"C*?gradient_tape/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �ڡ���
"C*?gradient_tape/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ����
"C*?gradient_tape/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
}�?" ����" ���" ���"
 �����
"K*Ggradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"K*Ggradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ��σ�
"K*Ggradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ��σ�
"K*Ggradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
}�?" ����" ���" ���"
 ������
"K*Ggradient_tape/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ��΀�
"  "  "   "y#Їɨ�"
 �����
"  "  "   "� ��Ѫ�"
 �����
".**gradient_tape/vq_vae/concatenate_1/Slice_1"
*output" "*[32,256,22,256]"   "� �癰�"
 ����
",*(gradient_tape/vq_vae/concatenate_1/Slice"
*output" "*[32,256,22,256]"   "{#𦨳�"
 �����
"  "  "   "y#���"
 �����
"  "  "   "� ���"
 �����
"C*?gradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*output" "*[32,256,11,128]"   "� 𝐼�"
 ������
"C*?gradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"C*?gradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*[8456]"   "�#�����"
 ������
"C*?gradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"C*?gradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"Q*Mgradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 �����
"Q*Mgradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 ������
"Q*Mgradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*[3556]"   "�#�����"
 ������
"Q*Mgradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �����
"Q*Mgradient_tape/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �ڡ���
"?*;gradient_tape/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �Ќ��"
 �����
"?*;gradient_tape/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"?*;gradient_tape/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"?*;gradient_tape/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"?*;gradient_tape/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ����
"  "  "   "� ؇���"
 �����
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
*output" "*[32,384,22,256]"   "� �����"
 �����
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"=*9gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
">*:gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
*output" "*
 �����
">*:gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 �����
">*:gradient_tape/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 �����
"  "  "   "� �����"
 �����
"6*2gradient_tape/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� ؖ���"
 �����
"6*2gradient_tape/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"6*2gradient_tape/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"6*2gradient_tape/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �����
"6*2gradient_tape/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� ��;�"
 �����
",*(gradient_tape/vq_vae/concatenate/Slice_1"
*output" "*[32,128,22,256]"   "� �����"
 ����
"**&gradient_tape/vq_vae/concatenate/Slice"
*output" "*[32,256,22,256]"   "{#�����"
 �����
"  "  "   "� �����"
 �����
"N*Jgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*output" "*[32,128,11,128]"   "� �����"
 ����
"N*Jgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ������
"N*Jgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*[8456]"   "�#�����"
 ������
"N*Jgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ����
"N*Jgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ����
"\*Xgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
���1Z�?" ����" ���" ���"
 ����
"\*Xgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
���1Z�?" ����" �" �"
 ������
"\*Xgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*[3428]"   "�#����"
���1Z�?" ����" �" �"
 ������
"\*Xgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ����
"\*Xgradient_tape/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 �����
"  "  "   "� ����"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ����
"  "  "   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� к���"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ��ҡ�"
 ������
"K*Ggradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 ������
"K*Ggradient_tape/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_17/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�ء��"
 �����
"  "  "   "� ؜���"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� 豅��"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ���"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "y#�傀�"
 ����
"  "  "   "� ȋ��"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� ��ʃ�"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �⺙�"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_15/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#Ȇ���"
 �����
"  "  "   "� �≲�"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ����"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ����
"C*?gradient_tape/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ����
"C*?gradient_tape/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ����
"  "  "   "y#ؽ���"
 ����
"  "  "   "y#����"
 ������
"  "  "   "y#�����"
 �����
"  "  "   "� Ѐ���"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
*output" "*[32,256,11,128]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"K*Ggradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"K*Ggradient_tape/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
0,�-�?" ����" ���" ���"
 �����
"  "  "   "� �����"
 ������
"C*?gradient_tape/vq_vae/functional_5/conv2d_13/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�頫�"
 �����
"  "  "   "y#�����"
 ����
"  "  "   "y#����"
 ����
"  "  "   "� ��³�"
 �����
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 ������
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 �����
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 �����
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"=*9gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
">*:gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
*output" "*
 �����
">*:gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 �����
">*:gradient_tape/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ������
"6*2gradient_tape/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� Ⱥ���"
 �����
"6*2gradient_tape/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"6*2gradient_tape/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"6*2gradient_tape/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 �����
"6*2gradient_tape/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
MK���?" ����" ���" ���"
 �����
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_12/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �ď��"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �֕��"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#苎��"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��º��
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ��ʄ�"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 �����
"K*Ggradient_tape/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 ������
"C*?gradient_tape/vq_vae/functional_3/conv2d_10/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� ����"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ȵߡ�"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �ݨ��"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 �����
"B*>gradient_tape/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 �����
"B*>gradient_tape/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ��º��
"  "  "   "y#�����"
 ������
"  "  "   "y#�߰��"
 �����
"  "  "   "� ����"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,11,128]"   "� �����"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
[86114304]"   "�#�����"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,64,128]"   "� �Ϩ��"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
[86114304]"   "�#����"
 ����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_3/conv2d_8/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "y#�ޕ�"
 ����
"  "  "   "� ��ܘ�"
 ����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ��Ț�"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
[89178112]"   "�#�����"
 ����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,128,64]"   "� �����"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*[3364]"   "�#�����"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_3/conv2d_7/BiasAdd/BiasAddGrad"
*output" "*[64]"   "y#����"
 ������
"  "  "   "y#���"
 ����
"  "  "   "y#�����"
 ����
"  "  "   "� �ﮞ�"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#О���"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ����
"  "  "   "� �����"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ؀���"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
�<I�?" ����" ��	" ��	"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ����
"J*Fgradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
�<I�?" ����" ����" ����"
 ����
"J*Fgradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 �����
"B*>gradient_tape/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 �����
"B*>gradient_tape/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#��֡�"
�b��?" ����" ���," ���,"
 �����
"  "  "   "y#��"
 �����
"  "  "   "� �����"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ��ҩ�"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"

 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�ĥ��"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ���"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� �����"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ����"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ���"
 �����
"B*>gradient_tape/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �����
"B*>gradient_tape/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#��ϥ�"
 �����
"  "  "   "y#�����"
 �����
"  "  "   "� ��ի�"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ظ���"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
�?" ����" ���," ���,"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ����
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"I*Egradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
*output" "*
 �����
"J*Fgradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 �����
"J*Fgradient_tape/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ����"
�?" ����" ���," ���,"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
�?" ����" " �"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
�?" ����" " �"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ����
"  "  "   "y#�����"
 �����
"  "  "   "� Ȥ��"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,44,512]"   "� ����"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �����
"I*Egradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �����
"J*Fgradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� �����"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*[4452]"   "�#��﯁"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"J*Fgradient_tape/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��ു"
�?" ����" ���," ���8"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
�?" ����" " �"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
�?" ����" " �"
 ������
"B*>gradient_tape/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ����
"B*>gradient_tape/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#�����"
 ����
"  "  "   "� ���ā"
 ������
"H*Dgradient_tape/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� ���Ɓ"
 �����
"H*Dgradient_tape/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�Ԙց"
 �����
"H*Dgradient_tape/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
 �����
"  "  "   "� �ıف"
 �����
"@*<gradient_tape/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� ���܁"
 �����
"@*<gradient_tape/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 �����
"@*<gradient_tape/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 �����
"@*<gradient_tape/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 �����
"@*<gradient_tape/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� ����"
 �����
"*Adam/concat"
*output" "
 ������
"*Adam/concat"
 �����
"*Adam/concat"
 ������
"*Adam/concat"
 �����
"*Adam/concat"
 �����
"*Adam/concat"
 �����
"*Adam/concat"
 ������
"  "  "   "t#���"
 �����
"  "  "   "v#�����"
 �����
"  "  "   "t#Ȧ���"
 ������
"  "  "   "v#��у�"
 ������
"  "  "   "t#Ђ���"
 ������
"  "  "   "v#��焂"
 ������
"  "  "   "t#؅���"
 ������
"  "  "   "v#�腂"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#��冂"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#��ʇ�"
 ������
"  "  "   "t#����"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#��∂"
 ������
"  "  "   "v#Ȝ���"
 �����
"  "  "   "t#��։�"
 ������
"  "  "   "v#�ڑ��"
 �����
"  "  "   "t#��ۊ�"
 ������
"  "  "   "v#�񨋂"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#��ƌ�"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#�𭍂"
 ������
"  "  "   "v#��捂"
 ������
"  "  "   "t#�ɝ��"
 ������
"  "  "   "v#��"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#��֏�"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#��ѐ�"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#ت͑�"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#�ͱ��"
 ������
"  "  "   "x#��瓂"
 ����
"  "  "   "t#ر���"
 ������
"  "  "   "v#��ɔ�"
 �����
"  "  "   "t#�����"
 �����
"  "  "   "x#�գ��"
 ������
"  "  "   "t#��ە�"
 �ڡ���
"  "  "   "v#�Ǫ��"
 ������
"  "  "   "x#؋�"
 �����
"  "  "   "t#�󭗂"
 �֡���
"  "  "   "v#��痂"
 �����
"  "  "   "t#�����"
 �ԡ���
"  "  "   "v#��ʘ�"
 �����
"  "  "   "t#н���"
 �С���
"  "  "   "v#�겙�"
 �����
"  "  "   "t#��ݙ�"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#��ɛ�"
 ������
"  "  "   "t#�ӡ��"
 ������
"  "  "   "s#��圂"
 ������
"  "  "   ">��͌�ج�"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
*output" "
*[1024]"   "� ����"
 ������
"*Adam/split_6"
*output" "*[64]"   "� �����"
 �Ġ���
"*Adam/split_6"
*output" "*[131072]"   "� �����"
 ������
"*Adam/split_6"
*output" "	*[128]"   "� ����"
 ������
"*Adam/split_6"
*output" "*[147456]"   "� �����"
 �����
"*Adam/split_6"
*output" "	*[128]"   "� 蕘��"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 �����
"*Adam/split_6"
*output" "*[32]"   "� �����"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_6"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_6"
*output" "*[32]"   "� ����"
 ������
"*Adam/split_6"
*output" "*[36864]"   "� ؚ���"
 �Ј���
"*Adam/split_6"
*output" "	*[128]"   "� ���"
 �Ԉ���
"*Adam/split_6"
*output" "*[131072]"   "� �����"
 �Ԩ���
"*Adam/split_6"
*output" "*[64]"   "� �͞��"
 �֨���
"*Adam/split_6"
*output" "*[73728]"   "� �ʗ��"
 �ֺ���
"*Adam/split_6"
*output" "	*[128]"   "� �ُ��"
 �ں���
"*Adam/split_6"
*output" "*[36864]"   "� Њ���"
 ��Ø��
"*Adam/split_6"
*output" "*[32]"   "� �����"
 ��Ø��
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 ��̘��
"*Adam/split_6"
*output" "	*[128]"   "� �����"
 ��̘��
"*Adam/split_6"
*output" "*[36864]"   "� �۾��"
 ��՘��
"*Adam/split_6"
*output" "*[32]"   "� �����"
 ��՘��
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 ��ޘ��
"*Adam/split_6"
*output" "	*[128]"   "� �����"
�
 ��ޘ��
"*Adam/split_6"
*output" "*[32768]"   "� ���"
 �����
"*Adam/split_6"
*output" "	*[256]"   "� �뢄�"
 �����
"*Adam/split_6"
*output" "*[131072]"   "� ȳ���"
 ������
"*Adam/split_6"
*output" "*[294912]"   "� �Ŕ��"
 �����
"*Adam/split_6"
*output" "	*[128]"   "� �ŉ��"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� ����"
 �����
"*Adam/split_6"
*output" "*[32]"   "� �Տ��"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_6"
*output" "	*[128]"   "� �ろ�"
 ������
"*Adam/split_6"
*output" "*[36864]"   "� ȿ���"
 ������
"*Adam/split_6"
*output" "*[32]"   "� �����"
 ������
"*Adam/split_6"
*output" "*[36864]"   "� ذ���"
 ������
"*Adam/split_6"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_6"
*output" "*[524288]"   "� ����"
 ������
"*Adam/split_6"
*output" "	*[256]"   "� ����"
 ������
"*Adam/split_6"
*output" "*[98304]"   "� Аד�"
 ������
"*Adam/split_6"
*output" "	*[256]"   "� ��Ӕ�"
 �Ĥ���
"*Adam/split_6"
*output" "
 �Ĥ���
"*Adam/split_6"
*output" "	*[256]"   "� ��Ж�"
 �̤���
"*Adam/split_6"
*output" "*[131072]"   "� �����"
 ��Ĭ��
"*Adam/split_6"
*output" "*[589824]"   "� ���"
 ��ԭ��
"*Adam/split_6"
*output" "	*[128]"   "� �̬��"
 ��ԭ��
"*Adam/split_6"
*output" "*[36864]"   "� ثƚ�"
 ��ݭ��
"*Adam/split_6"
*output" "*[32]"   "� ��ϛ�"
 ��ݭ��
"*Adam/split_6"
*output" "*[36864]"   "� ����"
 �����
"*Adam/split_6"
*output" "	*[128]"   "� ��ǝ�"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� ش���"
 �����
"*Adam/split_6"
*output" "*[32]"   "� ���"
 �����
"*Adam/split_6"
*output" "*[36864]"   "� �֖��"
 ������
"*Adam/split_6"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_6"
*output" "*[131072]"   "� ����"
 �ܘ���
"*Adam/split_6"
*output" "*[64]"   "� ��ߢ�"
 �ޘ���
"*Adam/split_6"
*output" "
*[1024]"   "� ��ʣ�"
 ������
"*Adam/split_6"
*output" "*[1]"   "� 軐��"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
 ������
"*Adam/split_6"
 �Ʀ���
"  "  "   "t#ȡ���"
 ������
"  "  "   "t#�����"
 �����
"  "  "   "t#ؤ���"
 ������
"  "  "   "t#�挈�"
 ������
"  "  "   "t#�����"
 �Ј���
"  "  "   "t#�����"
 �Ԩ���
"  "  "   "t#��ҝ�"
 �ֺ���
"  "  "   "t#���"
 �����
"  "  "   "t#�껬�"
 ��Ø��
"  "  "   "t#�����"
 ��̘��
"  "  "   "t#��Ӻ�"
 ��՘��
"  "  "   "t#�����"
 ��ޘ��
"  "  "   "t#�����"
 �����
"  "  "   "t#�����"
 �����
"  "  "   "t#Ȑ���"
 ������
"  "  "   "t#蘾��"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ��ԭ��
"  "  "   "t#Ȋ���"
 ������
"  "  "   "t#��Ą�"
 �Ĥ���
"  "  "   "t#�����"
 ��ݭ��
"  "  "   "t#��"
 �����
"  "  "   "t#����"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "s#��ȥ�"
 ������
"  "  "   "t#�쒬�"
 �ܘ���
"  "  "   "t#𿳳�"
 ������
"  "  "   "t#�����"
_?" ���" � " � "
 ������
"  "  "   "v#�����"
 �Ġ���
"  "  "   "v#�����"
 ������
"  "  "   "v#த��"
 �����
"  "  "   "v#�����"
 �����
"  "  "   "v#����"
 ������
"  "  "   "v#�����"
 �Ԉ���
"  "  "   "v#�����"
 �ں���
"  "  "   "v#����"
 �֨���
"  "  "   "v#Ȳ���"
 ������
"  "  "   "v#����"
 ��Ø��
"  "  "   "v#�̯��"
 ��̘��
"  "  "   "v#��ꀀ"
 ��՘��
"  "  "   "v#�ե��"
 ��ޘ��
"  "  "   "v#�勌�"
 �����
"  "  "   "v#��ᑀ"
 ������
"  "  "   "v#Ъї�"
 �����
"  "  "   "v#�Ӎ��"
 �����
"  "  "   "v#����"
 ������
"  "  "   "x#��Ψ�"
 ������
"  "  "   "v#Ц���"
 ������
"  "  "   "v#�ּ��"
 ��ԭ��
"  "  "   "v#�����"
 ������
"  "  "   "x#���"
 �Ĥ���
"  "  "   "v#���ŀ"
 �̤���
"  "  "   "v#�Ǒˀ"
 ��ݭ��
"  "  "   "x#���Ѐ"
 ��Ĭ��
"  "  "   "v#���ր"
 �����
"  "  "   "v#���܀"
 ������
"  "  "   "v#���"
 �����
"  "  "   "s#����"
 ������
"  "  "   "s#����"
 ������
"  "  "   "s#�ǒ�"
 ������
"  "  "   "s#����"
 ������
"  "  "   "s#���"
 ������
"  "  "   "t#����"
 �ޘ���
"  "  "   ">�Ǩ�����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"-*)replica_2/vq_vae/vector_quantizer_1/pow_1"
*output" "
 ������
"+*'replica_2/vq_vae/vector_quantizer/pow_1"
*output" "
 ������
"-*)replica_2/vq_vae/vector_quantizer_1/Sum_1"
 ������
"  "  "   "� �֩�"
 ������
"+*'replica_2/vq_vae/vector_quantizer/Sum_1"
 ������
"  "  "   "� ����#"
 ������
"R*Nreplica_2/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Sum"
 �Ġ���
"S*Oreplica_2/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Tile"
*output" "*[4,512]"   "s#����#"
 ������
"  "  "   "=����$���"
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "=���$��"
 ������
"  "  "   "=���$���"
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "=��%���"
 ������
"*Adam/Cast_13"
*output" "*[]"   "r#����%"
 ������
"  "  "   "� ����%"
 ������
"*
Adam/Pow_6"
*output" "*[]"   ">���%���"
 ������
"  "  "   "� �׭�%"
 ������
"*replica_3/strided_slice_1"
*output" "*
[32,45056]"   "� ����%"
 ������
"*replica_3/strided_slice"
*output" "*
[32,45056]"   "w#����%"
 ������
"  "  "   "� ����%"
 ������
"*replica_3/stft/Pad_1"
[32,46592]"   "w#���%"
 ������
"  "  "   "� ���%"
 ������
"*replica_3/stft/Pad"
[32,46592]"   "� ȰĖ&"*gpu_host_bfc"  "
 ������
"4*0replica_3/stft/stft_tf.signal.stft_1/frame/add_1"
*output" "
*[88,4]"   "� ����&"*gpu_host_bfc"  "
 ������
"2*.replica_3/stft/stft_tf.signal.stft/frame/add_1"
*output" "
*[88,4]"   "� ����&"
 ������
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "� М��&"
 ������
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "<����&��L"
 ������
"  "  "   ">����&����+"
 ������
"7*3replica_3/stft/stft_tf.signal.stft_1/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#����&"
 ������
"  "  "   "s#����&"
 ������
"  "  "   "� ���&"
 ������
"-*)replica_3/stft/stft_tf.signal.stft_1/rfft"
*output" "*[32,1,88,1025]"   "� ����("
 �恑��
"-*)replica_3/stft/stft_tf.signal.stft_1/rfft"
[46159872]"   "�#����("
 �恑��
"-*)replica_3/stft/stft_tf.signal.stft_1/rfft"
 ������
"  "  "   "� ���("
 ������
"*replica_3/strided_slice_3"
*output" "*[32,88,1024,1]"   "w#ز��("
 ������
"  "  "   "� ����("
 ������
"*replica_3/magnitude/Abs_1"
*output" "*[32,88,1024,1]"   "w#���("
 ������
"  "  "   "� ����)"
 ������
"(*$replica_3/magnitude_to_decibel/Max_1"
 ������
"(*$replica_3/magnitude_to_decibel/Max_1"
 ������
"(*$replica_3/magnitude_to_decibel/Max_1"
 ������
"  "  "   "� �䲩)"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d/Conv2D"
*output" "*[32,64,44,512]"   "� �ν�)"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d/Conv2D"
[64,1,4,4]"   "� ���)"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d_1/Relu"
*output" "*[32,128,22,256]"   "� ����)"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_3/vq_vae/functional_1/conv2d_1/Relu"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_2/Conv2D"
*output" "*[32,128,22,256]"   "� �붂*"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
",*(replica_3/vq_vae/functional_1/re_lu/Relu"
*output" "*[32,128,22,256]"   "� ���*"
 ������
".**replica_3/vq_vae/functional_1/re_lu_1/Relu"
*output" "*[32,32,22,256]"   "� ��ը*"
 ������
".**replica_3/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_1/Relu"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_4/Conv2D"
*output" "*[32,128,22,256]"   "� ����*"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"  "  "   "� ����*"
 ������
".**replica_3/vq_vae/functional_1/re_lu_2/Relu"
*output" "*[32,128,22,256]"   "� �Â�*"
 ������
".**replica_3/vq_vae/functional_1/re_lu_3/Relu"
*output" "*[32,32,22,256]"   "� ����*"
 ������
".**replica_3/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_3/vq_vae/functional_1/re_lu_3/Relu"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_6/Conv2D"
*output" "*[32,128,22,256]"   "� ����-"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"  "  "   "� ����/"
 ������
"/*+replica_3/vq_vae/functional_3/conv2d_7/Relu"
*output" "*[32,64,11,128]"   "� ����/"
 ������
"/*+replica_3/vq_vae/functional_3/conv2d_7/Relu"
 ������
"/*+replica_3/vq_vae/functional_3/conv2d_7/Relu"
*[8456]"   "�#����/"
 ������
"/*+replica_3/vq_vae/functional_3/conv2d_7/Relu"
 ������
"/*+replica_3/vq_vae/functional_3/conv2d_7/Relu"
 ������
"1*-replica_3/vq_vae/functional_3/conv2d_8/Conv2D"
*output" "*[32,128,11,128]"   "� ����0"
 ������
"1*-replica_3/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_3/conv2d_8/Conv2D"
[86114304]"   "�#����0"
 ������
"1*-replica_3/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"1*-replica_3/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
".**replica_3/vq_vae/functional_3/re_lu_5/Relu"
*output" "*[32,128,11,128]"   "� ൏�0"
 ������
".**replica_3/vq_vae/functional_3/re_lu_6/Relu"
*output" "*[32,32,11,128]"   "� ��ڥ0"
 ������
".**replica_3/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_6/Relu"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_10/Conv2D"
*output" "*[32,128,11,128]"   "� ب�0"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_10/Conv2D"
*[8456]"   "�#����E"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"  "  "   "� ��ʘE"
 ������
".**replica_3/vq_vae/functional_3/re_lu_7/Relu"
*output" "*[32,128,11,128]"   "� ��͟E"
 ������
".**replica_3/vq_vae/functional_3/re_lu_8/Relu"
*output" "*[32,32,11,128]"   "� �ކ�E"
 ������
".**replica_3/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_3/vq_vae/functional_3/re_lu_8/Relu"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_12/Conv2D"
*output" "*[32,128,11,128]"   "� �E"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_12/Conv2D"
*[8456]"   "�#�Φ�E"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"  "  "   "� Ș��E"
 ������
"%*!replica_3/vq_vae/conv2d_23/Conv2D"
*output" "*[32,256,11,128]"   "� ����E"
 ������
"%*!replica_3/vq_vae/conv2d_23/Conv2D"
 ������
"%*!replica_3/vq_vae/conv2d_23/Conv2D"
*[8456]"   "�#����E"
 ������
"%*!replica_3/vq_vae/conv2d_23/Conv2D"
 ������
"%*!replica_3/vq_vae/conv2d_23/Conv2D"
 ������
"N*Jreplica_3/vq_vae/conv2d_23/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ����F"
b��>" ����" ���" ���"
 ������
")*%replica_3/vq_vae/vector_quantizer/pow"
*output" "*[45056,256]"   "� ����F"
 ������
",*(replica_3/vq_vae/vector_quantizer/MatMul"
*output" "*[45056,512]"   "x#���F"
 ������
"  "  "   "� �҅�F"
 ������
")*%replica_3/vq_vae/vector_quantizer/Sum"
 ������
"  "  "   "� ����F"
 ������
")*%replica_3/vq_vae/vector_quantizer/add"
*output" "*[45056,512]"   "v#���F"
 ������
"  "  "   "t#��àF"
 ������
"  "  "   "x#��ڤF"
 ������
"  "  "   "� ����F"
 ������
",*(replica_3/vq_vae/vector_quantizer/ArgMin"
*output" 	"*[45056]"   "x#����F"
 ������
"  "  "   "� ؅��F"
 ������
"-*)replica_3/vq_vae/vector_quantizer/one_hot"
*output" "*[45056,512]"   "v#衆�F"
 ������
"  "  "   "� ��زF"
 ������
".**replica_3/vq_vae/vector_quantizer/MatMul_1"
*output" "*[45056,256]"   "� ����F"
 ������
"Q*Mreplica_3/vq_vae/vector_quantizer/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "x#�෿F"
 ������
"  "  "   "� ����F"
 ������
"=*9gradient_tape/replica_3/vq_vae/vector_quantizer/pow_2/mul"
*output" "*[32,256,11,128]"   "� �͎�F"
 ������
"+*'replica_3/vq_vae/vector_quantizer/pow_2"
*output" "*[32,256,11,128]"   "x#����F"
 ������
"  "  "   "� ����F"
 ������
"S*Oreplica_3/vq_vae/vector_quantizer/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ����F"
 ������
"**&replica_3/vq_vae/vector_quantizer/Mean"
 ������
"**&replica_3/vq_vae/vector_quantizer/Mean"
*[5887]"   "�#����F"
 ������
"**&replica_3/vq_vae/vector_quantizer/Mean"
 ������
"  "  "   "� ���F"
 ������
"0*,replica_3/vq_vae/functional_5/conv2d_13/Relu"
*output" "*[32,128,11,128]"   "� ����F"
 ������
"0*,replica_3/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_3/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_3/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_3/vq_vae/functional_5/conv2d_13/Relu"
 ������
":*6gradient_tape/replica_3/vq_vae/vector_quantizer/Prod_2"
*output" "*[]"   "x#���F"
 ������
"  "  "   "� ����G"
 ������
"+*'replica_3/vq_vae/vector_quantizer/mul_1"
*output" "*[]"   "� ����G"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_10/Relu"
*output" "*[32,128,11,128]"   "s#�ۚ�G"
 ������
"  "  "   "� �¨�G"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_11/Relu"
*output" "*[32,32,11,128]"   "� �㾛G"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_11/Relu"
 ��ָ��
"/*+replica_3/vq_vae/functional_5/re_lu_11/Relu"
 ��ָ��
"/*+replica_3/vq_vae/functional_5/re_lu_11/Relu"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_11/Relu"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����G"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_15/Conv2D"
*output" "*[32,128,11,128]"   "� ȑ��G"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_15/Conv2D"
*[8456]"   "�#����G"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ����G"
 ��ָ��
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ��ָ��
"8*4replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_12/Relu"
*output" "*[32,128,11,128]"   "� ���H"
 ��ָ��
"/*+replica_3/vq_vae/functional_5/re_lu_13/Relu"
*output" "*[32,32,11,128]"   "� ���H"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_3/vq_vae/functional_5/re_lu_13/Relu"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_17/Conv2D"
*output" "*[32,128,11,128]"   "� ����H"
ף�?" ����" ��	" ��	"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_17/Conv2D"
*[8456]"   "�#����H"
ף�?" ����" �B" �D"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"  "  "   "� ఊ�H"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ؗ��H"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"'*#replica_3/vq_vae/concatenate/concat"
*output" "*[32,384,22,256]"   "x#����I"
 ������
"  "  "   "� ����I"
 ������
"%*!replica_3/vq_vae/conv2d_24/Conv2D"
*output" "*[32,256,22,256]"   "� ����I"
 ������
"%*!replica_3/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_3/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_3/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_3/vq_vae/conv2d_24/Conv2D"
 ������
"N*Jreplica_3/vq_vae/conv2d_24/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ��I"
 ������
"+*'replica_3/vq_vae/vector_quantizer_1/pow"
*output" "*[180224,256]"   "� ����I"
 ������
".**replica_3/vq_vae/vector_quantizer_1/MatMul"
*output" "*[180224,512]"   "x#����I"
 ������
"  "  "   "� ����J"
 ������
"+*'replica_3/vq_vae/vector_quantizer_1/Sum"
 ������
"  "  "   "� ����J"
 ������
"+*'replica_3/vq_vae/vector_quantizer_1/add"
*output" "*[180224,512]"   "v#���J"
 ������
"  "  "   "t#ȗĎJ"
 ������
"  "  "   "z#�Ŧ�J"
 ������
"  "  "   "� ا��J"
 ������
".**replica_3/vq_vae/vector_quantizer_1/ArgMin"
*output" 	"*[180224]"   "z#����J"
 ������
"  "  "   "� �Ϫ�J"
 ������
"/*+replica_3/vq_vae/vector_quantizer_1/one_hot"
*output" "*[180224,512]"   "v#���J"
 ������
"  "  "   "� �ƫ�J"
 ������
"0*,replica_3/vq_vae/vector_quantizer_1/MatMul_1"
*output" "*[180224,256]"   "� �ת�J"
 ������
"S*Oreplica_3/vq_vae/vector_quantizer_1/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "x#��ǪJ"
 ������
"  "  "   "� ��ɮJ"
 ������
"?*;gradient_tape/replica_3/vq_vae/vector_quantizer_1/pow_2/mul"
*output" "*[32,256,22,256]"   "� Л��J"
 ������
"-*)replica_3/vq_vae/vector_quantizer_1/pow_2"
*output" "*[32,256,22,256]"   "x#����J"
 ������
"  "  "   "� ��ݺJ"
 ������
"U*Qreplica_3/vq_vae/vector_quantizer_1/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ���J"
 ������
",*(replica_3/vq_vae/vector_quantizer_1/Mean"
 ������
",*(replica_3/vq_vae/vector_quantizer_1/Mean"
*[5887]"   "�#���J"
 ������
",*(replica_3/vq_vae/vector_quantizer_1/Mean"
 ������
"  "  "   "� �܅�J"
" ����"m��B�?" ����" ����" ����"
 ������
")*%replica_3/vq_vae/concatenate_1/concat"
*output" "*[32,512,22,256]"   "x#�ŀ�J"
 ������
"  "  "   "x#����J"
 ������
"  "  "   "� �ދ�J"*gpu_host_bfc"  "
 ������
"<*8gradient_tape/replica_3/vq_vae/vector_quantizer_1/Prod_2"
*output" "*[]"   "x#����J"
 ������
"  "  "   "� �ϱ�J"
 ������
"-*)replica_3/vq_vae/vector_quantizer_1/mul_1"
*output" "*[]"   "� ����J"
 ������
"0*,replica_3/vq_vae/functional_7/conv2d_18/Relu"
*output" "*[32,128,22,256]"   "� ����J"
 ������
"0*,replica_3/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_3/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_3/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_3/vq_vae/functional_7/conv2d_18/Relu"
 ������
"  "  "   "s#����K"
 ������
"  "  "   "� ����K"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_14/Relu"
*output" "*[32,128,22,256]"   "� ��ȍK"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �Ӗ�K"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_15/Relu"
*output" "*[32,32,22,256]"   "� Ȩ��K"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_15/Relu"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_20/Conv2D"
*output" "*[32,128,22,256]"   "� ؏��K"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����K"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����K"
" ����"AG�Zҥ?" ����" ���," ���,"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_16/Relu"
*output" "*[32,128,22,256]"   "� ����K"
" ����"Sந�`�?" ����" ���" ���"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_17/Relu"
*output" "*[32,32,22,256]"   "� ؘɁL"
" ����"f��Rs^�?" ����" ��	" ��	"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_17/Relu"
" ����"��&��W�?" ����" ��" ��"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_17/Relu"
" ����"f��Rs^�?" ����" ��" ��"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_17/Relu"
" ����"Sந�`�?" ����" ��	" ��	"
 ������
"/*+replica_3/vq_vae/functional_7/re_lu_17/Relu"
" ����"!���a	�?" ����" ���," ���,"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_22/Conv2D"
*output" "*[32,128,22,256]"   "� ��̗L"
" ����"��$��?" ����" ��	" ��	"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"��g�?" ����" ��" ��"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"��$��?" ����" ��" ��"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"!���a	�?" ����" ��	" ��	"
 ������
"2*.replica_3/vq_vae/functional_7/conv2d_22/Conv2D"
" ����"Sந�`�?" ����" ���," ���,"
 ������
"  "  "   "� ����L"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
*output" "*[32,64,44,512]"   "� ����L"
���X?" ����" �� " �� "
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ����"��,֤?" ����" ���X" ����"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ����"x����ޤ?" ����" �� " �� "
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ����"[ݠ�� �?" ����" ���" ���"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
*output" "*[32,1,88,1024]"   "� ����L"
" ����"�<�� �?" ����" � " � "
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
[64,1,4,4]"   "� ����L"
" ����"z�NKb�?" ����" ���" ���"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ����"�<�� �?" ����" ���" ���"
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ����"[ݠ�� �?" ����" � " � "
 ������
"E*Areplica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ����"0��\b�?" ����" ���" ���"
 ������
"%*!gradient_tape/replica_3/pow_1/mul"
*output" "*[32,1,88,1024]"   "� ����M"
" ����"0��\b�?" ����" " �"
 ������
"*replica_3/Mean"
" ����"s�=Ab�?" ����" �-" �."
 ������
"*replica_3/Mean"
*[5887]"   "�#���M"
" ����"0��\b�?" ����" �-" �."
 ������
"*replica_3/Mean"
 ������
" *gradient_tape/replica_3/Prod"
*output" "*[]"   "x#����M"
" �Օ�"믲㐤?" ����" ���" ���"
 ������
"  "  "   "s#�ٹM"
" �ו�"믲㐤?" ����" " �"
 ������
"  "  "   "� ����M"
" ����"0��\b�?" ����" ���" ���"
 ������
"*replica_3/Sqrt"
*output" "*[32,1,88,1024]"   "� ����M"
" ����"����U��?" ����" ���" ���"
 ������
"*replica_3/mul_3"
*output" "*[32,1,88,1024]"   "� ����M"
" ����"Z�����?" ����" ���" ���"
 ������
"*replica_3/mul_4"
*output" "*[32,1,88,1024]"   "� ����M"
" ����"Z�����?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����M"*gpu_host_bfc"  "
 ����
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����M"
 ������
"*replica_3/Complex"
*output" "*[32,1,88,1024]"   "x#Ё��N"
 ������
"  "  "   "x#��υN"
" ����"Z�����?" ����" ���" ���"
 ������
"  "  "   "� �ӽ�N"*gpu_host_bfc"  "
 �Ć���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����N"
 ������
"A*=replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/Pad"
" ����"�˭Z�?" ����" ���" ���"
 ������
"  "  "   "� ��ŢN"
 ������
"=*9replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft"
*output" "*[32,1,88,2048]"   "� ���O"
 �����
"=*9replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft"
[46159872]"   "�#����O"
 �����
"=*9replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft"
" ����"Z�����?" ����" ���" ���"
 ������
"  "  "   "� 𣤛P"
" ����"���ڧ�?" ����" �" � "
 ������
"P*Lgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/ones"
*output" "
*[1023]"   "� �ۓ�P"
" �뵩"�����?" ����" � " �""
 ������
"R*Ngradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/concat"
*output" "
*[1025]"   "t#����P"
" ����"���ڧ�?" ����" �" � "
 ������
"  "  "   "� ���P"
 ������
"K*Greplica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Pad"
" ����"�X[g2ҡ?" ����" ���" ���"
 ������
"  "  "   "� �ߨ�P"
 ������
"Q*Mreplica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose"
*output" "*[32,1,4,92,512]"   "x#غ��P"
" ����"�X[g2ҡ?" ����" ���" ���"
 ������
"  "  "   "� �߻�P"
 ������
"W*Sreplica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3"
*output" "*[32,1,364,512]"   "x#���P"
 ������
"  "  "   "� ����P"*gpu_host_bfc"  "
 �Ɔ���
"]*Ygradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Shape_1"
*output" "*[5]"   "� ���P"
 ������
"K*Greplica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Sum"
[32,46592]"   "x#���P"
" ��ʱ"�)�v���?" ����" ���" ���"
 ������
"  "  "   "� �͑�Q"
" ��ʱ"�)�v���?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   "� ��ДQ"
" ���"��7���?" ����" ���" ���"
 ������
"*replica_3/strided_slice_4"
*output" "*[32,45056,1]"   "x#੅�Q"
" ��ֱ"��U���?" ����" ���" ���"
 ������
"  "  "   "x#𻊞Q"
" ����"#���Gb�?" ����" ���" ���"
 ������
"  "  "   "� ����Q"
" ��ֱ"��U���?" ����" ���" ���"
 ������
"%*!gradient_tape/replica_3/pow_2/Pow"
*output" "*[32,45056,1]"   "s#�ѭQ"
" ��ֱ":T���?" ����" " �"
 ������
"  "  "   "� ����Q"*gpu_host_bfc"  "
 �ʆ���
"*replica_3/Size"
*output" "*[]"   "� ����Q"
" ����"���A��?" ����" ���" ���"
 ������
"*replica_3/ones_like"
*output" "*[32,45056,1]"   "� ഹ�Q"
" ����"���A��?" ����" " �"
 ������
"%*!gradient_tape/replica_3/add_3/Sum"
" ����".Y�&��?" ����" �-" �."
 ������
"%*!gradient_tape/replica_3/add_3/Sum"
*[5887]"   "�#����Q"
" ����"���A��?" ����" �-" �."
 ������
"%*!gradient_tape/replica_3/add_3/Sum"
" ����"��	^>��?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ��Q"
" ����"��	^>��?" ����" " �"
 ������
"*
" ����".Y�&��?" ����" �-" �."
 ������
"*
*[5887]"   "�#����Q"
" ����"��	^>��?" ����" �-" �."
 ������
"*
" ��ֱ"��U���?" ����" ���" ���"
 ������
"  "  "   "s#����Q"
" ��ֱ"��U���?" ����" " �"
 ������
"  "  "   "� ����Q"
" ��ֱ"��U���?" ����" " �"
 ������
"?*;gradient_tape/replica_3/vq_vae/vector_quantizer/mul_1/Mul_1"
*output" "*[]"   "� ����Q"
 ������
"8*4gradient_tape/replica_3/vq_vae/vector_quantizer/Tile"
*output" "*[32,11,128,256]"   "� ����Q"
 ������
":*6gradient_tape/replica_3/vq_vae/vector_quantizer_1/Tile"
*output" "*[32,22,256,256]"   "� ����Q"
 ������
" *gradient_tape/replica_3/Tile"
*output" "*[32,88,1024,1]"   "s#���Q"
 ������
"  "  "   "x#����R"
 ������
"  "  "   "� ة��R"*gpu_host_bfc"  "
 �Ά���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����R"
 ������
":*6gradient_tape/replica_3/vq_vae/vector_quantizer/Tile_1"
*output" "*[32,11,128,256]"   "� ����R"
 ������
"<*8gradient_tape/replica_3/vq_vae/vector_quantizer_1/Tile_1"
*output" "*[32,22,256,256]"   "s#����R"
 ������
"  "  "   "� ��ئR"
 ������
"<*8gradient_tape/replica_3/strided_slice_4/StridedSliceGrad"
*output" "*[32,46592,1]"   "x#����R"
 ������
"  "  "   "� �ة�R"
 ������
"v*rgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_4/StridedSliceGrad"
*output" "*[32,1,46592]"   "x#��۶R"
 ������
"  "  "   "=𛑸R�݆"
 ������
"  "  "   "7���R���"
 ������
":*6gradient_tape/replica_2/vq_vae/vector_quantizer/Cast_1"
*output" "*[]"   "t#ؚ�Ø"
 ������
"  "  "   "t#���ژ"
 ������
"  "  "   "� �����"
 ������
"e*agradient_tape/replica_2/vq_vae/vector_quantizer/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#���"
 �����
"  "  "   "� ����"
 �����
"e*agradient_tape/replica_2/vq_vae/vector_quantizer/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#����"
 ������
"  "  "   "y#��ҁ�"
 �����
"  "  "   "� ��⃙"
 �����
"e*agradient_tape/replica_2/vq_vae/vector_quantizer/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "y#�����"
 ������
"  "  "   "� �߹��"
 �ơ���
"C*?gradient_tape/replica_2/vq_vae/vector_quantizer/MatMul_1/MatMul"
*output" "
 �����
"  "  "   "y#�ط��"
 ������
"  "  "   ">��ש�ؠ�A"
 ���ǟ�
":*6gradient_tape/replica_1/vq_vae/vector_quantizer/Cast_1"
*output" "*[]"   "t#�����"
 ���ǟ�
"  "  "   "t#�ԁ��"
 ���ǟ�
"  "  "   "� 𴝿�"
 ��올�
"e*agradient_tape/replica_1/vq_vae/vector_quantizer/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#���ê"
 ��캤�
"  "  "   "� ���Ū"
 ��캤�
"e*agradient_tape/replica_1/vq_vae/vector_quantizer/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "y#���Ȫ"
 ��쪫�
"  "  "   "y#�ӊϪ"
 ��캤�
"  "  "   "� ���Ъ"
 ��캤�
"e*agradient_tape/replica_1/vq_vae/vector_quantizer/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "y#���Ԫ"
 ��올�
"  "  "   "� Н�ڪ"
 ��쪫�
"C*?gradient_tape/replica_1/vq_vae/vector_quantizer/MatMul_1/MatMul"
*output" "
 ��캤�
"  "  "   "y#���"
 ���Ȣ�
"  "  "   ">Ь����ٙ;"
 ������
"<*8gradient_tape/replica_3/vq_vae/vector_quantizer_1/Cast_1"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� �Ɲ��"
 ������
"g*cgradient_tape/replica_3/vq_vae/vector_quantizer_1/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�ʕ��"
 ������
"  "  "   "� �����"
 ������
"g*cgradient_tape/replica_3/vq_vae/vector_quantizer_1/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�����"
 ������
"  "  "   "z#����"
 ������
"  "  "   "� Ȩ���"
 ������
"g*cgradient_tape/replica_3/vq_vae/vector_quantizer_1/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "y#Ȅ���"
 ������
"  "  "   "� �����"
 ������
"E*Agradient_tape/replica_3/vq_vae/vector_quantizer_1/MatMul_1/MatMul"
*output" "
" ����"CE�"Z�?" ����" ���X" ���n"
 ������
"  "  "   "{#��ڌ�"
 ������
"  "  "   ">��������7"
 ������
"<*8gradient_tape/replica_2/vq_vae/vector_quantizer_1/Cast_1"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� м���"
 ������
"g*cgradient_tape/replica_2/vq_vae/vector_quantizer_1/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�����"
 �����
"  "  "   "� ��Ճ�"
 �����
"g*cgradient_tape/replica_2/vq_vae/vector_quantizer_1/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#��ӆ�"
 ������
"  "  "   "y#��ˌ�"
 �����
"  "  "   "� ��Ď�"
 ������
"g*cgradient_tape/replica_2/vq_vae/vector_quantizer_1/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "y#�����"
 ������
"  "  "   "� У���"
 ������
"E*Agradient_tape/replica_2/vq_vae/vector_quantizer_1/MatMul_1/MatMul"
*output" "
" ����"yo�GM`�?" ���" ���X" ���n"
 ������
"  "  "   "{#�����"
 ������
"  "  "   "?��������E"
 ������
"2*.gradient_tape/vq_vae/vector_quantizer_1/Cast_1"
*output" "*[]"   "t#����"
 ������
"  "  "   "t#��ח�"
 ������
"  "  "   "� �����"
 ����
"]*Ygradient_tape/vq_vae/vector_quantizer_1/pow_3/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#�ٖ��"
 �����
"  "  "   "� �����"
?" ����" ���X" ���n"
 �����
"]*Ygradient_tape/vq_vae/vector_quantizer_1/pow_2/mul_1-1-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "y#Ї���"
 �����
"  "  "   "y#؇���"
[�?" ����" ���X" ���n"
 �����
"  "  "   "� آ�¿"
 �����
"]*Ygradient_tape/vq_vae/vector_quantizer_1/sub_2/Sum-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "y#�Ջȿ"
 ����
"  "  "   "� ���ӿ"
 ������
";*7gradient_tape/vq_vae/vector_quantizer_1/MatMul_1/MatMul"
*output" "
" ����"@&c�%�?" ����" ���X" ���n"
 �����
"  "  "   "{#����"
 �����
"  "  "   ">������-"
 ������
"*replica_2/Cast"
*output" "*[]"   "t#虡��"
 ������
"  "  "   "t#���"
 ������
"  "  "   "� ��ҡ�"*gpu_host_bfc"  "
 �ކ���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   ">��´����"
 ������
"c*_gradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/DynamicStitch"
*output" "*[5]"   "t#�����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "� �����"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   ">�����ٗ"
 ������
"c*_gradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/DynamicStitch"
*output" "*[5]"   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� �ȍ��"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   ">��������"
 ������
"Y*Ugradient_tape/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/DynamicStitch"
*output" "*[5]"   "t#����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� �����"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   ">���Ч�"
 ������
"*gradient_tape/Cast"
*output" "*[]"   "t#����"
 ������
"  "  "   "t#��Г�"
 ������
"  "  "   "y#��ޘ�"
 ��ւ�
"  "  "   ">ȳؠ����"
 ������
"*replica_3/Cast"
*output" "*[]"   "t#��¥�"
 ������
"  "  "   "t#��ê�"
 ������
"  "  "   "� ��߯�"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   ">أܷ����"
 �̆���
"  "  "   "t#����"*gpu_host_bfc"  "
 ������
"  "  "   "t#н��"*gpu_host_bfc"  "
 ������
"  "  "   "CO�������	"*div_no_nan_2/AddN"*div_no_nan_2"   ""  "� ȣ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "2&������"
 �؆���
"  "  "   "t#ङ��"*gpu_host_bfc"  "
 �Ԇ���
"  "  "   "t#Ъ���"*gpu_host_bfc"  "
 ����
"  "  "   "CQ�泏����"*div_no_nan_1/AddN"*div_no_nan_1"   ""  "� �����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   ">��˟��ҫ
 �܆���
"  "  "   "t#��ע�"*gpu_host_bfc"  "
 �ֆ���
"  "  "   "t#�ݡ��"*gpu_host_bfc"  "
 �Ć���
"  "  "   "ES�����Ș�"*div_no_nan_1/AddN_1"*div_no_nan_1"   ""  "� �ᙧ�"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "?�����أ��"
 ������
"  "  "   "� �����"
 ������
"a*]gradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/BroadcastTo"
*output" "*[32,1,4,91,512]"   "y#�Ѹ��"
 �ƍ���
"  "  "   "t#�����"*gpu_host_bfc"  "
 �چ���
"  "  "   "� �õ��"
 ��ܞ��
"v*rgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3/StridedSliceGrad"
*output" "*[32,1,368,512]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"i*egradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose/transpose"
*output" "*[32,1,92,4,512]"   "y#�����"
 ��ܞ��
"  "  "   "� �����"
 ������
"]*Ygradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Slice_1"
*output" "*[32,1,88,2048]"   "y#А���"
 ������
"  "  "   "u#�����"
 �Ġ���
"  "  "   "� �����"
 ������
"P*Lgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
*output" "*[32,1,88,1025]"   "� �����"
 �����
"P*Lgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
[46159872]"   "�#�س�"
 �����
"P*Lgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
 ������
"  "  "   "� ����"*gpu_host_bfc"  "
 ������
"[*Wgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/strided_slice_1"
*output" "*[1]"   "� �ߕ��"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[1]"   ">�ٻ����
"
 ������
"  "  "   "?�ȃ������"
 ������
"P*Lgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#ظ���"
 ������
"  "  "   "� �˲��"
 ������
"R*Ngradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast_1"
*output" "
*[1025]"   "u#�˙��"
 ������
"  "  "   "v#и���"
 ������
"  "  "   "� ���"
 ������
"S*Ogradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/Slice_1"
*output" "*[32,1,88,1024]"   "y#����"
 ������
"  "  "   "� �ˊ�"
 �����
"h*dgradient_tape/replica_2/Complex/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_complex64_Imag"
*output" "*[32,1,88,1024]"   "� ����"
"
 �����
"(*$gradient_tape/replica_2/Complex/Real"
*output" "*[32,88,1024,1]"   "y#��Փ�"
 ������
"  "  "   "y#��۝�"
 ������
"  "  "   "y#����"
 ������
"  "  "   "y#�����"
 �����
"  "  "   "y#�ņ��"
"
 �����
"  "  "   "y#��׹�"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
" ����"<���h��?" ���" ���X" ����"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
*output" "*[32,64,44,512]"   "� �����"
" ����"�$rf`��?" ���" � " � "
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
[64,1,4,4]"   "� �����"
" �ݡ�"*���P��?" ���" ��" ��"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ����"�$rf`��?" ���" ��" ��"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ����"<���h��?" ���" � " � "
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ����"��ng��?" ���" " �"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/BiasAdd/BiasAddGrad"
*output" "*[1]"   "� �����"
" ����"5��^��?" ���" � " � "
 ������
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� �����"
" �ݩ�"�*wUV��?" ���" � " � "
 �Ġ���
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�����"
" ����"5��^��?" ���" � " � "
 �Ġ���
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
 ������
"  "  "   "y#����"
 ������
"  "  "   "� �����"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
*output" "*[32,128,22,256]"   "� �����"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� �͐��"
" ����"^����?" ���" ���X" ���X"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"^����?" ���" " �"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"^����?" ���" " �"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ������
"V*Rgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ������
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� �����"
 ������
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 �Ġ���
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*[4452]"   "�#�����"
 �Ġ���
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"h*dgradient_tape/replica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"  "  "   "y#ȕ���"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �Ġ���
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�Ɏ��"
 �Ġ���
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �Ġ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��ܐ�"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �˯��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
��׵?" ���" ��	" ��	"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
��׵?" ���" ��" ��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
��׵?" ���" ��	" ��	"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
��׵?" ���" ��	" ��	"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
��׵?" ���" �" �"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �٧��"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 �Ƞ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 �Ƞ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
��׵?" ���" ���" ���"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"

 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �д��"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �Ƞ���
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 �Ƞ���
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �Ƞ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� о̙�"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �̠���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 �̠���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ȕ��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ��ܼ�"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �̠���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �Π���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 �Π���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#ถ��"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �׾��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
*output" "*[32,512,22,256]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 �Π���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �Ҡ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �Ҡ���
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� 蟞��"
 ������
"8*4gradient_tape/replica_2/vq_vae/concatenate_1/Slice_1"
*output" "*[32,256,22,256]"   "� ���"
 ������
"6*2gradient_tape/replica_2/vq_vae/concatenate_1/Slice"
*output" "*[32,256,22,256]"   "{#Ȼ���"
 ������
"  "  "   "y#Ћ���"
 ������
"  "  "   "� ȇ©�"
 ������
"M*Igradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*output" "*[32,256,11,128]"   "� �����"
 ������
"M*Igradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 �Ҡ���
"M*Igradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*[8456]"   "�#�����"
 �Ҡ���
"M*Igradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"M*Igradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"[*Wgradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 �����
"[*Wgradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �Ҡ���
"[*Wgradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*[3556]"   "�#�����"
 �Ҡ���
"[*Wgradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �����
"[*Wgradient_tape/replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �Ҡ���
"I*Egradient_tape/replica_2/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 ������
"I*Egradient_tape/replica_2/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �ڠ���
"I*Egradient_tape/replica_2/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �ڠ���
"I*Egradient_tape/replica_2/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"I*Egradient_tape/replica_2/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
*output" "*[32,384,22,256]"   "� �����"
 �����
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"G*Cgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"H*Dgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"H*Dgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 ������
"H*Dgradient_tape/replica_2/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "� �᫛�"
 �ڠ���
"@*<gradient_tape/replica_2/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �ì��"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �⠗��
"@*<gradient_tape/replica_2/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �⠗��
"@*<gradient_tape/replica_2/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� мީ�"
 ������
"6*2gradient_tape/replica_2/vq_vae/concatenate/Slice_1"
*output" "*[32,128,22,256]"   "� ��®�"
 ������
"4*0gradient_tape/replica_2/vq_vae/concatenate/Slice"
*output" "*[32,256,22,256]"   "{#�ϫ��"
 ������
"  "  "   "� Ћ���"
 ������
"X*Tgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*output" "*[32,128,11,128]"   "� Ѕ��"
 ������
"X*Tgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 �⠗��
"X*Tgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*[8456]"   "�#�����"
 �⠗��
"X*Tgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ������
"X*Tgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ������
"f*bgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
xr?" ���" ���" ���"
 ������
"f*bgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 �⠗��
"f*bgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*[3428]"   "�#�����"
xr?" ���" �" �"
 �⠗��
"f*bgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ������
"f*bgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ������
"  "  "   "� Ѕ���"
 �⠗��
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� И���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 �ꠗ��
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 �ꠗ��
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 ��ٛ��
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ����
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ����
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ��ٛ��
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �Ƃ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �Ƃ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �ꠗ��
"M*Igradient_tape/replica_2/vq_vae/functional_5/conv2d_17/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#����"
 ������
"  "  "   "� ���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 �Ƃ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �Ƃ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �Ƃ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� н���"
 �Ƌ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 �Ƌ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ���
"M*Igradient_tape/replica_2/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#ر���"
 �����
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �́��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 �Ƌ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �Ɣ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
�?" ���" ��" ��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
H�?" ���" ���" ���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �Ƌ���
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �Ƌ���
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 ����
"M*Igradient_tape/replica_2/vq_vae/functional_5/conv2d_15/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#�����"
 �Ɣ���
"  "  "   "y#�����"
 ������
"  "  "   "y#����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
*output" "*[32,256,11,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "� �����"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_5/conv2d_13/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "y#��Ӂ�"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �Ϥ��"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"H*Dgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"H*Dgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ������
"H*Dgradient_tape/replica_2/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_2/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 �Ɣ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �Ɲ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �Ɣ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �Ɣ���
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_3/conv2d_12/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� ����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �ɐ��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ��ޗ�"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#���"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#�����"
 �Ɲ���
"  "  "   "y#�ф��"
 ������
"  "  "   "y#��ƴ�"
 ������
"  "  "   "� Ȉ���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� ���"
 �Ɲ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ʀ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ɔ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ɔ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ɲ���
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ɲ���
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_2/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_2/vq_vae/functional_3/conv2d_10/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#Ȱޗ�"
 �Ʀ���
"  "  "   "y#�Ʃ��"
 ������
"  "  "   "y#����"
 ������
"  "  "   "� ��̡�"
 �Ʀ���
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,11,128]"   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
E�?" ���" ���)" ���)"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
[86114304]"   "�#��ȳ�"
 �Ʀ���
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,64,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
[86114304]"   "�#�����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
��?" ���" �" �"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_3/conv2d_8/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#蠜��"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �ۚ��"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
[89178112]"   "�#�꾚�"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,128,64]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*[3364]"   "�#�����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_3/conv2d_7/BiasAdd/BiasAddGrad"
*output" "*[64]"   "y#��ڿ�"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
��+�?" ���" ��" ��"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
�`�ޤ?" ���" ��	" ��	"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
�`�ޤ?" ���" ��" ��"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
�`�ޤ?" ���" ��	" ��	"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
}�?" ���" ����" ����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
�`�ޤ?" ���" ��	" ��	"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
�`�ޤ?" ���" �" �"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ��Ȼ�"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
�`�ޤ?" ���" ���" ���"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#Ⱦ���"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ؕ���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ȟ���"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �ᬡ�"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �ɀ��"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#��ѿ�"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ����"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,44,512]"   "� ��ρ�"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� �Ц��"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*[4452]"   "�#���"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��׷�"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_2/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"R*Ngradient_tape/replica_2/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� �����"
 �ı���
"R*Ngradient_tape/replica_2/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�����"
 �ı���
"R*Ngradient_tape/replica_2/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
 �����
"  "  "   "� Ј���"
 ������
"J*Fgradient_tape/replica_2/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� �����"
 ������
"J*Fgradient_tape/replica_2/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_2/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_2/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_2/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 �Ʀ���
"*
*output" "
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�͆�"
 ������
"  "  "   "t#�߆��"
 ������
"  "  "   "v#�ƽ��"
JѶ?" ���" ��$" ��$"
 ������
"  "  "   "t#��퇀"
 ������
"  "  "   "v#𧥈�"
 ������
"  "  "   "t#��ш�"
 ������
"  "  "   "v#�׍��"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#����"
 ������
"  "  "   "t#�󥊀"
 ������
"  "  "   "v#��㊀"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#��ό�"
 ������
"  "  "   "v#�Α��"
 ������
"  "  "   "t#��ȍ�"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#��㎀"
۶?" ���" ��	" ��	"
 �Ɲ���
"  "  "   "t#�����"
 ������
"  "  "   "v#��ʏ�"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 �Ɣ���
"  "  "   "t#��ސ�"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#𧇒�"
 ������
"  "  "   "v#��ޒ�"
 �ơ���
"  "  "   "v#�ᐓ�"
 ������
"  "  "   "t#���"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#Ȥ���"
 ������
"  "  "   "v#��딀"
 �Ƌ���
"  "  "   "t#�җ��"
 ����
"  "  "   "v#��ɕ�"
 �Ƃ���
"  "  "   "t#�����"
 ���
"  "  "   "v#�ڳ��"
 ������
"  "  "   "t#���"
 �ꠗ��
"  "  "   "x#�����"
 ������
"  "  "   "t#ȫ���"
 �⠗��
"  "  "   "v#�㿘�"
 �����
"  "  "   "t#�����"
 �ڠ���
"  "  "   "x#�簙�"
 ������
"  "  "   "t#Ȕޙ�"
 �Ҡ���
"  "  "   "v#�ҕ��"
 ������
"  "  "   "x#��ǚ�"
 ������
"  "  "   "t#�����"
 �Π���
"  "  "   "v#�쫛�"
M����?" ���" ��	" ��	"
 ������
"  "  "   "t#��כ�"
M����?" ���" �" �"
 �̠���
"  "  "   "v#�����"
 ������
"  "  "   "t#��ʜ�"
 �Ƞ���
"  "  "   "v#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�㿞�"
 ������
"  "  "   "t#��란"
 �Ġ���
"  "  "   "v#�Ѩ��"
 ������
"  "  "   "t#��ڟ�"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "s#иʠ�"
 ������
"  "  "   ">��������*"
 �܆���
"  "  "   "t#�����"*gpu_host_bfc"  "
 �ކ���
"  "  "   "t#��ܬ�"*gpu_host_bfc"  "
 ������
"  "  "   "AU�̉���˦"*div_no_nan/AddN_1"*
div_no_nan"   ""  "� �����"
�?" ����" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "8&���Ҁ���"
 ������
"  "  "   "� ���݀"
 ���ɢ�
"a*]gradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/BroadcastTo"
*output" "*[32,1,4,91,512]"   "y#�ɰ�"
 ������
"  "  "   "t#����"*gpu_host_bfc"  "
 �����
"  "  "   "� ����"
 ���Ԣ�
"v*rgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3/StridedSliceGrad"
*output" "*[32,1,368,512]"   "y#����"
 ���ɢ�
"  "  "   "� �����"
 ���ߢ�
"i*egradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose/transpose"
*output" "*[32,1,92,4,512]"   "y#�Ձ��"
 ���Ԣ�
"  "  "   "� ખ��"
 ���ɢ�
"]*Ygradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Slice_1"
*output" "*[32,1,88,2048]"   "y#𭣅�"
 ���ߢ�
"  "  "   "u#�ʛ��"
 ���ǟ�
"  "  "   "� ��Д�"
 ���Ԣ�
"P*Lgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
*output" "*[32,1,88,1025]"   "� ����"
 ������
"P*Lgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
[46159872]"   "�#����"
 ������
"P*Lgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
 ���ɢ�
"  "  "   "� ����"*gpu_host_bfc"  "
 ������
"[*Wgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/strided_slice_1"
*output" "*[1]"   "� ����"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[1]"   "?��Ȳ�ȁ��"
 ���ǟ�
"P*Lgradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast"
*output" "*[]"   "t#��Ӿ�"
 ���ǟ�
"  "  "   "t#��ȃ"
 ���ǟ�
"  "  "   "� ���Ƀ"
 ���ǟ�
"R*Ngradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast_1"
*output" "
*[1025]"   "u#���΃"
 ���ǟ�
"  "  "   "u#���Ճ"
 ���ǟ�
"  "  "   "� ���׃"
 ���ɢ�
"S*Ogradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/irfft/Slice_1"
*output" "*[32,1,88,1024]"   "y#���܃"
 ���Ԣ�
"  "  "   "� ȏ���"
 ���ǟ�
"h*dgradient_tape/replica_1/Complex/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_complex64_Imag"
*output" "*[32,1,88,1024]"   "� ����"
 ���Ԣ�
"(*$gradient_tape/replica_1/Complex/Real"
*output" "*[32,88,1024,1]"   "y#؉��"
 ���ɢ�
"  "  "   "y#����"
 ���ݟ�
"  "  "   "y#�����"
 �����
"  "  "   "y#��倄"
 ���ǟ�
"  "  "   "y#�ꈇ�"
 ���Ԣ�
"  "  "   "y#�����"
 ��쯤�
"  "  "   "y#��¡�"
 ������
"  "  "   "� 𪦥�"
" ���"U�W��?" ���" ���X" ����"
 ��쯤�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
*output" "*[32,64,44,512]"   "� �����"
" ���"��'����?" ���" � " � "
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
[64,1,4,4]"   "� �����"
" ���"�%�)뒰?" ���" ��" ��"
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ���"��'����?" ���" ��" ��"
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ���"U�W��?" ���" � " � "
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ���"X+$���?" ���" " �"
 ���ǟ�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/BiasAdd/BiasAddGrad"
*output" "*[1]"   "� ���ф"
" ���"�Z�F���?" ���" � " � "
 ���ݟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� ���Ԅ"
" ���"��,��?" ���" � " � "
 ���ݟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�؏�"
" ���"�Z�F���?" ���" � " � "
 ���ݟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
" ����"dt@���?" ���" ���" ���"
 ���͟�
"  "  "   "y#����"
 ���Ҫ�
"  "  "   "� �����"
 ���Ҫ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
*output" "*[32,128,22,256]"   "� �����"
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 �Čޟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 �Čޟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ���ݟ�
"Z*Vgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ���ǟ�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� ���"
" ����"Z*oG8-�?" ���" ���X" ���X"
 ��욧�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"�p�4-�?" ���" " �"
 ���ǟ�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"Z*oG8-�?" ���" " �"
 ���ǟ�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ��욧�
"V*Rgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ���ݟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� о���"
 �Čޟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 �Ĭޟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*[4452]"   "�#�����"
 �Ĭޟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 �Čޟ�
"h*dgradient_tape/replica_1/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ��쯤�
"  "  "   "y#���"
 ���̣�
"  "  "   "� ���ą"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ���ƅ"
 �Čޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ���ɢ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �ĕޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �ĕޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �Čޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 �Čޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 �ĕޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �Ğޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 �Ğޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 �ĕޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ���̣�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ���̣�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ��줤�
"  "  "   "� �أ��"
 ���̣�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �ݰ��"
 �ĕޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �Ğޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ���̣�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �Ğޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �ĕޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 �ĕޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 �Ğޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ��줤�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ��줤�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 �Ğޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �ӼɆ"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ���ɢ�
"  "  "   "y#���Ն"
 ������
"  "  "   "y#���چ"
 ������
"  "  "   "� ���܆"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ��ކ"
 �Ğޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ���ɢ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �ħޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �ħޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �Ğޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 �Ğޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �ħޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �İޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#����"
 �İޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 �ħޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� ��ߤ�"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �覇"
 �ħޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ��욧�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �İޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �İޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �ħޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 �ħޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �ԋ��"
 �İޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 �İޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ȋ�҇"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ���ɢ�
"  "  "   "y#���އ"
 ������
"  "  "   "y#����"
 ���Ҫ�
"  "  "   "y#�̬�"
 ���ʨ�
"  "  "   "� ����"
 ���Ƨ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
*output" "*[32,512,22,256]"   "� ����"
 �İޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
" ��Օ"�=��|�?" ���" ����" ����"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ���Ƨ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 �İޟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �İޟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �İޟ�
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 �İޟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
*output" "*
 ���ߟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ���ߟ�
"U*Qgradient_tape/replica_1/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ��좩�
"  "  "   "y#д���"
 ��욧�
"  "  "   "� �����"
 ��욧�
"8*4gradient_tape/replica_1/vq_vae/concatenate_1/Slice_1"
*output" "*[32,256,22,256]"   "� ��ѫ�"
 �����
"6*2gradient_tape/replica_1/vq_vae/concatenate_1/Slice"
*output" "*[32,256,22,256]"   "{#�㮈"
 ������
"  "  "   "y#Ȋ�"
 ��쾥�
"  "  "   "� �����"
 ���ɢ�
"M*Igradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*output" "*[32,256,11,128]"   "� ���"
 ���ߟ�
"M*Igradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 �����
"M*Igradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*[8456]"   "�#���̈"
 �����
"M*Igradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ���ߟ�
"M*Igradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ���ߟ�
"[*Wgradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 �����
"[*Wgradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �����
"[*Wgradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*[3556]"   "�#�Ы�"
 �����
"[*Wgradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �����
"[*Wgradient_tape/replica_1/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 �����
"I*Egradient_tape/replica_1/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 ������
"I*Egradient_tape/replica_1/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"I*Egradient_tape/replica_1/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"I*Egradient_tape/replica_1/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"I*Egradient_tape/replica_1/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 �����
"  "  "   "� �����"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
*output" "*[32,384,22,256]"   "� �̐��"
 �����
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ���Ť�
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
�8��?" ���" ����" ����"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"G*Cgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 �����
"H*Dgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
*output" "*
 �����
"H*Dgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 �����
"H*Dgradient_tape/replica_1/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 ��얦�
"  "  "   "� ��䴉"
 �����
"@*<gradient_tape/replica_1/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� ���"
 ������
"@*<gradient_tape/replica_1/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �����
"@*<gradient_tape/replica_1/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 �����
"@*<gradient_tape/replica_1/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_1/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ��욧�
"  "  "   "� ���ĉ"
 ������
"6*2gradient_tape/replica_1/vq_vae/concatenate/Slice_1"
*output" "*[32,128,22,256]"   "� ���ʉ"
 ������
"4*0gradient_tape/replica_1/vq_vae/concatenate/Slice"
*output" "*[32,256,22,256]"   "{#���Ή"
 ���Ť�
"  "  "   "� ���щ"
 ���ǟ�
"X*Tgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*output" "*[32,128,11,128]"   "� س�Ӊ"
 �����
"X*Tgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 �����
"X*Tgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*[8456]"   "�#����"
 �����
"X*Tgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 �����
"X*Tgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 �����
"f*bgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 �����
"f*bgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 �����
"f*bgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*[3428]"   "�#�����"
 �����
"f*bgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 �����
"f*bgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ��쫣�
"  "  "   "� �����"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� آᏊ"
 ���Ť�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ���Ť�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �ᕝ�"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
������?" ���" ���" ���"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �����
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �����
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_17/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#��֊"
 ��̘��
"  "  "   "� ���ي"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ���ۊ"
 ��̘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ��՘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ��՘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ��̘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ��̘��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ��՘��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#��Í�"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ��՘��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ��՘��
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ��ד�"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ��՘��
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ��՘��
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�Ԭ��"
 ��춣�
"  "  "   "y#�����"
 ������
"  "  "   "� ؕ���"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �Ԟ��"
 ��՘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
�?" ���" ��" ��"
 ��ޘ��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ��ޘ��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ��՘��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ��՘��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 ��ޘ��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 ��ޘ��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 ��ޘ��
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_15/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#轋؋"
 ��앣�
"  "  "   "� 艽ۋ"
���?" ���" ���" ���"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ���݋"
 ��ޘ��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ��춣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ��瘣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ��쫣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ��瘣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
���?" ���" ��	" ��	"
 ��ޘ��
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ��ޘ��
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 ��瘣�
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ��瘣�
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ��瘣�
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ��앣�
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ��瘣�
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ��瘣�
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ��앣�
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#��Ŝ�"
 ��슣�
"  "  "   "y#�����"
 ���ǟ�
"  "  "   "y#��ɩ�"
 ��젣�
"  "  "   "� �Ż��"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
*output" "*[32,256,11,128]"   "� ��í�"
 ��瘣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ��샤�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
p�?" ���" ���" ���"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ��샤�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
pU�?" ���" ��H" ��H"
 ��瘣�
"T*Pgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ��瘣�
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ��샤�
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ��샤�
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ��첢�
"  "  "   "� ���ڌ"
 ������
"M*Igradient_tape/replica_1/vq_vae/functional_5/conv2d_13/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#���ߌ"
 ��춣�
"  "  "   "y#����"
 ���ɢ�
"  "  "   "y#����"
 ������
"  "  "   "� ����"
 ���ǟ�
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ����"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
�F��?" ���" ���" ���
 ��슣�
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"H*Dgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"H*Dgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ������
"H*Dgradient_tape/replica_1/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ������
"@*<gradient_tape/replica_1/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� ��ؙ�"
 ��첢�
"@*<gradient_tape/replica_1/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_1/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_1/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ��첢�
"@*<gradient_tape/replica_1/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �㉪�"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
��?" ���" ��" ��"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ���ō"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_12/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#����"
 ������
"  "  "   "� ����"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ����"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��짢�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
�(z�c�?" ���" �S" �T"
 ��ə��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��ə��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ��ə��
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#��̗�"
 ������
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ��ə��
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ��ə��
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ��ə��
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ��ə��
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 �����
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�ѝ��"
 ������
"  "  "   "y#�Ƥ��"
 ��슣�
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 ��ə��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ҙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ҙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ə��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ə��
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� Ⱦ�͎"
 ��ҙ��
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 ��ҙ��
"U*Qgradient_tape/replica_1/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 ��ҙ��
"M*Igradient_tape/replica_1/vq_vae/functional_3/conv2d_10/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#����"
 ������
"  "  "   "� ����"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� ���"
 ��ҙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ��ۙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ��ۙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ��ҙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ��ҙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �ڂ��"
 ��ۙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�ʖ��"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ��ۙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ��ۙ��
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ��ĝ�"
 ������
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ��ۙ��
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ��ۙ��
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#��Ū�"
 ������
"  "  "   "y#�迯�"
 ��짢�
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,11,128]"   "� �띳�"
 ��ۙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
[86114304]"   "�#���ŏ"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ��ۙ��
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ��ۙ��
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,64,128]"   "� ���̏"
 ��홣�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
[86114304]"   "�#���ۏ"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ��홣�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ��홣�
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_8/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#���"
 ���ǟ�
"  "  "   "y#����"
 ���؟�
"  "  "   "� ����"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ����"
 ��홣�
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ���ɢ�
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
[89178112]"   "�#�����"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ��홣�
"S*Ogradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ��홣�
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,128,64]"   "� ���Ɛ"
�?" ���" �� " �� "
 �ȍ���
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
�?" ���" �" �"
 �ȭ���
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*[3364]"   "�#����"
�?" ���" �" �"
 �ȭ���
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 �ȍ���
"T*Pgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 �ȍ���
"L*Hgradient_tape/replica_1/vq_vae/functional_3/conv2d_7/BiasAdd/BiasAddGrad"
*output" "*[64]"   "y#����"
 ������
"  "  "   "y#���"
 ���ɢ�
"  "  "   "y#�����"
 �����
"  "  "   "� �����"
 ���ǟ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� Ѕ���"
 �ʍ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �ʖ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �ʖ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �ʍ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 �ʍ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ��ȓ�"
 �ʖ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 �ʟ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 �ʟ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 �ʖ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 �ʖ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 �����
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 �Ζ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 �Ζ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 �����
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� ���"
 �����
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ���ő"
 �Ζ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �Ο���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �Ο���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �Ζ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �Ζ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ���ܑ"
 �Ο���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 �Ο���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 �Ο���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� ����"
 ���ǟ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 �П���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 �П���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ���ǟ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�Ž��"
 ���ա�
"  "  "   "y#���"
 ������
"  "  "   "� ��ۇ�"
 ���ǟ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ��ĉ�"
 �П���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �Ш���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ���ǟ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �Ш���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �П���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 �П���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �۶��"
 �Ш���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 �б���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 �б���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 �Ш���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 �Ш���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� آ���"
 ���ա�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 �Ԩ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 �Ԩ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ���ա�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ���ʡ�
"  "  "   "� ���͒"
 ���ʡ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ���ϒ"
 �Ԩ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ���ɢ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 �Ա���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ���ʡ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 �Ա���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 �Ԩ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 �Ԩ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 �Ա���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 �Ա���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 �Ա���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� Ȏ���"
 ���ǟ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �ֱ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �ֱ���
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ���ǟ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �����
"  "  "   "y#��܆�"
 ������
"  "  "   "y#��鋓"
 ������
"  "  "   "� 𢽍�"
 �����
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �̱��"
 �ֱ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 �ֱ���
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 �ֱ���
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
*output" "*
 ��՚��
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ��՚��
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ��՚��
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��㽓"
 �����
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ��՚��
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ��՚��
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 �����
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ���ɢ�
"  "  "   "y#���ȓ"
 ���Ơ�
"  "  "   "� ���˓"
 ���Ơ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,44,512]"   "� ��͓"
 ��՚��
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ���ʡ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ���Ơ�
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ��՚��
"S*Ogradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ��՚��
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� ���"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*[4452]"   "�#�ϳ��"
 �����
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �񠑔"
 ���ɢ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ���ɢ�
"L*Hgradient_tape/replica_1/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�ꘞ�"
 �����
"  "  "   "� �✡�"
 ������
"R*Ngradient_tape/replica_1/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� ��ӣ�"
 ������
"R*Ngradient_tape/replica_1/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�����"
 ������
"R*Ngradient_tape/replica_1/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
 �����
"  "  "   "� �ɛ��"
 ������
"J*Fgradient_tape/replica_1/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� О���"
 �����
"J*Fgradient_tape/replica_1/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_1/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_1/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 �����
"J*Fgradient_tape/replica_1/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ���ʡ�
"  "  "   "� ���̔"
 ���ǟ�
"*
*output" "
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"  "  "   "t#ȇ��"
 ������
"  "  "   "v#ে��"
�?" ���" �� " �� "
 ��՚��
"  "  "   "t#�����"
�?" ���" �" �"
 ������
"  "  "   "v#�ߣ��"
�?" ���" ��$" ��$"
 �ֱ���
"  "  "   "t#�����"
�?" ���" �" �"
 ��՚��
"  "  "   "v#�����"
�?" ���" ��	" ��	"
 �Ԩ���
"  "  "   "t#�����"
�?" ���" �" �"
 �Ա���
"  "  "   "v#���"
�?" ���" ��	" ��	"
 �П���
"  "  "   "t#�����"
�?" ���" �" �"
 �Ш���
"  "  "   "v#�����"
 �Ζ���
"  "  "   "t#�����"
 �Ο���
"  "  "   "v#�����"
 �ʍ���
"  "  "   "t#Ц���"
 �ʖ���
"  "  "   "v#����"
 ��홣�
"  "  "   "t#�����"
 �ȍ���
"  "  "   "v#�����"
 ��ۙ��
"  "  "   "t#�����"
 ��홣�
"  "  "   "v#����"
 ��ҙ��
"  "  "   "t#�����"
 ��ۙ��
"  "  "   "v#�����"
 ��ə��
"  "  "   "t#�����"
 ��ҙ��
"  "  "   "v#�����"
 ������
"  "  "   "t#К���"
 ��ə��
"  "  "   "v#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#ȳ���"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#��Ҁ�"
 ��쪫�
"  "  "   "v#�ǡ��"
 ��瘣�
"  "  "   "t#���"
 ������
"  "  "   "v#�ꢂ�"
 ��ޘ��
"  "  "   "t#��Ԃ�"
 ��瘣�
"  "  "   "v#�����"
 ��՘��
"  "  "   "t#�����"
TѶ?" ���" �" �"
 ��ޘ��
"  "  "   "v#��惕"
 ��̘��
"  "  "   "t#�䖄�"
 ��՘��
"  "  "   "v#ة���"
 ������
"  "  "   "t#�����"
 �����
"  "  "   "x#��څ�"
 �����
"  "  "   "t#�����"
 �����
"  "  "   "v#𲎇�"
 �����
"  "  "   "t#��"
 �����
"  "  "   "x#Țψ�"
 ���ߟ�
"  "  "   "t#�����"
 �����
"  "  "   "v#��ى�"
 ���Ȣ�
"  "  "   "x#�Ş��"
 �İޟ�
"  "  "   "t#��ˊ�"
 ���ǟ�
"  "  "   "v#�����"
 �ħޟ�
"  "  "   "t#�ᾋ�"
 ���ǟ�
"  "  "   "v#�􋌕"
 �Ğޟ�
"  "  "   "t#��Č�"
 ���ǟ�
"  "  "   "v#�����"
 �ĕޟ�
"  "  "   "t#�ɳ��"
 ���ǟ�
"  "  "   "v#�����"
 �Čޟ�
"  "  "   "t#��Ɏ�"
 ���ǟ�
"  "  "   "v#�����"
 ���ݟ�
"  "  "   "t#��ď�"
 ���ǟ�
"  "  "   "t#�Ή��"
 ���ݟ�
"  "  "   "s#��ʐ�"
 ���ǟ�
"  "  "   ">����谔V"
 ������
"  "  "   ">�˧�����
 ������
"*Adam/split_5"
 ������
"*Adam/split_5"
 ���؟�
"*Adam/split_5"
*output" "
*[1024]"   "� �����"
 ���ǟ�
"*Adam/split_5"
*output" "*[64]"   "� �㢣�"
 �Ġ؟�
"*Adam/split_5"
*output" "*[131072]"   "� ��Ӥ�"
 ���ǟ�
"*Adam/split_5"
*output" "	*[128]"   "� ȄΥ�"
 ���؟�
"*Adam/split_5"
*output" "*[147456]"   "� إڦ�"
 ���ǟ�
"*Adam/split_5"
*output" "	*[128]"   "� ����"
 ���؟�
"*Adam/split_5"
*output" "*[36864]"   "� �ڠ��"
 ���ǟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���؟�
"*Adam/split_5"
*output" "*[36864]"   "� �靫�"
 ���ǟ�
"*Adam/split_5"
*output" "	*[128]"   "� ���"
 ���؟�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ǟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���؟�
"*Adam/split_5"
*output" "*[36864]"   "� �҉��"
 �Ĉٟ�
"*Adam/split_5"
*output" "	*[128]"   "� �����"
 �Ȉٟ�
"*Adam/split_5"
*output" "*[131072]"   "� �҃��"
 ���ǟ�
"*Adam/split_5"
*output" "*[64]"   "� �����"
 �Ȩٟ�
"*Adam/split_5"
*output" "*[73728]"   "� �睳�"
 �Ⱥٟ�
"*Adam/split_5"
*output" "	*[128]"   "� Х���"
 �̺ٟ�
"*Adam/split_5"
*output" "*[36864]"   "� �흵�"
 ���ٟ�
"*Adam/split_5"
*output" "*[32]"   "� �ǩ��"
 ���ٟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ٟ�
"*Adam/split_5"
*output" "	*[128]"   "� ����"
 ���ٟ�
"*Adam/split_5"
*output" "*[36864]"   "� ����"
 ���ٟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���ٟ�
"*Adam/split_5"
*output" "*[36864]"   "� ����"
 ���ٟ�
"*Adam/split_5"
*output" "	*[128]"   "� �↽�"
 ���ٟ�
"*Adam/split_5"
*output" "*[32768]"   "� 𢺾�"
 ���ٟ�
"*Adam/split_5"
*output" "	*[256]"   "� �뱿�"
 ���ٟ�
"*Adam/split_5"
*output" "*[131072]"   "� �ʟ��"
 ���ڟ�
"*Adam/split_5"
*output" "*[294912]"   "� �˙��"
 ���ڟ�
"*Adam/split_5"
*output" "	*[128]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[36864]"   "� Ж���"
 ���ڟ�
"*Adam/split_5"
*output" "	*[128]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ڟ�
"*Adam/split_5"
*output" "	*[128]"   "� 訇��"
 ���ڟ�
"*Adam/split_5"
*output" "*[524288]"   "� �����"
 ���۟�
"*Adam/split_5"
*output" "	*[256]"   "� �����"
 ���۟�
"*Adam/split_5"
*output" "*[98304]"   "� �����"
 ���ܟ�
"*Adam/split_5"
*output" "	*[256]"   "� �����"
 ���ܟ�
"*Adam/split_5"
*output" "
 ���ޟ�
"*Adam/split_5"
*output" "	*[256]"   "� �����"
 ���ޟ�
"*Adam/split_5"
*output" "*[131072]"   "� ���"
 ���ޟ�
"*Adam/split_5"
*output" "*[589824]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "	*[128]"   "� �ŗ��"
 ���ߟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[36864]"   "� �Ȫ��"
 ���ߟ�
"*Adam/split_5"
*output" "	*[128]"   "� ����"
 ���ߟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[32]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[36864]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "	*[128]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[131072]"   "� ����"
 ���ߟ�
"*Adam/split_5"
*output" "*[64]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "
*[1024]"   "� �����"
 ���ߟ�
"*Adam/split_5"
*output" "*[1]"   "� �����"
 ���ߟ�
"*Adam/split_5"
 ���ߟ�
"*Adam/split_5"
 ���ߟ�
"*Adam/split_5"
 ������
"*Adam/split_5"
 ���ߟ�
"*Adam/split_5"
 ������
"*Adam/split_5"
 ���ǟ�
"  "  "   "t#�Ϗ��"
 ���ǟ�
"  "  "   "t#����"
 ���ǟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "t#�����"
 �Ĉٟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "t#�����"
 ���ٟ�
"  "  "   "t#�ě��"
 �Ⱥٟ�
"  "  "   "t#裖��"
 ���ٟ�
"  "  "   "t#�����"
 ���ٟ�
"  "  "   "t#��ǘ�"
 ���ٟ�
"  "  "   "t#��ƞ�"
 ���ٟ�
"  "  "   "t#����"
 ���ڟ�
"  "  "   "t#�ﴮ�"
 ���ڟ�
"  "  "   "t#�����"
 ���ڟ�
"  "  "   "t#�ж��"
 ���ڟ�
"  "  "   "t#�ɮ��"
 ���ڟ�
"  "  "   "t#�����"
�5�b?" ���" �" �"
 ���ߟ�
"  "  "   "t#�����"
 ���۟�
"  "  "   "t#з���"
 ���ܟ�
"  "  "   "t#�����"
 ���ߟ�
"  "  "   "t#�����"
 ���ޟ�
"  "  "   "t#�����"
 ���ߟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "t#�Ԗ��"
 ���ǟ�
"  "  "   "s#�����"
 ���ߟ�
"  "  "   "t#�淊�"
 ���ߟ�
"  "  "   "t#Ȝ��"
 ���ߟ�
"  "  "   "t#����"
 ���ߟ�
"  "  "   "t#�����"
 ���؟�
"  "  "   "v#�����"
 �Ġ؟�
"  "  "   "v#��ޯ�"
 ���؟�
"  "  "   "v#�����"
 ���؟�
"  "  "   "v#�櫼�"
 ���؟�
"  "  "   "v#�����"
 ���؟�
"  "  "   "v#����"
 ���؟�
"  "  "   "v#�����"
 �Ȉٟ�
"  "  "   "v#�����"
 ���ٟ�
"  "  "   "v#�����"
 ���ٟ�
"  "  "   "v#�����"
 �̺ٟ�
"  "  "   "v#����"
 �Ȩٟ�
"  "  "   "v#�����"
 ���ٟ�
"  "  "   "v#�����"
 ���ٟ�
"  "  "   "v#�����"
 ���ڟ�
"  "  "   "v#ಁ��"
 ���ٟ�
"  "  "   "v#�����"
 ���ڟ�
"  "  "   "v#�ɏ�"
 ���ڟ�
"  "  "   "v#�����"
 ���ڟ�
"  "  "   "x#�շ��"
 ���ڟ�
"  "  "   "v#����"
 ���ڟ�
"  "  "   "v#�Ń��"
 ���۟�
"  "  "   "v#�ɱ��"
 ���ߟ�
"  "  "   "x#�Ү��"
 ���ܟ�
"  "  "   "v#�����"
 ���ޟ�
"  "  "   "v#�����"
�t�m?" ���" ��	" ��	"
 ���ߟ�
"  "  "   "v#�����"
 ���ߟ�
"  "  "   "x#�ܻ��"
 ���ޟ�
"  "  "   "t#�����"
 ���ߟ�
"  "  "   "v#�ʉ��"
 ���ߟ�
"  "  "   "s#�����"
 ���ǟ�
"  "  "   "s#�����"
 ���ǟ�
"  "  "   "s#���"
 ���ǟ�
"  "  "   "s#跁��"
 ���ǟ�
"  "  "   "s#�����"
 ���ǟ�
"  "  "   "v#�����"
 ���ߟ�
"  "  "   "?о�������"
 ������
"*Adam/split_4"
 ������
"*Adam/split_4"
 ������
"*Adam/split_4"
*output" "
*[1024]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[64]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[131072]"   "� �Ӂ��"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[147456]"   "� ����"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� �����"
 �С���
"*Adam/split_4"
*output" "*[32]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� ��ـ�"
 �ҡ���
"*Adam/split_4"
*output" "	*[128]"   "� ��΁�"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� 𜽂�"
 �֡���
"*Adam/split_4"
*output" "*[32]"   "� ��у�"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� ��Ȅ�"
 �ء���
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[131072]"   "� �����"
 �ܡ���
"*Adam/split_4"
*output" "*[64]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[73728]"   "� к��"
 �ޡ���
"*Adam/split_4"
*output" "	*[128]"   "� ��ʈ�"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� Ⱦ��"
 �����
"*Adam/split_4"
*output" "*[32]"   "� ��Ӡ�"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� �����"
 �����
"*Adam/split_4"
*output" "	*[128]"   "� �ņ��"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[32]"   "� ����"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� ȋ��"
 �����
"*Adam/split_4"
*output" "	*[128]"   "� ��ۥ�"
 �����
"*Adam/split_4"
*output" "*[32768]"   "� ��Ӧ�"
 ������
"*Adam/split_4"
*output" "	*[256]"   "� �ز��"
 �����
"*Adam/split_4"
*output" "*[131072]"   "� �ʗ��"
 �����
"*Adam/split_4"
*output" "*[294912]"   "� �����"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �ʩ�"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[32]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� ��Ы�"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �˷��"
��?" ����" ��	" ��	"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� �괭�"
��?" ����" �" �"
 ������
"*Adam/split_4"
*output" "*[32]"   "� �ų��"
 �����
"*Adam/split_4"
*output" "*[36864]"   "� �Ɋ��"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[524288]"   "� лŰ�"
 ������
"*Adam/split_4"
*output" "	*[256]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[98304]"   "� ஊ��"
 ������
"*Adam/split_4"
*output" "	*[256]"   "� ����"
 �����
"*Adam/split_4"
*output" "
 ������
"*Adam/split_4"
*output" "	*[256]"   "� �����"
 �����
"*Adam/split_4"
*output" "*[131072]"   "� �����"
��?" ����" ���" ���"
 ������
"*Adam/split_4"
*output" "*[589824]"   "� ����"
��?" ����" �" �"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� ���"
 ������
"*Adam/split_4"
*output" "*[32]"   "� ��ɸ�"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� �晹�"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� ��˺�"
 ������
"*Adam/split_4"
*output" "*[32]"   "� 菰��"
 ������
"*Adam/split_4"
*output" "*[36864]"   "� ع���"
 ������
"*Adam/split_4"
*output" "	*[128]"   "� ����"
 ����
"*Adam/split_4"
*output" "*[131072]"   "� �����"
 ������
"*Adam/split_4"
*output" "*[64]"   "� �ݾ�"
 ������
"*Adam/split_4"
*output" "
*[1024]"   "� ����"
 �ڢ���
"*Adam/split_4"
*output" "*[1]"   "� �����"
 �ܢ���
"*Adam/split_4"
 �����
"*Adam/split_4"
 �����
"*Adam/split_4"
 �ܢ���
"*Adam/split_4"
 ������
"*Adam/split_4"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "t#�ɧ��"
 ������
"  "  "   "t#�ߴ��"
 ������
"  "  "   "t#��Д�"
 ������
"  "  "   "t#�����"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "t#��߬�"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�Ӻ��"
 ������
"  "  "   "t#����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "s#�����"
 �ڢ���
"  "  "   "t#�σ��"
 ������
"  "  "   "t#Ь���"
 ������
"  "  "   "t#Ь���"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#Ы���"
 �С���
"  "  "   "t#؅܃�"
 �֡���
"  "  "   "t#�����"
 �ҡ���
"  "  "   "t#����"
 �ܡ���
"  "  "   "t#�雘�"
 �ޡ���
"  "  "   "t#���"
 �ء���
"  "  "   "t#�����"
 �����
"  "  "   "t#��ư�"
 �����
"  "  "   "t#��Ǻ�"
 ������
"  "  "   "t#Ц���"
 ������
"  "  "   "t#����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "v#�����"
 �����
"  "  "   "x#����"
 �����
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "x#�����"
G�J��?" ����" ���" ���"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "v#�����"
 �����
"  "  "   "v#��㍀"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#��ƚ�"
 ����
"  "  "   "v#��Ơ�"
 �����
"  "  "   "t#�ˮ��"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#��粀"
 ������
"  "  "   "v#��Ḁ"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "v#���ŀ"
 �����
"  "  "   "v#���ˀ"
 �����
"  "  "   "v#���р"
 �����
"  "  "   "v#�ş׀"
 ������
"  "  "   "v#���݀"
 ������
"  "  "   "v#����"
 ������
"  "  "   "v#ر��"
 �����
"  "  "   "v#�����"
 ������
"  "  "   "v#�ǧ��"
 ������
"  "  "   "v#�����"
 �����
"  "  "   "v#���"
 �����
"  "  "   "v#��숁"
 �����
"  "  "   "s#��Ï�"
 ������
"  "  "   "s#�����"
 ������
"  "  "   "x#��㐁"
 �����
"  "  "   ">�������"
��Й"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ��͛"
 ���ǟ�
"-*)replica_1/vq_vae/vector_quantizer_1/pow_1"
*output" "
 ���ǟ�
"+*'replica_1/vq_vae/vector_quantizer/pow_1"
*output" "
 ���ǟ�
"-*)replica_1/vq_vae/vector_quantizer_1/Sum_1"
 ���ǟ�
"  "  "   "� ����"
 ���ǟ�
"+*'replica_1/vq_vae/vector_quantizer/Sum_1"
 ���ǟ�
"  "  "   "=��ӱО�("
 ���ǟ�
"R*Nreplica_1/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Sum"
 ���ǟ�
"S*Oreplica_1/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Tile"
*output" "*[4,512]"   "s#����"
 ���ǟ�
"  "  "   ">�������"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"#*vq_vae/vector_quantizer_1/pow_1"
*output" "
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"*Adam/add"
*output" 	"*[]"   "� 蝂�"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" 	"*[]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" 	"*[]"   "� ����"
 ������
"!*vq_vae/vector_quantizer/pow_1"
*output" "
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"#*vq_vae/vector_quantizer_1/Sum_1"
 ������
"  "  "   "� ��Ґ"
 ������
"*Adam/Cast_1"
*output" "*[]"   "r#��Ֆ"
 ������
"  "  "   "� ���"
 ������
"!*vq_vae/vector_quantizer/Sum_1"
 ������
"  "  "   "� ��ʞ"
 ������
"*Adam/Pow"
*output" "*[]"   "=���Ȟ�&"
 ������
"H*Dinverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Sum"
 ������
"I*Einverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Tile"
*output" "*[4,512]"   "s#����"
 ������
"  "  "   "7�����΁+"
*,/job:localhost/replica:0/task:0/device:CPU:0"=�������"
 ���ǟ�
"*Adam/Cast_9"
*output" "*[]"   "r#����"
 ���ǟ�
"  "  "   "� ȶ��"
 ���ǟ�
"*
Adam/Pow_5"
*output" "*[]"   "7����ء�"
*,/job:localhost/replica:0/task:0/device:CPU:0"=�������"
 ������
"*OptionalHasValue_2"
*output" 
"*[]"   "� ����"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   ">�̪���"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �ʬ�"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ؊��"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" 	"*[]"   "� �̔�"
?" ����" �� " �� "
 ������
"+*'replica_3/vq_vae/vector_quantizer/pow_1"
*output" "
 ������
"-*)replica_3/vq_vae/vector_quantizer_1/pow_1"
*output" "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����"
 ������
"+*'replica_3/vq_vae/vector_quantizer/Sum_1"
?" ����" �� " �� "
 ������
"  "  "   "� ���"
?" ����" �" �"
 ������
"-*)replica_3/vq_vae/vector_quantizer_1/Sum_1"
 ������
"  "  "   "=�������&"
 ������
"R*Nreplica_3/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Sum"
 ������
"S*Oreplica_3/inverse_stft/inverse_stft_tf.signal.istft/inverse_stft_window_fn/Tile"
*output" "*[4,512]"   "s#����"
 ������
"  "  "   "=�������"
*,/job:localhost/replica:0/task:0/device:CPU:0"=��ݴ���"
 ������
"*OptionalHasValue_4"
*output" 
"*[]"   "� ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "=�������"
 ������
"  "  "   "r#����"
 ������
"  "  "   "7����ش�"
"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[32,45056,2]"7�Ć�#���"
 ������
"  "  "   "r#����#"
 ������
"  "  "   "=誐�#�ȓ"
 ������
"
*Cast_1"
*output" 
"*[]"   "r#ࢲ�#"
 �¡���
"  "  "   "� ��҃$"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "� ����$"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "� ����$"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "� ��ܭ$"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "7𪿴$���"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" 
"*[]"   "=���+؟�"
 ������
"5*1replica_3/stft/stft_tf.signal.stft/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "x#����+"
 ������
"  "  "   "t#�Ћ�+"
 ������
"  "  "   "� ���+"
 ������
"+*'replica_3/stft/stft_tf.signal.stft/rfft"
*output" "*[32,1,88,1025]"   "� ����,"
 ������
"+*'replica_3/stft/stft_tf.signal.stft/rfft"
[46159872]"   "�#����-"
 ������
"+*'replica_3/stft/stft_tf.signal.stft/rfft"
 ������
"  "  "   "� ����-"
 ������
"*replica_3/strided_slice_2"
*output" "*[32,88,1024,1]"   "x#��-"
 ������
"  "  "   "� ���-"
@s;C?" ����" ���" ���"
 ������
"*replica_3/magnitude/Abs"
*output" "*[32,88,1024,1]"   "� ��Д-"
 ������
"*replica_3/phase/Angle"
*output" "*[32,88,1024,1]"   "x#�."
 ������
"  "  "   "� ��ڦ."
 ������
"*
*output" "*[32,88,1024,1]"   "� ����."
 ������
"&*"replica_3/magnitude_to_decibel/Max"
 ������
"&*"replica_3/magnitude_to_decibel/Max"
 ������
"&*"replica_3/magnitude_to_decibel/Max"
 ������
"  "  "   "=���.إ�"
 �����
"+*'stft/stft_tf.signal.stft/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#����."
 �����
"  "  "   "s#�ܨ�."
 ������
"  "  "   "� ����."
 �����
"!*stft/stft_tf.signal.stft/rfft"
*output" "*[32,1,88,1025]"   "� �Γ�2"
 ������
"!*stft/stft_tf.signal.stft/rfft"
[46159872]"   "�#���2"
 ������
"!*stft/stft_tf.signal.stft/rfft"
 �����
"  "  "   "� ��ª2"
 ����
"*strided_slice_2"
*output" "*[32,88,1024,1]"   "w#��2"
 �����
"  "  "   "� ���2"
 �����
"*
*output" "*[32,88,1024,1]"   "� ����2"
 �����
"*phase/Angle"
*output" "*[32,88,1024,1]"   "w#����2"
 ����
"  "  "   "� �Ȱ�2"
 ����
"*Cos"
*output" "*[32,88,1024,1]"   "� ����2"
 ������
"*magnitude_to_decibel/Max"
 ������
"*magnitude_to_decibel/Max"
 ������
"*magnitude_to_decibel/Max"
 ������
"  "  "   ">��ʣ3����"
 ������
"  "  "   "� ���3"
 ������
"*replica_2/strided_slice"
*output" "*
[32,45056]"   "� ����3"
 ������
"*replica_2/strided_slice_1"
*output" "*
[32,45056]"   "w#����3"
 ������
"  "  "   "� ��ɼ3"
 ������
"*replica_2/stft/Pad"
[32,46592]"   "� ���3"
 ������
"*replica_2/stft/Pad_1"
[32,46592]"   "w#����3"
 ������
"  "  "   "� ����3"*gpu_host_bfc"  "
 ������
"2*.replica_2/stft/stft_tf.signal.stft/frame/add_1"
*output" "
*[88,4]"   "� ���4"*gpu_host_bfc"  "
 ������
"4*0replica_2/stft/stft_tf.signal.stft_1/frame/add_1"
*output" "
*[88,4]"   "� ��Ȑ4"
 ������
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "� ���4"
 ������
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "=п��4�ԑ{"
 ���ǟ�
"  "  "   "� ����4"
 ���ǟ�
"*replica_1/strided_slice"
*output" "*
[32,45056]"   "� ���4"
 ���؟�
"*replica_1/strided_slice_1"
*output" "*
[32,45056]"   "w#ؽ��4"
 ���͟�
"  "  "   "� ȩ��4"
 ���͟�
"*replica_1/stft/Pad"
[32,46592]"   "� ����4"
 ���۟�
"*replica_1/stft/Pad_1"
[32,46592]"   "w#���4"
 ���؟�
"  "  "   "� ����5"*gpu_host_bfc"  "
 ������
"2*.replica_1/stft/stft_tf.signal.stft/frame/add_1"
*output" "
*[88,4]"   "� ���5"*gpu_host_bfc"  "
 ������
"4*0replica_1/stft/stft_tf.signal.stft_1/frame/add_1"
*output" "
*[88,4]"   "� ����5"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   "� �ˆ�5"
 ���ǟ�
"*SameWorkerRecvDone"  "*dynamic" "
*[88,4]"   ">���5����"
 �����
"7*3replica_2/stft/stft_tf.signal.stft_1/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "w#��Ҵ5"
 ������
"  "  "   "s#����5"
 ������
"  "  "   "� ���5"
 �����
"-*)replica_2/stft/stft_tf.signal.stft_1/rfft"
*output" "*[32,1,88,1025]"   "� ���7"
 ������
"-*)replica_2/stft/stft_tf.signal.stft_1/rfft"
[46159872]"   "�#�7"
 ������
"-*)replica_2/stft/stft_tf.signal.stft_1/rfft"
 �����
"  "  "   "� ����7"
 ������
"*replica_2/strided_slice_3"
*output" "*[32,88,1024,1]"   "w#��ԡ7"
 �����
"  "  "   "� ����7"
 �����
"*replica_2/magnitude/Abs_1"
*output" "*[32,88,1024,1]"   "w#Ѕ��7"
 ������
"  "  "   "� ����7"
 ������
"(*$replica_2/magnitude_to_decibel/Max_1"
 ������
"(*$replica_2/magnitude_to_decibel/Max_1"
 ������
"(*$replica_2/magnitude_to_decibel/Max_1"
 ������
"  "  "   "� �˦�7"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d/Conv2D"
*output" "*[32,64,44,512]"   "� ���7"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d/Conv2D"
[64,1,4,4]"   "� в��7"
�u��zl?" ���" ��" ��"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d/Conv2D"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d_1/Relu"
*output" "*[32,128,22,256]"   "� �Ə�7"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d_1/Relu"
 ������
"/*+replica_2/vq_vae/functional_1/conv2d_1/Relu"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_2/Conv2D"
*output" "*[32,128,22,256]"   "� Ч��8"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_2/Conv2D"
 ������
",*(replica_2/vq_vae/functional_1/re_lu/Relu"
*output" "*[32,128,22,256]"   "� �Զ�8"
 ������
".**replica_2/vq_vae/functional_1/re_lu_1/Relu"
*output" "*[32,32,22,256]"   "� �ʏ�8"
 ������
".**replica_2/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_1/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_1/Relu"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_4/Conv2D"
*output" "*[32,128,22,256]"   "� ب��8"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_4/Conv2D"
 ������
"  "  "   "� �Ɠ�8"
 ������
".**replica_2/vq_vae/functional_1/re_lu_2/Relu"
*output" "*[32,128,22,256]"   "� ����8"
 ������
".**replica_2/vq_vae/functional_1/re_lu_3/Relu"
*output" "*[32,32,22,256]"   "� ����8"
 ������
".**replica_2/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_3/Relu"
 ������
".**replica_2/vq_vae/functional_1/re_lu_3/Relu"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_6/Conv2D"
*output" "*[32,128,22,256]"   "� ����8"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_1/conv2d_6/Conv2D"
 ������
"  "  "   "� ����9"
 ������
"/*+replica_2/vq_vae/functional_3/conv2d_7/Relu"
*output" "*[32,64,11,128]"   "� �˚9"
 ������
"/*+replica_2/vq_vae/functional_3/conv2d_7/Relu"
 ������
"/*+replica_2/vq_vae/functional_3/conv2d_7/Relu"
*[8456]"   "�#��̨9"
 ������
"/*+replica_2/vq_vae/functional_3/conv2d_7/Relu"
 ������
"/*+replica_2/vq_vae/functional_3/conv2d_7/Relu"
 ������
"1*-replica_2/vq_vae/functional_3/conv2d_8/Conv2D"
*output" "*[32,128,11,128]"   "� ����9"
 ������
"1*-replica_2/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_3/conv2d_8/Conv2D"
[86114304]"   "�#Ƞʾ9"
 ������
"1*-replica_2/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
"1*-replica_2/vq_vae/functional_3/conv2d_8/Conv2D"
 ������
".**replica_2/vq_vae/functional_3/re_lu_5/Relu"
*output" "*[32,128,11,128]"   "� ���9"
 ������
".**replica_2/vq_vae/functional_3/re_lu_6/Relu"
*output" "*[32,32,11,128]"   "� Ȧ��9"
 ������
".**replica_2/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_6/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_6/Relu"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_10/Conv2D"
*output" "*[32,128,11,128]"   "� ���9"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_10/Conv2D"
*[8456]"   "�#����9"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_10/Conv2D"
 ������
"  "  "   "� ����9"
 ������
".**replica_2/vq_vae/functional_3/re_lu_7/Relu"
*output" "*[32,128,11,128]"   "� ����9"
 ������
".**replica_2/vq_vae/functional_3/re_lu_8/Relu"
*output" "*[32,32,11,128]"   "� ����9"
 ������
".**replica_2/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_8/Relu"
 ������
".**replica_2/vq_vae/functional_3/re_lu_8/Relu"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_12/Conv2D"
*output" "*[32,128,11,128]"   "� ����:"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_12/Conv2D"
*[8456]"   "�#����:"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_3/conv2d_12/Conv2D"
 ������
"  "  "   "� ����:"
 ������
"%*!replica_2/vq_vae/conv2d_23/Conv2D"
*output" "*[32,256,11,128]"   "� ���:"
 ������
"%*!replica_2/vq_vae/conv2d_23/Conv2D"
 ������
"%*!replica_2/vq_vae/conv2d_23/Conv2D"
*[8456]"   "�#�؇�:"
 ������
"%*!replica_2/vq_vae/conv2d_23/Conv2D"
 ������
"%*!replica_2/vq_vae/conv2d_23/Conv2D"
 ������
"N*Jreplica_2/vq_vae/conv2d_23/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� ����:"
 ������
")*%replica_2/vq_vae/vector_quantizer/pow"
*output" "*[45056,256]"   "� ����:"
 ������
",*(replica_2/vq_vae/vector_quantizer/MatMul"
*output" "*[45056,512]"   "x#Г��:"
 ������
"  "  "   "� ����:"
 ������
")*%replica_2/vq_vae/vector_quantizer/Sum"
 ������
"  "  "   "� ����:"
 ������
")*%replica_2/vq_vae/vector_quantizer/add"
*output" "*[45056,512]"   "v#豏�:"
 ������
"  "  "   "t#����:"
 ������
"  "  "   "x#����:"
 ������
"  "  "   "� �˞�:"
 ������
",*(replica_2/vq_vae/vector_quantizer/ArgMin"
*output" 	"*[45056]"   "x#����:"
 ������
"  "  "   "� ����:"
 ������
"-*)replica_2/vq_vae/vector_quantizer/one_hot"
*output" "*[45056,512]"   "v#���:"
 ������
"  "  "   "� ����:"
 ������
".**replica_2/vq_vae/vector_quantizer/MatMul_1"
*output" "*[45056,256]"   "� �ҋ�;"
 ������
"Q*Mreplica_2/vq_vae/vector_quantizer/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,11,128]"   "x#荸�;"
 ������
"  "  "   "� ��;"
 ������
"=*9gradient_tape/replica_2/vq_vae/vector_quantizer/pow_2/mul"
*output" "*[32,256,11,128]"   "� �Ř�;"
 ������
"+*'replica_2/vq_vae/vector_quantizer/pow_2"
*output" "*[32,256,11,128]"   "x#ة��;"
 ������
"  "  "   "� ����;"
 ������
"S*Oreplica_2/vq_vae/vector_quantizer/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,11,128,256]"   "� �נ;"
 ������
"**&replica_2/vq_vae/vector_quantizer/Mean"
 ������
"**&replica_2/vq_vae/vector_quantizer/Mean"
*[5887]"   "�#��ɩ;"
 ������
"**&replica_2/vq_vae/vector_quantizer/Mean"
 ������
"  "  "   "� ��ͮ;"
 ������
"0*,replica_2/vq_vae/functional_5/conv2d_13/Relu"
*output" "*[32,128,11,128]"   "� �ȫ�;"
 ������
"0*,replica_2/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_2/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_2/vq_vae/functional_5/conv2d_13/Relu"
 ������
"0*,replica_2/vq_vae/functional_5/conv2d_13/Relu"
 ������
":*6gradient_tape/replica_2/vq_vae/vector_quantizer/Prod_2"
*output" "*[]"   "x#����;"
 ������
"  "  "   "� ����;"
 ������
"+*'replica_2/vq_vae/vector_quantizer/mul_1"
*output" "*[]"   "� ����;"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_10/Relu"
*output" "*[32,128,11,128]"   "s#в��;"
 ������
"  "  "   "� ����;"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_11/Relu"
*output" "*[32,32,11,128]"   "� ����;"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_11/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_11/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_11/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_11/Relu"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����<"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_15/Conv2D"
*output" "*[32,128,11,128]"   "� ��ˋ<"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_15/Conv2D"
*[8456]"   "�#����<"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_15/Conv2D"
 ������
"8*4replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ���<"
����X?" ���" ���" ���"
 ������
"8*4replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"8*4replica_2/vq_vae/conv2d_transpose_3/conv2d_transpose"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_12/Relu"
*output" "*[32,128,11,128]"   "� ����<"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_13/Relu"
*output" "*[32,32,11,128]"   "� Г��<"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_13/Relu"
 ������
"/*+replica_2/vq_vae/functional_5/re_lu_13/Relu"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_17/Conv2D"
*output" "*[32,128,11,128]"   "� ુ�<"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_17/Conv2D"
*[8456]"   "�#���<"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_5/conv2d_17/Conv2D"
 ������
"  "  "   "� ة�="
 ������
"C*?replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
*output" "*[32,256,22,256]"   "� ���="
 ������
"C*?replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"C*?replica_2/vq_vae/functional_5/conv2d_transpose/conv2d_transpose"
 ������
"'*#replica_2/vq_vae/concatenate/concat"
*output" "*[32,384,22,256]"   "x#���="
 ������
"  "  "   "� ��ܯ="
 ������
"%*!replica_2/vq_vae/conv2d_24/Conv2D"
*output" "*[32,256,22,256]"   "� ��ı="
 ������
"%*!replica_2/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_2/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_2/vq_vae/conv2d_24/Conv2D"
 ������
"%*!replica_2/vq_vae/conv2d_24/Conv2D"
 ������
"N*Jreplica_2/vq_vae/conv2d_24/BiasAdd-0-1-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ����="
 ������
"+*'replica_2/vq_vae/vector_quantizer_1/pow"
*output" "*[180224,256]"   "� ����="
 ������
".**replica_2/vq_vae/vector_quantizer_1/MatMul"
*output" "*[180224,512]"   "x#ȟ��="
 ������
"  "  "   "� ����="
 ������
"+*'replica_2/vq_vae/vector_quantizer_1/Sum"
 ������
"  "  "   "� ����="
 ������
"+*'replica_2/vq_vae/vector_quantizer_1/add"
*output" "*[180224,512]"   "v#ಫ�="
 ������
"  "  "   "t#����="
 ������
"  "  "   "z#�۶�="
 ������
"  "  "   "� ����="
 ������
".**replica_2/vq_vae/vector_quantizer_1/ArgMin"
*output" 	"*[180224]"   "z#؇��="
 ������
"  "  "   "� ����="
 ������
"/*+replica_2/vq_vae/vector_quantizer_1/one_hot"
*output" "*[180224,512]"   "v#����>"
 ������
"  "  "   "� ��؁>"
 ������
"0*,replica_2/vq_vae/vector_quantizer_1/MatMul_1"
*output" "*[180224,256]"   "� ���>"
 ������
"S*Oreplica_2/vq_vae/vector_quantizer_1/sub_1-0-TransposeNHWCToNCHW-LayoutOptimizer"
*output" "*[32,256,22,256]"   "x#�ە�>"
 ������
"  "  "   "� ડ�>"
 ������
"?*;gradient_tape/replica_2/vq_vae/vector_quantizer_1/pow_2/mul"
*output" "*[32,256,22,256]"   "� ��ڔ>"
 ������
"-*)replica_2/vq_vae/vector_quantizer_1/pow_2"
*output" "*[32,256,22,256]"   "x#����>"
 ������
"  "  "   "� ��>"
 ������
"U*Qreplica_2/vq_vae/vector_quantizer_1/pow_2-0-0-TransposeNCHWToNHWC-LayoutOptimizer"
*output" "*[32,22,256,256]"   "� ���>"
 ������
",*(replica_2/vq_vae/vector_quantizer_1/Mean"
 ������
",*(replica_2/vq_vae/vector_quantizer_1/Mean"
*[5887]"   "�#�올>"
 ������
",*(replica_2/vq_vae/vector_quantizer_1/Mean"
 ������
"  "  "   "� ��ܰ>"
" �ש�"s����?" ���" ����" ����"
 ������
")*%replica_2/vq_vae/concatenate_1/concat"
*output" "*[32,512,22,256]"   "x#����>"
 ������
"  "  "   "x#�͌�>"
 ������
"  "  "   "� ��չ>"*gpu_host_bfc"  "
 ������
"<*8gradient_tape/replica_2/vq_vae/vector_quantizer_1/Prod_2"
*output" "*[]"   "x#آ�>"
 ������
"  "  "   "� ����>"
 ������
"-*)replica_2/vq_vae/vector_quantizer_1/mul_1"
*output" "*[]"   "� �ߕ�>"
 ������
"0*,replica_2/vq_vae/functional_7/conv2d_18/Relu"
*output" "*[32,128,22,256]"   "� Њ��>"
 ������
"0*,replica_2/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_2/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_2/vq_vae/functional_7/conv2d_18/Relu"
 ������
"0*,replica_2/vq_vae/functional_7/conv2d_18/Relu"
 ������
"  "  "   "s#����>"
 ������
"  "  "   "� ����>"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_14/Relu"
*output" "*[32,128,22,256]"   "� ����>"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����?"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_15/Relu"
*output" "*[32,32,22,256]"   "� ����?"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_15/Relu"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_15/Relu"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_20/Conv2D"
*output" "*[32,128,22,256]"   "� ����?"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_20/Conv2D"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� з��?"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����?"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_16/Relu"
*output" "*[32,128,22,256]"   "� ����?"
" �ש�"�g*�c�?" ���" ���" ���"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_17/Relu"
*output" "*[32,32,22,256]"   "� ����?"
" �נ�"�zY�}a�?" ���" ��	" ��	"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_17/Relu"
" �Շ�"]`���Z�?" ���" ��" ��"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_17/Relu"
" �נ�"�zY�}a�?" ���" ��" ��"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_17/Relu"
" �ש�"�g*�c�?" ���" ��	" ��	"
 ������
"/*+replica_2/vq_vae/functional_7/re_lu_17/Relu"
" �ש�"xP�?" ���" ���," ���,"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_22/Conv2D"
*output" "*[32,128,22,256]"   "� ����?"
" �נ�"ᒈ�v�?" ���" ��	" ��	"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_22/Conv2D"
" �͞�"$:�\�?" ���" ��" ��"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_22/Conv2D"
" �נ�"ᒈ�v�?" ���" ��" ��"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_22/Conv2D"
" �ש�"xP�?" ���" ��	" ��	"
 ������
"2*.replica_2/vq_vae/functional_7/conv2d_22/Conv2D"
" �ש�"�g*�c�?" ���" ���," ���,"
 ������
"  "  "   "� ��ܑ@"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
*output" "*[32,64,44,512]"   "� �͗�@"
��Y?" ���" �� " ��?"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ����"���t�Ф?" ���" ���X" ����"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" �ש�"�tk��?" ���" �� " ��?"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose"
" ���"��$�?" ���" ���" ���"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
*output" "*[32,1,88,1024]"   "� ��º@"
" ���"�R
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
[64,1,4,4]"   "� ����@"
" ����"���F�e�?" ���" ���" ���"
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ���"�R
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" ���"��$�?" ���" � " � "
 ������
"E*Areplica_2/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose"
" �ש�"�r�
 ������
"*
*output" "*[32,1,88,1024]"   "� ����@"
" ���"��[0��?" ���" ���" ���"
 ������
"*replica_2/Sqrt"
*output" "*[32,1,88,1024]"   ">����@����"
" ���"�F�(�?" ���" ���" ���"
 ������
"5*1replica_2/stft/stft_tf.signal.stft/frame/GatherV2"
*output" "*[32,1,88,4,512]"   "x#����@"
" �ש�"&$����?" ���" ���" ���"
 ������
"  "  "   "t#����@"
" �穯"-����?" ���" �" �"
 ������
"  "  "   "� А��A"
 ������
"+*'replica_2/stft/stft_tf.signal.stft/rfft"
*output" "*[32,1,88,1025]"   "� ����B"
 �ԭ���
"+*'replica_2/stft/stft_tf.signal.stft/rfft"
[46159872]"   "�#迮�B"
 �ԭ���
"+*'replica_2/stft/stft_tf.signal.stft/rfft"
" ����"� �Ə�?" ���" ���" ���"
 ������
"  "  "   "� �ɫ�B"
 ������
"*replica_2/strided_slice_2"
*output" "*[32,88,1024,1]"   "x#���B"
" �穯"-����?" ���" ���" ���"
 ������
"  "  "   "� ����B"
" ���"�A�(�?" ���" ���" ���"
 ������
"*replica_2/magnitude/Abs"
*output" "*[32,88,1024,1]"   "� �ψ�B"
 ������
"*replica_2/phase/Angle"
*output" "*[32,88,1024,1]"   "x#����B"
" �穯"-����?" ���" ���" ���"
 ������
"  "  "   "� �ۼ�B"
" ���"�A�(�?" ���" ���" ���"
 ������
"*
*output" "*[32,88,1024,1]"   "� ���C"
 �����
"*replica_2/mul_3"
*output" "*[32,1,88,1024]"   "� ����C"
 �����
"*replica_2/mul_4"
*output" "*[32,1,88,1024]"   "� ��ޕC"
 ������
"*replica_2/Complex"
*output" "*[32,1,88,1024]"   "x#���C"
 �����
"  "  "   "x#�樚C"
 �����
"  "  "   "� ����C"
 ������
"&*"replica_2/magnitude_to_decibel/Max"
 ������
"&*"replica_2/magnitude_to_decibel/Max"
 ������
"&*"replica_2/magnitude_to_decibel/Max"
 ������
"A*=replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/Pad"
 ������
"  "  "   "� ��ڵC"
 �����
"=*9replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft"
*output" "*[32,1,88,2048]"   "� ����D"
 �ԭ���
"=*9replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft"
[46159872]"   "�#ȝ��R"
 �ԭ���
"=*9replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft"
 ������
"  "  "   "t#����R"
 ������
"  "  "   "x#��܃S"
 ������
"  "  "   "� ��ΈS"
 ������
"%*!gradient_tape/replica_2/pow_1/mul"
*output" "*[32,1,88,1024]"   "� �ŀ�S"
 ������
"P*Lgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/ones"
*output" "
*[1023]"   "� ��ٗS"
 ������
"*replica_2/Mean"
 ������
"*replica_2/Mean"
*[5887]"   "�#����S"
 ������
"*replica_2/Mean"
 ������
" *gradient_tape/replica_2/Prod"
*output" "*[]"   "x#Ȅ̪S"
 ������
"  "  "   "s#��ͱS"
 ������
"  "  "   "� ����S"
 ������
"R*Ngradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/irfft/concat"
*output" "
*[1025]"   "t#���S"
 ������
"  "  "   "� ����S"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� �߂�S"*gpu_host_bfc"  "
 �Ԇ���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����S"*gpu_host_bfc"  "
 �ֆ���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ����T"
 ������
"K*Greplica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Pad"
 �����
"  "  "   "� �߬�T"
 �����
"Q*Mreplica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose"
*output" "*[32,1,4,92,512]"   "x#�֠�T"
 ������
"  "  "   "� ����T"
 ������
"W*Sreplica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3"
*output" "*[32,1,364,512]"   "x#Џ��T"
 �����
"  "  "   "� ����T"*gpu_host_bfc"  "
 �چ���
"]*Ygradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Shape_1"
*output" "*[5]"   "� ����T"
 ������
"K*Greplica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Sum"
[32,46592]"   "x#�ﲢT"
" ���"�K��'�?" ���" ���" ���"
 ������
"  "  "   "� ��ǩT"
" ���"�\MC�'�?" ���" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   "� ����T"
" ����""jG�Ǡ?" ���" ���" ���"
 �����
"*replica_2/strided_slice_4"
*output" "*[32,45056,1]"   "x#����T"
" ��ɬ"�
 ������
"  "  "   "x#���T"
" ����" *����?" ���" ���" ���"
 �����
"  "  "   "� ����T"
" ��ɬ"�
 ������
"%*!gradient_tape/replica_2/pow_2/Pow"
*output" "*[32,45056,1]"   "s#؀��T"
" ��ɬ"ab=���?" ���" " �"
 ������
"  "  "   "� ����T"*gpu_host_bfc"  "
 �ކ���
"*replica_2/Size"
*output" "*[]"   "� ر��T"
" ���"�K��'�?" ���" ���" ���"
 ������
"*replica_2/ones_like"
*output" "*[32,45056,1]"   "� ���T"
" ���"�\MC�'�?" ���" " �"
 ������
"%*!gradient_tape/replica_2/add_3/Sum"
" ���"EY��'�?" ���" �-" �."
 �ơ���
"%*!gradient_tape/replica_2/add_3/Sum"
*[5887]"   "�#ب��T"
" ���"�\MC�'�?" ���" �-" �."
 �ơ���
"%*!gradient_tape/replica_2/add_3/Sum"
" ���"�\MC�'�?" ���" " �"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� о��T"
" ���"�\MC�'�?" ���" " �"
 ������
"*
" ���"��Zk�'�?" ���" �-" �."
 �ơ���
"*
*[5887]"   "�#����T"
" ���"�\MC�'�?" ���" �-" �."
 �ơ���
"*
" ����"0����?" ���" ���" ��"
 ������
"  "  "   "s#����U"
" ����"0����?" ���" " �"
 ������
"  "  "   "� �յ�U"
" ����"0����?" ���" " �"
 ������
"?*;gradient_tape/replica_2/vq_vae/vector_quantizer/mul_1/Mul_1"
*output" "*[]"   "� �È�U"
 �����
"8*4gradient_tape/replica_2/vq_vae/vector_quantizer/Tile"
*output" "*[32,11,128,256]"   "� ����U"
��ڱ�j?" ���" ���X" ���]"
 �����
":*6gradient_tape/replica_2/vq_vae/vector_quantizer_1/Tile"
*output" "*[32,22,256,256]"   "� ��ÒU"
 �����
" *gradient_tape/replica_2/Tile"
*output" "*[32,88,1024,1]"   "s#����U"
 ������
"  "  "   "x#����U"
 ������
"  "  "   "� ��U"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "� ȩ��U"
 ������
":*6gradient_tape/replica_2/vq_vae/vector_quantizer/Tile_1"
*output" "*[32,11,128,256]"   "� ����U"
 ������
"<*8gradient_tape/replica_2/vq_vae/vector_quantizer_1/Tile_1"
*output" "*[32,22,256,256]"   "s#��U"
 ������
"  "  "   "� ����U"
 �ơ���
"<*8gradient_tape/replica_2/strided_slice_4/StridedSliceGrad"
*output" "*[32,46592,1]"   "x#��׼U"
 ������
"  "  "   "� ����U"
 �ƍ���
"v*rgradient_tape/replica_2/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_4/StridedSliceGrad"
*output" "*[32,1,46592]"   "x#�і�U"
 �ơ���
"  "  "   "7����U茟"
 ���Ƀ�
"*SameWorkerRecvDone"  "*dynamic" "*[32,45056,2]"8�ó�����"
 ���ǟ�
" *gradient_tape/replica_1/Cast"
*output" "*[]"   "t#�����"
 ���ǟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "y#����"
 ���ǟ�
"  "  "   ">�������)"
 ���ǟ�
"c*_gradient_tape/replica_1/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/DynamicStitch"
*output" "*[5]"   "t#زȤ�"
 ���ǟ�
"  "  "   "t#�����"
 ���ǟ�
"  "  "   "� ��ǯ�"*gpu_host_bfc"  "
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[5]"   ">��������("
 ���ǟ�
"*replica_1/Cast"
*output" "*[]"   "t#�ղ��"
 ���ǟ�
"  "  "   "t#����"
 ���ǟ�
"  "  "   "� ����"*gpu_host_bfc"  "
 �܆���
"*SameWorkerRecvDone"  "*dynamic" "*[]"   ">��������"
 �����
"  "  "   "t#�����"*gpu_host_bfc"  "
 ������
"  "  "   "t#�����"*gpu_host_bfc"  "
 �Ά���
"  "  "   "?M��������"*div_no_nan/AddN"*
div_no_nan"   ""  "� ؙ���"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[]"   "?�ܘ������"
 ������
"  "  "   "� Ȃ���"
 ������
"a*]gradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/BroadcastTo"
*output" "*[32,1,4,91,512]"   "y#��Ȩ�"
 ������
"  "  "   "t#��ҩ�"*gpu_host_bfc"  "
 �Ɔ���
"  "  "   "� �����"
 ������
"v*rgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/strided_slice_3/StridedSliceGrad"
*output" "*[32,1,368,512]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"i*egradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/transpose/transpose"
*output" "*[32,1,92,4,512]"   "y#в���"
 ������
"  "  "   "� �ߣ��"
 ������
"]*Ygradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/overlap_and_add/Slice_1"
*output" "*[32,1,88,2048]"   "y#�����"
 ������
"  "  "   "u#�����"
 ������
"  "  "   "� Ȏ���"
 ������
"P*Lgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
*output" "*[32,1,88,1025]"   "� �����"
 ������
"P*Lgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
[46159872]"   "�#І���"
 ������
"P*Lgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/rfft"
 ������
"  "  "   "� �����"*gpu_host_bfc"  "
 ������
"[*Wgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/strided_slice_1"
*output" "*[1]"   "� ����"
 ������
"*SameWorkerRecvDone"  "*dynamic" "*[1]"   "?���������"
 ������
"P*Lgradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast"
*output" "*[]"   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "� �����"
 ������
"R*Ngradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/Cast_1"
*output" "
*[1025]"   "u#�ؚ��"
 ������
"  "  "   "u#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_3/inverse_stft/inverse_stft_tf.signal.istft/irfft/Slice_1"
*output" "*[32,1,88,1024]"   "y#����"
 ������
"  "  "   "� �Ӭ��"
 ������
"h*dgradient_tape/replica_3/Complex/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_complex64_Imag"
*output" "*[32,1,88,1024]"   "� �����"
 ������
"(*$gradient_tape/replica_3/Complex/Real"
*output" "*[32,88,1024,1]"   "y#�����"
 ������
"  "  "   "y#؀���"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#��އ�"
 ������
"  "  "   "y#���"
 ������
"  "  "   "y#���"
 ������
"  "  "   "� �����"
" ��֙"��jwY]�?" ����" ���X" ����"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
*output" "*[32,64,44,512]"   "� Тʨ�"
" ��֙"N��Q]�?" ����" � " � "
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
[64,1,4,4]"   "� ��ӽ�"
" ��Ι"�kvIA\�?" ����" ��" ��"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ��֙"N��Q]�?" ����" ��" ��"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ��֙"��jwY]�?" ����" � " � "
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2D"
" ��֙"�p��W]�?" ����" " �"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/BiasAdd/BiasAddGrad"
*output" "*[1]"   "� �����"
" ��֙"��ofO]�?" ����" � " � "
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� �����"
" ��֙"��tUE]�?" ����" � " �,"
 �Р���
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
[64,1,4,4]"   "�#�����"
" ��֙"��ofO]�?" ����" � " �,"
 �Р���
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_2/conv2d_transpose/Conv2DBackpropFilter"
" ����"jQ����?" ����" ���" ���"
 ������
"  "  "   "y#М���"
 ������
"  "  "   "� �����"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
*output" "*[32,128,22,256]"   "� �ٯ��"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"Z*Vgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2D"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� �����"
" ����"���!�?" ����" ���X" ���X"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"W��:�?" ����" " �"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
" ����"���!�?" ����" " �"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ������
"V*Rgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/BiasAdd/BiasAddGrad"
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� л��"
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
*[4452]"   "�#�����"
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"h*dgradient_tape/replica_3/vq_vae/functional_7/conv2d_transpose_1/conv2d_transpose/Conv2DBackpropFilter"
 ������
"  "  "   "y#����"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_22/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_22/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� ��"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �ۻ��"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
0��?" ����" ���," ���,"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_21/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_21/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�ى��"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_20/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��е�"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_20/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_19/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �Ú��"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_19/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�璆�"
 ������
"  "  "   "y#��щ�"
 ������
"  "  "   "� ��׋�"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
*output" "*[32,512,22,256]"   "� ��ҍ�"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropInput"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ���"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_7/conv2d_18/BiasAdd/BiasAddGrad"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
*output" "*
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_7/conv2d_18/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� �����"
 ������
"8*4gradient_tape/replica_3/vq_vae/concatenate_1/Slice_1"
*output" "*[32,256,22,256]"   "� �Ԧ��"
 ������
"6*2gradient_tape/replica_3/vq_vae/concatenate_1/Slice"
*output" "*[32,256,22,256]"   "{#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ؎���"
 ������
"M*Igradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*output" "*[32,256,11,128]"   "� �����"
 ������
"M*Igradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"M*Igradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
*[8456]"   "�#�����"
 ������
"M*Igradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"M*Igradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2D"
 ������
"[*Wgradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 ������
"[*Wgradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 ������
"[*Wgradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
*[3556]"   "�#�����"
 ������
"[*Wgradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 ������
"[*Wgradient_tape/replica_3/vq_vae/conv2d_transpose_3/conv2d_transpose/Conv2DBackpropFilter"
 ������
"I*Egradient_tape/replica_3/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 ������
"I*Egradient_tape/replica_3/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"I*Egradient_tape/replica_3/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"I*Egradient_tape/replica_3/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"I*Egradient_tape/replica_3/vq_vae/conv2d_transpose_3/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �՘��"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
*output" "*[32,384,22,256]"   "� ���"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ��ؠ��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ��ؠ��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropInput"
 ������
"H*Dgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
*output" "*
 ��ؠ��
"H*Dgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 ��ؠ��
"H*Dgradient_tape/replica_3/vq_vae/conv2d_24/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "� �����"
 ��ؠ��
"@*<gradient_tape/replica_3/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� ����"
 ������
"@*<gradient_tape/replica_3/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_3/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_3/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"@*<gradient_tape/replica_3/vq_vae/conv2d_24/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� ��ҍ�"
 ������
"6*2gradient_tape/replica_3/vq_vae/concatenate/Slice_1"
*output" "*[32,128,22,256]"   "� ����"
 ������
"4*0gradient_tape/replica_3/vq_vae/concatenate/Slice"
*output" "*[32,256,22,256]"   "{#����"
 ������
"  "  "   "� ���"
 ������
"X*Tgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*output" "*[32,128,11,128]"   "� ����"
 ��ؠ��
"X*Tgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ��ء��
"X*Tgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
*[8456]"   "�#譴��"
 ��ء��
"X*Tgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ��ؠ��
"X*Tgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2D"
 ��ؠ��
"f*bgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*output" "*
 ��ء��
"f*bgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ��آ��
"f*bgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
*[3428]"   "�#�����"
 ��آ��
"f*bgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ��ء��
"f*bgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/conv2d_transpose/Conv2DBackpropFilter"
 ������
"  "  "   "� ����"
 ��ء��
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_transpose/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� ����"
 ��ء��
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ��ء��
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropInput"
 ��ء��
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ����"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_17/Conv2D/Conv2DBackpropFilter"
 �����
"M*Igradient_tape/replica_3/vq_vae/functional_5/conv2d_17/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ��ָ��
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �ޞ��"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropInput"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ���"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_16/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_5/conv2d_16/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#�����"
 ������
"  "  "   "y#�ײ��"
 ������
"  "  "   "y#�֝��"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �����"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropInput"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ��ߠ�"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_15/Conv2D/Conv2DBackpropFilter"
 �����
"M*Igradient_tape/replica_3/vq_vae/functional_5/conv2d_15/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �����"
F�?" ����" ���" ���"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �г��"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropInput"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ص���"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_14/Conv2D/Conv2DBackpropFilter"
 ������
"M*Igradient_tape/replica_3/vq_vae/functional_5/conv2d_14/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�ֿ��"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� Я���"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
*output" "*[32,256,11,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropInput"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
*output" "*
 ��Ģ��
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ��Ģ��
"U*Qgradient_tape/replica_3/vq_vae/functional_5/conv2d_13/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "� �����"
 ��Ģ��
"M*Igradient_tape/replica_3/vq_vae/functional_5/conv2d_13/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#����"
 ������
"  "  "   "y#����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ����"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 ��Ģ��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ��̢��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ������
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ��̢��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ��Ģ��
"G*Cgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropInput"
 ��Ģ��
"H*Dgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
*output" "*
 ��̢��
"H*Dgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ��̢��
"H*Dgradient_tape/replica_3/vq_vae/conv2d_23/Conv2D/Conv2DBackpropFilter"
 ��̢��
"@*<gradient_tape/replica_3/vq_vae/conv2d_23/BiasAdd/BiasAddGrad"
*output" "	*[256]"   "y#�䚌�"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ��œ�"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� ��Օ�"
 ��̢��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ��բ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ��բ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ��̢��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropInput"
 ��̢��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� ��߭�"
 ��բ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ��բ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_12/Conv2D/Conv2DBackpropFilter"
 ��բ��
"M*Igradient_tape/replica_3/vq_vae/functional_3/conv2d_12/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �؅��"
 ��բ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��ޢ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��ޢ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��բ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropInput"
 ��բ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 ��ޢ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�ۉ��"
 ������
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ��ޢ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_11/Conv2D/Conv2DBackpropFilter"
 ��ޢ��
"M*Igradient_tape/replica_3/vq_vae/functional_3/conv2d_11/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ؝���"
 �Р���
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,11,128]"   "� �с��"
 ��ޢ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Ѐ���
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �Р���
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ޢ��
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropInput"
 ��ޢ��
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 �����
"U*Qgradient_tape/replica_3/vq_vae/functional_3/conv2d_10/Conv2D/Conv2DBackpropFilter"
 �����
"M*Igradient_tape/replica_3/vq_vae/functional_3/conv2d_10/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�����"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,11,128]"   "� �����"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� ����"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
[71368704]"   "�#�����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/Conv2D/Conv2DBackpropFilter"
 �����
"L*Hgradient_tape/replica_3/vq_vae/functional_3/conv2d_9/BiasAdd/BiasAddGrad"
*output" "*[32]"   "y#����"
 �Ѐ���
"  "  "   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ȣ���"
 �Р���
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,11,128]"   "� ��ŏ�"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
[86114304]"   "�#�����"
 �Р���
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropInput"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,64,128]"   "� ����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
[86114304]"   "�#����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_3/conv2d_8/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "y#�˶��"
 ������
"  "  "   "y#�܀��"
 ������
"  "  "   "� ����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
[89178112]"   "�#���"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,128,64]"   "� ����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
*[3364]"   "�#ȱ���"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_3/conv2d_7/BiasAdd/BiasAddGrad"
*output" "*[64]"   "y#�����"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "y#�ѱ��"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
���?" ����" �" �"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��ۉ�"
 ����
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ����
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_6/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� �����"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 �����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �׆��"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_5/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#ȑ���"
 ������
"  "  "   "y#�ܸ��"
 ������
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
*output" "*[32,32,22,256]"   "� ����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,32,128]"   "� м���"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
*[3508]"   "�#�簙�"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ��Ǡ�"
 ����
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ����
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_4/BiasAdd/BiasAddGrad"
 ������
"  "  "   "� ��ݮ�"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� ��ư�"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropInput"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
*output" "*[3,3,128,32]"   "� �ο��"
 ����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 �����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/Conv2D/Conv2DBackpropFilter"
 ����
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
*output" "*[32]"   "� �����"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �Ą���
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 �Ą���
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_3/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#ȗ���"
 ������
"  "  "   "y#�����"
 �����
"  "  "   "� �����"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
*output" "*[32,128,22,256]"   "� �����"
 �Ą���
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 �Ą���
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropInput"
 �Ą���
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
*output" "*
 �Ĩ���
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 ����
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 �Ĩ���
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/Conv2D/Conv2DBackpropFilter"
 �Ĩ���
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� ���"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 �Ȩ���
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 �Ȩ���
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_2/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#����"
 ������
"  "  "   "� ��ݲ�"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
*output" "*[32,64,44,512]"   "� �ܺ��"
 �Ȩ���
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ����
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 ������
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �Ȩ���
"S*Ogradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropInput"
 �Ȩ���
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*output" "*[4,4,64,128]"   "� �����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
*[4452]"   "�#�����"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"T*Pgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/Conv2D/Conv2DBackpropFilter"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
*output" "	*[128]"   "� �����"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"L*Hgradient_tape/replica_3/vq_vae/functional_1/conv2d_1/BiasAdd/BiasAddGrad"
 ������
"  "  "   "y#�����"
 ������
"  "  "   "� ض���"
 ������
"R*Ngradient_tape/replica_3/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
*output" "*
[4,4,1,64]"   "� �����"
 ������
"R*Ngradient_tape/replica_3/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
[64,1,4,4]"   "�#��ɖ�"
 ������
"R*Ngradient_tape/replica_3/vq_vae/functional_1/conv2d/Conv2D/Conv2DBackpropFilter"
 ������
"  "  "   "� �����"
 ������
"J*Fgradient_tape/replica_3/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
*output" "*[64]"   "� ��꜀"
 ������
"J*Fgradient_tape/replica_3/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_3/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_3/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ������
"J*Fgradient_tape/replica_3/vq_vae/functional_1/conv2d/BiasAdd/BiasAddGrad"
 ����
"  "  "   "� �׎��"
 �Р���
"*
*output" "
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"*
 ������
"  "  "   "t#���Ҁ"
 ������
"  "  "   "v#��Ӏ"
 �Ȩ���
"  "  "   "t#���Ӏ"
 ������
"  "  "   "v#���Ԁ"
 �Ą���
"  "  "   "t#���Ԁ"
 �Ĩ���
"  "  "   "v#���Հ"
 ������
"  "  "   "t#���Հ"
 ����
"  "  "   "v#���ր"
 ������
"  "  "   "t#���ր"
 ������
"  "  "   "v#�Ч׀"
�1�?" ����" ��	" ��	"
 ������
"  "  "   "t#���׀"
�1�?" ����" �" �"
 ������
"  "  "   "v#�ه؀"
 ������
"  "  "   "t#���؀"
 ������
"  "  "   "v#�Ûـ"
 ������
"  "  "   "t#���ـ"
 ������
"  "  "   "v#���ڀ"
 �����
"  "  "   "t#���ڀ"
 ������
"  "  "   "v#��ۀ"
 �����
"  "  "   "t#ؼ�ۀ"
 �����
"  "  "   "v#���܀"
 ��ޢ��
"  "  "   "t#���݀"
 �����
"  "  "   "v#���݀"
 ��բ��
"  "  "   "t#؃�ހ"
 ��ޢ��
"  "  "   "v#���ހ"
 ��̢��
"  "  "   "t#���ހ"
 ��բ��
"  "  "   "v#�ח߀"
 ��Ģ��
"  "  "   "t#���߀"
 ��̢��
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#��"
 ��Ģ��
"  "  "   "v#����"
 �����
"  "  "   "t#���"
 ������
"  "  "   "v#����"
 �����
"  "  "   "t#����"
 �����
"  "  "   "v#�ʴ�"
 �����
"  "  "   "t#����"
 ������
"  "  "   "v#����"
 ��ء��
"  "  "   "t#�́�"
 �����
"  "  "   "x#�̰�"
 ��ؠ��
"  "  "   "t#����"
 ��ء��
"  "  "   "v#����"
 ������
"  "  "   "t#����"
 ��ؠ��
"  "  "   "x#����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "v#�º�"
 ������
"  "  "   "x#����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "v#�ʊ�"
 ������
"  "  "   "t#���"
 ������
"  "  "   "v#����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "v#б��"
 ������
"  "  "   "t#���"
 ������
"  "  "   "v#����"
 ������
"  "  "   "t#���"
 ������
"  "  "   "v#Ѕ��"
 ������
"  "  "   "t#�ê�"
 ������
"  "  "   "t#���"
 ������
"  "  "   "s#�Ґ�"
 ������
"  "  "   ">�����ϙ)"
 ������
"*Adam/split_7"
 ������
"*Adam/split_7"
 ������
"*Adam/split_7"
*output" "
*[1024]"   "� �ء��"
 ������
"*Adam/split_7"
*output" "*[64]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[131072]"   "� ཾ��"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �ϰ��"
 ������
"*Adam/split_7"
*output" "*[147456]"   "� �۶��"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �ƥ��"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �Ջ��"
 ������
"*Adam/split_7"
*output" "*[32]"   "� ȅ��"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� ����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� ��߷�"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� ��¸�"
 ������
"*Adam/split_7"
*output" "*[32]"   "� ؟���"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[131072]"   "� ���"
 ������
"*Adam/split_7"
*output" "*[64]"   "� ��Ҽ�"
 ������
"*Adam/split_7"
*output" "*[73728]"   "� ���"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� ���"
 ������
"*Adam/split_7"
*output" "*[32]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[32]"   "� ����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �ث��"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �ڢ��"
 ������
"*Adam/split_7"
*output" "*[32768]"   "� 萛��"
 �Ά���
"*Adam/split_7"
*output" "	*[256]"   "� �׋��"
 �ֆ���
"*Adam/split_7"
*output" "*[131072]"   "� �����"
 �֦���
"*Adam/split_7"
*output" "*[294912]"   "� ȿ���"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� 跂��"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[32]"   "� ����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� ����"
 �܀���
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� ����"
 ������
"*Adam/split_7"
*output" "*[32]"   "� �ݝ��"
 �����
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 �����
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 �����
"*Adam/split_7"
*output" "*[524288]"   "� О���"
 �����
"*Adam/split_7"
*output" "	*[256]"   "� �����"
 �����
"*Adam/split_7"
*output" "*[98304]"   "� �����"
 �����
"*Adam/split_7"
*output" "	*[256]"   "� �����"
 ������
"*Adam/split_7"
*output" "
 ������
"*Adam/split_7"
*output" "	*[256]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[131072]"   "� ����"
 ������
"*Adam/split_7"
*output" "*[589824]"   "� ����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[32]"   "� ���"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[32]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[36864]"   "� �����"
 ������
"*Adam/split_7"
*output" "	*[128]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[131072]"   "� �����"
 ������
"*Adam/split_7"
*output" "*[64]"   "� �����"
 ������
"*Adam/split_7"
*output" "
*[1024]"   "� �¬��"
 ������
"*Adam/split_7"
*output" "*[1]"   "� �����"
 ������
"*Adam/split_7"
 ������
"*Adam/split_7"
 ������
"*Adam/split_7"
 ������
"*Adam/split_7"
 �Р���
"  "  "   "t#�����"
 ������
"  "  "   "t#��Ȭ�"
 ������
"  "  "   "t#����"
 �܀���
"  "  "   "t#��˽�"
 ������
"  "  "   "t#�̕��"
 �����
"  "  "   "t#�����"
 �����
"  "  "   "t#���"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 �����
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "s#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�巎�"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#��ʛ�"
 ������
"  "  "   "t#Ȓ��"
 ������
"  "  "   "t#�܍��"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "t#؁���"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#Ђ���"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "t#����"
 ������
"  "  "   "t#����"
 �Ά���
"  "  "   "v#�җ��"
 ������
"  "  "   "v#��ُ�"
 �����
"  "  "   "v#Ю��"
 ������
"  "  "   "v#�҅��"
 �֦���
"  "  "   "v#�����"
y�}_?" ����" ��	" ��	"
 ������
"  "  "   "x#�����"
 ������
"  "  "   "x#�����"
 �����
"  "  "   "v#�����"
 �����
"  "  "   "v#����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "x#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#ؓ���"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "t#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#��ޕ�"
 ������
"  "  "   "v#؊���"
 ������
"  "  "   "v#Ȟס�"
 ������
"  "  "   "v#����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "v#��"
 ������
"  "  "   "v#�����"
 ������
"  "  "   "s#�����"
 ������
"  "  "   "s#�զ��"
 ������
"  "  "   "s#�����"
 ������
"  "  "   "s#�ֵ��"
 ������
"  "  "   "s#����"
 ������
"  "  "   "v#�����"
 �ֆ���
"  "  "   ">��с��Թ"
��ӽtf_GPU_Event_Manager/-407583712��"~+�������"*__inference__next_func_4076"
*,/job:localhost/replica:0/task:0/device:CPU:0"n#����4"*gpu_host_bfc"  "
 ������
"  "  "g#����4"*gpu_host_bfc"  "
 ������
"  "  "n#����"*gpu_host_bfc"  "
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#����"*gpu_host_bfc"  "
 ������
"  "  "n#���ط"*gpu_host_bfc"  "
 �ކ���
"  "  "n#����"
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "o#�ͼ��"*gpu_host_bfc"  "
��c?" ��" �" �"
 ������
"  "  "o#�����"*gpu_host_bfc"  "
 ������
"  "  "o#�Ԛ��"*gpu_host_bfc"  "
 ������
"  "  �	��
*,/job:localhost/replica:0/task:0/device:CPU:0"n#�ě�5"*gpu_host_bfc"  "
 ������
"  "  "g#����5"*gpu_host_bfc"  "
 ������
"  "  "n#��"*gpu_host_bfc"  "
 ������
"  "  "n#苹�"*gpu_host_bfc"  "
 �Ȇ���
"  "  "n#�����"*gpu_host_bfc"  "
 �҆���
"  "  "n#�޳��"*gpu_host_bfc"  "
 �����
"  "  "n#�����"
 ���ǟ�
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "o#�����"*gpu_host_bfc"  "
 ������
"  "  "h#�����"*gpu_host_bfc"  "
 ������
"  "  �����tf_GPU_Event_Manager/1054825518��"~+����#��"*__inference__next_func_4115"
*,/job:localhost/replica:0/task:0/device:CPU:0"n#���&"*gpu_host_bfc"  "
 ������
"  "  "n#ث��&"*gpu_host_bfc"  "
 ������
"  "  "n#ȷ���"*gpu_host_bfc"  "
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#��Ъ"*gpu_host_bfc"  "
 ������
"  "  "n#�ֿ��"*gpu_host_bfc"  "
 �ʆ���
"  "  "n#Ќ���"
 ������
"  "  "n#��ˤ�"*gpu_host_bfc"  "
 ������
"  "  "o#�粌�"*gpu_host_bfc"  "
 ������
"  "  "o#�����"*gpu_host_bfc"  "
 ������
"  "  "o#�恣�"*gpu_host_bfc"  "
 ������
"  "  "h#�ӌ��"*gpu_host_bfc"  "
 ������
"  "  �ĸ��tf_GPU_Event_Manager/1761270852��"f#����#"*gpu_host_bfc"  "
 ������
"  "  "l#��Ƨ+"
 ������
"  "  "g#����,"*gpu_host_bfc"  "
 ������
"  "  "n#��Ɩ�"*gpu_host_bfc"  "
 ������
"  "  "n#����"*gpu_host_bfc"  "
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#���˳"*gpu_host_bfc"  "
 ������
"  "  "+�Ŋ�����"*__inference__next_func_3998"
*,/job:localhost/replica:0/task:0/device:CPU:0"n#�����"
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#��҆�"*gpu_host_bfc"  "
 ������
"  "  "n#����"*gpu_host_bfc"  "
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#А��"*gpu_host_bfc"  "
 ������
"  "  "n#�����"*gpu_host_bfc"  "
 ������
"  "  "n#���͆"*gpu_host_bfc"  "
 ������
"  "  "o#����"*gpu_host_bfc"  "
 ������
"  "  "o#�����"*gpu_host_bfc"  "
 ������
"  "  "h#�񫥁"*gpu_host_bfc"  "
 ������
"  "  ���݅	1tf_data_iterator_get_next_as_optional/-1867034853��")*����Ȫ��"
"
"
LogicalAnd"%<!<EagerLocalExecute: LogicalAnd" ==EagerExecute: LogicalAnd" >>TFE_Py_FastPathExecute_C"#??Identity:Identity"Identity"#@@EagerLocalExecute: Identity"AAEagerExecute: Identity"/B+BWriteSummary:WriteSummary"WriteSummary"'C#CEagerLocalExecute: WriteSummary""DDEagerExecute: WriteSummary"AE=E%FlushSummaryWriter:FlushSummaryWriter"FlushSummaryWriter"-F)F%EagerLocalExecute: FlushSummaryWriter"(G$G EagerExecute: FlushSummaryWriter"9H5H1InstantiatedCapturedFunction::RunWithBorrowedArgs":I6IIterator::Prefetch::Generator"Iterator::Generator"HJDJ,Iterator::Model::Prefetch::Rebatch::Prefetch"Iterator::Prefetch"=K9K"Iterator::Model::Prefetch::Rebatch"Iterator::Rebatch""LLdiv_no_nan/AddN:AddN"AddN")M%Mdiv_no_nan/AddN/_197:_Send"_Send"$N Ndiv_no_nan_2/AddN:AddN"AddN"+O'Odiv_no_nan_2/AddN/_125:_Send"_Send"$P Pdiv_no_nan_1/AddN:AddN"AddN"+Q'Qdiv_no_nan_1/AddN/_153:_Send"_Send"&R"Rdiv_no_nan_1/AddN_1:AddN"AddN"-S)Sdiv_no_nan_1/AddN_1/_155:_Send"_Send"$T Tdiv_no_nan/AddN_1:AddN"AddN"+U'Udiv_no_nan/AddN_1/_199:_Send"_Send"c_Tinverse_stft_inverse_stft_tf_signal_istft_inverse_stft_window_fn_floordiv_y/_7:_Send"_Send"ExecutorState::Process"c_Tinverse_stft_inverse_stft_tf_signal_istft_inverse_stft_window_fn_floordiv_y/_5:_Send"_Send"c_Tinverse_stft_inverse_stft_tf_signal_istft_inverse_stft_window_fn_floordiv_y/_3:_Send"_Send"c_Tinverse_stft_inverse_stft_tf_signal_istft_inverse_stft_window_fn_floordiv_y/_1:_Send"_Send"51&div_no_nan/ReadVariableOp_4/_190:_Recv"_Recv"73(div_no_nan_1/ReadVariableOp_3/_144:_Recv"_Recv"51&div_no_nan/ReadVariableOp_7/_196:_Recv"_Recv"5	1	&div_no_nan/ReadVariableOp_1/_184:_Recv"_Recv"7
3
(div_no_nan_1/ReadVariableOp_6/_150:_Recv"_Recv"73(div_no_nan_2/ReadVariableOp_7/_124:_Recv"_Recv"51&div_no_nan/ReadVariableOp_6/_194:_Recv"_Recv"5
_p*tf_function_call*
to*
id*iter_num*_ct*
_c*


device*allocator_name*bytes_reserved*
_r*_pt
�
clock_rate*
core_count*memory_bandwidth*memory_size*compute_cap_major*compute_cap_minor*group_id*
�
clock_rate*
core_count*memory_bandwidth*memory_size*compute_cap_major*compute_cap_minor*group_id*
�
clock_rate*
core_count*memory_bandwidth*memory_size*compute_cap_major*compute_cap_minor*group_id2 ��^2 D2	�����2��܅+2 2 
�
clock_rate*
core_count*memory_bandwidth*memory_size*compute_cap_major*compute_cap_minor*group_id*