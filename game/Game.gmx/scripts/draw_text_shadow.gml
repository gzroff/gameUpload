// args: x, y, text, text_color, shadow_size, shadow_color, alpha
for (var i = 0; i <= argument4; i++) {
    draw_text_color(argument0 + (argument4 - i), argument1 +  (argument4 - i), argument2, argument5,
        argument5, argument5, argument5, argument6 * (i * 0.25));
}

draw_text_color(argument0, argument1, argument2, argument3,
    argument3, argument3, argument3, argument6);
