// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


public final class a extends Enum
{

    public static final b ERROR;
    public static final b PROCESSING;
    public static final b READY;
    public static final b RECORDING;
    public static final b VOCALIZING;
    private static final b b[];
    private String a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/millennialmedia/android/NVASpeechKit$State, s);
    }

    public static a[] values()
    {
        return (a[])b.clone();
    }

    public String toString()
    {
        return a;
    }

    static 
    {
        ERROR = new <init>("ERROR", 0, "error");
        VOCALIZING = new <init>("VOCALIZING", 1, "vocalizing");
        RECORDING = new <init>("RECORDING", 2, "recording");
        READY = new <init>("READY", 3, "ready");
        PROCESSING = new <init>("PROCESSING", 4, "processing");
        a aa[] = new <init>[5];
        aa[0] = ERROR;
        aa[1] = VOCALIZING;
        aa[2] = RECORDING;
        aa[3] = READY;
        aa[4] = PROCESSING;
        b = aa;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }
}
