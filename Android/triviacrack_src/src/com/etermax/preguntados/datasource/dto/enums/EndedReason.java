// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class EndedReason extends Enum
{

    private static final EndedReason $VALUES[];
    public static final EndedReason EXPIRED;
    public static final EndedReason FINAL_DUEL;
    public static final EndedReason NORMAL;
    public static final EndedReason REJECTED;
    public static final EndedReason RESIGNED;

    private EndedReason(String s, int i)
    {
        super(s, i);
    }

    public static EndedReason valueOf(String s)
    {
        return (EndedReason)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/EndedReason, s);
    }

    public static EndedReason[] values()
    {
        return (EndedReason[])$VALUES.clone();
    }

    static 
    {
        EXPIRED = new EndedReason("EXPIRED", 0);
        RESIGNED = new EndedReason("RESIGNED", 1);
        REJECTED = new EndedReason("REJECTED", 2);
        NORMAL = new EndedReason("NORMAL", 3);
        FINAL_DUEL = new EndedReason("FINAL_DUEL", 4);
        EndedReason aendedreason[] = new EndedReason[5];
        aendedreason[0] = EXPIRED;
        aendedreason[1] = RESIGNED;
        aendedreason[2] = REJECTED;
        aendedreason[3] = NORMAL;
        aendedreason[4] = FINAL_DUEL;
        $VALUES = aendedreason;
    }
}
