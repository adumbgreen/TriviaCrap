// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.mobileapptracker:
//            h

final class u extends BroadcastReceiver
{

    final h a;

    u(h h1)
    {
        a = h1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (a.c)
        {
            a.b();
        }
    }
}
