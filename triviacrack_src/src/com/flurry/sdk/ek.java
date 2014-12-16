// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.sdk:
//            fd, dp, eg, el, 
//            ee, fb, eh, es

public class ek extends fd
{

    private static final String a = com/flurry/sdk/ek.getSimpleName();
    private static SSLContext b;
    private static HostnameVerifier c;
    private String d;
    private a e;
    private int f;
    private int i;
    private boolean j;
    private final dp k = new dp();
    private c l;
    private HttpURLConnection m;
    private HttpClient n;
    private boolean o;
    private boolean p;
    private Exception q;
    private int r;
    private final dp s = new dp();
    private final Object t = new Object();

    public ek()
    {
        f = 10000;
        i = 15000;
        j = true;
        r = -1;
    }

    static HttpURLConnection a(ek ek1)
    {
        return ek1.m;
    }

    static void a(ek ek1, OutputStream outputstream)
    {
        ek1.a(outputstream);
    }

    private void a(InputStream inputstream)
    {
        while (l == null || b() || inputstream == null) 
        {
            return;
        }
        l.a(this, inputstream);
    }

    private void a(OutputStream outputstream)
    {
        while (l == null || b() || outputstream == null) 
        {
            return;
        }
        l.a(this, outputstream);
    }

    static HttpClient b(ek ek1)
    {
        return ek1.n;
    }

    private static SSLContext m()
    {
        com/flurry/sdk/ek;
        JVM INSTR monitorenter ;
        if (b == null) goto _L2; else goto _L1
_L1:
        SSLContext sslcontext = b;
_L4:
        com/flurry/sdk/ek;
        JVM INSTR monitorexit ;
        return sslcontext;
_L2:
        TrustManager atrustmanager[] = new TrustManager[1];
        atrustmanager[0] = new eg(null);
        b = SSLContext.getInstance("TLS");
        b.init(null, atrustmanager, new SecureRandom());
_L5:
        sslcontext = b;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        el.a(3, a, "Exception creating SSL context", exception1);
          goto _L5
        Exception exception;
        exception;
        throw exception;
    }

