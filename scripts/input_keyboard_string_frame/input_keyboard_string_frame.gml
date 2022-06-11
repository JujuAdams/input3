/// @desc    Returns the contents of the keyboard buffer from the last frame

function input_keyboard_string_frame()
{
    if (global.__input_keyboard_string_frame != global.__input_frame)
    {
        //Resolve buffer difference from last frame
        var _old = global.__input_keyboard_string_last;
        var _new = global.__input_keyboard_string;
    
        if (_old == _new)
        {
            //No change
            global.__input_keyboard_buffer = "";
        }
        else if (string_length(_old) == 0)
        {
            //Fully additive
            global.__input_keyboard_buffer = _new;
        }
        else if (string_pos(_old, _new) == 1)
        {
            //Paritally additive
            global.__input_keyboard_buffer = string_replace(_new, _old, "");
        }
        else
        {
            //Subtractive
            var _i = 1;
            var _new_length = string_length(_new);
            repeat(_new_length)
            {
                //Step left to right until character mismatch
                if (string_char_at(_new, _i) != string_char_at(_old, _i)) break;
                _i++;
            }
        
            if (_i == _new_length)
            {
                //Fully subtractive
                global.__input_keyboard_buffer = "";
            }
            else
            {
                //Partially subtractive
                global.__input_keyboard_buffer = string_copy(_new, _i, _new_length);
            }
        }
        
        //Match frame counter
        global.__input_keyboard_string_frame = global.__input_frame;
    }
    
    return global.__input_keyboard_buffer;
}
