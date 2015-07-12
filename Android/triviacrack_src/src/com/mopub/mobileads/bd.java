// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ba

class bd extends ba
{

    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;

    bd()
    {
    }

    public String toJsonPair()
    {
        return (new StringBuilder()).append("supports: {sms: ").append(String.valueOf(a)).append(", ").append("tel: ").append(String.valueOf(b)).append(", ").append("calendar: ").append(String.valueOf(c)).append(", ").append("storePicture: ").append(String.valueOf(d)).append(", ").append("inlineVideo: ").append(String.valueOf(e)).append("}").toString();
    }

    public bd withCalendar(boolean flag)
    {
        c = flag;
        return this;
    }

    public bd withInlineVideo(boolean flag)
    {
        e = flag;
        return this;
    }

    public bd withSms(boolean flag)
    {
        a = flag;
        return this;
    }

    public bd withStorePicture(boolean flag)
    {
        d = flag;
        return this;
    }

    public bd withTel(boolean flag)
    {
        b = flag;
        return this;
    }
}
