// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.notification.services;

import android.app.IntentService;
import android.content.Intent;
import com.etermax.a.a;
import com.etermax.gamescommon.datasource.l;
import com.etermax.preguntados.datasource.d;

public class CommonNotificationActionService extends IntentService
{

    protected d a;
    protected l b;
    protected com.etermax.gamescommon.login.datasource.a c;

    public CommonNotificationActionService()
    {
        super(com/etermax/preguntados/notification/services/CommonNotificationActionService.getSimpleName());
    }

    protected void onHandleIntent(Intent intent)
    {
        intent.getIntExtra("action", -1);
        JVM INSTR tableswitch 0 0: default 24
    //                   0 48;
           goto _L1 _L2
_L1:
        int i = intent.getIntExtra("notiId", -1);
        if (i >= 0)
        {
            b.b(i);
        }
        return;
_L2:
        long l1 = intent.getLongExtra("gameId", -1L);
        if (l1 >= 0L)
        {
            try
            {
                a.b((int)l1);
            }
            catch (Exception exception)
            {
                com.etermax.a.a.a("CommonNotificationActionService", "REJECT_GAME_ACTION", exception);
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
