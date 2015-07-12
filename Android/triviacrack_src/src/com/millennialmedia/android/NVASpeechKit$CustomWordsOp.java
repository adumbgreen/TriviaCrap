// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


public final class  extends Enum
{

    public static final a Add;
    public static final a Remove;
    private static final a a[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/millennialmedia/android/NVASpeechKit$CustomWordsOp, s);
    }

    public static [] values()
    {
        return ([])a.clone();
    }

    static 
    {
        Add = new <init>("Add", 0);
        Remove = new <init>("Remove", 1);
        p_3B_.clone aclone[] = new <init>[2];
        aclone[0] = Add;
        aclone[1] = Remove;
        a = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
