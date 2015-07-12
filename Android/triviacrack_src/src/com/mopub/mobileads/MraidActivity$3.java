// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            MraidActivity, k, MraidView, p

class aidListener extends aidListener
{

    final MraidActivity a;

    public void onClose(MraidView mraidview, ate ate)
    {
        MraidActivity.a(a).loadUrl(k.WEB_VIEW_DID_CLOSE.a());
        a.finish();
    }

    public void onOpen(MraidView mraidview)
    {
        p.a(a, a.a(), "com.mopub.action.interstitial.click");
    }

    public void onReady(MraidView mraidview)
    {
        MraidActivity.a(a).loadUrl(k.WEB_VIEW_DID_APPEAR.a());
        a.b();
    }

    ate(MraidActivity mraidactivity)
    {
        a = mraidactivity;
        super();
    }
}
