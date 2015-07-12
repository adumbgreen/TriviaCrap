// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import java.io.IOException;

// Referenced classes of package com.mologiq.analytics:
//            i, h, g

public class f
{

    public static f a;
    private final String b;
    private final boolean c;

    private f(Context context)
    {
        String s;
        boolean flag = true;
        super();
        try
        {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            Class.forName("com.google.android.gms.common.f");
            Class.forName("com.google.android.gms.common.g");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            flag = false;
        }
        if (flag)
        {
            i j = new i(this, context);
            b = i.a(j);
            c = j.a();
            return;
        }
        s = null;
        boolean flag2;
        h h1 = b(context);
        s = h1.a();
        flag2 = h1.a(true, context);
        boolean flag1 = flag2;
_L2:
        b = s;
        c = flag1;
        return;
        Exception exception;
        exception;
        flag1 = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static f a(Context context)
    {
        if (a == null)
        {
            a = new f(context);
        }
        return a;
    }

    private static h b(Context context)
    {
        g g1;
        if (Looper.myLooper() == Looper.getMainLooper())
        {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        Intent intent;
        h h1;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (Exception exception)
        {
            throw exception;
        }
        g1 = new g(null);
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (!context.bindService(intent, g1, 1))
        {
            break MISSING_BLOCK_LABEL_108;
        }
        h1 = new h(g1.a());
        context.unbindService(g1);
        return h1;
        Exception exception2;
        exception2;
        throw exception2;
        Exception exception1;
        exception1;
        context.unbindService(g1);
        throw exception1;
        throw new IOException("Google Play connection failed");
    }

    public static void c()
    {
        a = null;
    }

    public String a()
    {
        return b;
    }

    public boolean b()
    {
        return c;
    }
}
