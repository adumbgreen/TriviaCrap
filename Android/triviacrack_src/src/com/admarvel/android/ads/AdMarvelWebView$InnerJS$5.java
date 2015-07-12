// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelInternalWebView, AdMarvelWebView

class val.reminderoffset
    implements android.content.tener
{

    final val.reminderoffset this$0;
    final AdMarvelInternalWebView val$adMarvelInternalWebView;
    final AdMarvelWebView val$adMarvelWebView;
    final String val$allday;
    final String val$date;
    final String val$description;
    final String val$endDate;
    final String val$location;
    final int val$reminderoffset;
    final String val$title;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (ac.a() >= 14)
        {
            cess._mth4900(this._cls0.this).post(new this._cls0(val$adMarvelInternalWebView, val$adMarvelWebView, val$date, val$title, val$description, val$location, val$allday, val$endDate, val$reminderoffset));
            return;
        } else
        {
            cess._mth4900(this._cls0.this).post(new this._cls0(val$adMarvelInternalWebView, val$adMarvelWebView, val$date, val$title, val$description, val$location, val$allday, val$endDate, val$reminderoffset));
            return;
        }
    }

    ()
    {
        this$0 = final_;
        val$adMarvelInternalWebView = admarvelinternalwebview;
        val$adMarvelWebView = admarvelwebview;
        val$date = s;
        val$title = s1;
        val$description = s2;
        val$location = s3;
        val$allday = s4;
        val$endDate = s5;
        val$reminderoffset = I.this;
        super();
    }
}
