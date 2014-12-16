// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import com.smartadserver.android.library.h.c;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Hashtable;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.smartadserver.android.library.b:
//            d, e

class b
    implements d
{

    final HttpGet a;
    final boolean b;
    final e c;

    public void a(Exception exception)
    {
label0:
        {
label1:
            {
                boolean flag;
                Integer integer;
                if ((exception instanceof UnknownHostException) || (exception instanceof InterruptedIOException))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag || !b)
                {
                    break label0;
                }
                com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("retry to call url:").append(a.getURI()).toString());
                integer = (Integer)e.b(c).get(a);
                if (integer != null)
                {
                    if (integer.intValue() <= 0)
                    {
                        break label1;
                    }
                    e.a(c, a);
                    e.b(c).put(a, Integer.valueOf(-1 + integer.intValue()));
                    c.a();
                }
                return;
            }
            com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("Failed to call URL (retries limit reached): ").append(a.getURI().toString()).toString());
            e.b(c).remove(a);
            return;
        }
        e.b(c).remove(a);
    }

    public void a(String s)
    {
        com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("Successfully called URL: ").append(a.getURI().toString()).toString());
        e.b(c).remove(a);
    }

    (e e1, HttpGet httpget, boolean flag)
    {
        c = e1;
        a = httpget;
        b = flag;
        super();
    }
}
