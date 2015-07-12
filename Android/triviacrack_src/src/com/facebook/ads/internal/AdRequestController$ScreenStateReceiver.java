// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.facebook.ads.internal:
//            AdRequestController

class <init> extends BroadcastReceiver
{

    final AdRequestController this$0;

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if ("android.intent.action.SCREEN_OFF".equals(s))
        {
            AdRequestController.access$600(AdRequestController.this, intent.getAction());
        } else
        if ("android.intent.action.SCREEN_ON".equals(s) && AdRequestController.access$700(AdRequestController.this) == 0)
        {
            scheduleRefresh(intent.getAction());
            return;
        }
    }

    private ()
    {
        this$0 = AdRequestController.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
