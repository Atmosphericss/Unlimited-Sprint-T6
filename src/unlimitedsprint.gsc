#include maps\mp\zombies\_zm_utility;
#include common_scripts\utility;
#include maps\_utility;


init()
{

    level thread onPlayerConnect();

}

onPlayerConnect()
{
    self endon("disconnect");
	level endon("end_game");
	for (;;)
	{
		level waittill( "connected", player );
        level thread onPlayerSpawn();
    }
}

onPlayerSpawn()
{
    self endon("disconnect");
	level endon("end_game");
    for (;;)
    {
        self waittill( "spawned_player" );
        self setperk( "specialty_unlimitedsprint" );
    }
}