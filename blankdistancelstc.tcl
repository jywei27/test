# Copyright(C), 2007, Engineering Technology Associates, Inc.

global ui_post_blankdistancelstc

# =================================================================== 
# Create widgets
set w0 [az::dialog -title [mc {Blank Distance Operation}] ]
set frame0 [ttk::frame $w0.frame0 ]
set id_label1 [ttk::label $frame0.id_label1 -text [mc {Reference Frame}] ]
set id_label2 [ttk::label $frame0.id_label_frame -text "1" ]
set id_slider_refframe [ttk::scale $w0.id_slider_refframe ]

set frame1 [ttk::frame $w0.frame1 ]
set id_check_x [ttk::checkbutton $frame1.id_check_x -text [mc {X}] ]
set id_check_y [ttk::checkbutton $frame1.id_check_y -text [mc {Y}] ]
set id_check_z [ttk::checkbutton $frame1.id_check_z -text [mc {Z}] ]

set id_button_setting [ttk::button $w0.id_button_setting -text [mc {Contour Setting}] ]
set id_button_line [ttk::button $w0.id_button_line -text [mc {Export Contour Line}] ]
set id_button_value [ttk::button $w0.id_button_value -text [mc {Export Contour Value}] ]

set frame2 [ttk::labelframe $w0.frame2 ]
set id_check_onoff [ttk::checkbutton $w0.id_checkbox_onoff -text [mc {Contour Region}] ]
set frame3 [ttk::frame $frame2.frame3 ]
set id_button_selectelem [ttk::button $frame3.id_button_selectelem -text [mc {Select Elem}] ]
set id_button_clear [ttk::button $frame3.id_button_clear -text [mc {Clear}] ]

#set id_button_region [ttk::button $w0.id_button_region -text [mc {Contour Region}] ]
set id_button_listvalue [ttk::button $w0.id_button_listvalue -text [mc {List Value}] ]

set id_button_exit [ttk::button $w0.id_button_exit -text [mc {Close}] ]
set frame_animation [ttk::frame $w0.frame_animation]

# =================================================================== 
# set attributes

# =================================================================== 
# Layout widget
pack $frame0 		 	 	-fill both -expand 1 -side top
pack $id_label1 			-padx 3 -pady 2 -side left
pack $id_label2 	 		-padx 3 -pady 0 -side left
pack $id_slider_refframe 	-fill x -expand 1 -padx 3 -pady 2 -side top

pack $frame1 		 	 	-fill both -expand 1 -side top
grid $id_check_x     	 	-row 0 -column 0 -sticky nesw -padx 2 -pady 1
grid $id_check_y     		-row 0 -column 1 -sticky nesw -padx 2 -pady 1
grid $id_check_z     	 	-row 0 -column 2 -sticky nesw -padx 2 -pady 1

grid columnconfigure $frame1  0   -weight 1 -uniform gc
grid columnconfigure $frame1  1   -weight 1 -uniform gc
grid columnconfigure $frame1  2   -weight 1 -uniform gc

pack $id_button_setting  	-fill both -expand 1 -padx 3 -pady 2 -side top
pack $id_button_line 	 	-fill both -expand 1 -padx 3 -pady 2 -side top
pack $id_button_value 	 	-fill both -expand 1 -padx 3 -pady 2 -side top
pack $frame2 -fill both -expand 1 -side top
$frame2 configure -labelwidget $id_check_onoff 
pack $frame3 -fill both -expand 1 -side top
pack $id_button_selectelem -fill x -expand 1 -padx 3 -pady 2 -side left
pack $id_button_clear -fill x -expand 1 -padx 3 -pady 2 -side left
#pack $id_button_region 	 	-fill both -expand 1 -padx 3 -pady 2 -side top
pack $id_button_listvalue 	-fill both -expand 1 -padx 3 -pady 2 -side top

pack $frame_animation 		-fill both -expand 1 -side top
pack $id_button_exit 		-fill both -expand 1 -padx 3 -pady 2 -side top
pack $w0 -fill x
# =================================================================== 

