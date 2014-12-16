// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


final class k extends Enum
{

    public static final k WEB_VIEW_DID_APPEAR;
    public static final k WEB_VIEW_DID_CLOSE;
    private static final k b[];
    private String a;

    private k(String s, int i, String s1)
    {
        super(s, i);
        a = s1;
    }

    public static k valueOf(String s)
    {
        return (k)Enum.valueOf(com/mopub/mobileads/k, s);
    }

    public static k[] values()
    {
        return (k[])b.clone();
    }

    protected String a()
    {
        return a;
    }

    static 
    {
        WEB_VIEW_DID_APPEAR = new k("WEB_VIEW_DID_APPEAR", 0, "javascript:webviewDidAppear();");
        WEB_VIEW_DID_CLOSE = new k("WEB_VIEW_DID_CLOSE", 1, "javascript:webviewDidClose();");
        k ak[] = new k[2];
        ak[0] = WEB_VIEW_DID_APPEAR;
        ak[1] = WEB_VIEW_DID_CLOSE;
        b = ak;
    }
}
