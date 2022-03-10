/// @param gamepadIndex

function input_gamepad_is_connected(_index)
{
    if (_index < 0) return false;
    
    var _gamepad = global.__input_gamepads[_index];
    if (is_struct(_gamepad) && (_gamepad[$ "blacklisted"] == true))
    {
        return false;
    }
    
    return gamepad_is_connected(_index);
}
