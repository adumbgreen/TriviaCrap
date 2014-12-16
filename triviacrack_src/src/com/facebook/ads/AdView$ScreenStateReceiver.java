// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.ads.internal.HtmlAdHandler;

// Referenced classes of package com.facebook.ads:
//            AdView

class <init> extends BroadcastReceiver
{

    final AdView this$0;

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()))
        {
            AdView.access$500(AdView.this).cancelImpressionRetry();
            return;
        } else
        {
            AdView.access$500(AdView.this).scheduleImpressionRetry();
            return;
        }
    }

    private ()
    {
        this$0 = AdView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
