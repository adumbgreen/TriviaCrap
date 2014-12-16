// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.b.c.c;
import org.b.c.f;
import org.b.d.e;

// Referenced classes of package org.b.c.a:
//            a, r, i

final class p extends a
{

    private final HttpURLConnection a;

    p(HttpURLConnection httpurlconnection)
    {
        a = httpurlconnection;
    }

    protected i a(c c1, byte abyte0[])
    {
        for (Iterator iterator = c1.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            Iterator iterator1 = ((List)entry.getValue()).iterator();
            while (iterator1.hasNext()) 
            {
                String s1 = (String)iterator1.next();
                a.addRequestProperty(s, s1);
            }
        }

        if (a.getDoOutput())
        {
            a.setFixedLengthStreamingMode(abyte0.length);
        }
        a.connect();
        if (a.getDoOutput())
        {
            e.a(abyte0, a.getOutputStream());
        }
        return new r(a);
    }

    public f b()
    {
        return f.valueOf(a.getRequestMethod());
    }

    public URI c()
    {
        URI uri;
        try
        {
            uri = a.getURL().toURI();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not get HttpURLConnection URI: ").append(urisyntaxexception.getMessage()).toString(), urisyntaxexception);
        }
        return uri;
    }
}
