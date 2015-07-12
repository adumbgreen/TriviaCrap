// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.b.c.c;

// Referenced classes of package org.b.c.a:
//            d

final class l extends d
{

    private final HttpResponse a;
    private c b;

    l(HttpResponse httpresponse)
    {
        a = httpresponse;
    }

    public int b()
    {
        return a.getStatusLine().getStatusCode();
    }

    public String c()
    {
        return a.getStatusLine().getReasonPhrase();
    }

    public c d()
    {
        if (b == null)
        {
            b = new c();
            Header aheader[] = a.getAllHeaders();
            int i = aheader.length;
            for (int j = 0; j < i; j++)
            {
                Header header = aheader[j];
                b.b(header.getName(), header.getValue());
            }

        }
        return b;
    }

    protected InputStream g()
    {
        HttpEntity httpentity = a.getEntity();
        if (httpentity != null)
        {
            return httpentity.getContent();
        } else
        {
            return null;
        }
    }

    protected void h()
    {
        HttpEntity httpentity;
        httpentity = a.getEntity();
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        httpentity.consumeContent();
        return;
        IOException ioexception;
        ioexception;
    }
}
