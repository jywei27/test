# Copyright(C), 2007, Engineering Technology Associates, Inc.

global ui_post_3pointgaugechecklstc

# =================================================================== 
# Create widgets 
set w0 [az::dialog -title [mc {3 Point Gauge Check}] ]
set frame1 [ttk::frame $w0.frame1 ]
set id_label1 [ttk::label $frame1.id_label1 -text [mc {Unit:}] -width 15]
set id_choice_unit [ttk::combobox $frame1.id_choice_unit -width 15]
set frame2 [ttk::frame $w0.frame2 ]
set id_label2 [ttk::label $frame2.id_label2 -text [mc {Gauge Length:}] -width 15]
set id_input_length [ttk::entry $frame2.id_input_length -width 15]
set frame3 [ttk::frame $w0.frame3 ]
set id_label3 [ttk::label $frame3.id_label3 -text [mc {Gauge Orient:}] -width 15]
set id_choice_orient [ttk::combobox $frame3.id_choice_orient -width 15]
set frame4 [ttk::frame $w0.frame4 ]
set id_label4 [ttk::label $frame4.id_label4 -text [mc {Min Element Size:}] -width 15]
set id_input_size [ttk::entry $frame4.id_input_size -width 15]
set frame5 [ttk::frame $w0.frame5 ]
set id_label5 [ttk::label $frame5.id_label5 -text [mc {Scan Increment:}] -width 15]
set id_input_inc [ttk::entry $frame5.id_input_inc ]
set id_label6 [ttk::label $frame5.id_label6 -text [mc {*Min.Size}] ]
set frame6 [ttk::frame $w0.frame6 ]
set id_check_result [ttk::checkbutton $frame6.id_check_result -text [mc {Element Result}] ]
set frame7 [ttk::frame $w0.frame7 ]
set id_check_def [ttk::checkbutton $frame7.id_check_def -text [mc {Compensate Initial Defect}] ]
set frame8 [ttk::frame $w0.frame8 ]
set id_check_region [ttk::checkbutton $frame8.id_check_region -text [mc {Show Test Region}] ]
set id_group1 [ttk::frame $w0.id_group1 ]
set frame9 [ttk::frame $id_group1.frame9 ]
set radgroup [::ui_get_radio_group "RegionType"]
set id_radiobox_elem [ttk::radiobutton $frame9.id_radiobox_elem -text [mc {By Elements}] -value [::ui_get_radio_value $radgroup] -variable $radgroup]
set frame10 [ttk::frame $id_group1.frame10 ]
set id_radiobox_region [ttk::radiobutton $frame10.id_radiobox_region -text [mc {By Region Boundary}] -value [::ui_get_radio_value $radgroup] -variable $radgroup]
set frame11_12 [ttk::frame $w0.frame11_12 ]
set frame11 [ttk::frame $frame11_12.frame11 ]
set id_button_selectelems [ttk::button $frame11.id_button_selectelems -text [mc {Select Elements}] ]
set id_button_definepath [ttk::button $frame11.id_button_definepath -text [mc {Define Path}] ]
set frame12 [ttk::frame $frame11_12.frame12 ]
#set id_button_listvalue [ttk::button $frame12.id_button_listvalue -text [mc {List Value}] ]
set id_button_clearelems [ttk::button $frame12.id_button_clearelems -text [mc {Clear Elements}]]
set id_button_clearpath [ttk::button $frame12.id_button_clearpath -text [mc {Clear Path}] ]
set frame13 [ttk::frame $w0.frame13 ]
set id_button_listvalue [ttk::button $frame13.id_button_listvalue -text [mc {List Value}] ]
set id_button_contoursetting [ttk::button $frame13.id_button_contoursetting -text [mc {Contour Setting}] ]
set frame14 [ttk::frame $w0.frame14]
set id_button_exit [ttk::button $frame14.id_button_exit -text [mc {Close}] ]


# =================================================================== 
# set attributes


# =================================================================== 
# Layout widget
pack $frame1 -fill both -expand 1 -side top
pack $id_label1 -padx 3 -pady 2 -side left
pack $id_choice_unit -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame2 -fill both -expand 1 -side top
pack $id_label2 -padx 3 -pady 2 -side left
pack $id_input_length -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame3 -fill both -expand 1 -side top
pack $id_label3 -padx 3 -pady 2 -side left
pack $id_choice_orient -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame4 -fill both -expand 1 -side top
pack $id_label4 -padx 3 -pady 2 -side left
pack $id_input_size -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame5 -fill both -expand 1 -side top
pack $id_label5 -padx 3 -pady 2 -side left
pack $id_input_inc -fill x -padx 3 -pady 2 -side left
pack $id_label6 -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame6 -fill both -expand 1 -side top
pack $id_check_result  -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame7 -fill both -expand 1 -side top
pack $id_check_def  -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame8 -fill both -expand 1 -side top
pack $id_check_region  -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_group1 -fill both -padx 1 -pady 2 -expand 1 -side top
pack $frame9 -fill both -expand 1 -side top
pack $id_radiobox_elem -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame10 -fill both -expand 1 -side top
pack $id_radiobox_region -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame11_12 -fill both -expand 1 -side top
pack $frame11 -fill both -expand 1 -side left
pack $id_button_selectelems -fill x -expand 1 -padx 3 -pady 2 -side top
pack $id_button_definepath -fill x -expand 1 -padx 3 -pady 2 -side top
pack $frame12 -fill both -expand 1 -side left
#pack $id_button_listvalue -fill x -expand 1 -padx 3 -pady 2 -side top
pack $id_button_clearelems -fill x -expand 1 -padx 3 -pady 2 -side top
pack $id_button_clearpath -fill x -expand 1 -padx 3 -pady 2 -side top
pack $frame13 -fill both -expand 1 -side top
pack $id_button_listvalue -fill x -expand 1 -padx 3 -pady 2 -side top
pack $id_button_contoursetting -fill x -expand 1 -padx 3 -pady 2 -side top
pack $frame14 -fill both -expand 1 -side top
pack $id_button_exit -fill x -expand 1 -padx 3 -pady 2 -side top
pack $w0 -fill x
# =================================================================== 

