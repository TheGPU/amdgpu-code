        .text
        .hsa_code_object_version 2,1
        .hsa_code_object_isa 9,0,0,"AMD","AMDGPU"
        .globl  hadd_lo
        .p2align        2
        .type   hadd_lo,@function
hadd_lo:                                ; @hadd_lo
; BB#0:
        s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
        s_load_dword s0, s[4:5], 0x0
        s_load_dword s1, s[4:5], 0x4
        s_waitcnt lgkmcnt(0)
        v_mov_b32_e32 v0, s0
        v_mov_b32_e32 v1, s1
        ;;#ASMSTART
        v_add_f16 v0, v0, v1
        ;;#ASMEND
        s_endpgm
.Lfunc_end0:
        .size   hadd_lo, .Lfunc_end0-hadd_lo

        .section        .AMDGPU.csdata
; Function info:
; codeLenInByte = 44
; NumSgprs: 6
; NumVgprs: 2
; ScratchSize: 0
        .text
        .globl  hello_world
        .p2align        8
        .type   hello_world,@function
        .amdgpu_hsa_kernel hello_world
hello_world:                            ; @hello_world
        .amd_kernel_code_t
                amd_code_version_major = 1
                amd_code_version_minor = 1
                amd_machine_kind = 1
                amd_machine_version_major = 9
                amd_machine_version_minor = 0
                amd_machine_version_stepping = 0
                kernel_code_entry_byte_offset = 256
                kernel_code_prefetch_byte_size = 0
                max_scratch_backing_memory_byte_size = 0
                granulated_workitem_vgpr_count = 1
                granulated_wavefront_sgpr_count = 0
                priority = 0
                float_mode = 192
                priv = 0
                enable_dx10_clamp = 1
                debug_mode = 0
                enable_ieee_mode = 1
                enable_sgpr_private_segment_wave_byte_offset = 0
                user_sgpr_count = 6
                enable_trap_handler = 1
                enable_sgpr_workgroup_id_x = 1
                enable_sgpr_workgroup_id_y = 0
                enable_sgpr_workgroup_id_z = 0
                enable_sgpr_workgroup_info = 0
                enable_vgpr_workitem_id = 0
                enable_exception_msb = 0
                granulated_lds_size = 0
                enable_exception = 0
                enable_sgpr_private_segment_buffer = 1
                enable_sgpr_dispatch_ptr = 0
                enable_sgpr_queue_ptr = 0
                enable_sgpr_kernarg_segment_ptr = 1
                enable_sgpr_dispatch_id = 0
                enable_sgpr_flat_scratch_init = 0
                enable_sgpr_private_segment_size = 0
                enable_sgpr_grid_workgroup_count_x = 0
                enable_sgpr_grid_workgroup_count_y = 0
                enable_sgpr_grid_workgroup_count_z = 0
                enable_ordered_append_gds = 0
                private_element_size = 1
                is_ptr64 = 1
                is_dynamic_callstack = 0
                is_debug_enabled = 0
                is_xnack_enabled = 0
                workitem_private_segment_byte_size = 0
                workgroup_group_segment_byte_size = 0
                gds_segment_byte_size = 0
                kernarg_segment_byte_size = 24
                workgroup_fbarrier_count = 0
                wavefront_sgpr_count = 8
                workitem_vgpr_count = 7
                reserved_vgpr_first = 0
                reserved_vgpr_count = 0
                reserved_sgpr_first = 0
                reserved_sgpr_count = 0
                debug_wavefront_private_segment_offset_sgpr = 0
                debug_private_segment_buffer_sgpr = 0
                kernarg_segment_alignment = 4
                group_segment_alignment = 4
                private_segment_alignment = 4
                wavefront_size = 6
                call_convention = -1
                runtime_loader_kernel_symbol = 0
        .end_amd_kernel_code_t
; BB#0:
        s_load_dwordx2 s[0:1], s[4:5], 0x0
        s_load_dwordx2 s[2:3], s[4:5], 0x8
        v_mov_b32_e32 v1, 0
        v_lshlrev_b64 v[0:1], 2, v[0:1]
        s_load_dwordx2 s[4:5], s[4:5], 0x10
        s_waitcnt lgkmcnt(0)
        v_add_i32_e32 v2, vcc, s0, v0
        v_mov_b32_e32 v3, s1
        v_addc_u32_e32 v3, vcc, v1, v3, vcc
        v_add_i32_e32 v4, vcc, s2, v0
        v_mov_b32_e32 v5, s3
        v_addc_u32_e32 v5, vcc, v1, v5, vcc
        flat_load_dword v2, v[2:3]
        s_nop 0
        flat_load_dword v3, v[4:5]
        v_add_i32_e32 v0, vcc, s4, v0
        v_mov_b32_e32 v6, s5
        v_addc_u32_e32 v1, vcc, v1, v6, vcc
        s_waitcnt vmcnt(0) lgkmcnt(0)
        v_pk_add_f16 v2, v2, v3
        flat_store_dword v[0:1], v2
        s_endpgm
.Lfunc_end1:
        .size   hello_world, .Lfunc_end1-hello_world

        .section        .AMDGPU.csdata
; Kernel info:
; codeLenInByte = 120
; NumSgprs: 8
; NumVgprs: 7
; ScratchSize: 0
; codeLenInByte = 120
; NumSgprs: 8
; NumVgprs: 7
; FloatMode: 192
; IeeeMode: 1
; ScratchSize: 0
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 8
; NumVGPRsForWavesPerEU: 7
; ReservedVGPRFirst: 0
; ReservedVGPRCount: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 1
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0

        .section        ".note.GNU-stack"
        .amdgpu_code_object_metadata
---
Version:         [ 1, 0 ]
Kernels:
  - Name:            hello_world
    Args:
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
      - Size:            8
        Align:           8
        ValueKind:       GlobalBuffer
        ValueType:       F16
        AddrSpaceQual:   Global
    CodeProps:
      KernargSegmentSize: 24
      WavefrontNumSGPRs: 8
      WorkitemNumVGPRs: 7
      KernargSegmentAlign: 4
      GroupSegmentAlign: 4
      PrivateSegmentAlign: 4
      WavefrontSize:   6
...
        .end_amdgpu_code_object_metadata
