// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import com.smartadserver.android.library.h.c;
import java.net.URI;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.smartadserver.android.library.b:
//            a, d, c

class b extends Thread
{

    Timer a;
    final a b;
    private HttpUriRequest c;
    private d d;
    private HttpClient e;
    private boolean f;
    private boolean g;

    public b(a a1, HttpUriRequest httpurirequest, d d1, HttpClient httpclient)
    {
        b = a1;
        super();
        f = false;
        g = false;
        a = null;
        setName("SASHttpRequestThread");
        c = httpurirequest;
        d = d1;
        e = httpclient;
    }

    static boolean a(b b1)
    {
        return b1.g;
    }

    static boolean a(b b1, boolean flag)
    {
        b1.f = flag;
        return flag;
    }

    static HttpUriRequest b(b b1)
    {
        return b1.c;
    }

    static d c(b b1)
    {
        return b1.d;
    }

    public void run()
    {
        BasicHttpParams basichttpparams;
        basichttpparams = new BasicHttpParams();
        basichttpparams.setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
        if (e != null) goto _L2; else goto _L1
_L1:
        Object obj;
        obj = new DefaultHttpClient(basichttpparams);
        ((DefaultHttpClient)obj).addResponseInterceptor(new HttpResponseInterceptor() {

            final b a;

            public void process(HttpResponse httpresponse1, HttpContext httpcontext)
            {
                Header header = httpresponse1.getEntity().getContentEncoding();
                if (header == null) goto _L2; else goto _L1
_L1:
                HeaderElement aheaderelement[];
                int j;
                int k;
                aheaderelement = header.getElements();
                j = aheaderelement.length;
                k = 0;
_L7:
                if (k >= j) goto _L2; else goto _L3
_L3:
                if (!aheaderelement[k].getName().equalsIgnoreCase("gzip")) goto _L5; else goto _L4
_L4:
                httpresponse1.setEntity(new com.smartadserver.android.library.b.c(httpresponse1.getEntity()));
_L2:
                return;
_L5:
                k++;
                if (true) goto _L7; else goto _L6
_L6:
            }

            
            {
                a = b.this;
                super();
            }
        });
        c.setHeader("Accept-Encoding", "gzip");
        HttpConnectionParams.setConnectionTimeout(basichttpparams, com.smartadserver.android.library.b.a.a(b));
        HttpConnectionParams.setSoTimeout(basichttpparams, com.smartadserver.android.library.b.a.a(b));
_L7:
        String s;
        c.setHeader("User-Agent", com.smartadserver.android.library.b.a.b(b));
        if (com.smartadserver.android.library.b.a.a(b) > 0)
        {
            a = new Timer();
            TimerTask timertask = new TimerTask() {

                final b a;

                public void run()
                {
                    b b1 = a;
                    b1;
                    JVM INSTR monitorenter ;
                    if (b.a(a))
                    {
                        break MISSING_BLOCK_LABEL_136;
                    }
                    b.a(a, true);
                    Exception exception3;
                    try
                    {
                        b.b(a).abort();
                    }
                    catch (UnsupportedOperationException unsupportedoperationexception) { }
                    a.a.cancel();
                    com.smartadserver.android.library.h.c.b((new StringBuilder()).append("The ad connection timed out after ").append(com.smartadserver.android.library.b.a.a(a.b)).append("ms").toString());
                    com.smartadserver.android.library.b.b.c(a).a(new com.smartadserver.android.library.a.c((new StringBuilder()).append("Ad was not delivered before specified timeout (").append(com.smartadserver.android.library.b.a.a(a.b)).append("ms)").toString()));
                    return;
                    exception3;
                    b1;
                    JVM INSTR monitorexit ;
                    throw exception3;
                }

            
            {
                a = b.this;
                super();
            }
            };
            a.schedule(timertask, com.smartadserver.android.library.b.a.a(b));
        }
        s = c.getURI().getHost();
        if (obj instanceof DefaultHttpClient)
        {
            com.smartadserver.android.library.b.a.a(s, (DefaultHttpClient)obj);
        }
        HttpResponse httpresponse = ((HttpClient) (obj)).execute(c);
        this;
        JVM INSTR monitorenter ;
        if (!f) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
_L5:
        return;
_L2:
        obj = e;
        continue; /* Loop/switch isn't completed */
_L4:
        g = true;
        if (a != null)
        {
            a.cancel();
        }
        this;
        JVM INSTR monitorexit ;
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_372;
        }
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_335;
        }
        String s1 = EntityUtils.toString(httpresponse.getEntity());
        d.a(s1);
        if (obj instanceof DefaultHttpClient)
        {
            com.smartadserver.android.library.b.a.b(s, (DefaultHttpClient)obj);
            return;
        }
          goto _L5
        Exception exception;
        exception;
        this;
        JVM INSTR monitorenter ;
        if (!f)
        {
            break MISSING_BLOCK_LABEL_391;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception2;
        exception2;
        this;
        JVM INSTR monitorexit ;
        throw exception2;
        d.a(new HttpException((new StringBuilder()).append("HTTP error code: ").append(i).toString()));
        return;
        d.a(new HttpException("Null Http response"));
        return;
        g = true;
        if (a != null)
        {
            a.cancel();
        }
        d.a(exception);
        this;
        JVM INSTR monitorexit ;
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
