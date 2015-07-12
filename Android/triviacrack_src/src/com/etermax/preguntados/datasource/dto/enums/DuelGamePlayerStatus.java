// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class DuelGamePlayerStatus extends Enum
{

    private static final DuelGamePlayerStatus $VALUES[];
    public static final DuelGamePlayerStatus ENDED;
    public static final DuelGamePlayerStatus EXPIRED;
    public static final DuelGamePlayerStatus PENDING;
    public static final DuelGamePlayerStatus REJECTED;

    private DuelGamePlayerStatus(String s, int i)
    {
        super(s, i);
    }

    public static DuelGamePlayerStatus valueOf(String s)
    {
        return (DuelGamePlayerStatus)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus, s);
    }

    public static DuelGamePlayerStatus[] values()
    {
        return (DuelGamePlayerStatus[])$VALUES.clone();
    }

    static 
    {
        PENDING = new DuelGamePlayerStatus("PENDING", 0);
        ENDED = new DuelGamePlayerStatus("ENDED", 1);
        EXPIRED = new DuelGamePlayerStatus("EXPIRED", 2);
        REJECTED = new DuelGamePlayerStatus("REJECTED", 3);
        DuelGamePlayerStatus aduelgameplayerstatus[] = new DuelGamePlayerStatus[4];
        aduelgameplayerstatus[0] = PENDING;
        aduelgameplayerstatus[1] = ENDED;
        aduelgameplayerstatus[2] = EXPIRED;
        aduelgameplayerstatus[3] = REJECTED;
        $VALUES = aduelgameplayerstatus;
    }
}
