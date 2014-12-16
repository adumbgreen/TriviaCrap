// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;


public final class IntegrationType extends Enum
{

    private static final IntegrationType $VALUES[];
    public static final IntegrationType ADMOB;
    public static final IntegrationType DIRECT;
    private final String mName;

    private IntegrationType(String s, int i, String s1)
    {
        super(s, i);
        mName = s1;
    }

    public static IntegrationType valueOf(String s)
    {
        return (IntegrationType)Enum.valueOf(com/lifestreet/android/lsmsdk/IntegrationType, s);
    }

    public static IntegrationType[] values()
    {
        return (IntegrationType[])$VALUES.clone();
    }

    public String getName()
    {
        return mName;
    }

    static 
    {
        ADMOB = new IntegrationType("ADMOB", 0, "Admob_LSMSDK");
        DIRECT = new IntegrationType("DIRECT", 1, "LSMSDK");
        IntegrationType aintegrationtype[] = new IntegrationType[2];
        aintegrationtype[0] = ADMOB;
        aintegrationtype[1] = DIRECT;
        $VALUES = aintegrationtype;
    }
}
