// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.gcm;

import android.content.Context;
import android.content.Intent;
import com.etermax.a.a;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.notification.f;
import com.google.android.gcm.GCMBaseIntentService;

// Referenced classes of package com.etermax.gamescommon.notification.gcm:
//            b

public class GCMIntentService extends GCMBaseIntentService
{

    public GCMIntentService()
    {
    }

    protected void a(Context context, Intent intent)
    {
        f.a(context, intent.getExtras());
    }

    protected void a(Context context, String s)
    {
        com.etermax.a.a.c("GCMIntentService", s);
    }

    protected String[] a(Context context)
    {
        String as[] = new String[1];
        as[0] = ((b)getApplication()).i();
        return as;
    }

    protected void b(Context context, String s)
    {
        d.b(context).d(s);
    }

    protected void c(Context context, String s)
    {
    }
}
