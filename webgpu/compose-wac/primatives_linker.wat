(component $primitives
  (core module (;0;)
    (type (;0;) (func))
    (type (;1;) (func (result i32)))
    (type (;2;) (func (param i32 i32) (result i32)))
    (type (;3;) (func (param i32 i32 i32 i32) (result i32)))
    (type (;4;) (func (param i32) (result i32)))
    (type (;5;) (func (param i32 i32 i32) (result i32)))
    (type (;6;) (func (param i32)))
    (type (;7;) (func (param i32 i32)))
    (table (;0;) 3 3 funcref)
    (memory (;0;) 17)
    (global $__stack_pointer (;0;) (mut i32) i32.const 1048576)
    (export "memory" (memory 0))
    (export "math:vec/vec4@0.1.0#float32" (func $math:vec/vec4@0.1.0#float32))
    (export "math:vec/vec4@0.1.0#float64" (func $math:vec/vec4@0.1.0#float64))
    (export "math:vec/vec4@0.1.0#int8" (func $math:vec/vec4@0.1.0#int8))
    (export "math:vec/vec4@0.1.0#int16" (func $math:vec/vec4@0.1.0#int16))
    (export "math:vec/vec3@0.1.0#float32" (func $math:vec/vec3@0.1.0#float32))
    (export "math:vec/vec3@0.1.0#float64" (func $math:vec/vec3@0.1.0#float64))
    (export "math:vec/vec3@0.1.0#int8" (func $math:vec/vec3@0.1.0#int8))
    (export "math:vec/vec3@0.1.0#int16" (func $math:vec/vec3@0.1.0#int16))
    (export "math:vec/vec3@0.1.0#int32" (func $math:vec/vec3@0.1.0#int32))
    (export "math:vec/vec2@0.1.0#float32" (func $math:vec/vec2@0.1.0#float32))
    (export "math:vec/vec2@0.1.0#float64" (func $math:vec/vec2@0.1.0#float64))
    (export "math:vec/vec2@0.1.0#int8" (func $math:vec/vec2@0.1.0#int8))
    (export "math:vec/vec2@0.1.0#int16" (func $math:vec/vec2@0.1.0#int16))
    (export "math:vec/vec2@0.1.0#int32" (func $math:vec/vec2@0.1.0#int32))
    (export "math:vec/vec3@0.1.0#uint8" (func $math:vec/vec3@0.1.0#int8))
    (export "math:vec/vec3@0.1.0#uint16" (func $math:vec/vec3@0.1.0#int16))
    (export "math:vec/vec3@0.1.0#uint32" (func $math:vec/vec3@0.1.0#int32))
    (export "math:vec/vec2@0.1.0#uint8" (func $math:vec/vec2@0.1.0#int8))
    (export "math:vec/vec2@0.1.0#uint16" (func $math:vec/vec2@0.1.0#int16))
    (export "math:vec/vec2@0.1.0#uint32" (func $math:vec/vec2@0.1.0#int32))
    (export "math:vec/vec4@0.1.0#int32" (func $math:vec/vec4@0.1.0#float32))
    (export "math:vec/vec4@0.1.0#int64" (func $math:vec/vec4@0.1.0#float64))
    (export "math:vec/vec4@0.1.0#uint32" (func $math:vec/vec4@0.1.0#float32))
    (export "math:vec/vec4@0.1.0#uint64" (func $math:vec/vec4@0.1.0#float64))
    (export "math:vec/vec3@0.1.0#int64" (func $math:vec/vec3@0.1.0#float64))
    (export "math:vec/vec3@0.1.0#uint64" (func $math:vec/vec3@0.1.0#float64))
    (export "math:vec/vec2@0.1.0#int64" (func $math:vec/vec2@0.1.0#float64))
    (export "math:vec/vec2@0.1.0#uint64" (func $math:vec/vec2@0.1.0#float64))
    (export "math:vec/vec4@0.1.0#uint8" (func $math:vec/vec4@0.1.0#int8))
    (export "math:vec/vec4@0.1.0#uint16" (func $math:vec/vec4@0.1.0#int16))
    (export "cabi_realloc" (func $cabi_realloc))
    (export "cabi_realloc_wit_bindgen_0_42_1" (func $_ZN14wit_bindgen_rt12cabi_realloc17h8b8f48ef1dd8c6b5E))
    (elem (;0;) (i32.const 1) func $_ZN10primitives8bindings40__link_custom_section_describing_imports17h5b702c8b7c881b4eE $cabi_realloc)
    (func $__wasm_call_ctors (;0;) (type 0))
    (func $_ZN10primitives8bindings40__link_custom_section_describing_imports17h5b702c8b7c881b4eE (;1;) (type 0))
    (func $math:vec/vec4@0.1.0#float32 (;2;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048640
      i32.const 0
      i64.const 0
      i64.store offset=1048632
      i32.const 1048632
    )
    (func $math:vec/vec4@0.1.0#float64 (;3;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048656
      i32.const 0
      i64.const 0
      i64.store offset=1048648
      i32.const 0
      i64.const 0
      i64.store offset=1048640
      i32.const 0
      i64.const 0
      i64.store offset=1048632
      i32.const 1048632
    )
    (func $math:vec/vec4@0.1.0#int8 (;4;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i32.const 0
      i32.store offset=1048632
      i32.const 1048632
    )
    (func $math:vec/vec4@0.1.0#int16 (;5;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048632
      i32.const 1048632
    )
    (func $math:vec/vec3@0.1.0#float32 (;6;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048608
      i32.const 0
      i32.const 0
      i32.store offset=1048616
      i32.const 1048608
    )
    (func $math:vec/vec3@0.1.0#float64 (;7;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048624
      i32.const 0
      i64.const 0
      i64.store offset=1048616
      i32.const 0
      i64.const 0
      i64.store offset=1048608
      i32.const 1048608
    )
    (func $math:vec/vec3@0.1.0#int8 (;8;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i32.const 0
      i32.store8 offset=1048610
      i32.const 0
      i32.const 0
      i32.store16 offset=1048608
      i32.const 1048608
    )
    (func $math:vec/vec3@0.1.0#int16 (;9;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i32.const 0
      i32.store16 offset=1048612
      i32.const 0
      i32.const 0
      i32.store offset=1048608
      i32.const 1048608
    )
    (func $math:vec/vec3@0.1.0#int32 (;10;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048608
      i32.const 0
      i32.const 0
      i32.store offset=1048616
      i32.const 1048608
    )
    (func $math:vec/vec2@0.1.0#float32 (;11;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048592
      i32.const 1048592
    )
    (func $math:vec/vec2@0.1.0#float64 (;12;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048600
      i32.const 0
      i64.const 0
      i64.store offset=1048592
      i32.const 1048592
    )
    (func $math:vec/vec2@0.1.0#int8 (;13;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i32.const 0
      i32.store16 offset=1048592
      i32.const 1048592
    )
    (func $math:vec/vec2@0.1.0#int16 (;14;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i32.const 0
      i32.store offset=1048592
      i32.const 1048592
    )
    (func $math:vec/vec2@0.1.0#int32 (;15;) (type 1) (result i32)
      call $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E
      i32.const 0
      i64.const 0
      i64.store offset=1048592
      i32.const 1048592
    )
    (func $_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc (;16;) (type 2) (param i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      call $_RNvCs691rhTbG0Ee_7___rustc11___rdl_alloc
      local.set 2
      local.get 2
      return
    )
    (func $_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc (;17;) (type 3) (param i32 i32 i32 i32) (result i32)
      (local i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $_RNvCs691rhTbG0Ee_7___rustc13___rdl_realloc
      local.set 4
      local.get 4
      return
    )
    (func $_ZN14wit_bindgen_rt12cabi_realloc17h8b8f48ef1dd8c6b5E (;18;) (type 3) (param i32 i32 i32 i32) (result i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            br_if 0 (;@3;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            i32.const 0
            i32.load8_u offset=1048664
            drop
            local.get 3
            local.get 2
            call $_RNvCs691rhTbG0Ee_7___rustc12___rust_alloc
            local.set 2
            br 1 (;@2;)
          end
          local.get 0
          local.get 1
          local.get 2
          local.get 3
          call $_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc
          local.set 2
        end
        local.get 2
        br_if 0 (;@1;)
        unreachable
      end
      local.get 2
    )
    (func $_ZN14wit_bindgen_rt14run_ctors_once17h556fe07ca2e045f2E (;19;) (type 0)
      block ;; label = @1
        i32.const 0
        i32.load8_u offset=1048665
        br_if 0 (;@1;)
        call $__wasm_call_ctors
        i32.const 0
        i32.const 1
        i32.store8 offset=1048665
      end
    )
    (func $cabi_realloc (;20;) (type 3) (param i32 i32 i32 i32) (result i32)
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      call $_ZN14wit_bindgen_rt12cabi_realloc17h8b8f48ef1dd8c6b5E
    )
    (func $_RNvCs691rhTbG0Ee_7___rustc11___rdl_alloc (;21;) (type 2) (param i32 i32) (result i32)
      (local i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 2
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const 8
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            local.get 0
            i32.le_u
            br_if 1 (;@2;)
          end
          local.get 2
          i32.const 0
          i32.store offset=12
          local.get 2
          i32.const 12
          i32.add
          local.get 1
          i32.const 4
          local.get 1
          i32.const 4
          i32.gt_u
          select
          local.get 0
          call $posix_memalign
          local.set 1
          i32.const 0
          local.get 2
          i32.load offset=12
          local.get 1
          select
          local.set 1
          br 1 (;@1;)
        end
        local.get 0
        call $malloc
        local.set 1
      end
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 1
    )
    (func $_RNvCs691rhTbG0Ee_7___rustc13___rdl_realloc (;22;) (type 3) (param i32 i32 i32 i32) (result i32)
      (local i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 4
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 8
            i32.gt_u
            br_if 0 (;@3;)
            local.get 2
            local.get 3
            i32.le_u
            br_if 1 (;@2;)
          end
          i32.const 0
          local.set 5
          local.get 4
          i32.const 0
          i32.store offset=12
          local.get 4
          i32.const 12
          i32.add
          local.get 2
          i32.const 4
          local.get 2
          i32.const 4
          i32.gt_u
          select
          local.get 3
          call $posix_memalign
          br_if 1 (;@1;)
          local.get 4
          i32.load offset=12
          local.tee 2
          i32.eqz
          br_if 1 (;@1;)
          block ;; label = @3
            local.get 3
            local.get 1
            local.get 3
            local.get 1
            i32.lt_u
            select
            local.tee 3
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 0
            local.get 3
            memory.copy
          end
          local.get 0
          call $free
          local.get 2
          local.set 5
          br 1 (;@1;)
        end
        local.get 0
        local.get 3
        call $realloc
        local.set 5
      end
      local.get 4
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 5
    )
    (func $malloc (;23;) (type 4) (param i32) (result i32)
      local.get 0
      call $dlmalloc
    )
    (func $dlmalloc (;24;) (type 4) (param i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      global.get $__stack_pointer
      i32.const 16
      i32.sub
      local.tee 1
      global.set $__stack_pointer
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          block ;; label = @11
                            block ;; label = @12
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1048692
                                local.tee 2
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  i32.const 0
                                  i32.load offset=1049140
                                  local.tee 3
                                  br_if 0 (;@14;)
                                  i32.const 0
                                  i64.const -1
                                  i64.store offset=1049152 align=4
                                  i32.const 0
                                  i64.const 281474976776192
                                  i64.store offset=1049144 align=4
                                  i32.const 0
                                  local.get 1
                                  i32.const 8
                                  i32.add
                                  i32.const -16
                                  i32.and
                                  i32.const 1431655768
                                  i32.xor
                                  local.tee 3
                                  i32.store offset=1049140
                                  i32.const 0
                                  i32.const 0
                                  i32.store offset=1049160
                                  i32.const 0
                                  i32.const 0
                                  i32.store offset=1049112
                                end
                                i32.const 1114112
                                i32.const 1049168
                                i32.lt_u
                                br_if 1 (;@12;)
                                i32.const 0
                                local.set 2
                                i32.const 1114112
                                i32.const 1049168
                                i32.sub
                                i32.const 89
                                i32.lt_u
                                br_if 0 (;@13;)
                                i32.const 0
                                local.set 4
                                i32.const 0
                                i32.const 1049168
                                i32.store offset=1049116
                                i32.const 0
                                i32.const 1049168
                                i32.store offset=1048684
                                i32.const 0
                                local.get 3
                                i32.store offset=1048704
                                i32.const 0
                                i32.const -1
                                i32.store offset=1048700
                                i32.const 0
                                i32.const 1114112
                                i32.const 1049168
                                i32.sub
                                local.tee 3
                                i32.store offset=1049120
                                i32.const 0
                                local.get 3
                                i32.store offset=1049104
                                i32.const 0
                                local.get 3
                                i32.store offset=1049100
                                loop ;; label = @14
                                  local.get 4
                                  i32.const 1048728
                                  i32.add
                                  local.get 4
                                  i32.const 1048716
                                  i32.add
                                  local.tee 3
                                  i32.store
                                  local.get 3
                                  local.get 4
                                  i32.const 1048708
                                  i32.add
                                  local.tee 5
                                  i32.store
                                  local.get 4
                                  i32.const 1048720
                                  i32.add
                                  local.get 5
                                  i32.store
                                  local.get 4
                                  i32.const 1048736
                                  i32.add
                                  local.get 4
                                  i32.const 1048724
                                  i32.add
                                  local.tee 5
                                  i32.store
                                  local.get 5
                                  local.get 3
                                  i32.store
                                  local.get 4
                                  i32.const 1048744
                                  i32.add
                                  local.get 4
                                  i32.const 1048732
                                  i32.add
                                  local.tee 3
                                  i32.store
                                  local.get 3
                                  local.get 5
                                  i32.store
                                  local.get 4
                                  i32.const 1048740
                                  i32.add
                                  local.get 3
                                  i32.store
                                  local.get 4
                                  i32.const 32
                                  i32.add
                                  local.tee 4
                                  i32.const 256
                                  i32.ne
                                  br_if 0 (;@14;)
                                end
                                i32.const 1114112
                                i32.const -52
                                i32.add
                                i32.const 56
                                i32.store
                                i32.const 0
                                i32.const 0
                                i32.load offset=1049156
                                i32.store offset=1048696
                                i32.const 0
                                i32.const 1049168
                                i32.const -8
                                i32.const 1049168
                                i32.sub
                                i32.const 15
                                i32.and
                                local.tee 4
                                i32.add
                                local.tee 2
                                i32.store offset=1048692
                                i32.const 0
                                i32.const 1114112
                                i32.const 1049168
                                i32.sub
                                local.get 4
                                i32.sub
                                i32.const -56
                                i32.add
                                local.tee 4
                                i32.store offset=1048680
                                local.get 2
                                local.get 4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                              end
                              block ;; label = @13
                                block ;; label = @14
                                  local.get 0
                                  i32.const 236
                                  i32.gt_u
                                  br_if 0 (;@14;)
                                  block ;; label = @15
                                    i32.const 0
                                    i32.load offset=1048668
                                    local.tee 6
                                    i32.const 16
                                    local.get 0
                                    i32.const 19
                                    i32.add
                                    i32.const 496
                                    i32.and
                                    local.get 0
                                    i32.const 11
                                    i32.lt_u
                                    select
                                    local.tee 5
                                    i32.const 3
                                    i32.shr_u
                                    local.tee 3
                                    i32.shr_u
                                    local.tee 4
                                    i32.const 3
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    block ;; label = @16
                                      block ;; label = @17
                                        local.get 4
                                        i32.const 1
                                        i32.and
                                        local.get 3
                                        i32.or
                                        i32.const 1
                                        i32.xor
                                        local.tee 5
                                        i32.const 3
                                        i32.shl
                                        local.tee 3
                                        i32.const 1048708
                                        i32.add
                                        local.tee 4
                                        local.get 3
                                        i32.const 1048716
                                        i32.add
                                        i32.load
                                        local.tee 3
                                        i32.load offset=8
                                        local.tee 0
                                        i32.ne
                                        br_if 0 (;@17;)
                                        i32.const 0
                                        local.get 6
                                        i32.const -2
                                        local.get 5
                                        i32.rotl
                                        i32.and
                                        i32.store offset=1048668
                                        br 1 (;@16;)
                                      end
                                      local.get 4
                                      local.get 0
                                      i32.store offset=8
                                      local.get 0
                                      local.get 4
                                      i32.store offset=12
                                    end
                                    local.get 3
                                    i32.const 8
                                    i32.add
                                    local.set 4
                                    local.get 3
                                    local.get 5
                                    i32.const 3
                                    i32.shl
                                    local.tee 5
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    local.get 3
                                    local.get 5
                                    i32.add
                                    local.tee 3
                                    local.get 3
                                    i32.load offset=4
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    br 14 (;@1;)
                                  end
                                  local.get 5
                                  i32.const 0
                                  i32.load offset=1048676
                                  local.tee 7
                                  i32.le_u
                                  br_if 1 (;@13;)
                                  block ;; label = @15
                                    local.get 4
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    block ;; label = @16
                                      block ;; label = @17
                                        local.get 4
                                        local.get 3
                                        i32.shl
                                        i32.const 2
                                        local.get 3
                                        i32.shl
                                        local.tee 4
                                        i32.const 0
                                        local.get 4
                                        i32.sub
                                        i32.or
                                        i32.and
                                        i32.ctz
                                        local.tee 3
                                        i32.const 3
                                        i32.shl
                                        local.tee 4
                                        i32.const 1048708
                                        i32.add
                                        local.tee 0
                                        local.get 4
                                        i32.const 1048716
                                        i32.add
                                        i32.load
                                        local.tee 4
                                        i32.load offset=8
                                        local.tee 8
                                        i32.ne
                                        br_if 0 (;@17;)
                                        i32.const 0
                                        local.get 6
                                        i32.const -2
                                        local.get 3
                                        i32.rotl
                                        i32.and
                                        local.tee 6
                                        i32.store offset=1048668
                                        br 1 (;@16;)
                                      end
                                      local.get 0
                                      local.get 8
                                      i32.store offset=8
                                      local.get 8
                                      local.get 0
                                      i32.store offset=12
                                    end
                                    local.get 4
                                    local.get 5
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    local.get 4
                                    local.get 3
                                    i32.const 3
                                    i32.shl
                                    local.tee 3
                                    i32.add
                                    local.get 3
                                    local.get 5
                                    i32.sub
                                    local.tee 0
                                    i32.store
                                    local.get 4
                                    local.get 5
                                    i32.add
                                    local.tee 8
                                    local.get 0
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    block ;; label = @16
                                      local.get 7
                                      i32.eqz
                                      br_if 0 (;@16;)
                                      local.get 7
                                      i32.const -8
                                      i32.and
                                      i32.const 1048708
                                      i32.add
                                      local.set 5
                                      i32.const 0
                                      i32.load offset=1048688
                                      local.set 3
                                      block ;; label = @17
                                        block ;; label = @18
                                          local.get 6
                                          i32.const 1
                                          local.get 7
                                          i32.const 3
                                          i32.shr_u
                                          i32.shl
                                          local.tee 9
                                          i32.and
                                          br_if 0 (;@18;)
                                          i32.const 0
                                          local.get 6
                                          local.get 9
                                          i32.or
                                          i32.store offset=1048668
                                          local.get 5
                                          local.set 9
                                          br 1 (;@17;)
                                        end
                                        local.get 5
                                        i32.load offset=8
                                        local.set 9
                                      end
                                      local.get 9
                                      local.get 3
                                      i32.store offset=12
                                      local.get 5
                                      local.get 3
                                      i32.store offset=8
                                      local.get 3
                                      local.get 5
                                      i32.store offset=12
                                      local.get 3
                                      local.get 9
                                      i32.store offset=8
                                    end
                                    local.get 4
                                    i32.const 8
                                    i32.add
                                    local.set 4
                                    i32.const 0
                                    local.get 8
                                    i32.store offset=1048688
                                    i32.const 0
                                    local.get 0
                                    i32.store offset=1048676
                                    br 14 (;@1;)
                                  end
                                  i32.const 0
                                  i32.load offset=1048672
                                  local.tee 10
                                  i32.eqz
                                  br_if 1 (;@13;)
                                  local.get 10
                                  i32.ctz
                                  i32.const 2
                                  i32.shl
                                  i32.const 1048972
                                  i32.add
                                  i32.load
                                  local.tee 8
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 5
                                  i32.sub
                                  local.set 3
                                  local.get 8
                                  local.set 0
                                  block ;; label = @15
                                    loop ;; label = @16
                                      block ;; label = @17
                                        local.get 0
                                        i32.load offset=16
                                        local.tee 4
                                        br_if 0 (;@17;)
                                        local.get 0
                                        i32.load offset=20
                                        local.tee 4
                                        i32.eqz
                                        br_if 2 (;@15;)
                                      end
                                      local.get 4
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 5
                                      i32.sub
                                      local.tee 0
                                      local.get 3
                                      local.get 0
                                      local.get 3
                                      i32.lt_u
                                      local.tee 0
                                      select
                                      local.set 3
                                      local.get 4
                                      local.get 8
                                      local.get 0
                                      select
                                      local.set 8
                                      local.get 4
                                      local.set 0
                                      br 0 (;@16;)
                                    end
                                  end
                                  local.get 8
                                  i32.load offset=24
                                  local.set 2
                                  block ;; label = @15
                                    local.get 8
                                    i32.load offset=12
                                    local.tee 4
                                    local.get 8
                                    i32.eq
                                    br_if 0 (;@15;)
                                    local.get 8
                                    i32.load offset=8
                                    local.tee 0
                                    local.get 4
                                    i32.store offset=12
                                    local.get 4
                                    local.get 0
                                    i32.store offset=8
                                    br 13 (;@2;)
                                  end
                                  block ;; label = @15
                                    block ;; label = @16
                                      local.get 8
                                      i32.load offset=20
                                      local.tee 0
                                      i32.eqz
                                      br_if 0 (;@16;)
                                      local.get 8
                                      i32.const 20
                                      i32.add
                                      local.set 9
                                      br 1 (;@15;)
                                    end
                                    local.get 8
                                    i32.load offset=16
                                    local.tee 0
                                    i32.eqz
                                    br_if 4 (;@11;)
                                    local.get 8
                                    i32.const 16
                                    i32.add
                                    local.set 9
                                  end
                                  loop ;; label = @15
                                    local.get 9
                                    local.set 11
                                    local.get 0
                                    local.tee 4
                                    i32.const 20
                                    i32.add
                                    local.set 9
                                    local.get 4
                                    i32.load offset=20
                                    local.tee 0
                                    br_if 0 (;@15;)
                                    local.get 4
                                    i32.const 16
                                    i32.add
                                    local.set 9
                                    local.get 4
                                    i32.load offset=16
                                    local.tee 0
                                    br_if 0 (;@15;)
                                  end
                                  local.get 11
                                  i32.const 0
                                  i32.store
                                  br 12 (;@2;)
                                end
                                i32.const -1
                                local.set 5
                                local.get 0
                                i32.const -65
                                i32.gt_u
                                br_if 0 (;@13;)
                                local.get 0
                                i32.const 19
                                i32.add
                                local.tee 4
                                i32.const -16
                                i32.and
                                local.set 5
                                i32.const 0
                                i32.load offset=1048672
                                local.tee 10
                                i32.eqz
                                br_if 0 (;@13;)
                                i32.const 31
                                local.set 7
                                block ;; label = @14
                                  local.get 0
                                  i32.const 16777196
                                  i32.gt_u
                                  br_if 0 (;@14;)
                                  local.get 5
                                  i32.const 38
                                  local.get 4
                                  i32.const 8
                                  i32.shr_u
                                  i32.clz
                                  local.tee 4
                                  i32.sub
                                  i32.shr_u
                                  i32.const 1
                                  i32.and
                                  local.get 4
                                  i32.const 1
                                  i32.shl
                                  i32.sub
                                  i32.const 62
                                  i32.add
                                  local.set 7
                                end
                                i32.const 0
                                local.get 5
                                i32.sub
                                local.set 3
                                block ;; label = @14
                                  block ;; label = @15
                                    block ;; label = @16
                                      block ;; label = @17
                                        local.get 7
                                        i32.const 2
                                        i32.shl
                                        i32.const 1048972
                                        i32.add
                                        i32.load
                                        local.tee 0
                                        br_if 0 (;@17;)
                                        i32.const 0
                                        local.set 4
                                        i32.const 0
                                        local.set 9
                                        br 1 (;@16;)
                                      end
                                      i32.const 0
                                      local.set 4
                                      local.get 5
                                      i32.const 0
                                      i32.const 25
                                      local.get 7
                                      i32.const 1
                                      i32.shr_u
                                      i32.sub
                                      local.get 7
                                      i32.const 31
                                      i32.eq
                                      select
                                      i32.shl
                                      local.set 8
                                      i32.const 0
                                      local.set 9
                                      loop ;; label = @17
                                        block ;; label = @18
                                          local.get 0
                                          i32.load offset=4
                                          i32.const -8
                                          i32.and
                                          local.get 5
                                          i32.sub
                                          local.tee 6
                                          local.get 3
                                          i32.ge_u
                                          br_if 0 (;@18;)
                                          local.get 6
                                          local.set 3
                                          local.get 0
                                          local.set 9
                                          local.get 6
                                          br_if 0 (;@18;)
                                          i32.const 0
                                          local.set 3
                                          local.get 0
                                          local.set 9
                                          local.get 0
                                          local.set 4
                                          br 3 (;@15;)
                                        end
                                        local.get 4
                                        local.get 0
                                        i32.load offset=20
                                        local.tee 6
                                        local.get 6
                                        local.get 0
                                        local.get 8
                                        i32.const 29
                                        i32.shr_u
                                        i32.const 4
                                        i32.and
                                        i32.add
                                        i32.const 16
                                        i32.add
                                        i32.load
                                        local.tee 11
                                        i32.eq
                                        select
                                        local.get 4
                                        local.get 6
                                        select
                                        local.set 4
                                        local.get 8
                                        i32.const 1
                                        i32.shl
                                        local.set 8
                                        local.get 11
                                        local.set 0
                                        local.get 11
                                        br_if 0 (;@17;)
                                      end
                                    end
                                    block ;; label = @16
                                      local.get 4
                                      local.get 9
                                      i32.or
                                      br_if 0 (;@16;)
                                      i32.const 0
                                      local.set 9
                                      i32.const 2
                                      local.get 7
                                      i32.shl
                                      local.tee 4
                                      i32.const 0
                                      local.get 4
                                      i32.sub
                                      i32.or
                                      local.get 10
                                      i32.and
                                      local.tee 4
                                      i32.eqz
                                      br_if 3 (;@13;)
                                      local.get 4
                                      i32.ctz
                                      i32.const 2
                                      i32.shl
                                      i32.const 1048972
                                      i32.add
                                      i32.load
                                      local.set 4
                                    end
                                    local.get 4
                                    i32.eqz
                                    br_if 1 (;@14;)
                                  end
                                  loop ;; label = @15
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 5
                                    i32.sub
                                    local.tee 6
                                    local.get 3
                                    i32.lt_u
                                    local.set 8
                                    block ;; label = @16
                                      local.get 4
                                      i32.load offset=16
                                      local.tee 0
                                      br_if 0 (;@16;)
                                      local.get 4
                                      i32.load offset=20
                                      local.set 0
                                    end
                                    local.get 6
                                    local.get 3
                                    local.get 8
                                    select
                                    local.set 3
                                    local.get 4
                                    local.get 9
                                    local.get 8
                                    select
                                    local.set 9
                                    local.get 0
                                    local.set 4
                                    local.get 0
                                    br_if 0 (;@15;)
                                  end
                                end
                                local.get 9
                                i32.eqz
                                br_if 0 (;@13;)
                                local.get 3
                                i32.const 0
                                i32.load offset=1048676
                                local.get 5
                                i32.sub
                                i32.ge_u
                                br_if 0 (;@13;)
                                local.get 9
                                i32.load offset=24
                                local.set 11
                                block ;; label = @14
                                  local.get 9
                                  i32.load offset=12
                                  local.tee 4
                                  local.get 9
                                  i32.eq
                                  br_if 0 (;@14;)
                                  local.get 9
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 4
                                  i32.store offset=12
                                  local.get 4
                                  local.get 0
                                  i32.store offset=8
                                  br 11 (;@3;)
                                end
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 9
                                    i32.load offset=20
                                    local.tee 0
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    local.get 9
                                    i32.const 20
                                    i32.add
                                    local.set 8
                                    br 1 (;@14;)
                                  end
                                  local.get 9
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  br_if 4 (;@10;)
                                  local.get 9
                                  i32.const 16
                                  i32.add
                                  local.set 8
                                end
                                loop ;; label = @14
                                  local.get 8
                                  local.set 6
                                  local.get 0
                                  local.tee 4
                                  i32.const 20
                                  i32.add
                                  local.set 8
                                  local.get 4
                                  i32.load offset=20
                                  local.tee 0
                                  br_if 0 (;@14;)
                                  local.get 4
                                  i32.const 16
                                  i32.add
                                  local.set 8
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@14;)
                                end
                                local.get 6
                                i32.const 0
                                i32.store
                                br 10 (;@3;)
                              end
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1048676
                                local.tee 4
                                local.get 5
                                i32.lt_u
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.load offset=1048688
                                local.set 3
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 4
                                    local.get 5
                                    i32.sub
                                    local.tee 0
                                    i32.const 16
                                    i32.lt_u
                                    br_if 0 (;@15;)
                                    local.get 3
                                    local.get 5
                                    i32.add
                                    local.tee 8
                                    local.get 0
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 3
                                    local.get 4
                                    i32.add
                                    local.get 0
                                    i32.store
                                    local.get 3
                                    local.get 5
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    br 1 (;@14;)
                                  end
                                  local.get 3
                                  local.get 4
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 3
                                  local.get 4
                                  i32.add
                                  local.tee 4
                                  local.get 4
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 0
                                  local.set 8
                                  i32.const 0
                                  local.set 0
                                end
                                i32.const 0
                                local.get 0
                                i32.store offset=1048676
                                i32.const 0
                                local.get 8
                                i32.store offset=1048688
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 4
                                br 12 (;@1;)
                              end
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1048680
                                local.tee 0
                                local.get 5
                                i32.le_u
                                br_if 0 (;@13;)
                                local.get 2
                                local.get 5
                                i32.add
                                local.tee 4
                                local.get 0
                                local.get 5
                                i32.sub
                                local.tee 3
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                i32.const 0
                                local.get 4
                                i32.store offset=1048692
                                i32.const 0
                                local.get 3
                                i32.store offset=1048680
                                local.get 2
                                local.get 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 2
                                i32.const 8
                                i32.add
                                local.set 4
                                br 12 (;@1;)
                              end
                              block ;; label = @13
                                block ;; label = @14
                                  i32.const 0
                                  i32.load offset=1049140
                                  i32.eqz
                                  br_if 0 (;@14;)
                                  i32.const 0
                                  i32.load offset=1049148
                                  local.set 3
                                  br 1 (;@13;)
                                end
                                i32.const 0
                                i64.const -1
                                i64.store offset=1049152 align=4
                                i32.const 0
                                i64.const 281474976776192
                                i64.store offset=1049144 align=4
                                i32.const 0
                                local.get 1
                                i32.const 12
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                i32.store offset=1049140
                                i32.const 0
                                i32.const 0
                                i32.store offset=1049160
                                i32.const 0
                                i32.const 0
                                i32.store offset=1049112
                                i32.const 65536
                                local.set 3
                              end
                              i32.const 0
                              local.set 4
                              block ;; label = @13
                                local.get 3
                                local.get 5
                                i32.const 71
                                i32.add
                                local.tee 11
                                i32.add
                                local.tee 8
                                i32.const 0
                                local.get 3
                                i32.sub
                                local.tee 6
                                i32.and
                                local.tee 9
                                local.get 5
                                i32.gt_u
                                br_if 0 (;@13;)
                                i32.const 0
                                i32.const 48
                                i32.store offset=1049164
                                br 12 (;@1;)
                              end
                              block ;; label = @13
                                i32.const 0
                                i32.load offset=1049108
                                local.tee 4
                                i32.eqz
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  i32.const 0
                                  i32.load offset=1049100
                                  local.tee 3
                                  local.get 9
                                  i32.add
                                  local.tee 7
                                  local.get 3
                                  i32.le_u
                                  br_if 0 (;@14;)
                                  local.get 7
                                  local.get 4
                                  i32.le_u
                                  br_if 1 (;@13;)
                                end
                                i32.const 0
                                local.set 4
                                i32.const 0
                                i32.const 48
                                i32.store offset=1049164
                                br 12 (;@1;)
                              end
                              i32.const 0
                              i32.load8_u offset=1049112
                              i32.const 4
                              i32.and
                              br_if 5 (;@7;)
                              block ;; label = @13
                                block ;; label = @14
                                  block ;; label = @15
                                    local.get 2
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    i32.const 1049116
                                    local.set 4
                                    loop ;; label = @16
                                      block ;; label = @17
                                        local.get 4
                                        i32.load
                                        local.tee 3
                                        local.get 2
                                        i32.gt_u
                                        br_if 0 (;@17;)
                                        local.get 3
                                        local.get 4
                                        i32.load offset=4
                                        i32.add
                                        local.get 2
                                        i32.gt_u
                                        br_if 3 (;@14;)
                                      end
                                      local.get 4
                                      i32.load offset=8
                                      local.tee 4
                                      br_if 0 (;@16;)
                                    end
                                  end
                                  i32.const 0
                                  call $sbrk
                                  local.tee 8
                                  i32.const -1
                                  i32.eq
                                  br_if 6 (;@8;)
                                  local.get 9
                                  local.set 6
                                  block ;; label = @15
                                    i32.const 0
                                    i32.load offset=1049144
                                    local.tee 4
                                    i32.const -1
                                    i32.add
                                    local.tee 3
                                    local.get 8
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    local.get 9
                                    local.get 8
                                    i32.sub
                                    local.get 3
                                    local.get 8
                                    i32.add
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.and
                                    i32.add
                                    local.set 6
                                  end
                                  local.get 6
                                  local.get 5
                                  i32.le_u
                                  br_if 6 (;@8;)
                                  local.get 6
                                  i32.const 2147483646
                                  i32.gt_u
                                  br_if 6 (;@8;)
                                  block ;; label = @15
                                    i32.const 0
                                    i32.load offset=1049108
                                    local.tee 4
                                    i32.eqz
                                    br_if 0 (;@15;)
                                    i32.const 0
                                    i32.load offset=1049100
                                    local.tee 3
                                    local.get 6
                                    i32.add
                                    local.tee 0
                                    local.get 3
                                    i32.le_u
                                    br_if 7 (;@8;)
                                    local.get 0
                                    local.get 4
                                    i32.gt_u
                                    br_if 7 (;@8;)
                                  end
                                  local.get 6
                                  call $sbrk
                                  local.tee 4
                                  local.get 8
                                  i32.ne
                                  br_if 1 (;@13;)
                                  br 8 (;@6;)
                                end
                                local.get 8
                                local.get 0
                                i32.sub
                                local.get 6
                                i32.and
                                local.tee 6
                                i32.const 2147483646
                                i32.gt_u
                                br_if 5 (;@8;)
                                local.get 6
                                call $sbrk
                                local.tee 8
                                local.get 4
                                i32.load
                                local.get 4
                                i32.load offset=4
                                i32.add
                                i32.eq
                                br_if 4 (;@9;)
                                local.get 8
                                local.set 4
                              end
                              block ;; label = @13
                                local.get 6
                                local.get 5
                                i32.const 72
                                i32.add
                                i32.ge_u
                                br_if 0 (;@13;)
                                local.get 4
                                i32.const -1
                                i32.eq
                                br_if 0 (;@13;)
                                block ;; label = @14
                                  local.get 11
                                  local.get 6
                                  i32.sub
                                  i32.const 0
                                  i32.load offset=1049148
                                  local.tee 3
                                  i32.add
                                  i32.const 0
                                  local.get 3
                                  i32.sub
                                  i32.and
                                  local.tee 3
                                  i32.const 2147483646
                                  i32.le_u
                                  br_if 0 (;@14;)
                                  local.get 4
                                  local.set 8
                                  br 8 (;@6;)
                                end
                                block ;; label = @14
                                  local.get 3
                                  call $sbrk
                                  i32.const -1
                                  i32.eq
                                  br_if 0 (;@14;)
                                  local.get 3
                                  local.get 6
                                  i32.add
                                  local.set 6
                                  local.get 4
                                  local.set 8
                                  br 8 (;@6;)
                                end
                                i32.const 0
                                local.get 6
                                i32.sub
                                call $sbrk
                                drop
                                br 5 (;@8;)
                              end
                              local.get 4
                              local.set 8
                              local.get 4
                              i32.const -1
                              i32.ne
                              br_if 6 (;@6;)
                              br 4 (;@8;)
                            end
                            unreachable
                          end
                          i32.const 0
                          local.set 4
                          br 8 (;@2;)
                        end
                        i32.const 0
                        local.set 4
                        br 6 (;@3;)
                      end
                      local.get 8
                      i32.const -1
                      i32.ne
                      br_if 2 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049112
                    i32.const 4
                    i32.or
                    i32.store offset=1049112
                  end
                  local.get 9
                  i32.const 2147483646
                  i32.gt_u
                  br_if 1 (;@5;)
                  local.get 9
                  call $sbrk
                  local.set 8
                  i32.const 0
                  call $sbrk
                  local.set 4
                  local.get 8
                  i32.const -1
                  i32.eq
                  br_if 1 (;@5;)
                  local.get 4
                  i32.const -1
                  i32.eq
                  br_if 1 (;@5;)
                  local.get 8
                  local.get 4
                  i32.ge_u
                  br_if 1 (;@5;)
                  local.get 4
                  local.get 8
                  i32.sub
                  local.tee 6
                  local.get 5
                  i32.const 56
                  i32.add
                  i32.le_u
                  br_if 1 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1049100
                local.get 6
                i32.add
                local.tee 4
                i32.store offset=1049100
                block ;; label = @6
                  local.get 4
                  i32.const 0
                  i32.load offset=1049104
                  i32.le_u
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 4
                  i32.store offset=1049104
                end
                block ;; label = @6
                  block ;; label = @7
                    block ;; label = @8
                      block ;; label = @9
                        i32.const 0
                        i32.load offset=1048692
                        local.tee 3
                        i32.eqz
                        br_if 0 (;@9;)
                        i32.const 1049116
                        local.set 4
                        loop ;; label = @10
                          local.get 8
                          local.get 4
                          i32.load
                          local.tee 0
                          local.get 4
                          i32.load offset=4
                          local.tee 9
                          i32.add
                          i32.eq
                          br_if 2 (;@8;)
                          local.get 4
                          i32.load offset=8
                          local.tee 4
                          br_if 0 (;@10;)
                          br 3 (;@7;)
                        end
                      end
                      block ;; label = @9
                        block ;; label = @10
                          i32.const 0
                          i32.load offset=1048684
                          local.tee 4
                          i32.eqz
                          br_if 0 (;@10;)
                          local.get 8
                          local.get 4
                          i32.ge_u
                          br_if 1 (;@9;)
                        end
                        i32.const 0
                        local.get 8
                        i32.store offset=1048684
                      end
                      i32.const 0
                      local.set 4
                      i32.const 0
                      local.get 6
                      i32.store offset=1049120
                      i32.const 0
                      local.get 8
                      i32.store offset=1049116
                      i32.const 0
                      i32.const -1
                      i32.store offset=1048700
                      i32.const 0
                      i32.const 0
                      i32.load offset=1049140
                      i32.store offset=1048704
                      i32.const 0
                      i32.const 0
                      i32.store offset=1049128
                      loop ;; label = @9
                        local.get 4
                        i32.const 1048728
                        i32.add
                        local.get 4
                        i32.const 1048716
                        i32.add
                        local.tee 3
                        i32.store
                        local.get 3
                        local.get 4
                        i32.const 1048708
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 4
                        i32.const 1048720
                        i32.add
                        local.get 0
                        i32.store
                        local.get 4
                        i32.const 1048736
                        i32.add
                        local.get 4
                        i32.const 1048724
                        i32.add
                        local.tee 0
                        i32.store
                        local.get 0
                        local.get 3
                        i32.store
                        local.get 4
                        i32.const 1048744
                        i32.add
                        local.get 4
                        i32.const 1048732
                        i32.add
                        local.tee 3
                        i32.store
                        local.get 3
                        local.get 0
                        i32.store
                        local.get 4
                        i32.const 1048740
                        i32.add
                        local.get 3
                        i32.store
                        local.get 4
                        i32.const 32
                        i32.add
                        local.tee 4
                        i32.const 256
                        i32.ne
                        br_if 0 (;@9;)
                      end
                      local.get 8
                      i32.const -8
                      local.get 8
                      i32.sub
                      i32.const 15
                      i32.and
                      local.tee 4
                      i32.add
                      local.tee 3
                      local.get 6
                      i32.const -56
                      i32.add
                      local.tee 0
                      local.get 4
                      i32.sub
                      local.tee 4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      i32.const 0
                      i32.load offset=1049156
                      i32.store offset=1048696
                      i32.const 0
                      local.get 4
                      i32.store offset=1048680
                      i32.const 0
                      local.get 3
                      i32.store offset=1048692
                      local.get 8
                      local.get 0
                      i32.add
                      i32.const 56
                      i32.store offset=4
                      br 2 (;@6;)
                    end
                    local.get 3
                    local.get 8
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 3
                    local.get 0
                    i32.lt_u
                    br_if 0 (;@7;)
                    local.get 4
                    i32.load offset=12
                    i32.const 8
                    i32.and
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const -8
                    local.get 3
                    i32.sub
                    i32.const 15
                    i32.and
                    local.tee 0
                    i32.add
                    local.tee 8
                    i32.const 0
                    i32.load offset=1048680
                    local.get 6
                    i32.add
                    local.tee 11
                    local.get 0
                    i32.sub
                    local.tee 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 4
                    local.get 9
                    local.get 6
                    i32.add
                    i32.store offset=4
                    i32.const 0
                    i32.const 0
                    i32.load offset=1049156
                    i32.store offset=1048696
                    i32.const 0
                    local.get 0
                    i32.store offset=1048680
                    i32.const 0
                    local.get 8
                    i32.store offset=1048692
                    local.get 3
                    local.get 11
                    i32.add
                    i32.const 56
                    i32.store offset=4
                    br 1 (;@6;)
                  end
                  block ;; label = @7
                    local.get 8
                    i32.const 0
                    i32.load offset=1048684
                    i32.ge_u
                    br_if 0 (;@7;)
                    i32.const 0
                    local.get 8
                    i32.store offset=1048684
                  end
                  local.get 8
                  local.get 6
                  i32.add
                  local.set 0
                  i32.const 1049116
                  local.set 4
                  block ;; label = @7
                    block ;; label = @8
                      loop ;; label = @9
                        local.get 4
                        i32.load
                        local.tee 9
                        local.get 0
                        i32.eq
                        br_if 1 (;@8;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@9;)
                        br 2 (;@7;)
                      end
                    end
                    local.get 4
                    i32.load8_u offset=12
                    i32.const 8
                    i32.and
                    i32.eqz
                    br_if 3 (;@4;)
                  end
                  i32.const 1049116
                  local.set 4
                  block ;; label = @7
                    loop ;; label = @8
                      block ;; label = @9
                        local.get 4
                        i32.load
                        local.tee 0
                        local.get 3
                        i32.gt_u
                        br_if 0 (;@9;)
                        local.get 0
                        local.get 4
                        i32.load offset=4
                        i32.add
                        local.tee 0
                        local.get 3
                        i32.gt_u
                        br_if 2 (;@7;)
                      end
                      local.get 4
                      i32.load offset=8
                      local.set 4
                      br 0 (;@8;)
                    end
                  end
                  local.get 8
                  i32.const -8
                  local.get 8
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 4
                  i32.add
                  local.tee 11
                  local.get 6
                  i32.const -56
                  i32.add
                  local.tee 9
                  local.get 4
                  i32.sub
                  local.tee 4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 8
                  local.get 9
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  local.get 3
                  local.get 0
                  i32.const 55
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.add
                  i32.const -63
                  i32.add
                  local.tee 9
                  local.get 9
                  local.get 3
                  i32.const 16
                  i32.add
                  i32.lt_u
                  select
                  local.tee 9
                  i32.const 35
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1049156
                  i32.store offset=1048696
                  i32.const 0
                  local.get 4
                  i32.store offset=1048680
                  i32.const 0
                  local.get 11
                  i32.store offset=1048692
                  local.get 9
                  i32.const 16
                  i32.add
                  i32.const 0
                  i64.load offset=1049124 align=4
                  i64.store align=4
                  local.get 9
                  i32.const 0
                  i64.load offset=1049116 align=4
                  i64.store offset=8 align=4
                  i32.const 0
                  local.get 9
                  i32.const 8
                  i32.add
                  i32.store offset=1049124
                  i32.const 0
                  local.get 6
                  i32.store offset=1049120
                  i32.const 0
                  local.get 8
                  i32.store offset=1049116
                  i32.const 0
                  i32.const 0
                  i32.store offset=1049128
                  local.get 9
                  i32.const 36
                  i32.add
                  local.set 4
                  loop ;; label = @7
                    local.get 4
                    i32.const 7
                    i32.store
                    local.get 4
                    i32.const 4
                    i32.add
                    local.tee 4
                    local.get 0
                    i32.lt_u
                    br_if 0 (;@7;)
                  end
                  local.get 9
                  local.get 3
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 9
                  local.get 9
                  i32.load offset=4
                  i32.const -2
                  i32.and
                  i32.store offset=4
                  local.get 9
                  local.get 9
                  local.get 3
                  i32.sub
                  local.tee 8
                  i32.store
                  local.get 3
                  local.get 8
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  block ;; label = @7
                    block ;; label = @8
                      local.get 8
                      i32.const 255
                      i32.gt_u
                      br_if 0 (;@8;)
                      local.get 8
                      i32.const -8
                      i32.and
                      i32.const 1048708
                      i32.add
                      local.set 4
                      block ;; label = @9
                        block ;; label = @10
                          i32.const 0
                          i32.load offset=1048668
                          local.tee 0
                          i32.const 1
                          local.get 8
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 8
                          i32.and
                          br_if 0 (;@10;)
                          i32.const 0
                          local.get 0
                          local.get 8
                          i32.or
                          i32.store offset=1048668
                          local.get 4
                          local.set 0
                          br 1 (;@9;)
                        end
                        local.get 4
                        i32.load offset=8
                        local.set 0
                      end
                      local.get 0
                      local.get 3
                      i32.store offset=12
                      local.get 4
                      local.get 3
                      i32.store offset=8
                      i32.const 12
                      local.set 8
                      i32.const 8
                      local.set 9
                      br 1 (;@7;)
                    end
                    i32.const 31
                    local.set 4
                    block ;; label = @8
                      local.get 8
                      i32.const 16777215
                      i32.gt_u
                      br_if 0 (;@8;)
                      local.get 8
                      i32.const 38
                      local.get 8
                      i32.const 8
                      i32.shr_u
                      i32.clz
                      local.tee 4
                      i32.sub
                      i32.shr_u
                      i32.const 1
                      i32.and
                      local.get 4
                      i32.const 1
                      i32.shl
                      i32.sub
                      i32.const 62
                      i32.add
                      local.set 4
                    end
                    local.get 3
                    local.get 4
                    i32.store offset=28
                    local.get 3
                    i64.const 0
                    i64.store offset=16 align=4
                    local.get 4
                    i32.const 2
                    i32.shl
                    i32.const 1048972
                    i32.add
                    local.set 0
                    block ;; label = @8
                      block ;; label = @9
                        block ;; label = @10
                          i32.const 0
                          i32.load offset=1048672
                          local.tee 9
                          i32.const 1
                          local.get 4
                          i32.shl
                          local.tee 6
                          i32.and
                          br_if 0 (;@10;)
                          local.get 0
                          local.get 3
                          i32.store
                          i32.const 0
                          local.get 9
                          local.get 6
                          i32.or
                          i32.store offset=1048672
                          local.get 3
                          local.get 0
                          i32.store offset=24
                          br 1 (;@9;)
                        end
                        local.get 8
                        i32.const 0
                        i32.const 25
                        local.get 4
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 4
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 4
                        local.get 0
                        i32.load
                        local.set 9
                        loop ;; label = @10
                          local.get 9
                          local.tee 0
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 8
                          i32.eq
                          br_if 2 (;@8;)
                          local.get 4
                          i32.const 29
                          i32.shr_u
                          local.set 9
                          local.get 4
                          i32.const 1
                          i32.shl
                          local.set 4
                          local.get 0
                          local.get 9
                          i32.const 4
                          i32.and
                          i32.add
                          i32.const 16
                          i32.add
                          local.tee 6
                          i32.load
                          local.tee 9
                          br_if 0 (;@10;)
                        end
                        local.get 6
                        local.get 3
                        i32.store
                        local.get 3
                        local.get 0
                        i32.store offset=24
                      end
                      i32.const 8
                      local.set 8
                      i32.const 12
                      local.set 9
                      local.get 3
                      local.set 0
                      local.get 3
                      local.set 4
                      br 1 (;@7;)
                    end
                    local.get 0
                    i32.load offset=8
                    local.set 4
                    local.get 0
                    local.get 3
                    i32.store offset=8
                    local.get 4
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.store offset=8
                    i32.const 0
                    local.set 4
                    i32.const 24
                    local.set 8
                    i32.const 12
                    local.set 9
                  end
                  local.get 3
                  local.get 9
                  i32.add
                  local.get 0
                  i32.store
                  local.get 3
                  local.get 8
                  i32.add
                  local.get 4
                  i32.store
                end
                i32.const 0
                i32.load offset=1048680
                local.tee 4
                local.get 5
                i32.le_u
                br_if 0 (;@5;)
                i32.const 0
                i32.load offset=1048692
                local.tee 3
                local.get 5
                i32.add
                local.tee 0
                local.get 4
                local.get 5
                i32.sub
                local.tee 4
                i32.const 1
                i32.or
                i32.store offset=4
                i32.const 0
                local.get 4
                i32.store offset=1048680
                i32.const 0
                local.get 0
                i32.store offset=1048692
                local.get 3
                local.get 5
                i32.const 3
                i32.or
                i32.store offset=4
                local.get 3
                i32.const 8
                i32.add
                local.set 4
                br 4 (;@1;)
              end
              i32.const 0
              local.set 4
              i32.const 0
              i32.const 48
              i32.store offset=1049164
              br 3 (;@1;)
            end
            local.get 4
            local.get 8
            i32.store
            local.get 4
            local.get 4
            i32.load offset=4
            local.get 6
            i32.add
            i32.store offset=4
            local.get 8
            local.get 9
            local.get 5
            call $prepend_alloc
            local.set 4
            br 2 (;@1;)
          end
          block ;; label = @3
            local.get 11
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 9
                local.get 9
                i32.load offset=28
                local.tee 8
                i32.const 2
                i32.shl
                i32.const 1048972
                i32.add
                local.tee 0
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 0
                local.get 4
                i32.store
                local.get 4
                br_if 1 (;@4;)
                i32.const 0
                local.get 10
                i32.const -2
                local.get 8
                i32.rotl
                i32.and
                local.tee 10
                i32.store offset=1048672
                br 2 (;@3;)
              end
              local.get 11
              i32.const 16
              i32.const 20
              local.get 11
              i32.load offset=16
              local.get 9
              i32.eq
              select
              i32.add
              local.get 4
              i32.store
              local.get 4
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 4
            local.get 11
            i32.store offset=24
            block ;; label = @4
              local.get 9
              i32.load offset=16
              local.tee 0
              i32.eqz
              br_if 0 (;@4;)
              local.get 4
              local.get 0
              i32.store offset=16
              local.get 0
              local.get 4
              i32.store offset=24
            end
            local.get 9
            i32.load offset=20
            local.tee 0
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 0
            i32.store offset=20
            local.get 0
            local.get 4
            i32.store offset=24
          end
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
              local.get 9
              local.get 3
              local.get 5
              i32.or
              local.tee 4
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 9
              local.get 4
              i32.add
              local.tee 4
              local.get 4
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              br 1 (;@3;)
            end
            local.get 9
            local.get 5
            i32.add
            local.tee 8
            local.get 3
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 9
            local.get 5
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 3
            i32.add
            local.get 3
            i32.store
            block ;; label = @4
              local.get 3
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const -8
              i32.and
              i32.const 1048708
              i32.add
              local.set 4
              block ;; label = @5
                block ;; label = @6
                  i32.const 0
                  i32.load offset=1048668
                  local.tee 5
                  i32.const 1
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 3
                  i32.and
                  br_if 0 (;@6;)
                  i32.const 0
                  local.get 5
                  local.get 3
                  i32.or
                  i32.store offset=1048668
                  local.get 4
                  local.set 3
                  br 1 (;@5;)
                end
                local.get 4
                i32.load offset=8
                local.set 3
              end
              local.get 3
              local.get 8
              i32.store offset=12
              local.get 4
              local.get 8
              i32.store offset=8
              local.get 8
              local.get 4
              i32.store offset=12
              local.get 8
              local.get 3
              i32.store offset=8
              br 1 (;@3;)
            end
            i32.const 31
            local.set 4
            block ;; label = @4
              local.get 3
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@4;)
              local.get 3
              i32.const 38
              local.get 3
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 4
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 4
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 4
            end
            local.get 8
            local.get 4
            i32.store offset=28
            local.get 8
            i64.const 0
            i64.store offset=16 align=4
            local.get 4
            i32.const 2
            i32.shl
            i32.const 1048972
            i32.add
            local.set 5
            block ;; label = @4
              local.get 10
              i32.const 1
              local.get 4
              i32.shl
              local.tee 0
              i32.and
              br_if 0 (;@4;)
              local.get 5
              local.get 8
              i32.store
              i32.const 0
              local.get 10
              local.get 0
              i32.or
              i32.store offset=1048672
              local.get 8
              local.get 5
              i32.store offset=24
              local.get 8
              local.get 8
              i32.store offset=8
              local.get 8
              local.get 8
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 3
            i32.const 0
            i32.const 25
            local.get 4
            i32.const 1
            i32.shr_u
            i32.sub
            local.get 4
            i32.const 31
            i32.eq
            select
            i32.shl
            local.set 4
            local.get 5
            i32.load
            local.set 0
            block ;; label = @4
              loop ;; label = @5
                local.get 0
                local.tee 5
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 1 (;@4;)
                local.get 4
                i32.const 29
                i32.shr_u
                local.set 0
                local.get 4
                i32.const 1
                i32.shl
                local.set 4
                local.get 5
                local.get 0
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 6
                i32.load
                local.tee 0
                br_if 0 (;@5;)
              end
              local.get 6
              local.get 8
              i32.store
              local.get 8
              local.get 5
              i32.store offset=24
              local.get 8
              local.get 8
              i32.store offset=12
              local.get 8
              local.get 8
              i32.store offset=8
              br 1 (;@3;)
            end
            local.get 5
            i32.load offset=8
            local.tee 4
            local.get 8
            i32.store offset=12
            local.get 5
            local.get 8
            i32.store offset=8
            local.get 8
            i32.const 0
            i32.store offset=24
            local.get 8
            local.get 5
            i32.store offset=12
            local.get 8
            local.get 4
            i32.store offset=8
          end
          local.get 9
          i32.const 8
          i32.add
          local.set 4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 2
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 9
              i32.const 2
              i32.shl
              i32.const 1048972
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 0
              local.get 4
              i32.store
              local.get 4
              br_if 1 (;@3;)
              i32.const 0
              local.get 10
              i32.const -2
              local.get 9
              i32.rotl
              i32.and
              i32.store offset=1048672
              br 2 (;@2;)
            end
            local.get 2
            i32.const 16
            i32.const 20
            local.get 2
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 4
            i32.store
            local.get 4
            i32.eqz
            br_if 1 (;@2;)
          end
          local.get 4
          local.get 2
          i32.store offset=24
          block ;; label = @3
            local.get 8
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 4
            i32.store offset=24
          end
          local.get 8
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@2;)
          local.get 4
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 4
          i32.store offset=24
        end
        block ;; label = @2
          block ;; label = @3
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 8
            local.get 3
            local.get 5
            i32.or
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@2;)
          end
          local.get 8
          local.get 5
          i32.add
          local.tee 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 5
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 3
          i32.store
          block ;; label = @3
            local.get 7
            i32.eqz
            br_if 0 (;@3;)
            local.get 7
            i32.const -8
            i32.and
            i32.const 1048708
            i32.add
            local.set 5
            i32.const 0
            i32.load offset=1048688
            local.set 4
            block ;; label = @4
              block ;; label = @5
                i32.const 1
                local.get 7
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 9
                local.get 6
                i32.and
                br_if 0 (;@5;)
                i32.const 0
                local.get 9
                local.get 6
                i32.or
                i32.store offset=1048668
                local.get 5
                local.set 9
                br 1 (;@4;)
              end
              local.get 5
              i32.load offset=8
              local.set 9
            end
            local.get 9
            local.get 4
            i32.store offset=12
            local.get 5
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 5
            i32.store offset=12
            local.get 4
            local.get 9
            i32.store offset=8
          end
          i32.const 0
          local.get 0
          i32.store offset=1048688
          i32.const 0
          local.get 3
          i32.store offset=1048676
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 4
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
    )
    (func $prepend_alloc (;25;) (type 5) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      local.get 0
      i32.const -8
      local.get 0
      i32.sub
      i32.const 15
      i32.and
      i32.add
      local.tee 3
      local.get 2
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 1
      i32.const -8
      local.get 1
      i32.sub
      i32.const 15
      i32.and
      i32.add
      local.tee 4
      local.get 3
      local.get 2
      i32.add
      local.tee 5
      i32.sub
      local.set 0
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.const 0
          i32.load offset=1048692
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          local.get 5
          i32.store offset=1048692
          i32.const 0
          i32.const 0
          i32.load offset=1048680
          local.get 0
          i32.add
          local.tee 2
          i32.store offset=1048680
          local.get 5
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 4
          i32.const 0
          i32.load offset=1048688
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          local.get 5
          i32.store offset=1048688
          i32.const 0
          i32.const 0
          i32.load offset=1048676
          local.get 0
          i32.add
          local.tee 2
          i32.store offset=1048676
          local.get 5
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 5
          local.get 2
          i32.add
          local.get 2
          i32.store
          br 1 (;@1;)
        end
        block ;; label = @2
          local.get 4
          i32.load offset=4
          local.tee 1
          i32.const 3
          i32.and
          i32.const 1
          i32.ne
          br_if 0 (;@2;)
          local.get 1
          i32.const -8
          i32.and
          local.set 6
          local.get 4
          i32.load offset=12
          local.set 2
          block ;; label = @3
            block ;; label = @4
              local.get 1
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              block ;; label = @5
                local.get 2
                local.get 4
                i32.load offset=8
                local.tee 7
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1048668
                i32.const -2
                local.get 1
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1048668
                br 2 (;@3;)
              end
              local.get 2
              local.get 7
              i32.store offset=8
              local.get 7
              local.get 2
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 4
            i32.load offset=24
            local.set 8
            block ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 4
                i32.eq
                br_if 0 (;@5;)
                local.get 4
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 1 (;@4;)
              end
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 4
                    i32.load offset=20
                    local.tee 1
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 4
                    i32.const 20
                    i32.add
                    local.set 7
                    br 1 (;@6;)
                  end
                  local.get 4
                  i32.load offset=16
                  local.tee 1
                  i32.eqz
                  br_if 1 (;@5;)
                  local.get 4
                  i32.const 16
                  i32.add
                  local.set 7
                end
                loop ;; label = @6
                  local.get 7
                  local.set 9
                  local.get 1
                  local.tee 2
                  i32.const 20
                  i32.add
                  local.set 7
                  local.get 2
                  i32.load offset=20
                  local.tee 1
                  br_if 0 (;@6;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 7
                  local.get 2
                  i32.load offset=16
                  local.tee 1
                  br_if 0 (;@6;)
                end
                local.get 9
                i32.const 0
                i32.store
                br 1 (;@4;)
              end
              i32.const 0
              local.set 2
            end
            local.get 8
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 4
                local.get 4
                i32.load offset=28
                local.tee 7
                i32.const 2
                i32.shl
                i32.const 1048972
                i32.add
                local.tee 1
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 1
                local.get 2
                i32.store
                local.get 2
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1048672
                i32.const -2
                local.get 7
                i32.rotl
                i32.and
                i32.store offset=1048672
                br 2 (;@3;)
              end
              local.get 8
              i32.const 16
              i32.const 20
              local.get 8
              i32.load offset=16
              local.get 4
              i32.eq
              select
              i32.add
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 2
            local.get 8
            i32.store offset=24
            block ;; label = @4
              local.get 4
              i32.load offset=16
              local.tee 1
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 1
              i32.store offset=16
              local.get 1
              local.get 2
              i32.store offset=24
            end
            local.get 4
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 1
            i32.store offset=20
            local.get 1
            local.get 2
            i32.store offset=24
          end
          local.get 6
          local.get 0
          i32.add
          local.set 0
          local.get 4
          local.get 6
          i32.add
          local.tee 4
          i32.load offset=4
          local.set 1
        end
        local.get 4
        local.get 1
        i32.const -2
        i32.and
        i32.store offset=4
        local.get 5
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 5
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        block ;; label = @2
          local.get 0
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const -8
          i32.and
          i32.const 1048708
          i32.add
          local.set 2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1048668
              local.tee 1
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 1
              local.get 0
              i32.or
              i32.store offset=1048668
              local.get 2
              local.set 0
              br 1 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.set 0
          end
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 2
          local.get 5
          i32.store offset=8
          local.get 5
          local.get 2
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
          br 1 (;@1;)
        end
        i32.const 31
        local.set 2
        block ;; label = @2
          local.get 0
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const 38
          local.get 0
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 2
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 2
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 2
        end
        local.get 5
        local.get 2
        i32.store offset=28
        local.get 5
        i64.const 0
        i64.store offset=16 align=4
        local.get 2
        i32.const 2
        i32.shl
        i32.const 1048972
        i32.add
        local.set 1
        block ;; label = @2
          i32.const 0
          i32.load offset=1048672
          local.tee 7
          i32.const 1
          local.get 2
          i32.shl
          local.tee 4
          i32.and
          br_if 0 (;@2;)
          local.get 1
          local.get 5
          i32.store
          i32.const 0
          local.get 7
          local.get 4
          i32.or
          i32.store offset=1048672
          local.get 5
          local.get 1
          i32.store offset=24
          local.get 5
          local.get 5
          i32.store offset=8
          local.get 5
          local.get 5
          i32.store offset=12
          br 1 (;@1;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 1
        i32.load
        local.set 7
        block ;; label = @2
          loop ;; label = @3
            local.get 7
            local.tee 1
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@2;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 7
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 1
            local.get 7
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 4
            i32.load
            local.tee 7
            br_if 0 (;@3;)
          end
          local.get 4
          local.get 5
          i32.store
          local.get 5
          local.get 1
          i32.store offset=24
          local.get 5
          local.get 5
          i32.store offset=12
          local.get 5
          local.get 5
          i32.store offset=8
          br 1 (;@1;)
        end
        local.get 1
        i32.load offset=8
        local.tee 2
        local.get 5
        i32.store offset=12
        local.get 1
        local.get 5
        i32.store offset=8
        local.get 5
        i32.const 0
        i32.store offset=24
        local.get 5
        local.get 1
        i32.store offset=12
        local.get 5
        local.get 2
        i32.store offset=8
      end
      local.get 3
      i32.const 8
      i32.add
    )
    (func $free (;26;) (type 6) (param i32)
      local.get 0
      call $dlfree
    )
    (func $dlfree (;27;) (type 6) (param i32)
      (local i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        i32.eqz
        br_if 0 (;@1;)
        local.get 0
        i32.const -8
        i32.add
        local.tee 1
        local.get 0
        i32.const -4
        i32.add
        i32.load
        local.tee 2
        i32.const -8
        i32.and
        local.tee 0
        i32.add
        local.set 3
        block ;; label = @2
          local.get 2
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 1
          local.get 1
          i32.load
          local.tee 4
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1048684
          i32.lt_u
          br_if 1 (;@1;)
          local.get 4
          local.get 0
          i32.add
          local.set 0
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 1
                  i32.const 0
                  i32.load offset=1048688
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 1
                  i32.load offset=12
                  local.set 2
                  block ;; label = @7
                    local.get 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 2
                    local.get 1
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 2 (;@5;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048668
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1048668
                    br 5 (;@2;)
                  end
                  local.get 1
                  i32.load offset=24
                  local.set 6
                  block ;; label = @7
                    local.get 2
                    local.get 1
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 1
                    i32.load offset=8
                    local.tee 4
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 4
                    i32.store offset=8
                    br 4 (;@3;)
                  end
                  block ;; label = @7
                    block ;; label = @8
                      local.get 1
                      i32.load offset=20
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 1
                      i32.const 20
                      i32.add
                      local.set 5
                      br 1 (;@7;)
                    end
                    local.get 1
                    i32.load offset=16
                    local.tee 4
                    i32.eqz
                    br_if 3 (;@4;)
                    local.get 1
                    i32.const 16
                    i32.add
                    local.set 5
                  end
                  loop ;; label = @7
                    local.get 5
                    local.set 7
                    local.get 4
                    local.tee 2
                    i32.const 20
                    i32.add
                    local.set 5
                    local.get 2
                    i32.load offset=20
                    local.tee 4
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 5
                    local.get 2
                    i32.load offset=16
                    local.tee 4
                    br_if 0 (;@7;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                  br 3 (;@3;)
                end
                local.get 3
                i32.load offset=4
                local.tee 2
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 3 (;@2;)
                local.get 3
                local.get 2
                i32.const -2
                i32.and
                i32.store offset=4
                i32.const 0
                local.get 0
                i32.store offset=1048676
                local.get 3
                local.get 0
                i32.store
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                return
              end
              local.get 2
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 2
              i32.store offset=12
              br 2 (;@2;)
            end
            i32.const 0
            local.set 2
          end
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 1
              local.get 1
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1048972
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 4
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@3;)
              i32.const 0
              i32.const 0
              i32.load offset=1048672
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1048672
              br 2 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 1 (;@2;)
          end
          local.get 2
          local.get 6
          i32.store offset=24
          block ;; label = @3
            local.get 1
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 1
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 2
          i32.store offset=24
        end
        local.get 1
        local.get 3
        i32.ge_u
        br_if 0 (;@1;)
        local.get 3
        i32.load offset=4
        local.tee 4
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 4
                  i32.const 2
                  i32.and
                  br_if 0 (;@6;)
                  block ;; label = @7
                    local.get 3
                    i32.const 0
                    i32.load offset=1048692
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 0
                    local.get 1
                    i32.store offset=1048692
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048680
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store offset=1048680
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 0
                    i32.load offset=1048688
                    i32.ne
                    br_if 6 (;@1;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=1048676
                    i32.const 0
                    i32.const 0
                    i32.store offset=1048688
                    return
                  end
                  block ;; label = @7
                    local.get 3
                    i32.const 0
                    i32.load offset=1048688
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 0
                    local.get 1
                    i32.store offset=1048688
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048676
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.store offset=1048676
                    local.get 1
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 0
                    i32.add
                    local.get 0
                    i32.store
                    return
                  end
                  local.get 4
                  i32.const -8
                  i32.and
                  local.get 0
                  i32.add
                  local.set 0
                  local.get 3
                  i32.load offset=12
                  local.set 2
                  block ;; label = @7
                    local.get 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@7;)
                    block ;; label = @8
                      local.get 2
                      local.get 3
                      i32.load offset=8
                      local.tee 5
                      i32.ne
                      br_if 0 (;@8;)
                      i32.const 0
                      i32.const 0
                      i32.load offset=1048668
                      i32.const -2
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      i32.rotl
                      i32.and
                      i32.store offset=1048668
                      br 5 (;@3;)
                    end
                    local.get 2
                    local.get 5
                    i32.store offset=8
                    local.get 5
                    local.get 2
                    i32.store offset=12
                    br 4 (;@3;)
                  end
                  local.get 3
                  i32.load offset=24
                  local.set 6
                  block ;; label = @7
                    local.get 2
                    local.get 3
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 3
                    i32.load offset=8
                    local.tee 4
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 4
                    i32.store offset=8
                    br 3 (;@4;)
                  end
                  block ;; label = @7
                    block ;; label = @8
                      local.get 3
                      i32.load offset=20
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 3
                      i32.const 20
                      i32.add
                      local.set 5
                      br 1 (;@7;)
                    end
                    local.get 3
                    i32.load offset=16
                    local.tee 4
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 3
                    i32.const 16
                    i32.add
                    local.set 5
                  end
                  loop ;; label = @7
                    local.get 5
                    local.set 7
                    local.get 4
                    local.tee 2
                    i32.const 20
                    i32.add
                    local.set 5
                    local.get 2
                    i32.load offset=20
                    local.tee 4
                    br_if 0 (;@7;)
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 5
                    local.get 2
                    i32.load offset=16
                    local.tee 4
                    br_if 0 (;@7;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                  br 2 (;@4;)
                end
                local.get 3
                local.get 4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 0
                i32.add
                local.get 0
                i32.store
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=4
                br 3 (;@2;)
              end
              i32.const 0
              local.set 2
            end
            local.get 6
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 3
                local.get 3
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1048972
                i32.add
                local.tee 4
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.get 2
                i32.store
                local.get 2
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1048672
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1048672
                br 2 (;@3;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 2
            local.get 6
            i32.store offset=24
            block ;; label = @4
              local.get 3
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 2
              local.get 4
              i32.store offset=16
              local.get 4
              local.get 2
              i32.store offset=24
            end
            local.get 3
            i32.load offset=20
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 2
            local.get 4
            i32.store offset=20
            local.get 4
            local.get 2
            i32.store offset=24
          end
          local.get 1
          local.get 0
          i32.add
          local.get 0
          i32.store
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=1048688
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1048676
          return
        end
        block ;; label = @2
          local.get 0
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const -8
          i32.and
          i32.const 1048708
          i32.add
          local.set 2
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1048668
              local.tee 4
              i32.const 1
              local.get 0
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 0
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 0
              i32.or
              i32.store offset=1048668
              local.get 2
              local.set 0
              br 1 (;@3;)
            end
            local.get 2
            i32.load offset=8
            local.set 0
          end
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 2
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 2
        block ;; label = @2
          local.get 0
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 0
          i32.const 38
          local.get 0
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 2
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 2
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 2
        end
        local.get 1
        local.get 2
        i32.store offset=28
        local.get 1
        i64.const 0
        i64.store offset=16 align=4
        local.get 2
        i32.const 2
        i32.shl
        i32.const 1048972
        i32.add
        local.set 3
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                i32.const 0
                i32.load offset=1048672
                local.tee 4
                i32.const 1
                local.get 2
                i32.shl
                local.tee 5
                i32.and
                br_if 0 (;@5;)
                i32.const 0
                local.get 4
                local.get 5
                i32.or
                i32.store offset=1048672
                i32.const 8
                local.set 0
                i32.const 24
                local.set 2
                local.get 3
                local.set 5
                br 1 (;@4;)
              end
              local.get 0
              i32.const 0
              i32.const 25
              local.get 2
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 2
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 2
              local.get 3
              i32.load
              local.set 5
              loop ;; label = @5
                local.get 5
                local.tee 4
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 0
                i32.eq
                br_if 2 (;@3;)
                local.get 2
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 2
                i32.const 1
                i32.shl
                local.set 2
                local.get 4
                local.get 5
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                local.tee 3
                i32.load
                local.tee 5
                br_if 0 (;@5;)
              end
              i32.const 8
              local.set 0
              i32.const 24
              local.set 2
              local.get 4
              local.set 5
            end
            local.get 1
            local.set 4
            local.get 1
            local.set 7
            br 1 (;@2;)
          end
          local.get 4
          i32.load offset=8
          local.tee 5
          local.get 1
          i32.store offset=12
          i32.const 8
          local.set 2
          local.get 4
          i32.const 8
          i32.add
          local.set 3
          i32.const 0
          local.set 7
          i32.const 24
          local.set 0
        end
        local.get 3
        local.get 1
        i32.store
        local.get 1
        local.get 2
        i32.add
        local.get 5
        i32.store
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.add
        local.get 7
        i32.store
        i32.const 0
        i32.const 0
        i32.load offset=1048700
        i32.const -1
        i32.add
        local.tee 1
        i32.const -1
        local.get 1
        select
        i32.store offset=1048700
      end
    )
    (func $realloc (;28;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        local.get 1
        call $dlmalloc
        return
      end
      block ;; label = @1
        local.get 1
        i32.const -64
        i32.lt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1049164
        i32.const 0
        return
      end
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.set 2
      local.get 0
      i32.const -4
      i32.add
      local.tee 3
      i32.load
      local.tee 4
      i32.const -8
      i32.and
      local.set 5
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 4
            i32.const 3
            i32.and
            br_if 0 (;@3;)
            local.get 2
            i32.const 256
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.const 4
            i32.or
            i32.lt_u
            br_if 1 (;@2;)
            local.get 5
            local.get 2
            i32.sub
            i32.const 0
            i32.load offset=1049148
            i32.const 1
            i32.shl
            i32.le_u
            br_if 2 (;@1;)
            br 1 (;@2;)
          end
          local.get 0
          i32.const -8
          i32.add
          local.tee 6
          local.get 5
          i32.add
          local.set 7
          block ;; label = @3
            local.get 5
            local.get 2
            i32.lt_u
            br_if 0 (;@3;)
            local.get 5
            local.get 2
            i32.sub
            local.tee 1
            i32.const 16
            i32.lt_u
            br_if 2 (;@1;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 2
            i32.add
            local.tee 2
            local.get 1
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 7
            local.get 7
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 2
            local.get 1
            call $dispose_chunk
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1048692
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1048680
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.le_u
            br_if 1 (;@2;)
            local.get 3
            local.get 2
            local.get 4
            i32.const 1
            i32.and
            i32.or
            i32.const 2
            i32.or
            i32.store
            i32.const 0
            local.get 6
            local.get 2
            i32.add
            local.tee 1
            i32.store offset=1048692
            i32.const 0
            local.get 5
            local.get 2
            i32.sub
            local.tee 2
            i32.store offset=1048680
            local.get 1
            local.get 2
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          block ;; label = @3
            local.get 7
            i32.const 0
            i32.load offset=1048688
            i32.ne
            br_if 0 (;@3;)
            i32.const 0
            i32.load offset=1048676
            local.get 5
            i32.add
            local.tee 5
            local.get 2
            i32.lt_u
            br_if 1 (;@2;)
            block ;; label = @4
              block ;; label = @5
                local.get 5
                local.get 2
                i32.sub
                local.tee 1
                i32.const 16
                i32.lt_u
                br_if 0 (;@5;)
                local.get 3
                local.get 2
                local.get 4
                i32.const 1
                i32.and
                i32.or
                i32.const 2
                i32.or
                i32.store
                local.get 6
                local.get 2
                i32.add
                local.tee 2
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 6
                local.get 5
                i32.add
                local.tee 5
                local.get 1
                i32.store
                local.get 5
                local.get 5
                i32.load offset=4
                i32.const -2
                i32.and
                i32.store offset=4
                br 1 (;@4;)
              end
              local.get 3
              local.get 4
              i32.const 1
              i32.and
              local.get 5
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 5
              i32.add
              local.tee 1
              local.get 1
              i32.load offset=4
              i32.const 1
              i32.or
              i32.store offset=4
              i32.const 0
              local.set 1
              i32.const 0
              local.set 2
            end
            i32.const 0
            local.get 2
            i32.store offset=1048688
            i32.const 0
            local.get 1
            i32.store offset=1048676
            local.get 0
            return
          end
          local.get 7
          i32.load offset=4
          local.tee 8
          i32.const 2
          i32.and
          br_if 0 (;@2;)
          local.get 8
          i32.const -8
          i32.and
          local.get 5
          i32.add
          local.tee 9
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
          local.get 9
          local.get 2
          i32.sub
          local.set 10
          local.get 7
          i32.load offset=12
          local.set 1
          block ;; label = @3
            block ;; label = @4
              local.get 8
              i32.const 255
              i32.gt_u
              br_if 0 (;@4;)
              block ;; label = @5
                local.get 1
                local.get 7
                i32.load offset=8
                local.tee 5
                i32.ne
                br_if 0 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=1048668
                i32.const -2
                local.get 8
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1048668
                br 2 (;@3;)
              end
              local.get 1
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 1
              i32.store offset=12
              br 1 (;@3;)
            end
            local.get 7
            i32.load offset=24
            local.set 11
            block ;; label = @4
              block ;; label = @5
                local.get 1
                local.get 7
                i32.eq
                br_if 0 (;@5;)
                local.get 7
                i32.load offset=8
                local.tee 5
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 5
                i32.store offset=8
                br 1 (;@4;)
              end
              block ;; label = @5
                block ;; label = @6
                  block ;; label = @7
                    local.get 7
                    i32.load offset=20
                    local.tee 5
                    i32.eqz
                    br_if 0 (;@7;)
                    local.get 7
                    i32.const 20
                    i32.add
                    local.set 8
                    br 1 (;@6;)
                  end
                  local.get 7
                  i32.load offset=16
                  local.tee 5
                  i32.eqz
                  br_if 1 (;@5;)
                  local.get 7
                  i32.const 16
                  i32.add
                  local.set 8
                end
                loop ;; label = @6
                  local.get 8
                  local.set 12
                  local.get 5
                  local.tee 1
                  i32.const 20
                  i32.add
                  local.set 8
                  local.get 1
                  i32.load offset=20
                  local.tee 5
                  br_if 0 (;@6;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 8
                  local.get 1
                  i32.load offset=16
                  local.tee 5
                  br_if 0 (;@6;)
                end
                local.get 12
                i32.const 0
                i32.store
                br 1 (;@4;)
              end
              i32.const 0
              local.set 1
            end
            local.get 11
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 7
                local.get 7
                i32.load offset=28
                local.tee 8
                i32.const 2
                i32.shl
                i32.const 1048972
                i32.add
                local.tee 5
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 5
                local.get 1
                i32.store
                local.get 1
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1048672
                i32.const -2
                local.get 8
                i32.rotl
                i32.and
                i32.store offset=1048672
                br 2 (;@3;)
              end
              local.get 11
              i32.const 16
              i32.const 20
              local.get 11
              i32.load offset=16
              local.get 7
              i32.eq
              select
              i32.add
              local.get 1
              i32.store
              local.get 1
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 1
            local.get 11
            i32.store offset=24
            block ;; label = @4
              local.get 7
              i32.load offset=16
              local.tee 5
              i32.eqz
              br_if 0 (;@4;)
              local.get 1
              local.get 5
              i32.store offset=16
              local.get 5
              local.get 1
              i32.store offset=24
            end
            local.get 7
            i32.load offset=20
            local.tee 5
            i32.eqz
            br_if 0 (;@3;)
            local.get 1
            local.get 5
            i32.store offset=20
            local.get 5
            local.get 1
            i32.store offset=24
          end
          block ;; label = @3
            local.get 10
            i32.const 15
            i32.gt_u
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 9
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 9
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            return
          end
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          local.get 10
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 6
          local.get 9
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          local.get 10
          call $dispose_chunk
          local.get 0
          return
        end
        block ;; label = @2
          local.get 1
          call $dlmalloc
          local.tee 2
          br_if 0 (;@2;)
          i32.const 0
          return
        end
        local.get 2
        local.get 0
        i32.const -4
        i32.const -8
        local.get 3
        i32.load
        local.tee 5
        i32.const 3
        i32.and
        select
        local.get 5
        i32.const -8
        i32.and
        i32.add
        local.tee 5
        local.get 1
        local.get 5
        local.get 1
        i32.lt_u
        select
        call $memcpy
        local.set 1
        local.get 0
        call $dlfree
        local.get 1
        local.set 0
      end
      local.get 0
    )
    (func $dispose_chunk (;29;) (type 7) (param i32 i32)
      (local i32 i32 i32 i32 i32 i32)
      local.get 0
      local.get 1
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.load offset=4
          local.tee 3
          i32.const 1
          i32.and
          br_if 0 (;@2;)
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 0
          i32.load
          local.tee 4
          local.get 1
          i32.add
          local.set 1
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 0
                  local.get 4
                  i32.sub
                  local.tee 0
                  i32.const 0
                  i32.load offset=1048688
                  i32.eq
                  br_if 0 (;@6;)
                  local.get 0
                  i32.load offset=12
                  local.set 3
                  block ;; label = @7
                    local.get 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@7;)
                    local.get 3
                    local.get 0
                    i32.load offset=8
                    local.tee 5
                    i32.ne
                    br_if 2 (;@5;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048668
                    i32.const -2
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    i32.rotl
                    i32.and
                    i32.store offset=1048668
                    br 5 (;@2;)
                  end
                  local.get 0
                  i32.load offset=24
                  local.set 6
                  block ;; label = @7
                    local.get 3
                    local.get 0
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 0
                    i32.load offset=8
                    local.tee 4
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.store offset=8
                    br 4 (;@3;)
                  end
                  block ;; label = @7
                    block ;; label = @8
                      local.get 0
                      i32.load offset=20
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 0
                      i32.const 20
                      i32.add
                      local.set 5
                      br 1 (;@7;)
                    end
                    local.get 0
                    i32.load offset=16
                    local.tee 4
                    i32.eqz
                    br_if 3 (;@4;)
                    local.get 0
                    i32.const 16
                    i32.add
                    local.set 5
                  end
                  loop ;; label = @7
                    local.get 5
                    local.set 7
                    local.get 4
                    local.tee 3
                    i32.const 20
                    i32.add
                    local.set 5
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 16
                    i32.add
                    local.set 5
                    local.get 3
                    i32.load offset=16
                    local.tee 4
                    br_if 0 (;@7;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                  br 3 (;@3;)
                end
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.const 3
                i32.and
                i32.const 3
                i32.ne
                br_if 3 (;@2;)
                local.get 2
                local.get 3
                i32.const -2
                i32.and
                i32.store offset=4
                i32.const 0
                local.get 1
                i32.store offset=1048676
                local.get 2
                local.get 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                return
              end
              local.get 3
              local.get 5
              i32.store offset=8
              local.get 5
              local.get 3
              i32.store offset=12
              br 2 (;@2;)
            end
            i32.const 0
            local.set 3
          end
          local.get 6
          i32.eqz
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 0
              local.get 0
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1048972
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@4;)
              local.get 4
              local.get 3
              i32.store
              local.get 3
              br_if 1 (;@3;)
              i32.const 0
              i32.const 0
              i32.load offset=1048672
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1048672
              br 2 (;@2;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 0
            i32.eq
            select
            i32.add
            local.get 3
            i32.store
            local.get 3
            i32.eqz
            br_if 1 (;@2;)
          end
          local.get 3
          local.get 6
          i32.store offset=24
          block ;; label = @3
            local.get 0
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 3
            i32.store offset=24
          end
          local.get 0
          i32.load offset=20
          local.tee 4
          i32.eqz
          br_if 0 (;@2;)
          local.get 3
          local.get 4
          i32.store offset=20
          local.get 4
          local.get 3
          i32.store offset=24
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 2
                  i32.load offset=4
                  local.tee 4
                  i32.const 2
                  i32.and
                  br_if 0 (;@6;)
                  block ;; label = @7
                    local.get 2
                    i32.const 0
                    i32.load offset=1048692
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 0
                    local.get 0
                    i32.store offset=1048692
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048680
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=1048680
                    local.get 0
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    i32.const 0
                    i32.load offset=1048688
                    i32.ne
                    br_if 6 (;@1;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=1048676
                    i32.const 0
                    i32.const 0
                    i32.store offset=1048688
                    return
                  end
                  block ;; label = @7
                    local.get 2
                    i32.const 0
                    i32.load offset=1048688
                    i32.ne
                    br_if 0 (;@7;)
                    i32.const 0
                    local.get 0
                    i32.store offset=1048688
                    i32.const 0
                    i32.const 0
                    i32.load offset=1048676
                    local.get 1
                    i32.add
                    local.tee 1
                    i32.store offset=1048676
                    local.get 0
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 1
                    i32.store
                    return
                  end
                  local.get 4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.add
                  local.set 1
                  local.get 2
                  i32.load offset=12
                  local.set 3
                  block ;; label = @7
                    local.get 4
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@7;)
                    block ;; label = @8
                      local.get 3
                      local.get 2
                      i32.load offset=8
                      local.tee 5
                      i32.ne
                      br_if 0 (;@8;)
                      i32.const 0
                      i32.const 0
                      i32.load offset=1048668
                      i32.const -2
                      local.get 4
                      i32.const 3
                      i32.shr_u
                      i32.rotl
                      i32.and
                      i32.store offset=1048668
                      br 5 (;@3;)
                    end
                    local.get 3
                    local.get 5
                    i32.store offset=8
                    local.get 5
                    local.get 3
                    i32.store offset=12
                    br 4 (;@3;)
                  end
                  local.get 2
                  i32.load offset=24
                  local.set 6
                  block ;; label = @7
                    local.get 3
                    local.get 2
                    i32.eq
                    br_if 0 (;@7;)
                    local.get 2
                    i32.load offset=8
                    local.tee 4
                    local.get 3
                    i32.store offset=12
                    local.get 3
                    local.get 4
                    i32.store offset=8
                    br 3 (;@4;)
                  end
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.load offset=20
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@8;)
                      local.get 2
                      i32.const 20
                      i32.add
                      local.set 5
                      br 1 (;@7;)
                    end
                    local.get 2
                    i32.load offset=16
                    local.tee 4
                    i32.eqz
                    br_if 2 (;@5;)
                    local.get 2
                    i32.const 16
                    i32.add
                    local.set 5
                  end
                  loop ;; label = @7
                    local.get 5
                    local.set 7
                    local.get 4
                    local.tee 3
                    i32.const 20
                    i32.add
                    local.set 5
                    local.get 3
                    i32.load offset=20
                    local.tee 4
                    br_if 0 (;@7;)
                    local.get 3
                    i32.const 16
                    i32.add
                    local.set 5
                    local.get 3
                    i32.load offset=16
                    local.tee 4
                    br_if 0 (;@7;)
                  end
                  local.get 7
                  i32.const 0
                  i32.store
                  br 2 (;@4;)
                end
                local.get 2
                local.get 4
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                br 3 (;@2;)
              end
              i32.const 0
              local.set 3
            end
            local.get 6
            i32.eqz
            br_if 0 (;@3;)
            block ;; label = @4
              block ;; label = @5
                local.get 2
                local.get 2
                i32.load offset=28
                local.tee 5
                i32.const 2
                i32.shl
                i32.const 1048972
                i32.add
                local.tee 4
                i32.load
                i32.ne
                br_if 0 (;@5;)
                local.get 4
                local.get 3
                i32.store
                local.get 3
                br_if 1 (;@4;)
                i32.const 0
                i32.const 0
                i32.load offset=1048672
                i32.const -2
                local.get 5
                i32.rotl
                i32.and
                i32.store offset=1048672
                br 2 (;@3;)
              end
              local.get 6
              i32.const 16
              i32.const 20
              local.get 6
              i32.load offset=16
              local.get 2
              i32.eq
              select
              i32.add
              local.get 3
              i32.store
              local.get 3
              i32.eqz
              br_if 1 (;@3;)
            end
            local.get 3
            local.get 6
            i32.store offset=24
            block ;; label = @4
              local.get 2
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@4;)
              local.get 3
              local.get 4
              i32.store offset=16
              local.get 4
              local.get 3
              i32.store offset=24
            end
            local.get 2
            i32.load offset=20
            local.tee 4
            i32.eqz
            br_if 0 (;@3;)
            local.get 3
            local.get 4
            i32.store offset=20
            local.get 4
            local.get 3
            i32.store offset=24
          end
          local.get 0
          local.get 1
          i32.add
          local.get 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 0
          i32.load offset=1048688
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1048676
          return
        end
        block ;; label = @2
          local.get 1
          i32.const 255
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const -8
          i32.and
          i32.const 1048708
          i32.add
          local.set 3
          block ;; label = @3
            block ;; label = @4
              i32.const 0
              i32.load offset=1048668
              local.tee 4
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 1
              i32.and
              br_if 0 (;@4;)
              i32.const 0
              local.get 4
              local.get 1
              i32.or
              i32.store offset=1048668
              local.get 3
              local.set 1
              br 1 (;@3;)
            end
            local.get 3
            i32.load offset=8
            local.set 1
          end
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 3
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          return
        end
        i32.const 31
        local.set 3
        block ;; label = @2
          local.get 1
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@2;)
          local.get 1
          i32.const 38
          local.get 1
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 3
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 3
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 3
        end
        local.get 0
        local.get 3
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16 align=4
        local.get 3
        i32.const 2
        i32.shl
        i32.const 1048972
        i32.add
        local.set 4
        block ;; label = @2
          i32.const 0
          i32.load offset=1048672
          local.tee 5
          i32.const 1
          local.get 3
          i32.shl
          local.tee 2
          i32.and
          br_if 0 (;@2;)
          local.get 4
          local.get 0
          i32.store
          i32.const 0
          local.get 5
          local.get 2
          i32.or
          i32.store offset=1048672
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=8
          local.get 0
          local.get 0
          i32.store offset=12
          return
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 3
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 3
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        local.get 4
        i32.load
        local.set 5
        block ;; label = @2
          loop ;; label = @3
            local.get 5
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 1
            i32.eq
            br_if 1 (;@2;)
            local.get 3
            i32.const 29
            i32.shr_u
            local.set 5
            local.get 3
            i32.const 1
            i32.shl
            local.set 3
            local.get 4
            local.get 5
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 2
            i32.load
            local.tee 5
            br_if 0 (;@3;)
          end
          local.get 2
          local.get 0
          i32.store
          local.get 0
          local.get 4
          i32.store offset=24
          local.get 0
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 0
          i32.store offset=8
          return
        end
        local.get 4
        i32.load offset=8
        local.tee 1
        local.get 0
        i32.store offset=12
        local.get 4
        local.get 0
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        local.get 4
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
      end
    )
    (func $posix_memalign (;30;) (type 5) (param i32 i32 i32) (result i32)
      (local i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 1
            i32.const 16
            i32.ne
            br_if 0 (;@3;)
            local.get 2
            call $dlmalloc
            local.set 1
            br 1 (;@2;)
          end
          i32.const 28
          local.set 3
          local.get 1
          i32.const 4
          i32.lt_u
          br_if 1 (;@1;)
          local.get 1
          i32.const 3
          i32.and
          br_if 1 (;@1;)
          local.get 1
          i32.const 2
          i32.shr_u
          local.tee 4
          local.get 4
          i32.const -1
          i32.add
          i32.and
          br_if 1 (;@1;)
          block ;; label = @3
            i32.const -64
            local.get 1
            i32.sub
            local.get 2
            i32.ge_u
            br_if 0 (;@3;)
            i32.const 48
            return
          end
          local.get 1
          i32.const 16
          local.get 1
          i32.const 16
          i32.gt_u
          select
          local.get 2
          call $internal_memalign
          local.set 1
        end
        block ;; label = @2
          local.get 1
          br_if 0 (;@2;)
          i32.const 48
          return
        end
        local.get 0
        local.get 1
        i32.store
        i32.const 0
        local.set 3
      end
      local.get 3
    )
    (func $internal_memalign (;31;) (type 2) (param i32 i32) (result i32)
      (local i32 i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const 16
          local.get 0
          i32.const 16
          i32.gt_u
          select
          local.tee 2
          local.get 2
          i32.const -1
          i32.add
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        i32.const 32
        local.set 3
        loop ;; label = @2
          local.get 3
          local.tee 0
          i32.const 1
          i32.shl
          local.set 3
          local.get 0
          local.get 2
          i32.lt_u
          br_if 0 (;@2;)
        end
      end
      block ;; label = @1
        i32.const -64
        local.get 0
        i32.sub
        local.get 1
        i32.gt_u
        br_if 0 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1049164
        i32.const 0
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 16
        local.get 1
        i32.const 19
        i32.add
        i32.const -16
        i32.and
        local.get 1
        i32.const 11
        i32.lt_u
        select
        local.tee 1
        i32.add
        i32.const 12
        i32.add
        call $dlmalloc
        local.tee 3
        br_if 0 (;@1;)
        i32.const 0
        return
      end
      local.get 3
      i32.const -8
      i32.add
      local.set 2
      block ;; label = @1
        block ;; label = @2
          local.get 0
          i32.const -1
          i32.add
          local.get 3
          i32.and
          br_if 0 (;@2;)
          local.get 2
          local.set 0
          br 1 (;@1;)
        end
        local.get 3
        i32.const -4
        i32.add
        local.tee 4
        i32.load
        local.tee 5
        i32.const -8
        i32.and
        local.get 3
        local.get 0
        i32.add
        i32.const -1
        i32.add
        i32.const 0
        local.get 0
        i32.sub
        i32.and
        i32.const -8
        i32.add
        local.tee 3
        i32.const 0
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.const 15
        i32.gt_u
        select
        i32.add
        local.tee 0
        local.get 2
        i32.sub
        local.tee 3
        i32.sub
        local.set 6
        block ;; label = @2
          local.get 5
          i32.const 3
          i32.and
          br_if 0 (;@2;)
          local.get 0
          local.get 6
          i32.store offset=4
          local.get 0
          local.get 2
          i32.load
          local.get 3
          i32.add
          i32.store
          br 1 (;@1;)
        end
        local.get 0
        local.get 6
        local.get 0
        i32.load offset=4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 4
        local.get 3
        local.get 4
        i32.load
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 2
        local.get 3
        i32.add
        local.tee 6
        local.get 6
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 2
        local.get 3
        call $dispose_chunk
      end
      block ;; label = @1
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 3
        i32.const -8
        i32.and
        local.tee 2
        local.get 1
        i32.const 16
        i32.add
        i32.le_u
        br_if 0 (;@1;)
        local.get 0
        local.get 1
        local.get 3
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store offset=4
        local.get 0
        local.get 1
        i32.add
        local.tee 3
        local.get 2
        local.get 1
        i32.sub
        local.tee 1
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 1
        call $dispose_chunk
      end
      local.get 0
      i32.const 8
      i32.add
    )
    (func $abort (;32;) (type 0)
      unreachable
    )
    (func $sbrk (;33;) (type 4) (param i32) (result i32)
      block ;; label = @1
        local.get 0
        br_if 0 (;@1;)
        memory.size
        i32.const 16
        i32.shl
        return
      end
      block ;; label = @1
        local.get 0
        i32.const 65535
        i32.and
        br_if 0 (;@1;)
        local.get 0
        i32.const -1
        i32.le_s
        br_if 0 (;@1;)
        block ;; label = @2
          local.get 0
          i32.const 16
          i32.shr_u
          memory.grow
          local.tee 0
          i32.const -1
          i32.ne
          br_if 0 (;@2;)
          i32.const 0
          i32.const 48
          i32.store offset=1049164
          i32.const -1
          return
        end
        local.get 0
        i32.const 16
        i32.shl
        return
      end
      call $abort
      unreachable
    )
    (func $memcpy (;34;) (type 5) (param i32 i32 i32) (result i32)
      (local i32 i32 i32 i32)
      block ;; label = @1
        block ;; label = @2
          block ;; label = @3
            local.get 2
            i32.const 32
            i32.gt_u
            br_if 0 (;@3;)
            local.get 1
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@2;)
            local.get 2
            i32.eqz
            br_if 1 (;@2;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.set 4
            local.get 1
            i32.const 1
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const -2
            i32.add
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.set 4
            local.get 1
            i32.const 2
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.set 4
            local.get 1
            i32.const 3
            i32.add
            local.tee 5
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@1;)
            local.get 3
            i32.eqz
            br_if 2 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 2
            i32.const -4
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 1
            i32.const 4
            i32.add
            local.set 5
            br 2 (;@1;)
          end
          local.get 0
          local.get 1
          local.get 2
          memory.copy
          local.get 0
          return
        end
        local.get 2
        local.set 3
        local.get 0
        local.set 4
        local.get 1
        local.set 5
      end
      block ;; label = @1
        block ;; label = @2
          local.get 4
          i32.const 3
          i32.and
          local.tee 2
          br_if 0 (;@2;)
          block ;; label = @3
            block ;; label = @4
              local.get 3
              i32.const 16
              i32.ge_u
              br_if 0 (;@4;)
              local.get 3
              local.set 2
              br 1 (;@3;)
            end
            block ;; label = @4
              local.get 3
              i32.const -16
              i32.add
              local.tee 2
              i32.const 16
              i32.and
              br_if 0 (;@4;)
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              i32.const 16
              i32.add
              local.set 4
              local.get 5
              i32.const 16
              i32.add
              local.set 5
              local.get 2
              local.set 3
            end
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@3;)
            local.get 3
            local.set 2
            loop ;; label = @4
              local.get 4
              local.get 5
              i64.load align=4
              i64.store align=4
              local.get 4
              local.get 5
              i64.load offset=8 align=4
              i64.store offset=8 align=4
              local.get 4
              local.get 5
              i64.load offset=16 align=4
              i64.store offset=16 align=4
              local.get 4
              local.get 5
              i64.load offset=24 align=4
              i64.store offset=24 align=4
              local.get 4
              i32.const 32
              i32.add
              local.set 4
              local.get 5
              i32.const 32
              i32.add
              local.set 5
              local.get 2
              i32.const -32
              i32.add
              local.tee 2
              i32.const 15
              i32.gt_u
              br_if 0 (;@4;)
            end
          end
          block ;; label = @3
            local.get 2
            i32.const 8
            i32.lt_u
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 8
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 4
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load
            i32.store
            local.get 5
            i32.const 4
            i32.add
            local.set 5
            local.get 4
            i32.const 4
            i32.add
            local.set 4
          end
          block ;; label = @3
            local.get 2
            i32.const 2
            i32.and
            i32.eqz
            br_if 0 (;@3;)
            local.get 4
            local.get 5
            i32.load16_u align=1
            i32.store16 align=1
            local.get 4
            i32.const 2
            i32.add
            local.set 4
            local.get 5
            i32.const 2
            i32.add
            local.set 5
          end
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@1;)
          local.get 4
          local.get 5
          i32.load8_u
          i32.store8
          local.get 0
          return
        end
        block ;; label = @2
          block ;; label = @3
            block ;; label = @4
              block ;; label = @5
                block ;; label = @6
                  local.get 3
                  i32.const 32
                  i32.lt_u
                  br_if 0 (;@6;)
                  local.get 4
                  local.get 5
                  i32.load
                  local.tee 3
                  i32.store8
                  block ;; label = @7
                    block ;; label = @8
                      local.get 2
                      i32.const -1
                      i32.add
                      br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 3 (;@5;)
                    end
                    local.get 4
                    local.get 3
                    i32.const 8
                    i32.shr_u
                    i32.store8 offset=1
                    local.get 4
                    local.get 5
                    i32.const 6
                    i32.add
                    i64.load align=2
                    i64.store offset=6 align=4
                    local.get 4
                    local.get 5
                    i32.load offset=4
                    i32.const 16
                    i32.shl
                    local.get 3
                    i32.const 16
                    i32.shr_u
                    i32.or
                    i32.store offset=2
                    local.get 4
                    i32.const 18
                    i32.add
                    local.set 2
                    local.get 5
                    i32.const 18
                    i32.add
                    local.set 1
                    i32.const 14
                    local.set 6
                    local.get 5
                    i32.const 14
                    i32.add
                    i32.load align=2
                    local.set 5
                    i32.const 14
                    local.set 3
                    br 3 (;@4;)
                  end
                  local.get 4
                  local.get 5
                  i32.const 5
                  i32.add
                  i64.load align=1
                  i64.store offset=5 align=4
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  i32.const 24
                  i32.shl
                  local.get 3
                  i32.const 8
                  i32.shr_u
                  i32.or
                  i32.store offset=1
                  local.get 4
                  i32.const 17
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 17
                  i32.add
                  local.set 1
                  i32.const 13
                  local.set 6
                  local.get 5
                  i32.const 13
                  i32.add
                  i32.load align=1
                  local.set 5
                  i32.const 15
                  local.set 3
                  br 2 (;@4;)
                end
                block ;; label = @6
                  block ;; label = @7
                    local.get 3
                    i32.const 16
                    i32.ge_u
                    br_if 0 (;@7;)
                    local.get 4
                    local.set 2
                    local.get 5
                    local.set 1
                    br 1 (;@6;)
                  end
                  local.get 4
                  local.get 5
                  i32.load8_u
                  i32.store8
                  local.get 4
                  local.get 5
                  i32.load offset=1 align=1
                  i32.store offset=1 align=1
                  local.get 4
                  local.get 5
                  i64.load offset=5 align=1
                  i64.store offset=5 align=1
                  local.get 4
                  local.get 5
                  i32.load16_u offset=13 align=1
                  i32.store16 offset=13 align=1
                  local.get 4
                  local.get 5
                  i32.load8_u offset=15
                  i32.store8 offset=15
                  local.get 4
                  i32.const 16
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 16
                  i32.add
                  local.set 1
                end
                local.get 3
                i32.const 8
                i32.and
                br_if 2 (;@3;)
                br 3 (;@2;)
              end
              local.get 4
              local.get 3
              i32.const 16
              i32.shr_u
              i32.store8 offset=2
              local.get 4
              local.get 3
              i32.const 8
              i32.shr_u
              i32.store8 offset=1
              local.get 4
              local.get 5
              i32.const 7
              i32.add
              i64.load align=1
              i64.store offset=7 align=4
              local.get 4
              local.get 5
              i32.load offset=4
              i32.const 8
              i32.shl
              local.get 3
              i32.const 24
              i32.shr_u
              i32.or
              i32.store offset=3
              local.get 4
              i32.const 19
              i32.add
              local.set 2
              local.get 5
              i32.const 19
              i32.add
              local.set 1
              i32.const 15
              local.set 6
              local.get 5
              i32.const 15
              i32.add
              i32.load align=1
              local.set 5
              i32.const 13
              local.set 3
            end
            local.get 4
            local.get 6
            i32.add
            local.get 5
            i32.store
          end
          local.get 2
          local.get 1
          i64.load align=1
          i64.store align=1
          local.get 2
          i32.const 8
          i32.add
          local.set 2
          local.get 1
          i32.const 8
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load align=1
          i32.store align=1
          local.get 2
          i32.const 4
          i32.add
          local.set 2
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        block ;; label = @2
          local.get 3
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@2;)
          local.get 2
          local.get 1
          i32.load16_u align=1
          i32.store16 align=1
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 1
          i32.const 2
          i32.add
          local.set 1
        end
        local.get 3
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@1;)
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
      end
      local.get 0
    )
    (data $.rodata (;0;) (i32.const 1048576) "\01\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00")
    (@producers
      (language "Rust" "")
      (language "C11" "")
      (processed-by "rustc" "1.88.0 (6b00bc388 2025-06-23)")
      (processed-by "clang" "19.1.5-wasi-sdk (https://github.com/llvm/llvm-project ab4b5a2db582958af1ee308a790cfdb42bd24720)")
      (processed-by "wit-component" "0.227.1")
      (processed-by "wit-bindgen-rust" "0.41.0")
    )
    (@custom "target_features" (after data) "\08+\0bbulk-memory+\0fbulk-memory-opt+\16call-indirect-overlong+\0amultivalue+\0fmutable-globals+\13nontrapping-fptoint+\0freference-types+\08sign-ext")
  )
  (core instance (;0;) (instantiate 0))
  (alias core export 0 "memory" (core memory (;0;)))
  (type (;0;) (record (field "x" f32) (field "y" f32)))
  (type (;1;) (func (result 0)))
  (alias core export 0 "math:vec/vec2@0.1.0#float32" (core func (;0;)))
  (alias core export 0 "cabi_realloc" (core func (;1;)))
  (func (;0;) (type 1) (canon lift (core func 0) (memory 0)))
  (type (;2;) (record (field "x" f64) (field "y" f64)))
  (type (;3;) (func (result 2)))
  (alias core export 0 "math:vec/vec2@0.1.0#float64" (core func (;2;)))
  (func (;1;) (type 3) (canon lift (core func 2) (memory 0)))
  (type (;4;) (record (field "x" s8) (field "y" s8)))
  (type (;5;) (func (result 4)))
  (alias core export 0 "math:vec/vec2@0.1.0#int8" (core func (;3;)))
  (func (;2;) (type 5) (canon lift (core func 3) (memory 0)))
  (type (;6;) (record (field "x" s16) (field "y" s16)))
  (type (;7;) (func (result 6)))
  (alias core export 0 "math:vec/vec2@0.1.0#int16" (core func (;4;)))
  (func (;3;) (type 7) (canon lift (core func 4) (memory 0)))
  (type (;8;) (record (field "x" s32) (field "y" s32)))
  (type (;9;) (func (result 8)))
  (alias core export 0 "math:vec/vec2@0.1.0#int32" (core func (;5;)))
  (func (;4;) (type 9) (canon lift (core func 5) (memory 0)))
  (type (;10;) (record (field "x" s64) (field "y" s64)))
  (type (;11;) (func (result 10)))
  (alias core export 0 "math:vec/vec2@0.1.0#int64" (core func (;6;)))
  (func (;5;) (type 11) (canon lift (core func 6) (memory 0)))
  (type (;12;) (record (field "x" u8) (field "y" u8)))
  (type (;13;) (func (result 12)))
  (alias core export 0 "math:vec/vec2@0.1.0#uint8" (core func (;7;)))
  (func (;6;) (type 13) (canon lift (core func 7) (memory 0)))
  (type (;14;) (record (field "x" u16) (field "y" u16)))
  (type (;15;) (func (result 14)))
  (alias core export 0 "math:vec/vec2@0.1.0#uint16" (core func (;8;)))
  (func (;7;) (type 15) (canon lift (core func 8) (memory 0)))
  (type (;16;) (record (field "x" u32) (field "y" u32)))
  (type (;17;) (func (result 16)))
  (alias core export 0 "math:vec/vec2@0.1.0#uint32" (core func (;9;)))
  (func (;8;) (type 17) (canon lift (core func 9) (memory 0)))
  (type (;18;) (record (field "x" u64) (field "y" u64)))
  (type (;19;) (func (result 18)))
  (alias core export 0 "math:vec/vec2@0.1.0#uint64" (core func (;10;)))
  (func (;9;) (type 19) (canon lift (core func 10) (memory 0)))
  (component (;0;)
    (type (;0;) (record (field "x" f32) (field "y" f32)))
    (import "import-type-vec2-f32" (type (;1;) (eq 0)))
    (type (;2;) (func (result 1)))
    (import "import-func-float32" (func (;0;) (type 2)))
    (type (;3;) (record (field "x" f64) (field "y" f64)))
    (import "import-type-vec2-f64" (type (;4;) (eq 3)))
    (type (;5;) (func (result 4)))
    (import "import-func-float64" (func (;1;) (type 5)))
    (type (;6;) (record (field "x" s8) (field "y" s8)))
    (import "import-type-vec2-s8" (type (;7;) (eq 6)))
    (type (;8;) (func (result 7)))
    (import "import-func-int8" (func (;2;) (type 8)))
    (type (;9;) (record (field "x" s16) (field "y" s16)))
    (import "import-type-vec2-s16" (type (;10;) (eq 9)))
    (type (;11;) (func (result 10)))
    (import "import-func-int16" (func (;3;) (type 11)))
    (type (;12;) (record (field "x" s32) (field "y" s32)))
    (import "import-type-vec2-s32" (type (;13;) (eq 12)))
    (type (;14;) (func (result 13)))
    (import "import-func-int32" (func (;4;) (type 14)))
    (type (;15;) (record (field "x" s64) (field "y" s64)))
    (import "import-type-vec2-s64" (type (;16;) (eq 15)))
    (type (;17;) (func (result 16)))
    (import "import-func-int64" (func (;5;) (type 17)))
    (type (;18;) (record (field "x" u8) (field "y" u8)))
    (import "import-type-vec2-u8" (type (;19;) (eq 18)))
    (type (;20;) (func (result 19)))
    (import "import-func-uint8" (func (;6;) (type 20)))
    (type (;21;) (record (field "x" u16) (field "y" u16)))
    (import "import-type-vec2-u16" (type (;22;) (eq 21)))
    (type (;23;) (func (result 22)))
    (import "import-func-uint16" (func (;7;) (type 23)))
    (type (;24;) (record (field "x" u32) (field "y" u32)))
    (import "import-type-vec2-u32" (type (;25;) (eq 24)))
    (type (;26;) (func (result 25)))
    (import "import-func-uint32" (func (;8;) (type 26)))
    (type (;27;) (record (field "x" u64) (field "y" u64)))
    (import "import-type-vec2-u64" (type (;28;) (eq 27)))
    (type (;29;) (func (result 28)))
    (import "import-func-uint64" (func (;9;) (type 29)))
    (type (;30;) (record (field "x" f32) (field "y" f32)))
    (export (;31;) "vec2-f32" (type 30))
    (type (;32;) (record (field "x" f64) (field "y" f64)))
    (export (;33;) "vec2-f64" (type 32))
    (type (;34;) (record (field "x" s8) (field "y" s8)))
    (export (;35;) "vec2-s8" (type 34))
    (type (;36;) (record (field "x" s16) (field "y" s16)))
    (export (;37;) "vec2-s16" (type 36))
    (type (;38;) (record (field "x" s32) (field "y" s32)))
    (export (;39;) "vec2-s32" (type 38))
    (type (;40;) (record (field "x" s64) (field "y" s64)))
    (export (;41;) "vec2-s64" (type 40))
    (type (;42;) (record (field "x" u8) (field "y" u8)))
    (export (;43;) "vec2-u8" (type 42))
    (type (;44;) (record (field "x" u16) (field "y" u16)))
    (export (;45;) "vec2-u16" (type 44))
    (type (;46;) (record (field "x" u32) (field "y" u32)))
    (export (;47;) "vec2-u32" (type 46))
    (type (;48;) (record (field "x" u64) (field "y" u64)))
    (export (;49;) "vec2-u64" (type 48))
    (type (;50;) (func (result 31)))
    (export (;10;) "float32" (func 0) (func (type 50)))
    (type (;51;) (func (result 33)))
    (export (;11;) "float64" (func 1) (func (type 51)))
    (type (;52;) (func (result 35)))
    (export (;12;) "int8" (func 2) (func (type 52)))
    (type (;53;) (func (result 37)))
    (export (;13;) "int16" (func 3) (func (type 53)))
    (type (;54;) (func (result 39)))
    (export (;14;) "int32" (func 4) (func (type 54)))
    (type (;55;) (func (result 41)))
    (export (;15;) "int64" (func 5) (func (type 55)))
    (type (;56;) (func (result 43)))
    (export (;16;) "uint8" (func 6) (func (type 56)))
    (type (;57;) (func (result 45)))
    (export (;17;) "uint16" (func 7) (func (type 57)))
    (type (;58;) (func (result 47)))
    (export (;18;) "uint32" (func 8) (func (type 58)))
    (type (;59;) (func (result 49)))
    (export (;19;) "uint64" (func 9) (func (type 59)))
  )
  (instance (;0;) (instantiate 0
      (with "import-func-float32" (func 0))
      (with "import-func-float64" (func 1))
      (with "import-func-int8" (func 2))
      (with "import-func-int16" (func 3))
      (with "import-func-int32" (func 4))
      (with "import-func-int64" (func 5))
      (with "import-func-uint8" (func 6))
      (with "import-func-uint16" (func 7))
      (with "import-func-uint32" (func 8))
      (with "import-func-uint64" (func 9))
      (with "import-type-vec2-f32" (type 0))
      (with "import-type-vec2-f64" (type 2))
      (with "import-type-vec2-s8" (type 4))
      (with "import-type-vec2-s16" (type 6))
      (with "import-type-vec2-s32" (type 8))
      (with "import-type-vec2-s64" (type 10))
      (with "import-type-vec2-u8" (type 12))
      (with "import-type-vec2-u16" (type 14))
      (with "import-type-vec2-u32" (type 16))
      (with "import-type-vec2-u64" (type 18))
    )
  )
  (export (;1;) "math:vec/vec2@0.1.0" (instance 0))
  (type (;20;) (record (field "x" f32) (field "y" f32) (field "z" f32)))
  (type (;21;) (func (result 20)))
  (alias core export 0 "math:vec/vec3@0.1.0#float32" (core func (;11;)))
  (func (;10;) (type 21) (canon lift (core func 11) (memory 0)))
  (type (;22;) (record (field "x" f64) (field "y" f64) (field "z" f64)))
  (type (;23;) (func (result 22)))
  (alias core export 0 "math:vec/vec3@0.1.0#float64" (core func (;12;)))
  (func (;11;) (type 23) (canon lift (core func 12) (memory 0)))
  (type (;24;) (record (field "x" s8) (field "y" s8) (field "z" s8)))
  (type (;25;) (func (result 24)))
  (alias core export 0 "math:vec/vec3@0.1.0#int8" (core func (;13;)))
  (func (;12;) (type 25) (canon lift (core func 13) (memory 0)))
  (type (;26;) (record (field "x" s16) (field "y" s16) (field "z" s16)))
  (type (;27;) (func (result 26)))
  (alias core export 0 "math:vec/vec3@0.1.0#int16" (core func (;14;)))
  (func (;13;) (type 27) (canon lift (core func 14) (memory 0)))
  (type (;28;) (record (field "x" s32) (field "y" s32) (field "z" s32)))
  (type (;29;) (func (result 28)))
  (alias core export 0 "math:vec/vec3@0.1.0#int32" (core func (;15;)))
  (func (;14;) (type 29) (canon lift (core func 15) (memory 0)))
  (type (;30;) (record (field "x" s64) (field "y" s64) (field "z" s64)))
  (type (;31;) (func (result 30)))
  (alias core export 0 "math:vec/vec3@0.1.0#int64" (core func (;16;)))
  (func (;15;) (type 31) (canon lift (core func 16) (memory 0)))
  (type (;32;) (record (field "x" u8) (field "y" u8) (field "z" u8)))
  (type (;33;) (func (result 32)))
  (alias core export 0 "math:vec/vec3@0.1.0#uint8" (core func (;17;)))
  (func (;16;) (type 33) (canon lift (core func 17) (memory 0)))
  (type (;34;) (record (field "x" u16) (field "y" u16) (field "z" u16)))
  (type (;35;) (func (result 34)))
  (alias core export 0 "math:vec/vec3@0.1.0#uint16" (core func (;18;)))
  (func (;17;) (type 35) (canon lift (core func 18) (memory 0)))
  (type (;36;) (record (field "x" u32) (field "y" u32) (field "z" u32)))
  (type (;37;) (func (result 36)))
  (alias core export 0 "math:vec/vec3@0.1.0#uint32" (core func (;19;)))
  (func (;18;) (type 37) (canon lift (core func 19) (memory 0)))
  (type (;38;) (record (field "x" u64) (field "y" u64) (field "z" u64)))
  (type (;39;) (func (result 38)))
  (alias core export 0 "math:vec/vec3@0.1.0#uint64" (core func (;20;)))
  (func (;19;) (type 39) (canon lift (core func 20) (memory 0)))
  (component (;1;)
    (type (;0;) (record (field "x" f32) (field "y" f32) (field "z" f32)))
    (import "import-type-vec3-f32" (type (;1;) (eq 0)))
    (type (;2;) (func (result 1)))
    (import "import-func-float32" (func (;0;) (type 2)))
    (type (;3;) (record (field "x" f64) (field "y" f64) (field "z" f64)))
    (import "import-type-vec3-f64" (type (;4;) (eq 3)))
    (type (;5;) (func (result 4)))
    (import "import-func-float64" (func (;1;) (type 5)))
    (type (;6;) (record (field "x" s8) (field "y" s8) (field "z" s8)))
    (import "import-type-vec3-s8" (type (;7;) (eq 6)))
    (type (;8;) (func (result 7)))
    (import "import-func-int8" (func (;2;) (type 8)))
    (type (;9;) (record (field "x" s16) (field "y" s16) (field "z" s16)))
    (import "import-type-vec3-s16" (type (;10;) (eq 9)))
    (type (;11;) (func (result 10)))
    (import "import-func-int16" (func (;3;) (type 11)))
    (type (;12;) (record (field "x" s32) (field "y" s32) (field "z" s32)))
    (import "import-type-vec3-s32" (type (;13;) (eq 12)))
    (type (;14;) (func (result 13)))
    (import "import-func-int32" (func (;4;) (type 14)))
    (type (;15;) (record (field "x" s64) (field "y" s64) (field "z" s64)))
    (import "import-type-vec3-s64" (type (;16;) (eq 15)))
    (type (;17;) (func (result 16)))
    (import "import-func-int64" (func (;5;) (type 17)))
    (type (;18;) (record (field "x" u8) (field "y" u8) (field "z" u8)))
    (import "import-type-vec3-u8" (type (;19;) (eq 18)))
    (type (;20;) (func (result 19)))
    (import "import-func-uint8" (func (;6;) (type 20)))
    (type (;21;) (record (field "x" u16) (field "y" u16) (field "z" u16)))
    (import "import-type-vec3-u16" (type (;22;) (eq 21)))
    (type (;23;) (func (result 22)))
    (import "import-func-uint16" (func (;7;) (type 23)))
    (type (;24;) (record (field "x" u32) (field "y" u32) (field "z" u32)))
    (import "import-type-vec3-u32" (type (;25;) (eq 24)))
    (type (;26;) (func (result 25)))
    (import "import-func-uint32" (func (;8;) (type 26)))
    (type (;27;) (record (field "x" u64) (field "y" u64) (field "z" u64)))
    (import "import-type-vec3-u64" (type (;28;) (eq 27)))
    (type (;29;) (func (result 28)))
    (import "import-func-uint64" (func (;9;) (type 29)))
    (type (;30;) (record (field "x" f32) (field "y" f32) (field "z" f32)))
    (export (;31;) "vec3-f32" (type 30))
    (type (;32;) (record (field "x" f64) (field "y" f64) (field "z" f64)))
    (export (;33;) "vec3-f64" (type 32))
    (type (;34;) (record (field "x" s8) (field "y" s8) (field "z" s8)))
    (export (;35;) "vec3-s8" (type 34))
    (type (;36;) (record (field "x" s16) (field "y" s16) (field "z" s16)))
    (export (;37;) "vec3-s16" (type 36))
    (type (;38;) (record (field "x" s32) (field "y" s32) (field "z" s32)))
    (export (;39;) "vec3-s32" (type 38))
    (type (;40;) (record (field "x" s64) (field "y" s64) (field "z" s64)))
    (export (;41;) "vec3-s64" (type 40))
    (type (;42;) (record (field "x" u8) (field "y" u8) (field "z" u8)))
    (export (;43;) "vec3-u8" (type 42))
    (type (;44;) (record (field "x" u16) (field "y" u16) (field "z" u16)))
    (export (;45;) "vec3-u16" (type 44))
    (type (;46;) (record (field "x" u32) (field "y" u32) (field "z" u32)))
    (export (;47;) "vec3-u32" (type 46))
    (type (;48;) (record (field "x" u64) (field "y" u64) (field "z" u64)))
    (export (;49;) "vec3-u64" (type 48))
    (type (;50;) (func (result 31)))
    (export (;10;) "float32" (func 0) (func (type 50)))
    (type (;51;) (func (result 33)))
    (export (;11;) "float64" (func 1) (func (type 51)))
    (type (;52;) (func (result 35)))
    (export (;12;) "int8" (func 2) (func (type 52)))
    (type (;53;) (func (result 37)))
    (export (;13;) "int16" (func 3) (func (type 53)))
    (type (;54;) (func (result 39)))
    (export (;14;) "int32" (func 4) (func (type 54)))
    (type (;55;) (func (result 41)))
    (export (;15;) "int64" (func 5) (func (type 55)))
    (type (;56;) (func (result 43)))
    (export (;16;) "uint8" (func 6) (func (type 56)))
    (type (;57;) (func (result 45)))
    (export (;17;) "uint16" (func 7) (func (type 57)))
    (type (;58;) (func (result 47)))
    (export (;18;) "uint32" (func 8) (func (type 58)))
    (type (;59;) (func (result 49)))
    (export (;19;) "uint64" (func 9) (func (type 59)))
  )
  (instance (;2;) (instantiate 1
      (with "import-func-float32" (func 10))
      (with "import-func-float64" (func 11))
      (with "import-func-int8" (func 12))
      (with "import-func-int16" (func 13))
      (with "import-func-int32" (func 14))
      (with "import-func-int64" (func 15))
      (with "import-func-uint8" (func 16))
      (with "import-func-uint16" (func 17))
      (with "import-func-uint32" (func 18))
      (with "import-func-uint64" (func 19))
      (with "import-type-vec3-f32" (type 20))
      (with "import-type-vec3-f64" (type 22))
      (with "import-type-vec3-s8" (type 24))
      (with "import-type-vec3-s16" (type 26))
      (with "import-type-vec3-s32" (type 28))
      (with "import-type-vec3-s64" (type 30))
      (with "import-type-vec3-u8" (type 32))
      (with "import-type-vec3-u16" (type 34))
      (with "import-type-vec3-u32" (type 36))
      (with "import-type-vec3-u64" (type 38))
    )
  )
  (export (;3;) "math:vec/vec3@0.1.0" (instance 2))
  (type (;40;) (record (field "x" f32) (field "y" f32) (field "z" f32) (field "w" f32)))
  (type (;41;) (func (result 40)))
  (alias core export 0 "math:vec/vec4@0.1.0#float32" (core func (;21;)))
  (func (;20;) (type 41) (canon lift (core func 21) (memory 0)))
  (type (;42;) (record (field "x" f64) (field "y" f64) (field "z" f64) (field "w" f64)))
  (type (;43;) (func (result 42)))
  (alias core export 0 "math:vec/vec4@0.1.0#float64" (core func (;22;)))
  (func (;21;) (type 43) (canon lift (core func 22) (memory 0)))
  (type (;44;) (record (field "x" s8) (field "y" s8) (field "z" s8) (field "w" s8)))
  (type (;45;) (func (result 44)))
  (alias core export 0 "math:vec/vec4@0.1.0#int8" (core func (;23;)))
  (func (;22;) (type 45) (canon lift (core func 23) (memory 0)))
  (type (;46;) (record (field "x" s16) (field "y" s16) (field "z" s16) (field "w" s16)))
  (type (;47;) (func (result 46)))
  (alias core export 0 "math:vec/vec4@0.1.0#int16" (core func (;24;)))
  (func (;23;) (type 47) (canon lift (core func 24) (memory 0)))
  (type (;48;) (record (field "x" s32) (field "y" s32) (field "z" s32) (field "w" s32)))
  (type (;49;) (func (result 48)))
  (alias core export 0 "math:vec/vec4@0.1.0#int32" (core func (;25;)))
  (func (;24;) (type 49) (canon lift (core func 25) (memory 0)))
  (type (;50;) (record (field "x" s64) (field "y" s64) (field "z" s64) (field "w" s64)))
  (type (;51;) (func (result 50)))
  (alias core export 0 "math:vec/vec4@0.1.0#int64" (core func (;26;)))
  (func (;25;) (type 51) (canon lift (core func 26) (memory 0)))
  (type (;52;) (record (field "x" u8) (field "y" u8) (field "z" u8) (field "w" u8)))
  (type (;53;) (func (result 52)))
  (alias core export 0 "math:vec/vec4@0.1.0#uint8" (core func (;27;)))
  (func (;26;) (type 53) (canon lift (core func 27) (memory 0)))
  (type (;54;) (record (field "x" u16) (field "y" u16) (field "z" u16) (field "w" u16)))
  (type (;55;) (func (result 54)))
  (alias core export 0 "math:vec/vec4@0.1.0#uint16" (core func (;28;)))
  (func (;27;) (type 55) (canon lift (core func 28) (memory 0)))
  (type (;56;) (record (field "x" u32) (field "y" u32) (field "z" u32) (field "w" u32)))
  (type (;57;) (func (result 56)))
  (alias core export 0 "math:vec/vec4@0.1.0#uint32" (core func (;29;)))
  (func (;28;) (type 57) (canon lift (core func 29) (memory 0)))
  (type (;58;) (record (field "x" u64) (field "y" u64) (field "z" u64) (field "w" u64)))
  (type (;59;) (func (result 58)))
  (alias core export 0 "math:vec/vec4@0.1.0#uint64" (core func (;30;)))
  (func (;29;) (type 59) (canon lift (core func 30) (memory 0)))
  (component (;2;)
    (type (;0;) (record (field "x" f32) (field "y" f32) (field "z" f32) (field "w" f32)))
    (import "import-type-vec4-f32" (type (;1;) (eq 0)))
    (type (;2;) (func (result 1)))
    (import "import-func-float32" (func (;0;) (type 2)))
    (type (;3;) (record (field "x" f64) (field "y" f64) (field "z" f64) (field "w" f64)))
    (import "import-type-vec4-f64" (type (;4;) (eq 3)))
    (type (;5;) (func (result 4)))
    (import "import-func-float64" (func (;1;) (type 5)))
    (type (;6;) (record (field "x" s8) (field "y" s8) (field "z" s8) (field "w" s8)))
    (import "import-type-vec4-s8" (type (;7;) (eq 6)))
    (type (;8;) (func (result 7)))
    (import "import-func-int8" (func (;2;) (type 8)))
    (type (;9;) (record (field "x" s16) (field "y" s16) (field "z" s16) (field "w" s16)))
    (import "import-type-vec4-s16" (type (;10;) (eq 9)))
    (type (;11;) (func (result 10)))
    (import "import-func-int16" (func (;3;) (type 11)))
    (type (;12;) (record (field "x" s32) (field "y" s32) (field "z" s32) (field "w" s32)))
    (import "import-type-vec4-s32" (type (;13;) (eq 12)))
    (type (;14;) (func (result 13)))
    (import "import-func-int32" (func (;4;) (type 14)))
    (type (;15;) (record (field "x" s64) (field "y" s64) (field "z" s64) (field "w" s64)))
    (import "import-type-vec4-s64" (type (;16;) (eq 15)))
    (type (;17;) (func (result 16)))
    (import "import-func-int64" (func (;5;) (type 17)))
    (type (;18;) (record (field "x" u8) (field "y" u8) (field "z" u8) (field "w" u8)))
    (import "import-type-vec4-u8" (type (;19;) (eq 18)))
    (type (;20;) (func (result 19)))
    (import "import-func-uint8" (func (;6;) (type 20)))
    (type (;21;) (record (field "x" u16) (field "y" u16) (field "z" u16) (field "w" u16)))
    (import "import-type-vec4-u16" (type (;22;) (eq 21)))
    (type (;23;) (func (result 22)))
    (import "import-func-uint16" (func (;7;) (type 23)))
    (type (;24;) (record (field "x" u32) (field "y" u32) (field "z" u32) (field "w" u32)))
    (import "import-type-vec4-u32" (type (;25;) (eq 24)))
    (type (;26;) (func (result 25)))
    (import "import-func-uint32" (func (;8;) (type 26)))
    (type (;27;) (record (field "x" u64) (field "y" u64) (field "z" u64) (field "w" u64)))
    (import "import-type-vec4-u64" (type (;28;) (eq 27)))
    (type (;29;) (func (result 28)))
    (import "import-func-uint64" (func (;9;) (type 29)))
    (type (;30;) (record (field "x" f32) (field "y" f32) (field "z" f32) (field "w" f32)))
    (export (;31;) "vec4-f32" (type 30))
    (type (;32;) (record (field "x" f64) (field "y" f64) (field "z" f64) (field "w" f64)))
    (export (;33;) "vec4-f64" (type 32))
    (type (;34;) (record (field "x" s8) (field "y" s8) (field "z" s8) (field "w" s8)))
    (export (;35;) "vec4-s8" (type 34))
    (type (;36;) (record (field "x" s16) (field "y" s16) (field "z" s16) (field "w" s16)))
    (export (;37;) "vec4-s16" (type 36))
    (type (;38;) (record (field "x" s32) (field "y" s32) (field "z" s32) (field "w" s32)))
    (export (;39;) "vec4-s32" (type 38))
    (type (;40;) (record (field "x" s64) (field "y" s64) (field "z" s64) (field "w" s64)))
    (export (;41;) "vec4-s64" (type 40))
    (type (;42;) (record (field "x" u8) (field "y" u8) (field "z" u8) (field "w" u8)))
    (export (;43;) "vec4-u8" (type 42))
    (type (;44;) (record (field "x" u16) (field "y" u16) (field "z" u16) (field "w" u16)))
    (export (;45;) "vec4-u16" (type 44))
    (type (;46;) (record (field "x" u32) (field "y" u32) (field "z" u32) (field "w" u32)))
    (export (;47;) "vec4-u32" (type 46))
    (type (;48;) (record (field "x" u64) (field "y" u64) (field "z" u64) (field "w" u64)))
    (export (;49;) "vec4-u64" (type 48))
    (type (;50;) (func (result 31)))
    (export (;10;) "float32" (func 0) (func (type 50)))
    (type (;51;) (func (result 33)))
    (export (;11;) "float64" (func 1) (func (type 51)))
    (type (;52;) (func (result 35)))
    (export (;12;) "int8" (func 2) (func (type 52)))
    (type (;53;) (func (result 37)))
    (export (;13;) "int16" (func 3) (func (type 53)))
    (type (;54;) (func (result 39)))
    (export (;14;) "int32" (func 4) (func (type 54)))
    (type (;55;) (func (result 41)))
    (export (;15;) "int64" (func 5) (func (type 55)))
    (type (;56;) (func (result 43)))
    (export (;16;) "uint8" (func 6) (func (type 56)))
    (type (;57;) (func (result 45)))
    (export (;17;) "uint16" (func 7) (func (type 57)))
    (type (;58;) (func (result 47)))
    (export (;18;) "uint32" (func 8) (func (type 58)))
    (type (;59;) (func (result 49)))
    (export (;19;) "uint64" (func 9) (func (type 59)))
  )
  (instance (;4;) (instantiate 2
      (with "import-func-float32" (func 20))
      (with "import-func-float64" (func 21))
      (with "import-func-int8" (func 22))
      (with "import-func-int16" (func 23))
      (with "import-func-int32" (func 24))
      (with "import-func-int64" (func 25))
      (with "import-func-uint8" (func 26))
      (with "import-func-uint16" (func 27))
      (with "import-func-uint32" (func 28))
      (with "import-func-uint64" (func 29))
      (with "import-type-vec4-f32" (type 40))
      (with "import-type-vec4-f64" (type 42))
      (with "import-type-vec4-s8" (type 44))
      (with "import-type-vec4-s16" (type 46))
      (with "import-type-vec4-s32" (type 48))
      (with "import-type-vec4-s64" (type 50))
      (with "import-type-vec4-u8" (type 52))
      (with "import-type-vec4-u16" (type 54))
      (with "import-type-vec4-u32" (type 56))
      (with "import-type-vec4-u64" (type 58))
    )
  )
  (export (;5;) "math:vec/vec4@0.1.0" (instance 4))
  (@producers
    (processed-by "wit-component" "0.227.1")
    (processed-by "cargo-component" "0.21.1")
    (language "Rust" "")
  )
  (@custom "version" "0.1.0")
)
