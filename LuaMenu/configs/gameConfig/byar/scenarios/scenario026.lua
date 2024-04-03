local scenariodata = {
	index			= 26, --  integer, sort order, MUST BE EQUAL TO FILENAME NUMBER
	scenarioid		= "riverrunstampede", -- no spaces, lowercase, this will be used to save the score and can be used gadget side
    version         = "0.2", -- increment this to reset the score when changing a mission, as scores are keyed by (scenarioid,version,difficulty)
	title			= "The Stampede", -- can be anything
	author			= "kroIya", -- your name here
	imagepath		= "scenario026.jpg", -- placed next to lua file, should be 3:1 ratio banner style
	imageflavor		= "It's coming", -- This text will be drawn over image
    summary         = [[The Titans are flattening the world. They are ignoring the other team, which means it's probably their fault. Destroy the enemy commander by any means necessary to save this planet]],
	briefing 		= [[This scenario is best played on Normal. You will not have access to any metal producing buildings, so you'll have to get creative. Aircraft is disabled on all difficulties for all teams. Some of the old structures may remain unflattened in places the Titans can't reach.
 
Good luck.
 
 
This scenario is different based on the selected difficulty:
 
‣ Beginner: You can produce metal income buildings after all. The AI is meant to have no income, pending fix. Ragnarok disabled.
 
‣ Novice: You can produce metal income buildings after all. Regular AI difficulty. Ragnarok disabled.
 
‣ Normal: No metal income buildings. Regular AI difficulty. Ragnarok disabled. The intended difficulty. 
 
‣ Hard: No metal income buildings. Regular AI difficulty. Ragnarok enabled. The original difficulty.
 
‣ Brutal: No metal income buildings. The AI is a BARb. Ragnarok enabled. Probably impossible.

 ]],

	mapfilename		= "Riverrun_V1", -- the name of the map to be displayed here, and which to play on, no .smf ending needed
	playerstartx	= "9%", -- X position of where player comm icon should be drawn, from top left of the map
	playerstarty	= "62%", -- Y position of where player comm icon should be drawn, from top left of the map
	partime 		= 3600, -- par time in seconds (time a mission is expected to take on average)
	parresources	= 1000000, -- par resource amount (amount of metal one is expected to spend on mission)
	difficulty		= 11, -- Percieved difficulty at 'normal' level: integer 1-10
    defaultdifficulty = "Normal", -- an entry of the difficulty table
    difficulties    = { -- Array for sortedness, Keys are text that appears in selector (as well as in scoring!), values are handicap levels
    -- handicap values range [-100 - +100], with 0 being regular resources
    -- Currently difficulty modifier only affects the resource bonuses
        {name = "Beginner", playerhandicap = 0.1, enemyhandicap=-100},
        {name = "Novice"  , playerhandicap = 0.2, enemyhandicap=0},
        {name = "Normal"  , playerhandicap = 0.3, enemyhandicap=0},
        {name = "Hard"    , playerhandicap = 0.4,  enemyhandicap=0},
        {name = "Brutal" , playerhandicap = 0.5,  enemyhandicap=0},
    },
    allowedsides     = {"Armada"}, --these are the permitted factions for this mission, ch0ose from {"Armada", "Cortex", "Random"}
	victorycondition= "Kill all enemy Commanders", -- This is plaintext, but should be reflected in startscript
	losscondition	= "Death of your Commander",  -- This is plaintext, but should be reflected in startscript
    unitlimits   = { -- table of unitdefname : maxnumberofthese units, 0 means disable it
        -- dont use the one in startscript, put the disabled stuff here so we can show it in scenario window!
        --armavp = 0,
        --coravp = 0,
		armap = 0,
		armaap = 0,
		armplat = 0,
    } ,

    scenariooptions = { -- this will get lua->json->base64 and passed to scenariooptions in game
        myoption = "dostuff", -- blank
        scenarioid = "riverrunstampede", -- this MUST be present and identical to the one defined at start
		disablefactionpicker = true, -- this is needed to prevent faction picking outside of the allowedsides

        unitloadout = {
            {name = 'armcom', x = 10709, y = 385, z = 4007, rot = -17635 , team = 1, neutral = false},
            {name = 'armcom', x = 1559, y = 384, z = 8244, rot = -28368 , team = 0, neutral = false},
            {name = 'armageo', x = 3200, y = 384, z = 4800, rot = 0 , team = 4, neutral = true},
            {name = 'cormoho', x = 9056, y = 382, z = 11280, rot = 16384 , team = 4, neutral = true},
            {name = 'cormoho', x = 8736, y = 384, z = 11216, rot = 16384 , team = 4, neutral = true},
            --{name = 'armaca', x = 523, y = 38, z = 367, rot = 11283 , team = 0, neutral = false},
            {name = 'armbrtha', x = 9088, y = 384, z = 7344, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9136, y = 384, z = 7312, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9136, y = 384, z = 7344, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9136, y = 384, z = 7376, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9104, y = 384, z = 7392, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9072, y = 384, z = 7392, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9040, y = 384, z = 7376, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9040, y = 384, z = 7344, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9040, y = 384, z = 7312, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9072, y = 384, z = 7296, rot = 16384 , team = 4, neutral = true},
            {name = 'armfort', x = 9104, y = 384, z = 7296, rot = 16384 , team = 4, neutral = true},
            --{name = 'armuwadvms', x = 12256, y = 47, z = 32, rot = 16384 , team = 0, neutral = false},
            --{name = 'armuwadvms', x = 12256, y = 38, z = 12256, rot = 16384 , team = 0, neutral = false},
            --{name = 'armuwadves', x = 32, y = 47, z = 12256, rot = 16384 , team = 0, neutral = false},
            --{name = 'armuwadves', x = 32, y = 38, z = 32, rot = 16384 , team = 0, neutral = false},
		},
		featureloadout = {
            {name = 'armbanth_heap', x = 3371, y = 382, z = 907, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_dead', x = 1711, y = 159, z = 8683, rot = 0 , scale = 1.0, resurrectas = "armbanth"},
            {name = 'armbanth_heap', x = 3222, y = 382, z = 905, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3437, y = 379, z = 884, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3295, y = 382, z = 861, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3406, y = 361, z = 806, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3519, y = 384, z = 1148, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3489, y = 383, z = 1033, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3386, y = 383, z = 1069, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3350, y = 382, z = 1029, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3388, y = 382, z = 981, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3321, y = 382, z = 1065, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3317, y = 382, z = 953, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3490, y = 381, z = 936, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armbanth_heap', x = 3449, y = 383, z = 998, rot = 0 , scale = 1.0, resurrectas = ""},
            {name = 'armanni_dead', x = 6577, y = 378, z = 9982, rot = 0 , scale = 1.0, resurrectas = "armanni"},
            {name = 'corkorg_dead', x = 5818, y = 384, z = 2524, rot = 0 , scale = 1.0, resurrectas = "corkorg"},
            {name = 'armanni_dead', x = 6708, y = 377, z = 9829, rot = 0 , scale = 1.0, resurrectas = "armanni"},
            {name = 'armanni_dead', x = 6481, y = 377, z = 9378, rot = 0 , scale = 1.0, resurrectas = "armanni"},
            {name = 'armanni_dead', x = 6750, y = 378, z = 9623, rot = 0 , scale = 1.0, resurrectas = "armanni"},
            {name = 'armgate_dead', x = 6538, y = 387, z = 9690, rot = 0 , scale = 1.0, resurrectas = "armgate"},
            {name = 'armanni_dead', x = 6630, y = 379, z = 9475, rot = 0 , scale = 1.0, resurrectas = "armanni"},

			-- Similarly to units, but these can also be resurrectable!
            -- You can /give corcom_dead with cheats when making your scenario, but it might not contain the 'resurrectas' tag, so be careful to add it if needed
			 -- {name = 'corcom_dead', x = 1125,y = 237, z = 734, rot = "0" , scale = 1.0, resurrectas = "corcom"}, -- there is no need for this dead comm here, just an example
		}
    },
    -- Full Documentation for start script here:
    -- https://github.com/spring/spring/blob/105.0/doc/StartScriptFormat.txt

    -- HOW TO MAKE THE START SCRIPT: Use Chobby's single player mode to set up your start script. When you launch a single player game, the start script is dumped into infolog.txt
    -- ModOptions: You can also set modoptions in chobby, and they will get dumped into the infolog's start script too, or just set then in chobby and copy paste them into the [modoptions] tag. as below
    -- The following keys MUST be present in startscript below
    --  scenariooptions = __SCENARIOOPTIONS__;
    -- Name = __PLAYERNAME__;
    -- myplayername = __PLAYERNAME__;
    -- gametype = __BARVERSION__;
    -- mapname =__MAPNAME__;

    -- Optional keys:
    -- __ENEMYHANDICAP__
    -- __PLAYERSIDE__
    -- __PLAYERHANDICAP__
    -- __NUMRESTRICTIONS__
    -- __RESTRICTEDUNITS__

	startscript		= [[[GAME]
	{
		[allyTeam0]
		{
			numallies = 0;
		}
	
		[ai1]
		{
			Host = 0;
			IsFromDemo = 0;
			Name = InactiveAI(1);
			ShortName = NullAI;
			Team = 2;
			Version = stable;
		}

		[ai2]
		{
			Host = 0;
			IsFromDemo = 0;
			Name = BARb(1);
			ShortName = BARb;
			Team = 3;
			Version = stable;
		}

		[team3]
		{
			Side = Cortex;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 1;
			TeamLeader = 0;
		}

        [team2]
		{
			Side = Cortex;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 1;
			TeamLeader = 0;
		}
	
		[team1]
		{
			Side = Cortex;
			Handicap = __ENEMYHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 1;
			TeamLeader = 0;
		}
	
		[allyTeam1]
		{
			numallies = 0;
		}
	
	
		[team0]
		{
			Side = __PLAYERSIDE__;
			Handicap = __PLAYERHANDICAP__;
			RgbColor = 0.99609375 0.546875 0;
			AllyTeam = 0;
			TeamLeader = 0;
			StartPosX = 1176;
			StartPosZ = 1414;
		}

        [modoptions]
        {
            scenariooptions = __SCENARIOOPTIONS__;
			startmetal = 50;
        }    

		[ai0]
		{
			Host = 0;
			IsFromDemo = 0;
			Name = SimpleAI(1);
			ShortName = SimpleAI;
			Team = 1;
			Version = stable;
		}
	
		[player0]
		{
			IsFromDemo = 0;
			Name = __PLAYERNAME__;
			Team = 0;
			rank = 0;
		}

	NumRestrictions=__NUMRESTRICTIONS__;

	[RESTRICT]
	{
        __RESTRICTEDUNITS__
	}

	hostip = 127.0.0.1;
	hostport = 0;
	numplayers = 1;
	startpostype = 3; // 0 fixed, 1 random, 2 choose in game, 3 choose before game (see StartPosX)
    mapname = __MAPNAME__;
	ishost = 1;
	numusers = 2;
    gametype = __BARVERSION__;
    GameStartDelay = 5;  // seconds before game starts after loading/placement
    myplayername = __PLAYERNAME__;
	nohelperais = 0;
}
	]],

}

return scenariodata

