/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 414AB45F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)upgrade_grid = load_csv(working_directory+"upgrades.txt");$(13_10)//var ww = ds_grid_width(file_grid);$(13_10)//var hh = ds_grid_height(file_grid);$(13_10)$(13_10)//upgrades_array = [];$(13_10)$(13_10)//for (var i = 0; i < ww; i++;)$(13_10)//{$(13_10)//    for (var j = 0; j < hh; j++;)$(13_10)//    {$(13_10)//        upgrades_array[i,j] = upgrade_grid[# i, j];$(13_10)//    }$(13_10)//}$(13_10)"
/// @description Execute Code
upgrade_grid = load_csv(working_directory+"upgrades.txt");
//var ww = ds_grid_width(file_grid);
//var hh = ds_grid_height(file_grid);

//upgrades_array = [];

//for (var i = 0; i < ww; i++;)
//{
//    for (var j = 0; j < hh; j++;)
//    {
//        upgrades_array[i,j] = upgrade_grid[# i, j];
//    }
//}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4064F26E
/// @DnDArgument : "expr" " ds_grid_height(upgrade_grid)"
/// @DnDArgument : "var" "upgrade_count"
upgrade_count =  ds_grid_height(upgrade_grid);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 20B88DBE
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < upgrade_count"
for(var i = 0; i < upgrade_count; i += 1) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73205A40
	/// @DnDInput : 9
	/// @DnDParent : 20B88DBE
	/// @DnDArgument : "expr" "instance_create_layer(-100, -100, "Instances", obj_upgrade_details)"
	/// @DnDArgument : "expr_1" "upgrade_grid[# 0, i]"
	/// @DnDArgument : "expr_2" "upgrade_grid[# 1, i]"
	/// @DnDArgument : "expr_3" "upgrade_grid[# 2, i]"
	/// @DnDArgument : "expr_4" "upgrade_grid[# 3, i]"
	/// @DnDArgument : "expr_5" "upgrade_grid[# 4, i]"
	/// @DnDArgument : "expr_6" "-500"
	/// @DnDArgument : "expr_7" "-500"
	/// @DnDArgument : "expr_8" "i"
	/// @DnDArgument : "var" "upgrade_list[i]"
	/// @DnDArgument : "var_1" "upgrade_list[i].title"
	/// @DnDArgument : "var_2" "upgrade_list[i].description"
	/// @DnDArgument : "var_3" "upgrade_list[i].effect"
	/// @DnDArgument : "var_4" "upgrade_list[i].strength"
	/// @DnDArgument : "var_5" "upgrade_list[i].level"
	/// @DnDArgument : "var_6" "upgrade_list[i].x"
	/// @DnDArgument : "var_7" "upgrade_list[i].y"
	/// @DnDArgument : "var_8" "upgrade_list[i].upgrade_id"
	upgrade_list[i] = instance_create_layer(-100, -100, "Instances", obj_upgrade_details);
	upgrade_list[i].title = upgrade_grid[# 0, i];
	upgrade_list[i].description = upgrade_grid[# 1, i];
	upgrade_list[i].effect = upgrade_grid[# 2, i];
	upgrade_list[i].strength = upgrade_grid[# 3, i];
	upgrade_list[i].level = upgrade_grid[# 4, i];
	upgrade_list[i].x = -500;
	upgrade_list[i].y = -500;
	upgrade_list[i].upgrade_id = i;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 667DC73D
/// @DnDArgument : "funcName" "selectUpgrades"
function selectUpgrades() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CB2F835
	/// @DnDInput : 2
	/// @DnDParent : 667DC73D
	/// @DnDArgument : "var" "picked_upgrades"
	/// @DnDArgument : "value" "[]"
	/// @DnDArgument : "var_1" "found_upgrade"
	/// @DnDArgument : "value_1" "false"
	var picked_upgrades = [];
	var found_upgrade = false;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7F26DCFF
	/// @DnDParent : 667DC73D
	/// @DnDArgument : "cond" "i <3"
	for(i = 0; i <3; i += 1) {
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 512D4960
		/// @DnDParent : 7F26DCFF
		/// @DnDArgument : "var" "found_upgrade"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "true"
		while (!(found_upgrade == true)) {
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 17BA62E7
			/// @DnDParent : 512D4960
			/// @DnDArgument : "var" "upgrade_num"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "1"
			/// @DnDArgument : "max" "upgrade_count-1"
			var upgrade_num = floor(random_range(1, upgrade_count-1 + 1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16698113
			/// @DnDParent : 512D4960
			/// @DnDArgument : "expr" "!array_contains(picked_upgrades,upgrade_num)"
			/// @DnDArgument : "var" "found_upgrade"
			found_upgrade = !array_contains(picked_upgrades,upgrade_num);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03A65766
		/// @DnDInput : 4
		/// @DnDParent : 7F26DCFF
		/// @DnDArgument : "expr" "upgrade_num"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "expr_2" "512-upgrade_list[i].sprite_width*(1.1)*(1.5-i)"
		/// @DnDArgument : "expr_3" "200"
		/// @DnDArgument : "var" "picked_upgrades[i]"
		/// @DnDArgument : "var_1" "found_upgrade"
		/// @DnDArgument : "var_2" "upgrade_list[upgrade_num].x"
		/// @DnDArgument : "var_3" "upgrade_list[upgrade_num].y"
		picked_upgrades[i] = upgrade_num;
		found_upgrade = false;
		upgrade_list[upgrade_num].x = 512-upgrade_list[i].sprite_width*(1.1)*(1.5-i);
		upgrade_list[upgrade_num].y = 200;
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 06FEA201
/// @DnDArgument : "function" "selectUpgrades"
selectUpgrades();