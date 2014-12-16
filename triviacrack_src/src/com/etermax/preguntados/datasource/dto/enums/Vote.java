// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class Vote extends Enum
{

    private static final Vote $VALUES[];
    public static final Vote NEGATIVE;
    public static final Vote POSITIVE;

    private Vote(String s, int i)
    {
        super(s, i);
    }

    public static Vote valueOf(String s)
    {
        return (Vote)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/Vote, s);
    }

    public static Vote[] values()
    {
        return (Vote[])$VALUES.clone();
    }

    static 
    {
        POSITIVE = new Vote("POSITIVE", 0);
        NEGATIVE = new Vote("NEGATIVE", 1);
        Vote avote[] = new Vote[2];
        avote[0] = POSITIVE;
        avote[1] = NEGATIVE;
        $VALUES = avote;
    }
}
