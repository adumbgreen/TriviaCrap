// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.Intent;
import android.webkit.URLUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, ab, o, AdMarvelInternalWebView, 
//            AdMarvelActivity, AdMarvelAd, s

class c
    implements Runnable
{

    private String a;
    private final WeakReference b;
    private final AdMarvelAd c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        for (admarvelwebview = (AdMarvelWebView)b.get(); admarvelwebview == null || a != null && URLUtil.isNetworkUrl(a) && !ab.f(admarvelwebview.getContext());)
        {
            return;
        }

        AdMarvelInternalWebView.a(admarvelwebview.e, (o)AdMarvelWebView.n(admarvelwebview).get());
        Intent intent = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
        intent.addFlags(0x10000000);
        intent.putExtra("expand_url", a);
        intent.putExtra("closeBtnEnabled", AdMarvelWebView.u(admarvelwebview));
        intent.putExtra("closeAreaEnabled", AdMarvelWebView.v(admarvelwebview));
        if (AdMarvelWebView.w(admarvelwebview))
        {
            intent.putExtra("orientationState", AdMarvelWebView.x(admarvelwebview));
        }
        intent.putExtra("isInterstitial", false);
        intent.putExtra("isInterstitialClick", false);
        intent.putExtra("source", AdMarvelWebView.i(admarvelwebview));
        intent.putExtra("GUID", admarvelwebview.e);
        c.removeNonStringEntriesTargetParam();
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(c);
            objectoutputstream.close();
            intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        admarvelwebview.getContext().startActivity(intent);
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a();
        }
        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
    }

    public bView(AdMarvelWebView admarvelwebview, String s1, AdMarvelAd admarvelad)
    {
        a = null;
        b = new WeakReference(admarvelwebview);
        a = s1;
        c = admarvelad;
    }
}
