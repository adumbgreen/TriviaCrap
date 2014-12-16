// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            ba

class bc extends ba
{

    private final MraidView.ViewState a;

    bc(MraidView.ViewState viewstate)
    {
        a = viewstate;
    }

    public static bc createWithViewState(MraidView.ViewState viewstate)
    {
        return new bc(viewstate);
    }

    public String toJsonPair()
    {
        return (new StringBuilder()).append("state: '").append(a.toString().toLowerCase()).append("'").toString();
    }
}
