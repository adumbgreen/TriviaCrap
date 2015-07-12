// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import org.b.c.f;
import org.b.d.a;

// Referenced classes of package org.b.c.a:
//            g, p, s, e

public class q
    implements g
{

    private Proxy a;
    private boolean b;
    private int c;
    private int d;
    private int e;

    public q()
    {
        b = true;
        c = 0;
        d = -1;
        e = -1;
    }

    protected HttpURLConnection a(URL url, Proxy proxy)
    {
        java.net.URLConnection urlconnection;
        if (proxy != null)
        {
            urlconnection = url.openConnection(proxy);
        } else
        {
            urlconnection = url.openConnection();
        }
        org.b.d.a.a(java/net/HttpURLConnection, urlconnection);
        return (HttpURLConnection)urlconnection;
    }

    public e a(URI uri, f f1)
    {
        HttpURLConnection httpurlconnection = a(uri.toURL(), a);
        a(httpurlconnection, f1.name());
        if (b)
        {
            return new p(httpurlconnection);
        } else
        {
            return new s(httpurlconnection, c);
        }
    }

    protected void a(HttpURLConnection httpurlconnection, String s1)
    {
        if (d >= 0)
        {
            httpurlconnection.setConnectTimeout(d);
        }
        if (e >= 0)
        {
            httpurlconnection.setReadTimeout(e);
        }
        httpurlconnection.setDoInput(true);
        if ("GET".equals(s1))
        {
            httpurlconnection.setInstanceFollowRedirects(true);
        } else
        {
            httpurlconnection.setInstanceFollowRedirects(false);
        }
        if ("PUT".equals(s1) || "POST".equals(s1))
        {
            httpurlconnection.setDoOutput(true);
        } else
        {
            httpurlconnection.setDoOutput(false);
        }
        httpurlconnection.setRequestMethod(s1);
    }
}
