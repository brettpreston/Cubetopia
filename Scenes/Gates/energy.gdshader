shader_type canvas_item;

varying vec2 custom_uv;

void fragment() {

custom_uv=UV;

float TME=TIME*2.0;      // double the speed.

float t=TME-trunc(TME);  // i need to get the floating point part of the time, i.e. part of the second.

float dy=float(round(t*16.0))/256.0;  // the vertical scrolling is loops every 16 pixels.
// pixel position in the texture is between 0 and 1, so i divide by 256

custom_uv.y+=dy; // update y position
// Output the texture color at the modified coordinates

COLOR = texture(TEXTURE, custom_uv);

}