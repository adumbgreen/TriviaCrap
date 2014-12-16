// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource.dto.enums;


public final class SpinType extends Enum
{

    private static final SpinType $VALUES[];
    public static final SpinType CROWN;
    public static final SpinType DUEL;
    public static final SpinType FINAL_DUEL;
    public static final SpinType NORMAL;

    private SpinType(String s, int i)
    {
        super(s, i);
    }

    public static SpinType valueOf(String s)
    {
        return (SpinType)Enum.valueOf(com/etermax/preguntados/datasource/dto/enums/SpinType, s);
    }

    public static SpinType[] values()
    {
        return (SpinType[])$VALUES.clone();
    }

    static 
    {
        NORMAL = new SpinType("NORMAL", 0);
        CROWN = new SpinType("CROWN", 1);
        DUEL = new SpinType("DUEL", 2);
        FINAL_DUEL = new SpinType("FINAL_DUEL", 3);
        SpinType aspintype[] = new SpinType[4];
        aspintype[0] = NORMAL;
        aspintype[1] = CROWN;
        aspintype[2] = DUEL;
        aspintype[3] = FINAL_DUEL;
        $VALUES = aspintype;
    }
}
