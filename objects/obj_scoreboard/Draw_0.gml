

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
for (var i = 1; i < 11; i++)
{
draw_text(350, (i * 56) + 44 , "" + string(i));
}

draw_highscore(420, 100, room_width - 350, room_height - 100);