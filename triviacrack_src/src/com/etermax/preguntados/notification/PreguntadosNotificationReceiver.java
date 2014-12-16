// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification;

import android.content.Context;
import android.os.Bundle;
import com.etermax.gamescommon.notification.NotificationReceiver;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.h;
import com.etermax.preguntados.datasource.d;

// Referenced classes of package com.etermax.preguntados.notification:
//            c

public class PreguntadosNotificationReceiver extends NotificationReceiver
{

    d d;

    public PreguntadosNotificationReceiver()
    {
    }

    protected int a()
    {
        return h.ic_stat;
    }

    protected void a(Context context, Bundle bundle)
    {
        d.h();
        super.a(context, bundle);
    }

    protected a b(Context context, Bundle bundle)
    {
        return com.etermax.preguntados.notification.c.a(context, bundle);
    }
}
