// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


public final class a extends Enum
{

    public static final b CALL_TO_ACTION_TEXT;
    public static final b ICON_IMAGE;
    public static final b MAIN_IMAGE;
    public static final b STAR_RATING;
    public static final b TEXT;
    public static final b TITLE;
    private static final b b[];
    private final String a;

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/mopub/nativeads/RequestParameters$NativeAdAsset, s);
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
        TITLE = new <init>("TITLE", 0, "title");
        TEXT = new <init>("TEXT", 1, "text");
        ICON_IMAGE = new <init>("ICON_IMAGE", 2, "iconimage");
        MAIN_IMAGE = new <init>("MAIN_IMAGE", 3, "mainimage");
        CALL_TO_ACTION_TEXT = new <init>("CALL_TO_ACTION_TEXT", 4, "ctatext");
        STAR_RATING = new <init>("STAR_RATING", 5, "starrating");
        a aa[] = new <init>[6];
        aa[0] = TITLE;
        aa[1] = TEXT;
        aa[2] = ICON_IMAGE;
        aa[3] = MAIN_IMAGE;
        aa[4] = CALL_TO_ACTION_TEXT;
        aa[5] = STAR_RATING;
        b = aa;
    }

    private _cls9(String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }
}
