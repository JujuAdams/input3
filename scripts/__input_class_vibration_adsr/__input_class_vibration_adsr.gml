function __input_class_vibration_adsr(_peak_strength, _sustain_level, _pan, _attack, _decay, _sustain, _release) constructor
{
    __output_left  = 0;
    __output_right = 0;
    
    __strength_left  = _strength*clamp(1 - _pan, 0, 1);
    __strength_right = _strength*clamp(1 + _pan, 0, 1);
    __sustain_level  = _sustain_level;
    __pan            = _pan;
    
    __attack  = _attack;
    __decay   = _decay;
    __sustain = _sustain;
    __release = _release;
    
    __phase         = 0;
    __time_in_phase = 0;
    
    static __tick = function(_time_step)
    {
        __time_in_phase += _time_step;
        
        var _min        = 0;
        var _max        = 0;
        var _phase_time = infinity;
        switch(__phase)
        {
            case 0: //Attack
                _min        = 0;
                _max        = 1;
                _phase_time = __attack;
            break;
            
            case 1: //Decay
                _min        = 1;
                _max        = __sustain_level;
                _phase_time = __decay;
            break;
            
            case 2: //Sustain
                _min        = __sustain_level;
                _max        = __sustain_level;
                _phase_time = __sustain;
            break;
            
            case 3: //Release
                _min        = __sustain_level;
                _max        = 0;
                _phase_time = __release;
            break;
        }
        
        var _output = lerp(_min, _max, clamp(__time_in_phase / _phase_time, 0, 1));
        
        __input_trace(__phase, ": time = ", __time_in_phase, ", output = ", _output);
        
        __output_left  = _output*__strength_left;
        __output_right = _output*__strength_right;
        
        __time_in_phase += _time_step;
        if (__time_in_phase > _phase_time)
        {
            __time_in_phase -= _phase_time;
            ++__phase;
        }
        
        return (__phase <= 3);
    }
}