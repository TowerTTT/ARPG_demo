if not instance_exists(player) exit;

/*	+-----------------------------------------+	
	|				  绘制血条		          |
	+-----------------------------------------+	*/
	
/* ------------------ 绘图参数 ----------------- */
var hp_x = 8;
var hp_y = 8 ;
var hp_width = 197;
var hp_height = 5;

if instance_exists(player)
{
	draw_hp = lerp(draw_hp,player.hp,0.1);
	draw_max_hp = player.max_hp;
}
var hp_percent = draw_hp / draw_max_hp;

/* -------------------- 绘制 ------------------ */
draw_sprite(s_hp_bar, 0, hp_x, hp_y);
draw_rectangle_color(hp_x,hp_y,hp_x + hp_width * hp_percent,hp_y + hp_height,c_white,c_white,c_white,c_white,false);


/*	+-----------------------------------------+	
	|				  绘制平衡		          |
	+-----------------------------------------+	*/

/* ------------------ 绘图参数 ----------------- */
var bp_x = 8;
var bp_y = 18 ;
var bp_width = 198;
var bp_height = 4;

if instance_exists(player)
{
	draw_bp = lerp(draw_bp,player.bp,0.1);
	draw_max_bp = player.max_bp;
}
var bp_percent = draw_bp / draw_max_bp;

/* -------------------- 绘制 ------------------ */

draw_rectangle_color(bp_x,bp_y+10 ,bp_x + bp_width * bp_percent,bp_y + bp_height,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);



/*	+-----------------------------------------+	
	|				  绘制经验		          |
	+-----------------------------------------+	*/

/* ------------------ 绘图参数 ----------------- */
var exp_x = 10;
var exp_y = 170;
var exp_width = 149;
var exp_height = 3;

if instance_exists(player)
{
	draw_exp = lerp(draw_exp,player.experience,0.1);
	draw_max_exp = player.max_experience;
}
var exp_percent = draw_exp/draw_max_exp;

draw_text(180,170,string(player.experience) + " / " + string(player.max_experience));

/* -------------------- 绘制 ------------------ */
draw_sprite(s_exp_bar,0,exp_x,exp_y);
draw_rectangle_color(exp_x,exp_y,exp_x + exp_width * exp_percent,exp_y + exp_height,c_white,c_white,c_white,c_white,false);



/*	+-----------------------------------------+	
	|				  界面元素		          |
	+-----------------------------------------+	*/

var start_x = 8;
var start_y = 145;

var padding_x = 20;
var padding_y = 4;

/* ------------------- 杀戮人数 ----------------- */

var text = string(player.kill);

var text_width = string_width(text);
var text_height = string_height(text);

draw_sprite(s_death_count,0,start_x,start_y+2.5);
draw_text(start_x + padding_x,start_y + padding_y,text);

/* ------------------- 玩家等级 ----------------- */

var text = string(player.level);

start_x += text_width + padding_x*2;

var text_width = string_width(text);
var text_height = string_height(text);

draw_sprite(s_level,0,start_x,start_y+2.5);
draw_text(start_x + padding_x + 5,start_y + padding_y,text);

/* ------------------- 玩家力量 ----------------- */

var text = string(player.strength);

start_x += text_width + padding_x*2;

var text_width = string_width(text);
var text_height = string_height(text);

draw_sprite(s_strength,0,start_x,start_y+2.5);
draw_text(start_x + padding_x ,start_y + padding_y,text);

/*	+-----------------------------------------+	
	|				  受伤效果		          |
	+-----------------------------------------+	*/
