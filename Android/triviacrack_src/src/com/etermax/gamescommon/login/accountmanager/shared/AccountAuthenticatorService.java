// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.accountmanager.shared;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

// Referenced classes of package com.etermax.gamescommon.login.accountmanager.shared:
//            a

public class AccountAuthenticatorService extends Service
{

    private static a a = null;

    public AccountAuthenticatorService()
    {
    }

    private a a()
    {
        if (a == null)
        {
            a = new a(this);
        }
        return a;
    }

    public IBinder onBind(Intent intent)
    {
        boolean flag = intent.getAction().equals("android.accounts.AccountAuthenticator");
        IBinder ibinder = null;
        if (flag)
        {
            ibinder = a().getIBinder();
        }
        return ibinder;
    }

}
