if state == "Death" exit;

/*	+-----------------------------------------+	
	|				  绘制血条		          |
	+-----------------------------------------+	*/
	
/* ------------------ 绘图参数 ----------------- */

var hp_height = sprite_height - 4;
var hp_width = 24;
var hp_percentage = hp/max_hp

/* -------------------- 绘制 ------------------ */

draw_sprite(s_enemy_bar, 0, x-12, y-hp_height);
draw_rectangle_color(x-hp_width/2, y-hp_height, x-hp_width/2 -1+hp_percentage * hp_width, y-hp_height+1, c_white, c_white, c_white, c_white, false);


/*	+-----------------------------------------+	
	|				  绘制平衡		          |
	+-----------------------------------------+	*/

/* ------------------ 绘图参数 ----------------- */

var bp_height = sprite_height - 8;
var bp_width = 24;
var bp_percentage = bp/max_bp;

/* -------------------- 绘制 ------------------ */

draw_rectangle_color(x-bp_width/2, y-bp_height, x-bp_width/2-1+bp_percentage*bp_width, y-bp_height+1, c_white, c_white, c_white, c_white, false);

/*	+-----------------------------------------+	
	|				  绘制姓名		          |
	+-----------------------------------------+	*/

/* ------------------ 绘图参数 ----------------- */

var name_height = 60;
var name_width = string_length(char_name)*6/2;

/* -------------------- 绘制 ------------------ */

draw_text(x-name_width,y-name_height,char_name);