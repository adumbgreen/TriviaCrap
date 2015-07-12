// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.etermax.o;
import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.b.c.a;
import org.b.c.a.f;
import org.b.c.a.h;
import org.b.c.a.i;
import org.b.c.c;

// Referenced classes of package com.etermax.tools.a.a:
//            a, d, e, h, 
//            g

class b
    implements h
{

    final com.etermax.tools.a.a.a a;

    private b(com.etermax.tools.a.a.a a1)
    {
        a = a1;
        super();
    }

    b(com.etermax.tools.a.a.a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public i a(org.b.c.h h1, byte abyte0[], f f1)
    {
        d d1;
        android.net.NetworkInfo.State state1;
        String s;
        c c1 = h1.d();
        java.util.Map.Entry entry;
        for (Iterator iterator = a.G().entrySet().iterator(); iterator.hasNext(); c1.c((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        c1.a(a.c);
        com.etermax.a.a.c("APIDataSource", h1.c().toString());
        long l;
        com.etermax.tools.a.a.h h2;
        ConnectivityManager connectivitymanager;
        android.net.NetworkInfo.State state;
        try
        {
            c1.c("User-Agent", (new StringBuilder()).append("Android/SDK-").append(android.os.Build.VERSION.SDK_INT).append("(").append(Build.MANUFACTURER).append(" ").append(Build.MODEL).append(") Package:").append(a.s.getPackageName()).append("/Version:").append(a.s.getPackageManager().getPackageInfo(a.s.getPackageName(), 0).versionName).toString());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            com.etermax.a.a.c("APIDataSource", "package could not be found");
            c1.c("User-Agent", (new StringBuilder()).append("Android/SDK-").append(android.os.Build.VERSION.SDK_INT).append("(").append(Build.MANUFACTURER).append(" ").append(Build.MODEL).append(") Package:").append(a.s.getPackageName()).append("/Version:NOT_FOUND").toString());
        }
        d1 = new d();
        s = ((com.etermax.tools.b)a.s).u();
        if (!s.equals("market_amazon")) goto _L2; else goto _L1
_L1:
        d1.a(e.d);
_L5:
        d1.a((new StringBuilder()).append(Build.MANUFACTURER).append(" ").append(Build.MODEL).toString());
        Exception exception;
        try
        {
            d1.a(com.etermax.a.b.f(a.s));
        }
        catch (Exception exception1)
        {
            com.etermax.a.a.b("APIDataSource", exception1.getMessage());
        }
        d1.b((new StringBuilder()).append("Android ").append(android.os.Build.VERSION.SDK_INT).toString());
        try
        {
            d1.b(a.t.c());
        }
        catch (Exception exception2)
        {
            com.etermax.a.a.b("APIDataSource", exception2.getMessage());
        }
        try
        {
            d1.c(a.s.getPackageManager().getPackageInfo(a.s.getPackageName(), 0).versionName);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1)
        {
            com.etermax.a.a.b("APIDataSource", "package could not be found");
        }
        d1.d(a.s.getResources().getString(o.lang_iso));
        d1.e(Locale.getDefault().getLanguage());
        d1.f(Locale.getDefault().getCountry());
        connectivitymanager = (ConnectivityManager)a.s.getSystemService("connectivity");
        state = connectivitymanager.getNetworkInfo(0).getState();
        state1 = connectivitymanager.getNetworkInfo(1).getState();
        if (state != android.net.NetworkInfo.State.CONNECTED && state != android.net.NetworkInfo.State.CONNECTING) goto _L4; else goto _L3
_L3:
        d1.c(false);
_L7:
        c1.c("Eter-Agent", d1.toString());
        com.etermax.a.a.c("APIDataSource", d1.toString());
        Exception exception3;
        try
        {
            l = System.currentTimeMillis();
            h2 = new com.etermax.tools.a.a.h(f1.a(h1, abyte0));
            a.u.a(h1, abyte0, h2, l);
        }
        catch (IOException ioexception)
        {
            a.u.a(h1, abyte0, ioexception);
            throw ioexception;
        }
        return h2;
_L2:
label0:
        {
            if (!s.equals("market_samsung"))
            {
                break label0;
            }
            d1.a(com.etermax.tools.a.a.e.c);
        }
          goto _L5
        try
        {
            d1.a(com.etermax.tools.a.a.e.a);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            com.etermax.a.a.b("APIDataSource", exception.getMessage());
        }
          goto _L5
_L4:
        if (state1 != android.net.NetworkInfo.State.CONNECTED && state1 != android.net.NetworkInfo.State.CONNECTING) goto _L7; else goto _L6
_L6:
        d1.c(true);
          goto _L7
        exception3;
        com.etermax.a.a.b("APIDataSource", "network type not detected");
          goto _L7
    }
}
