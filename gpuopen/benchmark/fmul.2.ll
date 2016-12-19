; ModuleID = '<stdin>'
source_filename = "fmul.cpp"
target datalayout = "e-p:32:32-p1:64:64-p2:64:64-p3:32:32-p4:64:64-p5:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64"
target triple = "amdgcn--amdhsa-hcc"

; Function Attrs: alwaysinline nounwind
define amdgpu_kernel void @DoFMul(float* nocapture readonly %in1d, float* nocapture %outd) local_unnamed_addr #5 {
  %1 = tail call i32 @llvm.amdgcn.workitem.id.x() #11
  %arrayidx = getelementptr inbounds float, float* %in1d, i32 %1
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds float, float* %outd, i32 %1
  %3 = load float, float* %arrayidx2, align 4, !tbaa !7
  br label %5

; <label>:4:                                      ; preds = %5
  store float %add.63, float* %arrayidx2, align 4, !tbaa !7
  ret void

; <label>:5:                                      ; preds = %5, %0
  %i.016 = phi i32 [ 0, %0 ], [ %inc.63, %5 ]
  %out.015 = phi float [ %3, %0 ], [ %add.63, %5 ]
  %add = fmul float %2, %out.015
  %add.1 = fmul float %2, %add
  %add.2 = fmul float %2, %add.1
  %add.3 = fmul float %2, %add.2
  %add.4 = fmul float %2, %add.3
  %add.5 = fmul float %2, %add.4
  %add.6 = fmul float %2, %add.5
  %add.7 = fmul float %2, %add.6
  %add.8 = fmul float %2, %add.7
  %add.9 = fmul float %2, %add.8
  %add.10 = fmul float %2, %add.9
  %add.11 = fmul float %2, %add.10
  %add.12 = fmul float %2, %add.11
  %add.13 = fmul float %2, %add.12
  %add.14 = fmul float %2, %add.13
  %add.15 = fmul float %2, %add.14
  %add.16 = fmul float %2, %add.15
  %add.17 = fmul float %2, %add.16
  %add.18 = fmul float %2, %add.17
  %add.19 = fmul float %2, %add.18
  %add.20 = fmul float %2, %add.19
  %add.21 = fmul float %2, %add.20
  %add.22 = fmul float %2, %add.21
  %add.23 = fmul float %2, %add.22
  %add.24 = fmul float %2, %add.23
  %add.25 = fmul float %2, %add.24
  %add.26 = fmul float %2, %add.25
  %add.27 = fmul float %2, %add.26
  %add.28 = fmul float %2, %add.27
  %add.29 = fmul float %2, %add.28
  %add.30 = fmul float %2, %add.29
  %add.31 = fmul float %2, %add.30
  %add.32 = fmul float %2, %add.31
  %add.33 = fmul float %2, %add.32
  %add.34 = fmul float %2, %add.33
  %add.35 = fmul float %2, %add.34
  %add.36 = fmul float %2, %add.35
  %add.37 = fmul float %2, %add.36
  %add.38 = fmul float %2, %add.37
  %add.39 = fmul float %2, %add.38
  %add.40 = fmul float %2, %add.39
  %add.41 = fmul float %2, %add.40
  %add.42 = fmul float %2, %add.41
  %add.43 = fmul float %2, %add.42
  %add.44 = fmul float %2, %add.43
  %add.45 = fmul float %2, %add.44
  %add.46 = fmul float %2, %add.45
  %add.47 = fmul float %2, %add.46
  %add.48 = fmul float %2, %add.47
  %add.49 = fmul float %2, %add.48
  %add.50 = fmul float %2, %add.49
  %add.51 = fmul float %2, %add.50
  %add.52 = fmul float %2, %add.51
  %add.53 = fmul float %2, %add.52
  %add.54 = fmul float %2, %add.53
  %add.55 = fmul float %2, %add.54
  %add.56 = fmul float %2, %add.55
  %add.57 = fmul float %2, %add.56
  %add.58 = fmul float %2, %add.57
  %add.59 = fmul float %2, %add.58
  %add.60 = fmul float %2, %add.59
  %add.61 = fmul float %2, %add.60
  %add.62 = fmul float %2, %add.61
  %add.63 = fmul float %2, %add.62
  %inc.63 = add nsw i32 %i.016, 64
  %exitcond.63 = icmp eq i32 %inc.63, 134217728
  br i1 %exitcond.63, label %4, label %5
}

; Function Attrs: nounwind readnone
declare i32 @llvm.amdgcn.workitem.id.x() local_unnamed_addr #6

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { alwaysinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "hc_grid_launch" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+fp64-denormals,-fp32-denormals" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nobuiltin nounwind readnone }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin noreturn }

!llvm.ident = !{!0}

!0 = !{!"HCC clang version 4.0.0  (based on HCC 1.0.16501-04a69df-ef406d4-eef66ba )"}
!1 = !{!2, !3, i64 0}
!2 = !{!"_ZTS7timeval", !3, i64 0, !3, i64 8}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!2, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS7gl_dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!11 = !{!"int", !4, i64 0}
!12 = !{!10, !11, i64 4}
!13 = !{!10, !11, i64 8}
!14 = !{!15, !11, i64 24}
!15 = !{!"_ZTS16grid_launch_parm", !10, i64 0, !10, i64 12, !11, i64 24, !16, i64 28, !11, i64 32, !17, i64 40, !17, i64 48}
!16 = !{!"_ZTS14gl_barrier_bit", !4, i64 0}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"_ZTS4dim3", !11, i64 0, !11, i64 4, !11, i64 8}
!20 = !{!19, !11, i64 4}
!21 = !{!19, !11, i64 8}
!22 = !{i64 0, i64 4, !23, i64 4, i64 4, !23, i64 8, i64 4, !23, i64 12, i64 4, !23, i64 16, i64 4, !23, i64 20, i64 4, !23, i64 24, i64 4, !23, i64 28, i64 4, !24, i64 32, i64 4, !23, i64 40, i64 8, !25, i64 48, i64 8, !25}
!23 = !{!11, !11, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!17, !17, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !5, i64 0}
!28 = !{!29, !17, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 216, !4, i64 224, !30, i64 225, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256}
!30 = !{!"bool", !4, i64 0}
!31 = !{!32, !4, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !17, i64 16, !30, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !4, i64 56, !4, i64 57, !4, i64 313, !4, i64 569}
!33 = !{!4, !4, i64 0}
