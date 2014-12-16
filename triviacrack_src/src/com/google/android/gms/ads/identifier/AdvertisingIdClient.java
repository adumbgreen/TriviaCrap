// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.f;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.iw;
import com.google.android.gms.internal.ix;
import java.io.IOException;

public final class AdvertisingIdClient
{

    public AdvertisingIdClient()
    {
    }

    static Info a(Context context, j j1)
    {
        Info info;
        iw iw1 = ix.a(j1.a());
        info = new Info(iw1.a(), iw1.a(true));
        try
        {
            context.unbindService(j1);
        }
        catch (IllegalArgumentException illegalargumentexception1)
        {
            Log.i("AdvertisingIdClient", "getAdvertisingIdInfo unbindService failed.", illegalargumentexception1);
            return info;
        }
        return info;
        RemoteException remoteexception;
        remoteexception;
        Log.i("AdvertisingIdClient", "GMS remote exception ", remoteexception);
        throw new IOException("Remote exception");
        Exception exception;
        exception;
        InterruptedException interruptedexception;
        try
        {
            context.unbindService(j1);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.i("AdvertisingIdClient", "getAdvertisingIdInfo unbindService failed.", illegalargumentexception);
        }
        throw exception;
        interruptedexception;
        throw new IOException("Interrupted exception");
    }

    static j g(Context context)
    {
        j j1;
        Intent intent;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new f(9);
        }
        try
        {
            GooglePlayServicesUtil.w(context);
        }
        catch (f f1)
        {
            throw new IOException(f1);
        }
        j1 = new j();
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, j1, 1))
        {
            return j1;
        } else
        {
            throw new IOException("Connection failure");
        }
    }

    public static Info getAdvertisingIdInfo(Context context)
    {
        ib.b("Calling this from your main thread can lead to deadlock");
        return a(context, g(context));
    }

    private class Info
    {

        private final String a;
        private final boolean b;

        public String getId()
        {
            return a;
        }

        public boolean isLimitAdTrackingEnabled()
        {
            return b;
        }

        public Info(String s, boolean flag)
        {
            a = s;
            b = flag;
        }
    }

}
