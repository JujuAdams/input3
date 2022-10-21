function input_trigger_effect_get_state(_trigger, _player_index = 0)
{
    __input_initialize();
    __INPUT_VERIFY_PLAYER_INDEX

    if not ((_trigger == gp_shoulderlb) || (_trigger == gp_shoulderrb))
    {
        __input_error("Value ", _trigger ," not a gamepad trigger");
    }

    var _player  = global.__input_players[_player_index];
    var _gamepad = input_player_get_gamepad(_player_index);
    if not (_gamepad >= 0) return undefined;

    if (os_type == os_ps5)
    {
        if (_player.__trigger_effect_paused)
        {
            return INPUT_TRIGGER_STATE.EFFECT_INTERCEPTED;
        }
        
        return ps5_gamepad_get_trigger_effect_state(_gamepad, _trigger);
    }

    var _effect = undefined;
    if (_trigger == gp_shoulderlb)
    {
        if (_player.__trigger_intercepted_left || _player.__trigger_effect_paused)
        {
            return  INPUT_TRIGGER_STATE.EFFECT_INTERCEPTED;
        }
        
        _effect = _player.__trigger_effect_left;
    }
    else
    {
        if (_player.__trigger_intercepted_right || _player.__trigger_effect_paused)
        {
            return INPUT_TRIGGER_STATE.EFFECT_INTERCEPTED;
        }
        _effect = _player.__trigger_effect_right;
    }

    if not (is_struct(_effect)) return undefined;
    return _effect.__steam_get_state(_gamepad, _trigger);
}