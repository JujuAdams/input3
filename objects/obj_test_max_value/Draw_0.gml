var _string = "";
_string += concat("Left  = ", input_binding_get_name(input_binding_get("left" )), "\n");
_string += concat("Right = ", input_binding_get_name(input_binding_get("right")), "\n");
_string += concat("Up    = ", input_binding_get_name(input_binding_get("up"   )), "\n");
_string += concat("Down  = ", input_binding_get_name(input_binding_get("down" )), "\n");
_string += "\n";
_string += concat("Left  = ", input_max_value("left" ), "\n");
_string += concat("Right = ", input_max_value("right"), "\n");
_string += concat("Up    = ", input_max_value("up"   ), "\n");
_string += concat("Down  = ", input_max_value("down" ), "\n");
draw_text(10, 10, _string);