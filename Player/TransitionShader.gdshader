shader_type canvas_item;

uniform float num_lines = 20.0;
uniform float y_threshold : hint_range(0.0, 1.0) = 0.5;
uniform vec4 line_color_a = vec4(0.557, 0.267, 0.678, 1.0); // #8E44AD (morado)
uniform vec4 line_color_b = vec4(0.329, 0.600, 0.780, 1.0); // #5499C7 (azul)

void fragment() {
    vec2 tiled_uv = vec2(fract(UV.x * num_lines / 2.0), UV.y);

    if (tiled_uv.x < 0.5) {
        if (tiled_uv.y < y_threshold) {
            COLOR = line_color_a; // Morado (#8E44AD)
        } else {
            COLOR = vec4(0.0);
        }
    } else {
        if (tiled_uv.y > 1.0 - y_threshold) {
            COLOR = line_color_b; // Azul (#5499C7)
        } else {
            COLOR = vec4(0.0);
        }
    }
}