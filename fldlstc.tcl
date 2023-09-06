# Copyright(C), 2007, Engineering Technology Associates, Inc.

global ui_post_fldlstc

# =================================================================== 
# Create widgets 
set w0 [az::dialog -title [mc {FLD Operation}] ]
set id_group1 [ttk::frame $w0.id_group1 ]

set frame0 [ttk::frame $id_group1.frame0 ]
set id_label2 [ttk::label $frame0.id_label2 -text [mc {<Layer>}] ]
set id_choice_complayer [ttk::combobox $frame0.id_choice_complayer ]
set id_checkbox_undeform [ttk::checkbutton $id_group1.id_checkbox_undeform -text [mc {Undeform}] ]
set id_checkbox_labval [ttk::checkbutton $id_group1.id_checkbox_labval -text [mc {Label Value}] ]
set id_checkbox_labcur [ttk::checkbutton $id_group1.id_checkbox_labcur -text [mc {Label Node/Elem Value Curve}] ]
set id_checkbox_elemres [ttk::checkbutton $id_group1.id_checkbox_elemres -text [mc {Element Result}] ]
set frame6 [ttk::frame $id_group1.frame6 ]
set id_button_fldcurve [ttk::button $frame6.id_button_fldcurve -text [mc {FLD Curve Option}] -width 1 ]
set id_button_editfld [ttk::button $frame6.id_button_editfld -text [mc {Edit FLD Window}] -width 1 ]
set frame_fldmore [ttk::frame $id_group1.frame_fldmore ]
set id_button_efld   [ttk::button $frame_fldmore.id_button_efld -text [mc {EFLD}] -width 1]
set id_button_fldrev [ttk::button $frame_fldmore.id_button_fldrev -text [mc {FLD Reversed Mapping}] -width 1]
set frame7 [ttk::frame $id_group1.frame7 ]
set id_button_listvalue [ttk::button $frame7.id_button_listvalue -text [mc {List Value}] -width 1 ]
set id_button_export [ttk::button $frame7.id_button_export -text [mc {Export VRML File}] -width 1 ]
set frame4 [ttk::labelframe $id_group1.frame4 ]
set id_checkbox_labelonoff [ttk::checkbutton $id_group1.id_checkbox_labelonoff -text [mc {Label On/Off}] ]
set frame1 [ttk::frame $frame4.frame1 ]
set id_button_definepath [ttk::button $frame1.id_button_definepath -text [mc {Define Path}] ]
set id_button_clearpath [ttk::button $frame1.id_button_clearpath -text [mc {Clear Path}] ]
set frame5 [az::expandable_frame $id_group1.frame5 ]
set id_checkbox_onoff [ttk::checkbutton $id_group1.id_checkbox_onoff -text [mc {Contour Region On/Off}] ]
set frame2 [ttk::frame $frame5.expand_container.frame2 ]
set id_button_selectelem [ttk::button $frame2.id_button_selectelem -text [mc {Select Elem}] ]
set id_button_clear [ttk::button $frame2.id_button_clear -text [mc {Clear}] ]
set id_button_exit [ttk::button $w0.id_button_exit -text [mc {Close}] ]
set frame_animation [ttk::frame $w0.frame_animation]

# =================================================================== 
# set attributes
style configure cho0.TCombobox  -entrybg #c0c0c0 -foreground #000000 -font { helvetica 10 }
$id_choice_complayer configure -style cho0.TCombobox
style configure chk0.TCheckbutton  -anchor w
$id_checkbox_undeform configure -style chk0.TCheckbutton
style configure chk1.TCheckbutton  -anchor w
$id_checkbox_elemres configure -style chk1.TCheckbutton
style configure chk2.TCheckbutton  -anchor w
$id_checkbox_labelonoff configure -style chk2.TCheckbutton
style configure chk3.TCheckbutton  -anchor w
$id_checkbox_onoff configure -style chk3.TCheckbutton

# =================================================================== 
# Layout widget
pack $id_group1 -fill both -padx 3 -pady 2 -expand 1 -side top
pack $frame0 -fill both -expand 1 -side top
pack $id_label2 -padx 3 -pady 2 -side left
pack $id_choice_complayer -padx 3 -pady 2 -side right
pack $id_checkbox_undeform  -fill x -padx 3 -pady 2 -side top
pack $id_checkbox_labval  -fill x -padx 3 -pady 2 -side top
pack $id_checkbox_labcur  -fill x -padx 3 -pady 2 -side top
pack $id_checkbox_elemres  -fill x -padx 3 -pady 2 -side top
pack $frame6 -fill both -expand 1 -side top
pack $id_button_fldcurve -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_button_editfld -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame_fldmore -fill both -expand 1 -side top
pack $id_button_efld -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_button_fldrev -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame7 -fill both -expand 1 -side top
pack $id_button_listvalue -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_button_export -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame4 -fill both -expand 0 -side top
$frame4 configure -labelwidget $id_checkbox_labelonoff 
pack $frame1 -fill both -expand 1 -side top
pack $id_button_definepath -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_button_clearpath -fill x -expand 1 -padx 3 -pady 2 -side left
#pack $frame5 -fill both -expand 0 -side top
#$frame5 configure -labelwidget $id_checkbox_onoff 
#pack $frame2 -fill both -expand 1 -side top
#pack $id_button_selectelem -fill x -expand 1 -padx 3 -pady 2 -side left
#pack $id_button_clear -fill x -expand 1 -padx 3 -pady 2 -side left
pack $frame_animation -fill x -expand 1
pack $id_button_exit -fill x -expand 1 -padx 3 -pady 2 -side top
pack $w0 -fill x
# =================================================================== 
