/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 20B6A527
/// @DnDInput : 2
/// @DnDArgument : "var" "stage"
/// @DnDArgument : "var_1" "points"
global.stage = 0;
global.points = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1C8567D8
/// @DnDArgument : "funcName" "newLevel"
function newLevel() 
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 01E2F2E2
	/// @DnDParent : 1C8567D8
	/// @DnDArgument : "room" "rm_level"
	/// @DnDSaveInfo : "room" "rm_level"
	room_goto(rm_level);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6AA57019
	/// @DnDParent : 1C8567D8
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "stage"
	global.stage += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 219FB2E4
	/// @DnDInput : 2
	/// @DnDParent : 1C8567D8
	/// @DnDArgument : "expr" "512"
	/// @DnDArgument : "expr_1" "512"
	/// @DnDArgument : "var" "inst_player.x"
	/// @DnDArgument : "var_1" "inst_player.y"
	inst_player.x = 512;
	inst_player.y = 512;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21E9652A
	/// @DnDParent : 1C8567D8
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "gameActive"
	gameActive = 1;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 51989984
	/// @DnDParent : 1C8567D8
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < global.stage"
	for(var i = 0; i < global.stage; i += 1) {
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0D6E0CCB
		/// @DnDParent : 51989984
		/// @DnDArgument : "xpos" "512+choose(-1,1)*random_range(200,500)"
		/// @DnDArgument : "ypos" "512+choose(-1,1)*random_range(200,500)"
		/// @DnDArgument : "objectid" "obj_rock_large"
		/// @DnDSaveInfo : "objectid" "obj_rock_large"
		instance_create_layer(512+choose(-1,1)*random_range(200,500), 512+choose(-1,1)*random_range(200,500), "Instances", obj_rock_large);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 14EAE9ED
/// @DnDArgument : "funcName" "newGame"
function newGame() 
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 45577BE6
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "room" "rm_level"
	/// @DnDSaveInfo : "room" "rm_level"
	room_goto(rm_level);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64039260
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "xpos" "512"
	/// @DnDArgument : "ypos" "512"
	/// @DnDArgument : "var" "inst_player"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDSaveInfo : "objectid" "obj_player"
	inst_player = instance_create_layer(512, 512, "Instances", obj_player);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1ABD9EEC
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "var" "shot_bar"
	/// @DnDArgument : "objectid" "obj_loading_bar"
	/// @DnDSaveInfo : "objectid" "obj_loading_bar"
	shot_bar = instance_create_layer(0, 0, "Instances", obj_loading_bar);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1574A93B
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "expr" "shotCooldown"
	/// @DnDArgument : "var" "shot_bar.max_value"
	shot_bar.max_value = shotCooldown;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4AF9D5DE
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "function" "newLevel"
	newLevel();

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AD99F0F
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "sound" "ElecAmbient_Galaxy_Main"
	/// @DnDArgument : "volume" "0.7"
	/// @DnDSaveInfo : "sound" "ElecAmbient_Galaxy_Main"
	audio_sound_gain(ElecAmbient_Galaxy_Main, 0.7, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1E28F01C
	/// @DnDParent : 14EAE9ED
	/// @DnDArgument : "target" "music"
	/// @DnDArgument : "soundid" "ElecAmbient_Galaxy_Main"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "ElecAmbient_Galaxy_Main"
	music = audio_play_sound(ElecAmbient_Galaxy_Main, 0, 1, 1.0, undefined, 1.0);
}