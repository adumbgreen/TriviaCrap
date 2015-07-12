// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

// Referenced classes of package com.mopub.mobileads:
//            aw

class ay extends BroadcastReceiver
{

    final aw a;
    private int b;
    private Context c;

    ay(aw aw1)
    {
        a = aw1;
        super();
    }

    private boolean a()
    {
        return c != null;
    }

    public void onReceive(Context context, Intent intent)
    {
        if (a() && intent.getAction().equals("android.intent.action.CONFIGURATION_CHANGED"))
        {
            int i = aw.c(a);
            if (i != b)
            {
                b = i;
                aw.a(a, b);
                return;
            }
        }
    }

    public void register(Context context)
    {
        c = context;
        context.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }

    public void unregister()
    {
        c.unregisterReceiver(this);
        c = null;
    }
}
