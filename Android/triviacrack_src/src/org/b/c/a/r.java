// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import org.b.c.c;
import org.b.c.i;
import org.b.d.j;

// Referenced classes of package org.b.c.a:
//            d

final class r extends d
{

    private final HttpURLConnection a;
    private c b;

    r(HttpURLConnection httpurlconnection)
    {
        a = httpurlconnection;
    }

    private int a(IOException ioexception)
    {
        if ("Received authentication challenge is null".equals(ioexception.getMessage()) || "No authentication challenges found".equals(ioexception.getMessage()))
        {
            return i.y.a();
        }
        if ("Received HTTP_PROXY_AUTH (407) code while not using proxy".equals(ioexception.getMessage()))
        {
            return i.E.a();
        } else
        {
            throw ioexception;
        }
    }

    public i a()
    {
        return i.a(b());
    }

    public int b()
    {
        int k;
        try
        {
            k = a.getResponseCode();
        }
        catch (IOException ioexception)
        {
            return a(ioexception);
        }
        return k;
    }

    public String c()
    {
        String s;
        try
        {
            s = a.getResponseMessage();
        }
        catch (IOException ioexception)
        {
            return i.a(a(ioexception)).b();
        }
        return s;
    }

    public c d()
    {
        if (b != null) goto _L2; else goto _L1
_L1:
        int k;
        b = new c();
        String s = a.getHeaderFieldKey(0);
        if (j.a(s))
        {
            b.b(s, a.getHeaderField(0));
        }
        k = 1;
_L5:
        String s1 = a.getHeaderFieldKey(k);
        if (j.a(s1)) goto _L3; else goto _L2
_L2:
        return b;
_L3:
        b.b(s1, a.getHeaderField(k));
        k++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected InputStream g()
    {
        InputStream inputstream = a.getErrorStream();
        if (inputstream != null)
        {
            return inputstream;
        } else
        {
            return a.getInputStream();
        }
    }

    protected void h()
    {
        a.disconnect();
    }
}
