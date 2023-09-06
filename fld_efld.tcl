# Copyright(C), 2019, Engineering Technology Associates, Inc.

global ui_post_fld_efld

# =================================================================== 
# Create widgets 
set w0 [az::dialog -title [mc {EFLD}] ]

set id_checkbox_efldon   [ttk::checkbutton $w0.id_checkbox_efldon -text [mc {EFLD On}] ]
set id_checkbox_efldonly [ttk::checkbutton $w0.id_checkbox_efldonly -text [mc {Show EFLD Area Only}] ]

set frame_ref_label [ttk::frame $w0.frame_ref_label]
set id_label_reference  [ttk::label $frame_ref_label.id_label3 -text [mc {Reference Frame}] ]
set id_label_frameindex [ttk::label $frame_ref_label.id_label_frame -text "1" ]
set id_slider_refframe  [ttk::scale $w0.id_slider_refframe]

set id_frame_line [ttk::frame $w0.id_frame_line ]
set id_btn_entry_line [ttk::button $id_frame_line.id_btn_entry_line -text [mc {Select Entry Line}] ]
set id_btn_exit_line  [ttk::button $id_frame_line.id_btn_exit_line  -text [mc {Select Exit Line}] ]

set id_frame_action [ttk::frame $w0.id_frame_action ]
set id_btn_apply [ttk::button $id_frame_action.id_btn_apply -text [mc {Apply}] ]
set id_btn_exit  [ttk::button $id_frame_action.id_button_exit -text [mc {Close}] ]

# =================================================================== 
# Layout widget
pack $id_checkbox_efldon   -fill x -padx 3 -pady 2 -expand 1 -side top
pack $id_checkbox_efldonly -fill x -padx 3 -pady 2 -expand 1 -side top

pack $frame_ref_label      -fill both -expand 1 -side top
pack $id_label_reference   -padx 3 -pady 2 -side left
pack $id_label_frameindex  -padx 3 -pady 2 -side left
pack $id_slider_refframe   -fill x -expand 1 -padx 3 -pady 2 -side top

pack $id_frame_line		-fill x -expand 1 -side top
grid $id_btn_entry_line	-row 0 -column 0 -padx 3 -pady 2  -sticky nesw
grid $id_btn_exit_line	-row 0 -column 1 -padx 3 -pady 2  -sticky nesw

grid columnconfigure $id_frame_line 0 -weight 1 -uniform gc
grid columnconfigure $id_frame_line 1 -weight 1 -uniform gc

pack $id_frame_action	-fill x -expand 1 -side top
grid $id_btn_apply		-row 0 -column 0 -padx 3 -pady 2  -sticky nesw
grid $id_btn_exit		-row 0 -column 1 -padx 3 -pady 2  -sticky nesw

grid columnconfigure $id_frame_action 0 -weight 1 -uniform gc
grid columnconfigure $id_frame_action 1 -weight 1 -uniform gc

pack $w0 -fill x
# =================================================================== 

