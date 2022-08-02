/// @desc    Outputs a string or struct containing the bindings, profiles and axis thresholds of the given player
/// @param   {Real} _player_index
/// @param   {Bool} _output_string
/// @param   {Bool} _prettify

function input_player_export(_player_index = 0, _output_string = true, _prettify = false)
{
	__input_initialize();
    __INPUT_VERIFY_PLAYER_INDEX
    
    return global.__input_players[_player_index].__export(_output_string, _prettify);
}