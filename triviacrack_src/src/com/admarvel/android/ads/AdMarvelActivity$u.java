// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelActivity, AdMarvelInterstitialAds, ab, AdMarvelAd, 
//            i

class c
    implements Runnable
{

    private String a;
    private final WeakReference b;
    private final AdMarvelAd c;

    public void run()
    {
        AdMarvelActivity admarvelactivity;
        if (b != null)
        {
            admarvelactivity = (AdMarvelActivity)b.get();
        } else
        {
            admarvelactivity = null;
        }
        if (admarvelactivity == null)
        {
            return;
        }
        if (!AdMarvelInterstitialAds.getEnableClickRedirect()) goto _L2; else goto _L1
_L1:
        if (a == null || !AdMarvelInterstitialAds.enableOfflineSDK || ab.e(a)) goto _L4; else goto _L3
_L3:
        Exception exception;
        if (URLUtil.isNetworkUrl(a) && ab.b(admarvelactivity, a))
        {
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            return;
        }
          goto _L5
_L2:
        AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
        return;
_L5:
        String s1 = c.getOfflinekeyUrl();
        if (ab.b(admarvelactivity, (new StringBuilder()).append(s1.substring(0, s1.lastIndexOf("/"))).append("/").append(a).toString()))
        {
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            return;
        }
          goto _L6
_L4:
        if (a != null && !ab.e(a) && ab.b(admarvelactivity, a))
        {
            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, a, c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            return;
        }
_L6:
        if (a != null && ab.a(a, "admarvelsdk") != a)
        {
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(a, "admarvelsdk", "", ab.a(a, "admarvelsdk"), admarvelactivity), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            return;
        }
        if (a != null && ab.a(a, "admarvelinternal") != a)
        {
            AdMarvelInterstitialAds.getListener().a(admarvelactivity, ab.a(a, "admarvelinternal", "", ab.a(a, "admarvelinternal"), admarvelactivity), c.getSiteId(), c.getId(), c.getTargetParams(), c.getIpAddress());
            (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            return;
        }
        try
        {
label0:
            {
                if (!ab.f(admarvelactivity) || a == null || ab.a(a, "admarvelvideo") == a)
                {
                    break label0;
                }
                String s = ab.a(a, "admarvelvideo", "http://", ab.a(a, "admarvelvideo"), admarvelactivity);
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.addFlags(0x10000000);
                intent2.setDataAndType(Uri.parse(s), "video/*");
                if (ab.a(admarvelactivity.getBaseContext(), intent2))
                {
                    admarvelactivity.startActivity(intent2);
                }
                (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append("Exception in RedirectRunnable ").toString());
        }
          goto _L2
        if (!ab.f(admarvelactivity) || a == null || ab.a(a, "admarvelexternal") == a) goto _L8; else goto _L7
_L7:
        Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(a, "admarvelexternal", "", ab.a(a, "admarvelexternal"), admarvelactivity)));
        intent1.addFlags(0x10000000);
        if (ab.a(admarvelactivity.getBaseContext(), intent1))
        {
            admarvelactivity.startActivity(intent1);
        }
        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
          goto _L2
_L8:
        if (!ab.f(admarvelactivity) || a == null || a.length() <= 0) goto _L2; else goto _L9
_L9:
        Intent intent;
        intent = new Intent(admarvelactivity.getBaseContext(), com/admarvel/android/ads/AdMarvelActivity);
        intent.addFlags(0x10000000);
        intent.putExtra("url", a);
        intent.putExtra("isInterstitial", false);
        intent.putExtra("isInterstitialClick", true);
        intent.putExtra("xml", AdMarvelActivity.e(admarvelactivity));
        intent.putExtra("GUID", AdMarvelActivity.c(admarvelactivity));
        c.removeNonStringEntriesTargetParam();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        objectoutputstream.writeObject(c);
        objectoutputstream.close();
        intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L10:
        if (admarvelactivity.f() != null)
        {
            intent.putExtra("source", AdMarvelActivity.t(admarvelactivity));
        }
        admarvelactivity.startActivity(intent);
        (new ab(admarvelactivity, AdMarvelActivity.f(admarvelactivity))).b(AdMarvelActivity.e(admarvelactivity));
          goto _L2
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L10
    }

    public lAds(String s, AdMarvelActivity admarvelactivity, AdMarvelAd admarvelad)
    {
        a = s;
        b = new WeakReference(admarvelactivity);
        c = admarvelad;
    }
}
