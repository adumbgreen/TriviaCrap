// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.OkUrlFactory;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.b.a:
//            o, au, q, p

public class z
    implements o
{

    private final OkUrlFactory a;

    public z(Context context)
    {
        this(au.b(context));
    }

    public z(OkHttpClient okhttpclient)
    {
        a = new OkUrlFactory(okhttpclient);
    }

    public z(File file)
    {
        this(file, au.a(file));
    }

    public z(File file, long l)
    {
        this(new OkHttpClient());
        try
        {
            a.client().setCache(new Cache(file, l));
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public p a(Uri uri, boolean flag)
    {
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
        }
        String s = httpurlconnection.getHeaderField("OkHttp-Response-Source");
        if (s == null)
        {
            s = httpurlconnection.getHeaderField("X-Android-Response-Source");
        }
        long l = httpurlconnection.getHeaderFieldInt("Content-Length", -1);
        boolean flag1 = au.a(s);
        return new p(httpurlconnection.getInputStream(), flag1, l);
    }

    protected HttpURLConnection a(Uri uri)
    {
        HttpURLConnection httpurlconnection = a.open(new URL(uri.toString()));
        httpurlconnection.setConnectTimeout(15000);
        httpurlconnection.setReadTimeout(20000);
        return httpurlconnection;
    }
}