    private static HostnameVerifier n()
    {
        com/flurry/sdk/ek;
        JVM INSTR monitorenter ;
        if (c == null) goto _L2; else goto _L1
_L1:
        HostnameVerifier hostnameverifier = c;
_L4:
        com/flurry/sdk/ek;
        JVM INSTR monitorexit ;
        return hostnameverifier;
_L2:
        c = new ee();
        hostnameverifier = c;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void o()
    {
        Object obj;
        URL url;
        obj = null;
        if (p)
        {
            return;
        }
        url = new URL(d);
        m = (HttpURLConnection)url.openConnection();
        m.setConnectTimeout(f);
        m.setReadTimeout(i);
        m.setRequestMethod(e.toString());
        m.setInstanceFollowRedirects(j);
        m.setDoOutput(a.c.equals(e));
        m.setDoInput(true);
        if (el.d() && (m instanceof HttpsURLConnection))
        {
            HttpsURLConnection httpsurlconnection = (HttpsURLConnection)m;
            httpsurlconnection.setHostnameVerifier(n());
            httpsurlconnection.setSSLSocketFactory(m().getSocketFactory());
        }
        java.util.Map.Entry entry1;
        for (Iterator iterator = k.b().iterator(); iterator.hasNext(); m.addRequestProperty((String)entry1.getKey(), (String)entry1.getValue()))
        {
            entry1 = (java.util.Map.Entry)iterator.next();
        }

        break MISSING_BLOCK_LABEL_222;
        Exception exception;
        exception;
        r();
        throw exception;
        boolean flag;
        if (!a.b.equals(e) && !a.c.equals(e))
        {
            m.setRequestProperty("Accept-Encoding", "");
        }
        flag = p;
        if (flag)
        {
            r();
            return;
        }
        boolean flag1 = a.c.equals(e);
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_328;
        }
        OutputStream outputstream = m.getOutputStream();
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(outputstream);
        a(bufferedoutputstream);
        fb.a(bufferedoutputstream);
        fb.a(outputstream);
        r = m.getResponseCode();
        for (Iterator iterator1 = m.getHeaderFields().entrySet().iterator(); iterator1.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            Iterator iterator2 = ((List)entry.getValue()).iterator();
            while (iterator2.hasNext()) 
            {
                String s1 = (String)iterator2.next();
                s.a(entry.getKey(), s1);
            }
        }

          goto _L1
_L7:
        Exception exception2;
        Object obj2;
        fb.a(bufferedoutputstream);
        fb.a(((java.io.Closeable) (obj2)));
        throw exception2;
_L1:
        if (a.b.equals(e)) goto _L3; else goto _L2
_L2:
        boolean flag3 = a.c.equals(e);
        if (!flag3)
        {
            r();
            return;
        }
_L3:
        boolean flag2 = p;
        if (flag2)
        {
            r();
            return;
        }
        InputStream inputstream = m.getInputStream();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        a(bufferedinputstream);
        fb.a(bufferedinputstream);
        fb.a(inputstream);
        r();
        return;
        Exception exception1;
        exception1;
        Object obj1 = null;
_L5:
        fb.a(((java.io.Closeable) (obj)));
        fb.a(((java.io.Closeable) (obj1)));
        throw exception1;
        exception1;
        obj1 = inputstream;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        obj = bufferedinputstream;
        obj1 = inputstream;
        if (true) goto _L5; else goto _L4
_L4:
        exception2;
        obj2 = outputstream;
        bufferedoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception2;
        obj2 = outputstream;
        continue; /* Loop/switch isn't completed */
        exception2;
        bufferedoutputstream = null;
        obj2 = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void p()
    {
        Object obj;
        HttpRequestBase httprequestbase;
        obj = null;
        if (p)
        {
            return;
        }
        httprequestbase = e.a(d);
        java.util.Map.Entry entry;
        for (Iterator iterator = k.b().iterator(); iterator.hasNext(); httprequestbase.setHeader((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        if (!a.b.equals(e) && !a.c.equals(e))
        {
            httprequestbase.removeHeaders("Accept-Encoding");
        }
        if (a.c.equals(e))
        {
            ((HttpPost)httprequestbase).setEntity(new AbstractHttpEntity() {

                final ek a;

                public InputStream getContent()
                {
                    throw new UnsupportedOperationException();
                }

                public long getContentLength()
                {
                    return -1L;
                }

                public boolean isRepeatable()
                {
                    return false;
                }

                public boolean isStreaming()
                {
                    return false;
                }

                public void writeTo(OutputStream outputstream)
                {
                    BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(outputstream);
                    ek.a(a, bufferedoutputstream);
                    fb.a(bufferedoutputstream);
                    return;
                    IOException ioexception;
                    ioexception;
                    bufferedoutputstream = null;
_L4:
                    throw ioexception;
                    Exception exception2;
                    exception2;
_L1:
                    fb.a(bufferedoutputstream);
                    throw exception2;
                    Exception exception3;
                    exception3;
                    bufferedoutputstream = null;
_L2:
                    if (android.os.Build.VERSION.SDK_INT >= 9)
                    {
                        throw new IOException(exception3);
                    } else
                    {
                        throw new IOException(exception3.toString());
                    }
                    exception2;
                    bufferedoutputstream = null;
                      goto _L1
                    exception3;
                      goto _L2
                    ioexception;
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = ek.this;
                super();
            }
            });
        }
        HttpResponse httpresponse;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, f);
        HttpConnectionParams.setSoTimeout(basichttpparams, i);
        basichttpparams.setParameter("http.protocol.handle-redirects", Boolean.valueOf(j));
        n = eh.a(basichttpparams);
        httpresponse = n.execute(httprequestbase);
        if (p)
        {
            throw new Exception("Request cancelled");
        }
        break MISSING_BLOCK_LABEL_235;
        Exception exception;
        exception;
        r();
        throw exception;
        if (httpresponse == null) goto _L2; else goto _L1
_L1:
        Header aheader[];
        r = httpresponse.getStatusLine().getStatusCode();
        aheader = httpresponse.getAllHeaders();
        if (aheader == null) goto _L4; else goto _L3
_L3:
        int i1 = aheader.length;
        int j1 = 0;
_L11:
        if (j1 >= i1) goto _L4; else goto _L5
_L5:
        HeaderElement aheaderelement[];
        int k1;
        aheaderelement = aheader[j1].getElements();
        k1 = aheaderelement.length;
        int l1 = 0;
_L7:
        if (l1 >= k1)
        {
            break; /* Loop/switch isn't completed */
        }
        HeaderElement headerelement = aheaderelement[l1];
        s.a(headerelement.getName(), headerelement.getValue());
        l1++;
        if (true) goto _L7; else goto _L6
_L4:
        boolean flag;
        if (a.b.equals(e))
        {
            break MISSING_BLOCK_LABEL_381;
        }
        flag = a.c.equals(e);
        if (!flag)
        {
            r();
            return;
        }
        HttpEntity httpentity;
        if (p)
        {
            throw new Exception("Request cancelled");
        }
        httpentity = httpresponse.getEntity();
        if (httpentity == null) goto _L2; else goto _L8
_L8:
        InputStream inputstream = httpentity.getContent();
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        a(bufferedinputstream);
        fb.a(bufferedinputstream);
        fb.a(inputstream);
_L2:
        r();
        return;
        Exception exception1;
        exception1;
        bufferedinputstream = null;
_L9:
        fb.a(bufferedinputstream);
        fb.a(((java.io.Closeable) (obj)));
        throw exception1;
        exception1;
        obj = inputstream;
        bufferedinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        obj = inputstream;
        if (true) goto _L9; else goto _L6
_L6:
        j1++;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private void q()
    {
        while (l == null || b()) 
        {
            return;
        }
        l.a(this);
    }

    private void r()
    {
        if (!o)
        {
            o = true;
            if (m != null)
            {
                m.disconnect();
            }
            if (n != null)
            {
                n.getConnectionManager().shutdown();
                return;
            }
        }
    }

    private void s()
    {
        if (!o)
        {
            o = true;
            if (m != null || n != null)
            {
                (new Thread() {

                    final ek a;

                    public void run()
                    {
                        if (ek.a(a) != null)
                        {
                            ek.a(a).disconnect();
                        }
                        if (ek.b(a) != null)
                        {
                            ek.b(a).getConnectionManager().shutdown();
                        }
                    }

            
            {
                a = ek.this;
                super();
            }
                }).start();
                return;
            }
        }
    }

    public void a()
    {
        String s1 = d;
        if (s1 == null)
        {
            q();
            return;
        }
        if (es.a().c())
        {
            break MISSING_BLOCK_LABEL_58;
        }
        el.a(3, a, (new StringBuilder()).append("Network not available, aborting http request: ").append(d).toString());
        q();
        return;
        if (e == null || a.a.equals(e))
        {
            e = a.b;
        }
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        o();
_L1:
        el.a(4, a, (new StringBuilder()).append("HTTP status: ").append(r).append(" for url: ").append(d).toString());
        q();
        return;
        p();
          goto _L1
        Exception exception1;
        exception1;
        el.a(4, a, (new StringBuilder()).append("HTTP status: ").append(r).append(" for url: ").append(d).toString());
        el.a(3, a, (new StringBuilder()).append("Exception during http request: ").append(d).toString(), exception1);
        q = exception1;
        q();
        return;
        Exception exception;
        exception;
        q();
        throw exception;
    }

    public void a(a a1)
    {
        e = a1;
    }

    public void a(c c1)
    {
        l = c1;
    }

    public void a(String s1)
    {
        d = s1;
    }

    public void a(String s1, String s2)
    {
        k.a(s1, s2);
    }

    public void a(boolean flag)
    {
        j = flag;
    }

    public List b(String s1)
    {
        if (s1 == null)
        {
            return null;
        } else
        {
            return s.a(s1);
        }
    }

    public boolean b()
    {
        boolean flag;
        synchronized (t)
        {
            flag = p;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean c()
    {
        return !f() && d();
    }

    public boolean d()
    {
        return r >= 200 && r < 400;
    }

    public int e()
    {
        return r;
    }

    public boolean f()
    {
        return q != null;
    }

    public void g()
    {
        synchronized (t)
        {
            p = true;
        }
        s();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void h()
    {
        g();
    }


    // Unreferenced inner class com/flurry/sdk/ek$3

/* anonymous class */
    class _cls3
    {

        static final int a[];

        static 
        {
            a = new int[a.values().length];
            try
            {
                a[a.c.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[a.d.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[a.e.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[a.f.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[a.b.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4)
            {
                return;
            }
        }
    }


    private class c
    {

        public abstract void a(ek ek1);

        public abstract void a(ek ek1, InputStream inputstream);

        public abstract void a(ek ek1, OutputStream outputstream);
    }


    private class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        private static final a g[];

        public static a valueOf(String s1)
        {
            return (a)Enum.valueOf(com/flurry/sdk/ek$a, s1);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        public HttpRequestBase a(String s1)
        {
    class _cls3
    {

        static final int a[];

        static 
        {
            a = new int[a.values().length];
            try
            {
                a[a.c.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[a.d.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[a.e.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[a.f.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[a.b.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4)
            {
                return;
            }
        }
    }

            switch (_cls3.a[ordinal()])
            {
            default:
                return null;

            case 1: // '\001'
                return new HttpPost(s1);

            case 2: // '\002'
                return new HttpPut(s1);

            case 3: // '\003'
                return new HttpDelete(s1);

            case 4: // '\004'
                return new HttpHead(s1);

            case 5: // '\005'
                return new HttpGet(s1);
            }
        }

        public String toString()
        {
            switch (_cls3.a[ordinal()])
            {
            default:
                return null;

            case 1: // '\001'
                return "POST";

            case 2: // '\002'
                return "PUT";

            case 3: // '\003'
                return "DELETE";

            case 4: // '\004'
                return "HEAD";

            case 5: // '\005'
                return "GET";
            }
        }

        static 
        {
            a = new a("kUnknown", 0);
            b = new a("kGet", 1);
            c = new a("kPost", 2);
            d = new a("kPut", 3);
            e = new a("kDelete", 4);
            f = new a("kHead", 5);
            a aa[] = new a[6];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            g = aa;
        }

        private a(String s1, int i1)
        {
            super(s1, i1);
        }
    }

}
