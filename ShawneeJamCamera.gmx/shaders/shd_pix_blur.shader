//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 u_params;

void main()
{
    vec2 screenSize = u_params.xy;
    vec2 cellSize = u_params.zw;

    vec2 vTexPixels = v_vTexcoord * screenSize;
    vec2 vTexCells = floor((vTexPixels + 0.5*cellSize) / cellSize) * cellSize;
    vec2 texCoord = vTexCells / screenSize;
    
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, texCoord );
    //gl_FragColor.ba = vec2(0, 1);
}

