REAd IMplementation Information fv/mcs4_pad_frame -golden fv_map -revised mcs4_pad_frame_mv
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lef\
   -library -both
REAd LIbrary -liberty -both /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_multibitsDFF.lib\
   /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/pads_SS_s1vg.lib /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_basicCells.lib\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_multibitsDFF.lib\
   /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/pads_SS_s1vg.lib
REAd DEsign -verilog95 -golden -lastmod -noelab fv/mcs4_pad_frame/fv_map.v.gz
ELAborate DEsign -golden -root mcs4_pad_frame
REAd DEsign -verilog95 -revised -lastmod -noelab outputs_dir/mcs4_pad_frame_m.v
ELAborate DEsign -revised -root mcs4_pad_frame
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
CHEck VErification Information
SET ANalyze Option -auto -report_map
SET SYstem Mode lec
REPort UNmapped Points -summary
REPort UNmapped Points -notmapped
ADD COmpared Points -all
COMpare
REPort COmpare Data -class nonequivalent -class abort -class notcompared
REPort VErification -verbose
REPort STatistics
REPort VErification
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
RESET
SET VErification Information rtl_fv_map_db
REAd IMplementation Information fv/mcs4_pad_frame -revised fv_map
SET PARAllel Option -threads 1,4 -norelease_license
SET COmpare Options -threads 1,4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/lef/ /CMC/kits/cadence/GPDK045/giolib045_v3.3/lef\
   -library -both
REAd LIbrary -liberty -both /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/slow_vdd1v0_multibitsDFF.lib\
   /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/pads_SS_s1vg.lib /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_basicCells.lib\
   /CMC/kits/cadence/GPDK045/gsclib045_all_v4.4/gsclib045/timing/fast_vdd1v2_multibitsDFF.lib\
   /CMC/kits/cadence/GPDK045/giolib045_v3.3/lib/pads_SS_s1vg.lib
SET UNDRiven Signal 0 -golden
SET NAming Style genus -golden
SET NAming Rule %s[%d] -instance_array -golden
SET NAming Rule %s_reg -register -golden
SET NAming Rule %L.%s %L[%d].%s %s -instance -golden
SET NAming Rule %L.%s %L[%d].%s %s -variable -golden
SET NAming Rule -ungroup_separator _ -golden
SET HDl Options -const_port_extend
SET HDl Options -nolibext_def on
SET HDl Options -VERILOG_INCLUDE_DIR cwd:incdir:src:yyd:sep
ADD SEarch Path ../../rtl/verilog -design -golden
REAd DEsign -define SYNTHESIS -merge bbox -golden -lastmod -noelab -verilog2k -f ../../rtl/verilog/mcs4.f
ELAborate DEsign -golden -root mcs4_pad_frame -rootonly
REAd DEsign -verilog95 -revised -lastmod -noelab fv/mcs4_pad_frame/fv_map.v.gz
ELAborate DEsign -revised -root mcs4_pad_frame
UNIQuify -all -nolib -golden
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET FLatten Model -balanced_modeling
CHEck VErification Information
SET ANalyze Option -auto -report_map
WRIte HIer_compare Dofile hier_tmp3.lec.do -verbose -noexact_pin_match -constraint -usage -replace -balanced_extraction\
   -input_output_pin_equivalence -prepend_string "report_design_data; report_unmapped_points -summary; report_unmapped_points -notmapped; analyze_datapath -module -verbose; eval analyze_datapath -flowgraph -verbose"
RUN HIer_compare hier_tmp3.lec.do -dynamic_hierarchy
REPort HIer_compare Result -dynamicflattened
REPort VErification -hier -verbose
WRIte VErification Information
REPort VErification Information
REPort IMplementation Information
SET SYstem Mode lec
ANAlyze RESults -logfiles logs_dir/rtl2final.lec.log
DIAgnose 61 -golden
