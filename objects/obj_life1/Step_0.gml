if (o_player.lifes == 0) 
{
instance_destroy();	
o_player.dead = 1;
}

if (o_player.dead == 1)
{
 global.count_up = false;

}