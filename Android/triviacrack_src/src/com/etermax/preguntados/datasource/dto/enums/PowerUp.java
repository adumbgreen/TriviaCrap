// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class PowerUp extends Enum
{

    private static final PowerUp $VALUES[];
    public static final PowerUp BOMB;
    public static final PowerUp DOUBLE_CHANCE;
    public static final PowerUp EXTRA_TIME;
    public static final PowerUp SWAP_QUESTION;

    private PowerUp(String s, int i)
    {
        super(s, i);
    }

    public static PowerUp valueOf(String s)
    {
        return (PowerUp)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/PowerUp, s);
    }

    public static PowerUp[] values()
    {
        return (PowerUp[])$VALUES.clone();
    }

    static 
    {
        DOUBLE_CHANCE = new PowerUp("DOUBLE_CHANCE", 0);
        BOMB = new PowerUp("BOMB", 1);
        SWAP_QUESTION = new PowerUp("SWAP_QUESTION", 2);
        EXTRA_TIME = new PowerUp("EXTRA_TIME", 3);
        PowerUp apowerup[] = new PowerUp[4];
        apowerup[0] = DOUBLE_CHANCE;
        apowerup[1] = BOMB;
        apowerup[2] = SWAP_QUESTION;
        apowerup[3] = EXTRA_TIME;
        $VALUES = apowerup;
    }
}
