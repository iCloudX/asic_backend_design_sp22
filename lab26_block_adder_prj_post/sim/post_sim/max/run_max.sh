vcs \
-R \
-debug_acc+all -kdb -debug_region+cell+encrypt \
+neg_tchk \
+maxdelays \
+lint=TFIPC-L \
-timescale=1ns/1ps \
-f run_max.f \
-l gate_sim_max.log
