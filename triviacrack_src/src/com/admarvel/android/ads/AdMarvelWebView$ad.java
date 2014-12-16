// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import com.admarvel.android.util.Logging;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelView, ab, s, 
//            AdMarvelAd, AdMarvelVideoActivity, AdMarvelActivity

class c
    implements Runnable
{

    private String a;
    private final WeakReference b;
    private final AdMarvelAd c;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        Context context;
        try
        {
            admarvelwebview = (AdMarvelWebView)b.get();
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append(exception.getMessage()).append(" Exception in RedirectRunnable ").toString());
            return;
        }
        if (admarvelwebview == null)
        {
            return;
        }
        if (!AdMarvelWebView.g(admarvelwebview)) goto _L2; else goto _L1
_L1:
        context = admarvelwebview.getContext();
        if (!AdMarvelView.b || ab.e(a)) goto _L4; else goto _L3
_L3:
        if (!URLUtil.isNetworkUrl(a) || !ab.b(context, a)) goto _L6; else goto _L5
_L5:
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a(c, a);
            return;
        }
          goto _L7
_L6:
        String s2 = admarvelwebview.getAdMarvelAd().getOfflinekeyUrl();
        if (!ab.b(context, (new StringBuilder()).append(s2.substring(0, s2.lastIndexOf("/"))).append("/").append(a).toString())) goto _L9; else goto _L8
_L8:
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a(c, a);
            return;
        }
          goto _L7
_L4:
        if (ab.e(a) || !ab.b(admarvelwebview.getContext(), a)) goto _L9; else goto _L10
_L10:
        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a(c, a);
            return;
        }
          goto _L7
_L9:
        if (a != null && ab.a(a, "admarvelsdk") != a)
        {
            if (AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                AdMarvelWebView.a(admarvelwebview.e).a(c, ab.a(a, "admarvelsdk", "", ab.a(a, "admarvelsdk"), admarvelwebview.getContext()));
            }
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            return;
        }
        if (a != null && ab.a(a, "admarvelinternal") != a)
        {
            if (AdMarvelWebView.a(admarvelwebview.e) != null)
            {
                AdMarvelWebView.a(admarvelwebview.e).a(c, ab.a(a, "admarvelinternal", "", ab.a(a, "admarvelinternal"), admarvelwebview.getContext()));
            }
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            return;
        }
        if (!ab.f(context) || a == null || ab.a(a, "admarvelvideo") == a) goto _L12; else goto _L11
_L11:
        String s1 = ab.a(a, "admarvelvideo", "http://", ab.a(a, "admarvelvideo"), admarvelwebview.getContext());
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.addFlags(0x10000000);
        intent3.setDataAndType(Uri.parse(s1), "video/*");
        if (ab.a(admarvelwebview.getContext(), intent3))
        {
            admarvelwebview.getContext().startActivity(intent3);
        }
        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
_L2:
        if (AdMarvelWebView.a(admarvelwebview.e) != null)
        {
            AdMarvelWebView.a(admarvelwebview.e).a(c, a);
            return;
        }
          goto _L7
_L12:
        if (ab.f(context) && a != null && ab.a(a, "admarvelexternal") != a)
        {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(ab.a(a, "admarvelexternal", "", ab.a(a, "admarvelexternal"), admarvelwebview.getContext())));
            intent2.addFlags(0x10000000);
            if (ab.a(admarvelwebview.getContext(), intent2))
            {
                admarvelwebview.getContext().startActivity(intent2);
            }
            (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
            continue; /* Loop/switch isn't completed */
        }
        Intent intent1;
        if (!ab.f(context) || a == null || ab.a(a, "admarvelcustomvideo") == a)
        {
            break MISSING_BLOCK_LABEL_964;
        }
        intent1 = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelVideoActivity);
        intent1.addFlags(0x10000000);
        c.removeNonStringEntriesTargetParam();
        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(bytearrayoutputstream1);
        objectoutputstream1.writeObject(c);
        objectoutputstream1.close();
        intent1.putExtra("serialized_admarvelad", bytearrayoutputstream1.toByteArray());
_L13:
        intent1.putExtra("url", a);
        intent1.putExtra("isCustomUrl", true);
        intent1.putExtra("xml", AdMarvelWebView.h(admarvelwebview));
        intent1.putExtra("source", AdMarvelWebView.i(admarvelwebview));
        intent1.putExtra("GUID", admarvelwebview.e);
        admarvelwebview.getContext().startActivity(intent1);
        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
        continue; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        ioexception1.printStackTrace();
          goto _L13
        Intent intent;
        if (!ab.f(context) || a == null || a.length() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        intent = new Intent(admarvelwebview.getContext(), com/admarvel/android/ads/AdMarvelActivity);
        intent.addFlags(0x10000000);
        intent.putExtra("url", a);
        intent.putExtra("isInterstitial", false);
        intent.putExtra("isInterstitialClick", false);
        intent.putExtra("xml", AdMarvelWebView.h(admarvelwebview));
        intent.putExtra("source", AdMarvelWebView.i(admarvelwebview));
        intent.putExtra("GUID", admarvelwebview.e);
        c.removeNonStringEntriesTargetParam();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
        objectoutputstream.writeObject(c);
        objectoutputstream.close();
        intent.putExtra("serialized_admarvelad", bytearrayoutputstream.toByteArray());
_L14:
        admarvelwebview.getContext().startActivity(intent);
        (new ab(admarvelwebview.getContext(), AdMarvelWebView.d(admarvelwebview))).b(AdMarvelWebView.h(admarvelwebview));
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L14; else goto _L7
_L7:
        return;
        if (true) goto _L2; else goto _L15
_L15:
    }

    public ty(String s1, AdMarvelWebView admarvelwebview, AdMarvelAd admarvelad)
    {
        a = s1;
        b = new WeakReference(admarvelwebview);
        c = admarvelad;
    }
}
