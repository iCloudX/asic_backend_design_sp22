vcs \
-R \
-debug_acc+all -kdb -debug_region+cell+encrypt \
+neg_tchk \
+mindelays \
+lint=TFIPC-L \
-timescale=1ns/1ps \
-f run_min.f \
-l gate_sim_min.log
