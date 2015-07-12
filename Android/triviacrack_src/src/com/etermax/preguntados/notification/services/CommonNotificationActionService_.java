// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.services;

import android.content.Context;
import com.etermax.gamescommon.datasource.m;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.preguntados.datasource.e;

// Referenced classes of package com.etermax.preguntados.notification.services:
//            CommonNotificationActionService, a

public final class CommonNotificationActionService_ extends CommonNotificationActionService
{

    public CommonNotificationActionService_()
    {
    }

    public static a a(Context context)
    {
        return new a(context);
    }

    private void a()
    {
        b = m.a(this);
        a = e.a(this);
        c = b.a(this);
    }

    public void onCreate()
    {
        a();
        super.onCreate();
    }
}
