// github.com/markulie

Shader "markulie/Unlit"
{
    Properties
    {
        _Color ("Main Color (A=Opacity)", Color) = (1,1,1,1)
        _MainTex ("Base (A=Opacity)", 2D) = ""
    }

    Category
    {
        Tags
        {
            "Queue"="Transparent" "IgnoreProjector"="True"
        }

        ZWrite Off
        Blend SrcAlpha OneMinusSrcAlpha

        SubShader
        {
            Pass
            {
                SetTexture[_MainTex]
                {
                    Combine texture * constant ConstantColor[_Color]
                }
            }
        }
    }
}