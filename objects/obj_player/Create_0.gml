/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DBE3B70
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "playerActive"
playerActive = true;

/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.2
/// @DnDHash : 0373E1C8
/// @DnDArgument : "var" "ps_thrust"
/// @DnDArgument : "persist" "1"
/// @DnDArgument : "partsys" "ParticleSystem1"
/// @DnDSaveInfo : "partsys" "ParticleSystem1"
ps_thrust = part_system_create_layer("Instances", 1, ParticleSystem1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 74A9B1E9
/// @DnDArgument : "var" "pt_thrust_poof"
pt_thrust_poof = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 31F922F7
/// @DnDArgument : "type" "pt_thrust_poof"
/// @DnDArgument : "shape" "pt_shape_smoke"
part_type_shape(pt_thrust_poof, pt_shape_smoke);

/// @DnDAction : YoYo Games.Particles.Part_Type_Orientation
/// @DnDVersion : 1
/// @DnDHash : 3ABE6080
/// @DnDArgument : "type" "pt_thrust_poof"
part_type_orientation(pt_thrust_poof, 0, 360, 0, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 3963647E
/// @DnDArgument : "type" "pt_thrust_poof"
/// @DnDArgument : "middle" ".8"
/// @DnDArgument : "end" "0"
part_type_alpha3(pt_thrust_poof, 1, .8, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 2DD185F4
/// @DnDArgument : "type" "pt_thrust_poof"
/// @DnDArgument : "minsize" "0.5"
/// @DnDArgument : "maxsize" "0.6  "
part_type_size(pt_thrust_poof, 0.5, 0.6  , 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 32DAD3E0
/// @DnDArgument : "type" "pt_thrust_poof"
/// @DnDArgument : "minspeed" "3"
/// @DnDArgument : "maxspeed" "4 "
part_type_speed(pt_thrust_poof, 3, 4 , 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 3C184092
/// @DnDArgument : "typ" "pt_thrust_poof"
/// @DnDArgument : "minlife" "20"
/// @DnDArgument : "maxlife" "30"
part_type_life(pt_thrust_poof, 20, 30);