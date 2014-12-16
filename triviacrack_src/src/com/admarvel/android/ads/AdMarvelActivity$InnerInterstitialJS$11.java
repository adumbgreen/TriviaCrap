// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelActivity, AdMarvelInternalWebView

class val.callback
    implements android.content.ialJS._cls11
{

    final val.callback this$0;
    final AdMarvelActivity val$adMarvelActivity;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final String val$callback;
    final String val$url;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (ac.a() < 8)
        {
            AdMarvelActivity.f(val$adMarvelActivity).post(new val.adMarvelActivity(val$adMarvelInternalWebView, val$url, val$callback));
            return;
        } else
        {
            AdMarvelActivity.f(val$adMarvelActivity).post(new val.adMarvelActivity(val$adMarvelInternalWebView, val$url, val$callback));
            return;
        }
    }

    ()
    {
        this$0 = final_;
        val$adMarvelActivity = admarvelactivity;
        val$adMarvelInternalWebView = admarvelinternalwebview;
        val$url = s;
        val$callback = String.this;
        super();
    }
}
