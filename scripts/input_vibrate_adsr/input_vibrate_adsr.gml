/// @desc    Vibrates a player's gampead over an ADSR curve
///          Units for the vibration duration are determined by INPUT_TIMER_MILLISECONDS
///          
/// @param   peakStrength
/// @param   sustainLevel
/// @param   pan
/// @param   attackTime
/// @param   decayTime
/// @param   sustainTime
/// @param   releaseTime
/// @param   [playerIndex=0]

function input_vibrate_adsr(_peak_strength, _sustain_level, _pan, _attack, _decay, _sustain, _release, _player_index = 0)
{
    if (global.__input_vibration_paused)
    {
        __input_trace("New ASDR vibration ignored: vibration is paused")
        exit;
    }
    
    __INPUT_VERIFY_PLAYER_INDEX
    
    _peak_strength = clamp(_peak_strength, 0, 1);
    _sustain_level = clamp(_sustain_level, 0, 1);
    _pan           = clamp(_pan, -1, 1);
    _attack        = max(_attack, 0);
    _decay         = max(_decay, 0);
    _sustain       = max(_sustain, 0);
    _release       = max(_release, 0);
    
    array_push(global.__input_players[_player_index].__vibration_event_array, new __input_class_vibration_adsr(_peak_strength, _sustain_level, _pan, _attack, _decay, _sustain, _release));
}
