// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.b.a:
//            o, at, q, au, 
//            p

public class as
    implements o
{

    static volatile Object a;
    private static final Object b = new Object();
    private final Context c;

    public as(Context context)
    {
        c = context.getApplicationContext();
    }

    private static void a(Context context)
    {
        if (a != null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        synchronized (b)
        {
            if (a == null)
            {
                a = at.a(context);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (IOException ioexception) { }
    }

    public p a(Uri uri, boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a(c);
        }
        HttpURLConnection httpurlconnection = a(uri);
        httpurlconnection.setUseCaches(true);
        if (flag)
        {
            httpurlconnection.setRequestProperty("Cache-Control", "only-if-cached,max-age=2147483647");
        }
        int i = httpurlconnection.getResponseCode();
        if (i >= 300)
        {
            httpurlconnection.disconnect();
            throw new q((new StringBuilder()).append(i).append(" ").append(httpurlconnection.getResponseMessage()).toString());
        } else
        {
            long l = httpurlconnection.getHeaderFieldInt("Content-Length", -1);
            boolean flag1 = au.a(httpurlconnection.getHeaderField("X-Android-Response-Source"));
            return new p(httpurlconnection.getInputStream(), flag1, l);
        }
    }

    protected HttpURLConnection a(Uri uri)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(uri.toString())).openConnection();
        httpurlconnection.setConnectTimeout(15000);
        httpurlconnection.setReadTimeout(20000);
        return httpurlconnection;
    }

}
