/// @desc    Returns characters typed since the last frame as a string

function input_keyboard_string_frame()
{
    if (global.__input_keyboard_string_frame != global.__input_frame)
    {
        //Update to latest frame
        global.__input_keyboard_string_change = "";
        var _old = global.__input_keyboard_string_last;
        var _new = global.__input_keyboard_string;

        if (_old != _new)
        {
            if (string_length(_old) == 0)
            {
                //Fully additive
                global.__input_keyboard_string_change = _new;
            }
            else if (string_pos(_old, _new) == 1)
            {
                //Paritally additive
                global.__input_keyboard_string_change = string_replace(_new, _old, "");
            }
            else
            {
                //Subtractive
                var _new_length = string_length(_new);
                var _i = 1;
                repeat(_new_length)
                {
                    //Step left to right until character mismatch
                    if (string_char_at(_new, _i) != string_char_at(_old, _i)) break;
                    ++_i;
                }

                if (_i < _new_length)
                {
                    //Partially subtractive
                    global.__input_keyboard_string_change = string_copy(_new, _i, _new_length);
                }
            }
        }
        
        //Match frame counter
        global.__input_keyboard_string_frame = global.__input_frame;
    }
    
    return global.__input_keyboard_string_change;
}
