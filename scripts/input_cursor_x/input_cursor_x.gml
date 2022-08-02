/// @desc    Returns the x-coordinate of the player's cursor
/// @param   {Real} _player_index

function input_cursor_x(_player_index = 0)
{
    __INPUT_VERIFY_PLAYER_INDEX
    
    return global.__input_players[_player_index].__cursor.__x;
}