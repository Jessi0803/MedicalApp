# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# compile ASM with /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc
# compile C with /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc
ASM_DEFINES = -DEIGEN_MPL2_ONLY -DNOMINMAX=1 -DXNN_ENABLE_ARM_BF16=1 -DXNN_ENABLE_ARM_DOTPROD=1 -DXNN_ENABLE_ARM_FP16_SCALAR=1 -DXNN_ENABLE_ARM_FP16_VECTOR=1 -DXNN_ENABLE_ARM_I8MM=1 -DXNN_ENABLE_ARM_SME2=1 -DXNN_ENABLE_ARM_SME=1 -DXNN_ENABLE_ASSEMBLY=1 -DXNN_ENABLE_AVX256SKX=1 -DXNN_ENABLE_AVX256VNNI=1 -DXNN_ENABLE_AVX256VNNIGFNI=1 -DXNN_ENABLE_AVX512AMX=1 -DXNN_ENABLE_AVX512BF16=1 -DXNN_ENABLE_AVX512F=1 -DXNN_ENABLE_AVX512FP16=1 -DXNN_ENABLE_AVX512SKX=1 -DXNN_ENABLE_AVX512VBMI=1 -DXNN_ENABLE_AVX512VNNI=1 -DXNN_ENABLE_AVX512VNNIGFNI=1 -DXNN_ENABLE_AVXVNNI=1 -DXNN_ENABLE_AVXVNNIINT8=0 -DXNN_ENABLE_CPUINFO=1 -DXNN_ENABLE_HVX=1 -DXNN_ENABLE_KLEIDIAI=1 -DXNN_ENABLE_MEMOPT=1 -DXNN_ENABLE_RISCV_VECTOR=1 -DXNN_ENABLE_SPARSE=1 -DXNN_ENABLE_VSX=1

ASM_INCLUDES = -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/third_party/xla/third_party/tsl -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/third_party/xla -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/. -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/kleidiai-source

ASM_FLAGSarm64 = -O3 -DNDEBUG -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -mmacosx-version-min=14.6 -fPIC -Wpedantic -Wall -Wdisabled-optimization -Wextra -Wformat-security -Wformat=2 -Winit-self -Wstrict-overflow=2 -Wswitch-default -Wcast-qual

ASM_FLAGS = -O3 -DNDEBUG -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -mmacosx-version-min=14.6 -fPIC -Wpedantic -Wall -Wdisabled-optimization -Wextra -Wformat-security -Wformat=2 -Winit-self -Wstrict-overflow=2 -Wswitch-default -Wcast-qual

C_DEFINES = -DEIGEN_MPL2_ONLY -DNOMINMAX=1 -DXNN_ENABLE_ARM_BF16=1 -DXNN_ENABLE_ARM_DOTPROD=1 -DXNN_ENABLE_ARM_FP16_SCALAR=1 -DXNN_ENABLE_ARM_FP16_VECTOR=1 -DXNN_ENABLE_ARM_I8MM=1 -DXNN_ENABLE_ARM_SME2=1 -DXNN_ENABLE_ARM_SME=1 -DXNN_ENABLE_ASSEMBLY=1 -DXNN_ENABLE_AVX256SKX=1 -DXNN_ENABLE_AVX256VNNI=1 -DXNN_ENABLE_AVX256VNNIGFNI=1 -DXNN_ENABLE_AVX512AMX=1 -DXNN_ENABLE_AVX512BF16=1 -DXNN_ENABLE_AVX512F=1 -DXNN_ENABLE_AVX512FP16=1 -DXNN_ENABLE_AVX512SKX=1 -DXNN_ENABLE_AVX512VBMI=1 -DXNN_ENABLE_AVX512VNNI=1 -DXNN_ENABLE_AVX512VNNIGFNI=1 -DXNN_ENABLE_AVXVNNI=1 -DXNN_ENABLE_AVXVNNIINT8=0 -DXNN_ENABLE_CPUINFO=1 -DXNN_ENABLE_HVX=1 -DXNN_ENABLE_KLEIDIAI=1 -DXNN_ENABLE_MEMOPT=1 -DXNN_ENABLE_RISCV_VECTOR=1 -DXNN_ENABLE_SPARSE=1 -DXNN_ENABLE_VSX=1

