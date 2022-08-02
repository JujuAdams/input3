/// @desc    Returns whether any of the player’s sources are connected and available for use
/// @param   {Real} _player_index

function input_player_connected(_player_index = 0)
{
	__input_initialize();
    __INPUT_VERIFY_PLAYER_INDEX
    
    return global.__input_players[_player_index].__connected;
}