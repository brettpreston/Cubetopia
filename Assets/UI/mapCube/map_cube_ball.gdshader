shader_type spatial;

uniform vec3 emission_color;
uniform float emission_brightness = 10.0;

void fragment() {
    vec3 color = emission_color;
	ALBEDO = vec3(1.0);
    EMISSION = emission_color.rgb;
}