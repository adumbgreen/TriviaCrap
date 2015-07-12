// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            fq

final class fr extends BroadcastReceiver
{

    private fr()
    {
    }

    fr(fq._cls1 _pcls1)
    {
        this();
    }

    public void onReceive(Context context, Intent intent)
    {
        if ("android.intent.action.USER_PRESENT".equals(intent.getAction()))
        {
            fq.a(true);
        } else
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction()))
        {
            fq.a(false);
            return;
        }
    }
}
