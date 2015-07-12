// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.protocol.HttpContext;
import org.b.c.c;
import org.b.c.f;

// Referenced classes of package org.b.c.a:
//            a, l, i

final class j extends a
{

    private final HttpClient a;
    private final HttpUriRequest b;
    private final HttpContext c;

    public j(HttpClient httpclient, HttpUriRequest httpurirequest, HttpContext httpcontext)
    {
        a = httpclient;
        b = httpurirequest;
        c = httpcontext;
    }

    public i a(c c1, byte abyte0[])
    {
        Iterator iterator = c1.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (!s.equalsIgnoreCase("Content-Length") && !s.equalsIgnoreCase("Transfer-Encoding"))
            {
                Iterator iterator1 = ((List)entry.getValue()).iterator();
                while (iterator1.hasNext()) 
                {
                    String s1 = (String)iterator1.next();
                    b.addHeader(s, s1);
                }
            }
        } while (true);
        if (b instanceof HttpEntityEnclosingRequest)
        {
            ((HttpEntityEnclosingRequest)b).setEntity(new ByteArrayEntity(abyte0));
        }
        return new l(a.execute(b, c));
    }

    public f b()
    {
        return f.valueOf(b.getMethod());
    }

    public URI c()
    {
        return b.getURI();
    }
}
