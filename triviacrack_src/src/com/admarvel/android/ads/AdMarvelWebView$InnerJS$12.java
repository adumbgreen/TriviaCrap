// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelInternalWebView, AdMarvelWebView

class val.callback
    implements android.content.ener
{

    final val.callback this$0;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final AdMarvelWebView val$adMarvelWebView;
    final String val$callback;
    final String val$redirectUrl;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (ac.a() < 8)
        {
            ess._mth4900(this._cls0.this).post(new this._cls0(val$adMarvelWebView, val$adMarvelInternalWebView, val$redirectUrl, val$callback));
            return;
        } else
        {
            ess._mth4900(this._cls0.this).post(new this._cls0(val$adMarvelWebView, val$adMarvelInternalWebView, val$redirectUrl, val$callback));
            return;
        }
    }

    _cls9()
    {
        this$0 = final__pcls9;
        val$adMarvelWebView = admarvelwebview;
        val$adMarvelInternalWebView = admarvelinternalwebview;
        val$redirectUrl = s;
        val$callback = String.this;
        super();
    }
}
