// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.adm;

import android.content.Intent;
import com.amazon.device.messaging.ADMMessageHandlerBase;
import com.etermax.a.a;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.notification.f;

public class ADMMessageHandler extends ADMMessageHandlerBase
{

    public ADMMessageHandler()
    {
        super(com/etermax/gamescommon/notification/adm/ADMMessageHandler.getName());
    }

    protected void onMessage(Intent intent)
    {
        android.os.Bundle bundle = intent.getExtras();
        f.a(getApplicationContext(), bundle);
    }

    protected void onRegistered(String s)
    {
        d.b(getApplicationContext()).d(s);
        a.c("ADMMessageHandler", s);
    }

    protected void onRegistrationError(String s)
    {
        a.b("ADMMessageHandler", s);
    }

    protected void onUnregistered(String s)
    {
        a.c("ADMMessageHandler", s);
    }
}
