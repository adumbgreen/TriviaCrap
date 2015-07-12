// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.app.IntentService;
import android.content.Intent;
import com.etermax.gamescommon.datasource.l;

public class ChatNotificationCleanningService extends IntentService
{

    protected l a;

    public ChatNotificationCleanningService()
    {
        super(com/etermax/gamescommon/notification/ChatNotificationCleanningService.getSimpleName());
    }

    protected void onHandleIntent(Intent intent)
    {
        int i = intent.getIntExtra("notiId", -1);
        if (i >= 0)
        {
            a.b(i);
        }
    }
}
