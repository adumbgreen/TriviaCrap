// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;

// Referenced classes of package com.mopub.mobileads:
//            MraidView, aw, az, bg

class bf extends WebViewClient
{

    final MraidView a;

    private bf(MraidView mraidview)
    {
        a = mraidview;
        super();
    }

    bf(MraidView mraidview, MraidView._cls1 _pcls1)
    {
        this(mraidview);
    }

    public void onLoadResource(WebView webview, String s)
    {
        Log.d("MraidView", (new StringBuilder()).append("Loaded resource: ").append(s).toString());
    }

    public void onPageFinished(WebView webview, String s)
    {
        if (!MraidView.b(a))
        {
            MraidView.c(a).a();
            a.a(az.createWithType(MraidView.d(a)));
            a.a();
            if (a.getMraidListener() != null)
            {
                a.getMraidListener().onReady(a);
            }
            MraidView mraidview = a;
            boolean flag;
            if (a.getVisibility() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            MraidView.a(mraidview, flag);
            a.a(bg.createWithViewable(MraidView.e(a)));
            MraidView.b(a, true);
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Log.d("MraidView", (new StringBuilder()).append("Error: ").append(s).toString());
        super.onReceivedError(webview, i, s, s1);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        String s1 = Uri.parse(s).getScheme();
        if ("mopub".equals(s1))
        {
            return true;
        }
        if ("mraid".equals(s1))
        {
            MraidView.a(a, URI.create(s));
            return true;
        }
        if (a.wasClicked())
        {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(s));
            intent.addFlags(0x10000000);
            try
            {
                a.getContext().startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                return false;
            }
            return true;
        } else
        {
            return false;
        }
    }
}
