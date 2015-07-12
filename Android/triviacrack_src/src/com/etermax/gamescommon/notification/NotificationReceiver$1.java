// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.app.NotificationManager;
import android.content.Context;
import com.etermax.gamescommon.notification.a.a;

// Referenced classes of package com.etermax.gamescommon.notification:
//            g, NotificationReceiver, h

class a
    implements g
{

    final a a;
    final NotificationReceiver b;

    public void a(Context context, int i, android.support.v4.app.der der, h h)
    {
        a.a(der, h);
        ((NotificationManager)context.getSystemService("notification")).notify(i, der.build());
    }

    A(NotificationReceiver notificationreceiver, a a1)
    {
        b = notificationreceiver;
        a = a1;
        super();
    }
}
