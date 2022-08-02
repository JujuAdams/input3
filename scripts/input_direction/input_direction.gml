/// @desc    Returns the direction of the vector represented by the sum of the verb values
/// @param   {String} _verb_l
/// @param   {String} _verb_r
/// @param   {String} _verb_u
/// @param   {String} _verb_d
/// @param   {Real} _player_index
/// @param   {Bool} _most_recent

function input_direction(_verb_l, _verb_r, _verb_u, _verb_d, _player_index = undefined, _most_recent = false)
{
    var _result = input_xy(_verb_l, _verb_r, _verb_u, _verb_d, _player_index, _most_recent);
    if ((_result.x == 0) && (_result.y == 0)) return undefined;
    return point_direction(0, 0, _result.x, _result.y);
}