// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.URI;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
import org.b.c.f;
import org.b.d.a;

// Referenced classes of package org.b.c.a:
//            g, j, e

public class k
    implements g
{

    private HttpClient a;

    public k()
    {
        SchemeRegistry schemeregistry = new SchemeRegistry();
        schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeregistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        BasicHttpParams basichttpparams = new BasicHttpParams();
        ThreadSafeClientConnManager threadsafeclientconnmanager = new ThreadSafeClientConnManager(basichttpparams, schemeregistry);
        ConnManagerParams.setMaxTotalConnections(basichttpparams, 100);
        ConnManagerParams.setMaxConnectionsPerRoute(basichttpparams, new ConnPerRouteBean(5));
        a = new DefaultHttpClient(threadsafeclientconnmanager, null);
        a(60000);
    }

    public HttpClient a()
    {
        return a;
    }

    protected HttpUriRequest a(f f1, URI uri)
    {
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[f.values().length];
                try
                {
                    a[f.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[f.f.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[f.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[f.d.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[f.b.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[f.e.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[f.g.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror6)
                {
                    return;
                }
            }
        }

        switch (org.b.c.a._cls1.a[f1.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid HTTP method: ").append(f1).toString());

        case 1: // '\001'
            return new HttpGet(uri);

        case 2: // '\002'
            return new HttpDelete(uri);

        case 3: // '\003'
            return new HttpHead(uri);

        case 4: // '\004'
            return new HttpOptions(uri);

        case 5: // '\005'
            return new HttpPost(uri);

        case 6: // '\006'
            return new HttpPut(uri);

        case 7: // '\007'
            return new HttpTrace(uri);
        }
    }

    public e a(URI uri, f f1)
    {
        HttpUriRequest httpurirequest = a(f1, uri);
        a(httpurirequest);
        return new j(a(), httpurirequest, b(f1, uri));
    }

    public void a(int i)
    {
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        org.b.d.a.a(flag, "Timeout must be a non-negative value");
        a().getParams().setIntParameter("http.socket.timeout", i);
    }

    protected void a(HttpUriRequest httpurirequest)
    {
        HttpProtocolParams.setUseExpectContinue(httpurirequest.getParams(), false);
    }

    protected HttpContext b(f f1, URI uri)
    {
        return null;
    }
}
