// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.mediation;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES admob;
    public static final .VALUES disabled;
    public static final .VALUES mopub;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/etermax/gamescommon/mediation/MediationManager$AdMediatorType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        admob = new <init>("admob", 0);
        mopub = new <init>("mopub", 1);
        disabled = new <init>("disabled", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = admob;
        aclone[1] = mopub;
        aclone[2] = disabled;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
