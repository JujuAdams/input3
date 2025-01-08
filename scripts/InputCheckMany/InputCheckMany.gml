// Feather disable all

/// Works similarly to `InputCheck()`; please see that function for a description of behavior.
/// This variant of `InputCheck()` optionally accepts arrays for both the verb and the player index
/// and will return `true` if any of the verbs are active for any of the players. You may use the
/// value `-1` for the `playerIndex` parameter to check for input across all players.
/// 
/// @param {Enum.INPUT_VERB,Real,Array} verbIndex
/// @param {Real,Array} [playerIndex=0]

function InputCheckMany(_verbIndexArray, _playerIndexArray = 0)
{
    static _playerArray = __InputSystemPlayerArray();
    
    if (is_array(_verbIndexArray))
    {
        var _v = 0;
        repeat(array_length(_verbIndexArray))
        {
            if (InputCheckMany(_verbIndexArray[_v], _playerIndexArray)) return true;
            ++_v;
        }
    }
    else //not is_array(_verbIndexArray)
    {
        if (is_array(_playerIndexArray))
        {
            var _p = 0;
            repeat(array_length(_playerIndexArray))
            {
                if (InputCheckMany(_verbIndexArray, _playerIndexArray[_p])) return true;
                ++_p;
            }
        }
        else if (_playerIndexArray == -1)
        {
            var _playerIndex = 0;
            repeat(INPUT_MAX_PLAYERS)
            {
                if (InputCheckMany(_verbIndexArray, _playerIndex)) return true;
                ++_playerIndex;
            }
        }
        else
        {
            return InputCheckMany(_verbIndexArray, _playerIndexArray);
        }
    }
    
    return false;
}