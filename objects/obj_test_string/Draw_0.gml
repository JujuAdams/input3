draw_text(10, 10, test_string);

if ((blinker_tick div 20) mod 2)
{
    draw_text(string_width(string_copy(test_string, 1, caret_position)) + 5, 8, "|");
}
