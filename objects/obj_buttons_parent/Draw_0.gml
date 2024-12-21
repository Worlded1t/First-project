/// @description Draw buttons

// Draw button

draw_self();

// Set font

draw_set_font(fnt_main_menu);

// Set aligment

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text on the button

draw_text (x,y, button_text);

// Reset aligment

draw_set_halign(fa_left);
draw_set_valign(fa_top);
