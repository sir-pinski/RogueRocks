/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 065C8FAA
/// @DnDArgument : "var" "damage"
/// @DnDArgument : "value" "-gameManager.bulletDamage*random_range(0.8,1.2)"
var damage = -gameManager.bulletDamage*random_range(0.8,1.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D2C3302
/// @DnDArgument : "expr" "damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += damage;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 48CFB57C
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "var" "doober"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_damage_doober"
/// @DnDSaveInfo : "objectid" "obj_damage_doober"
var doober = instance_create_layer(other.x, other.y, "Instances", obj_damage_doober);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70A0CF08
/// @DnDArgument : "expr" "round(-damage)"
/// @DnDArgument : "var" "doober.text_value"
doober.text_value = round(-damage);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1AD92EC6
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2490FC41
/// @DnDArgument : "soundid" "crack_2"
/// @DnDArgument : "pitch" "random_range(0.8,1.1)"
/// @DnDSaveInfo : "soundid" "crack_2"
audio_play_sound(crack_2, 0, 0, 1.0, undefined, random_range(0.8,1.1));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 03840FE7
/// @DnDArgument : "expr" "hp <= 0"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3AA45340
	/// @DnDParent : 03840FE7
	/// @DnDArgument : "function" "destroyRock"
	destroyRock();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 210EB8C5
else
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 0A2671AC
	/// @DnDParent : 210EB8C5
	/// @DnDArgument : "x" "other.x"
	/// @DnDArgument : "y" "other.y"
	effect_create_below(0, other.x, other.y, 0, $FFFFFF & $ffffff);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 43CC1EA6
/// @DnDArgument : "expr" "hp <= 0.2 * max_hp"
if(hp <= 0.2 * max_hp)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 6B546CAF
	/// @DnDParent : 43CC1EA6
	/// @DnDArgument : "value" "4"
	/// @DnDArgument : "instvar" "11"
	image_index = 4;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0DA0F836
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6CA45B72
	/// @DnDParent : 0DA0F836
	/// @DnDArgument : "expr" "hp <= 0.4 * max_hp"
	if(hp <= 0.4 * max_hp)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6D01AA48
		/// @DnDParent : 6CA45B72
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "instvar" "11"
		image_index = 3;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 57017943
	/// @DnDParent : 0DA0F836
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6EFD225F
		/// @DnDParent : 57017943
		/// @DnDArgument : "expr" "hp <= 0.6 * max_hp"
		if(hp <= 0.6 * max_hp)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 73C61A77
			/// @DnDParent : 6EFD225F
			/// @DnDArgument : "value" "2"
			/// @DnDArgument : "instvar" "11"
			image_index = 2;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6C72D37D
		/// @DnDParent : 57017943
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 23AB14FA
			/// @DnDParent : 6C72D37D
			/// @DnDArgument : "expr" "hp <= 0.8 * max_hp"
			if(hp <= 0.8 * max_hp)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 24691280
				/// @DnDParent : 23AB14FA
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "instvar" "11"
				image_index = 1;
			}
		}
	}
}