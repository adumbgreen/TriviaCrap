// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class DuelPlayerStatus extends Enum
{

    private static final DuelPlayerStatus $VALUES[];
    public static final DuelPlayerStatus CHALLENGED;
    public static final DuelPlayerStatus CHALLENGER;

    private DuelPlayerStatus(String s, int i)
    {
        super(s, i);
    }

    public static DuelPlayerStatus valueOf(String s)
    {
        return (DuelPlayerStatus)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/DuelPlayerStatus, s);
    }

    public static DuelPlayerStatus[] values()
    {
        return (DuelPlayerStatus[])$VALUES.clone();
    }

    static 
    {
        CHALLENGER = new DuelPlayerStatus("CHALLENGER", 0);
        CHALLENGED = new DuelPlayerStatus("CHALLENGED", 1);
        DuelPlayerStatus aduelplayerstatus[] = new DuelPlayerStatus[2];
        aduelplayerstatus[0] = CHALLENGER;
        aduelplayerstatus[1] = CHALLENGED;
        $VALUES = aduelplayerstatus;
    }
}
