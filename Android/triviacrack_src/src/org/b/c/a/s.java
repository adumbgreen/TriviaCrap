// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.b.c.c;
import org.b.c.f;

// Referenced classes of package org.b.c.a:
//            b, t, r, i

final class s extends b
{

    private static final Boolean a;
    private final HttpURLConnection b;
    private final int c;
    private OutputStream d;

    s(HttpURLConnection httpurlconnection, int i)
    {
        b = httpurlconnection;
        c = i;
        if (a.booleanValue())
        {
            System.setProperty("http.keepAlive", "false");
        }
    }

    private boolean a(String s1, String s2)
    {
        return !a.booleanValue() || !s1.equals("Connection") || !s2.equals("Keep-Alive");
    }

    private void c(c c1)
    {
        for (Iterator iterator = c1.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s1 = (String)entry.getKey();
            Iterator iterator1 = ((List)entry.getValue()).iterator();
            while (iterator1.hasNext()) 
            {
                String s2 = (String)iterator1.next();
                if (a(s1, s2))
                {
                    b.addRequestProperty(s1, s2);
                }
            }
        }

    }

    protected OutputStream a(c c1)
    {
        if (d == null)
        {
            int i = (int)c1.b();
            if (i >= 0 && !a.booleanValue())
            {
                b.setFixedLengthStreamingMode(i);
            } else
            {
                b.setChunkedStreamingMode(c);
            }
            c(c1);
            b.connect();
            d = b.getOutputStream();
        }
        return new t(d);
    }

    protected i b(c c1)
    {
        if (d == null) goto _L2; else goto _L1
_L1:
        d.close();
_L4:
        return new r(b);
_L2:
        try
        {
            c(c1);
            b.connect();
        }
        catch (IOException ioexception) { }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public f b()
    {
        return f.valueOf(b.getRequestMethod());
    }

    public URI c()
    {
        URI uri;
        try
        {
            uri = b.getURL().toURI();
        }
        catch (URISyntaxException urisyntaxexception)
        {
            throw new IllegalStateException((new StringBuilder()).append("Could not get HttpURLConnection URI: ").append(urisyntaxexception.getMessage()).toString(), urisyntaxexception);
        }
        return uri;
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 8)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = Boolean.valueOf(flag);
    }
}
