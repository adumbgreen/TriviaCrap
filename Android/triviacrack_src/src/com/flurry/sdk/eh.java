// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.flurry.sdk:
//            el, ef

public final class eh
{

    private static SchemeRegistry a;

    public static HttpClient a(HttpParams httpparams)
    {
        return new DefaultHttpClient(new SingleClientConnManager(httpparams, a()), httpparams);
    }

    private static SchemeRegistry a()
    {
        com/flurry/sdk/eh;
        JVM INSTR monitorenter ;
        if (a == null) goto _L2; else goto _L1
_L1:
        SchemeRegistry schemeregistry = a;
_L3:
        com/flurry/sdk/eh;
        JVM INSTR monitorexit ;
        return schemeregistry;
_L2:
        a = new SchemeRegistry();
        a.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        if (!el.d())
        {
            break MISSING_BLOCK_LABEL_88;
        }
        a.register(new Scheme("https", new ef(), 443));
_L4:
        schemeregistry = a;
          goto _L3
        a.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
          goto _L4
        Exception exception;
        exception;
        throw exception;
    }
}
