/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EE73D7C
/// @DnDArgument : "var" "playerActive"
/// @DnDArgument : "value" "true"
if(playerActive == true)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1E2271BD
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "expr" "speed>=0.02"
	if(speed>=0.02)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3A1A69AD
		/// @DnDParent : 1E2271BD
		/// @DnDArgument : "value" "-gameManager.slowRate"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "3"
		speed += -gameManager.slowRate;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3B571D5F
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "key" "vk_up"
	var l3B571D5F_0;
	l3B571D5F_0 = keyboard_check(vk_up);
	if (l3B571D5F_0)
	{
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 72E21451
		/// @DnDParent : 3B571D5F
		/// @DnDArgument : "dir" "image_angle"
		/// @DnDArgument : "speed" "gameManager.thrustStrength"
		motion_add(image_angle, gameManager.thrustStrength);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 4EA3788E
		/// @DnDParent : 3B571D5F
		/// @DnDArgument : "value" "min(speed,5)"
		/// @DnDArgument : "instvar" "3"
		speed = min(speed,5);
	
		/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
		/// @DnDVersion : 1
		/// @DnDHash : 6E811EA4
		/// @DnDParent : 3B571D5F
		/// @DnDArgument : "type" "pt_thrust_poof"
		/// @DnDArgument : "mindir" "image_angle-175"
		/// @DnDArgument : "maxdir" "image_angle-185 "
		part_type_direction(pt_thrust_poof, image_angle-175, image_angle-185 , 0, 0);
	
		/// @DnDAction : YoYo Games.Particles.Part_Particles_Create
		/// @DnDVersion : 1
		/// @DnDHash : 6FB91104
		/// @DnDParent : 3B571D5F
		/// @DnDArgument : "x" "lengthdir_x(35,image_angle+180)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "lengthdir_y(35,image_angle+180)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "system" "ps_thrust"
		/// @DnDArgument : "type" "pt_thrust_poof"
		/// @DnDArgument : "number" "2"
		part_particles_create(ps_thrust, x + lengthdir_x(35,image_angle+180), y + lengthdir_y(35,image_angle+180), pt_thrust_poof, 2);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3BA3FA17
		/// @DnDParent : 3B571D5F
		/// @DnDArgument : "target" "thrust"
		/// @DnDArgument : "soundid" "snd_thrust"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "snd_thrust"
		thrust = audio_play_sound(snd_thrust, 0, 1, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
	/// @DnDVersion : 1
	/// @DnDHash : 631FCC10
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "key" "vk_up"
	var l631FCC10_0;
	l631FCC10_0 = keyboard_check_released(vk_up);
	if (l631FCC10_0)
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0CEA774A
		/// @DnDParent : 631FCC10
		/// @DnDArgument : "soundid" "snd_thrust"
		/// @DnDSaveInfo : "soundid" "snd_thrust"
		audio_stop_sound(snd_thrust);
	}

	/// @DnDAction : YoYo Games.Movement.Wrap_Room
	/// @DnDVersion : 1
	/// @DnDHash : 15A5B50D
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "margin" "10"
	move_wrap(1, 1, 10);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5C002BD6
	/// @DnDParent : 7EE73D7C
	var l5C002BD6_0;
	l5C002BD6_0 = keyboard_check(vk_space);
	if (l5C002BD6_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2CACDD35
		/// @DnDParent : 5C002BD6
		/// @DnDArgument : "expr" "gameManager.shotCurrCooling >= gameManager.shotCooldown"
		if(gameManager.shotCurrCooling >= gameManager.shotCooldown)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A854EFC
			/// @DnDParent : 2CACDD35
			/// @DnDArgument : "var" "gameManager.shotCurrCooling"
			gameManager.shotCurrCooling = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 199C5468
			/// @DnDParent : 2CACDD35
			/// @DnDArgument : "xpos" "lengthdir_x(20,image_angle)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "lengthdir_y(20,image_angle)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			instance_create_layer(x + lengthdir_x(20,image_angle), y + lengthdir_y(20,image_angle), "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 00B8417A
			/// @DnDParent : 2CACDD35
			/// @DnDArgument : "soundid" "snd_laser_2"
			/// @DnDArgument : "pitch" "random_range(0.5,2)"
			/// @DnDSaveInfo : "soundid" "snd_laser_2"
			audio_play_sound(snd_laser_2, 0, 0, 1.0, undefined, random_range(0.5,2));
		}
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0885049B
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "key" "vk_right"
	var l0885049B_0;
	l0885049B_0 = keyboard_check(vk_right);
	if (l0885049B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 185726E8
		/// @DnDParent : 0885049B
		/// @DnDArgument : "expr" "-gameManager.turnSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += -gameManager.turnSpeed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 33F74CA9
	/// @DnDParent : 7EE73D7C
	/// @DnDArgument : "key" "vk_left"
	var l33F74CA9_0;
	l33F74CA9_0 = keyboard_check(vk_left);
	if (l33F74CA9_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0700B106
		/// @DnDParent : 33F74CA9
		/// @DnDArgument : "expr" "gameManager.turnSpeed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += gameManager.turnSpeed;
	}
}