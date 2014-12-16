// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelActivity, AdMarvelInternalWebView

class val.description
    implements android.content.tialJS._cls3
{

    final val.description this$0;
    final AdMarvelActivity val$adMarvelActivity;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final String val$date;
    final String val$description;
    final String val$title;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (ac.a() >= 14)
        {
            AdMarvelActivity.f(val$adMarvelActivity).post(new val.adMarvelActivity(val$adMarvelInternalWebView, val$adMarvelActivity, val$date, val$title, val$description));
            return;
        } else
        {
            AdMarvelActivity.f(val$adMarvelActivity).post(new val.adMarvelActivity(val$adMarvelInternalWebView, val$adMarvelActivity, val$date, val$title, val$description));
            return;
        }
    }

    ()
    {
        this$0 = final_;
        val$adMarvelActivity = admarvelactivity;
        val$adMarvelInternalWebView = admarvelinternalwebview;
        val$date = s;
        val$title = s1;
        val$description = String.this;
        super();
    }
}
