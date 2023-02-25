/// @desc    Creates a custom profile for the player. This profile contains empty bindings for all verbs
/// @param   profileName
/// @param   [playerIndex=0]

function input_profile_create(_profile_name, _player_index = 0)
{
    static _global = __input_state();
    __INPUT_VERIFY_PLAYER_INDEX
    
    return global.__input_players[_player_index].__profile_create(_profile_name);
}