C_INCLUDES = -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/third_party/xla/third_party/tsl -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/tensorflow_src/third_party/xla -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/xnnpack/. -I/Users/jc/AndroidStudioProjects/MyApplication/whisper.tflite/whisper_native/minimal_build/kleidiai-source

C_FLAGSarm64 = -O3 -DNDEBUG -std=c99 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -mmacosx-version-min=14.6 -fPIC -Wpedantic -Wall -Wdisabled-optimization -Wextra -Wformat-security -Wformat=2 -Winit-self -Wstrict-overflow=2 -Wswitch-default -Wcast-qual -Wmissing-prototypes -Wstrict-prototypes

C_FLAGS = -O3 -DNDEBUG -std=c99 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk -mmacosx-version-min=14.6 -fPIC -Wpedantic -Wall -Wdisabled-optimization -Wextra -Wformat-security -Wformat=2 -Winit-self -Wstrict-overflow=2 -Wswitch-default -Wcast-qual -Wmissing-prototypes -Wstrict-prototypes

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_quant_pack_qai8dxp_f32.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_quant_pack_qsi8d32p_f32.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_qsi4c32p_qsu4c32s1s0.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_qsi4cxp_qs4cxs1s0.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi4c32p_qsu4c32s1s0.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi4c32pscalef16_qsu4c32s16s0.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi4cxp_qs4cxs1s0.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_f32_f32p/kai_matmul_clamp_f32_f32_f32p8x1biasf32_6x8x4_neon_mla.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_f32_f32p/kai_matmul_clamp_f32_f32_f32p8x1biasf32_6x8x4_neon_mla_asm.S.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_quant_pack_qsi8d32p_f32_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_f32p8x1biasf32_f32_f32_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_qsi8cxp_qsi8cx_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi4c32ps1s0scalef16_qsu4c32s16s0_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi4cxps1s0_qsu4cxs1s0_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_qsi8cxp_qsi8cx_neon.c.o_OPTIONS = -march=armv8-a

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f16_f16_f16p/kai_matmul_clamp_f16_f16_f16p16x1biasf16_6x16x8_neon_mla.c.o_OPTIONS = -march=armv8.2-a+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_f16p16x1biasf16_f16_f16_neon.c.o_OPTIONS = -march=armv8.2-a+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_bf16p_bf16p/kai_matmul_clamp_f32_bf16p1x4_bf16p12x4b_1x36_neon_dot.c.o_OPTIONS = -march=armv8.2-a+bf16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_bf16p_bf16p/kai_matmul_clamp_f32_bf16p8x4_bf16p12x4b_8x12_neon_mmla.c.o_OPTIONS = -march=armv8.2-a+bf16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_quant_pack_bf16p1x4_f32_neon.c.o_OPTIONS = -march=armv8.2-a+bf16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_quant_pack_bf16p8x4_f32_neon.c.o_OPTIONS = -march=armv8.2-a+bf16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_quant_pack_kxn_bf16p12x4biasf32_f32_neon.c.o_OPTIONS = -march=armv8.2-a+bf16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f16_bf16p_bf16p/kai_matmul_clamp_f16_bf16p8x4_bf16p12x4b_8x12_neon_mmla.c.o_OPTIONS = -march=armv8.2-a+bf16+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_pack_bf16p8x4_f16_neon.c.o_OPTIONS = -march=armv8.2-a+bf16+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_bf16p12x4biasf16_f16_neon.c.o_OPTIONS = -march=armv8.2-a+bf16+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_bf16p12x4biasf32_f16_neon.c.o_OPTIONS = -march=armv8.2-a+bf16+fp16

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x4_qsi4c32p4x4_1x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x4_qsi4c32p4x4_1x4_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x4_qsi4c32p8x4_1x8_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x4_qsi4c32p8x4_1x8_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p4x8_1x4x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p4x8_1x4x32_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p8x8_1x8_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p8x8_1x8_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p8x8_1x8x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp1x8_qsi4c32p8x8_1x8x32_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x4_qsi4c32p4x4_16x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x4_qsi4c32p4x4_16x4_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x4_qsi4c32p8x4_4x8_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x4_qsi4c32p8x4_4x8_neon_dotprod_asm.S.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp1x4_qsi4cxp4x4_1x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp1x8_qsi4cxp4x8_1x4x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp1x8_qsi4cxp8x8_1x8x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x4_qsi4cxp8x4_8x8x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi4cxp4x4_16x4x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi8cxp/kai_matmul_clamp_f32_qai8dxp1x4_qsi8cxp4x4_1x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi8cxp/kai_matmul_clamp_f32_qai8dxp1x8_qsi8cxp4x8_1x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi8cxp/kai_matmul_clamp_f32_qai8dxp4x4_qsi8cxp4x4_16x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p1x4_qsi4c32p4x4_1x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p1x8_qsi4c32p4x8_1x4x32_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p4x4_qsi4c32p4x4_16x4_neon_dotprod.c.o_OPTIONS = -march=armv8.2-a+dotprod

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p4x8_16x4x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p4x8_16x4x32_neon_i8mm_asm.S.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p4x8_8x4x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p4x8_8x4x32_neon_i8mm_asm.S.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p8x8_4x8_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p8x8_4x8_neon_i8mm_asm.S.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p8x8_4x8x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4c32p/kai_matmul_clamp_f32_qai8dxp4x8_qsi4c32p8x8_4x8x32_neon_i8mm_asm.S.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi4cxp4x8_4x4x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi4cxp4x8_8x4x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi4cxp8x8_4x8x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi4cxp8x8_8x8x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi8cxp/kai_matmul_clamp_f32_qai8dxp4x8_qsi8cxp4x8_16x4_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p4x8_qsi4c32p4x8_16x4_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p4x8_qsi4c32p4x8_8x4x32_neon_i8mm.c.o_OPTIONS = -march=armv8.2-a+i8mm

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_pack_f32p2vlx1_f32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_pack_x16p2vlx2_x16_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_pack_x8p2vlx4_x8_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_f32p16vlx1b_f32_f32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_f32p2vlx1biasf32_f32_f32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_qsi8cxp2vlx4sb_qs8cx_f32_i32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_x16p2vlx2b_x16_x16_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_f32p2vlx1biasf32_f32_f32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_nxk_x16p2vlx2b_x16_x16_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f16_f16_f16p/kai_matmul_clamp_f16_f16_f16p2vlx2b_1x16vl_sme2_dot.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f16_f16p_f16p/kai_matmul_clamp_f16_f16p2vlx2_f16p2vlx2_2vlx2vl_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_f32_f32p/kai_matmul_clamp_f32_f32_f32p16vlx1b_1x16vl_sme2_mla.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_f32_f32p/kai_matmul_clamp_f32_f32_f32p2vlx1b_1x16vl_sme2_mla.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_f32p_f32p/kai_matmul_clamp_f32_f32p2vlx1_f32p2vlx1biasf32_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp1vlx8_qsi4cxp4vlx8_1vlx4vl_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qai8dxp_qsi4cxp/kai_matmul_clamp_f32_qai8dxp1x4_qsi4cxp4vlx4_1x4vl_sme2_sdot.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p1vlx4_qsi4c32p4vlx4_1vlx4vl_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_f32_qsi8d32p_qsi4c32p/kai_matmul_clamp_f32_qsi8d32p1x4_qsi4c32p4vlx4_1x4vl_sme2_sdot.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_fp32_bf16p_bf16p/kai_matmul_clamp_f32_bf16p2vlx2_bf16p2vlx2_2vlx2vl_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_qai8_qai8_qsi8cxp/kai_matmul_clamp_qai8_qai8_qsi8cxp2vlx4sb_1x16vl_sme2_dot.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/matmul_clamp_qai8_qai8p_qsi8cxp/kai_matmul_clamp_qai8_qai8p2vlx4_qsi8cxpsb2vlx4_2vlx2vl_sme2_mopa.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_lhs_pack_bf16p2vlx2_f32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

# Custom options: kleidiai/CMakeFiles/kleidiai.dir/kai/ukernels/matmul/pack/kai_rhs_pack_kxn_bf16p2vlx2b_f32_x32_sme.c.o_OPTIONS = -fno-tree-vectorize;-march=armv8.2-a+sve+sve2

