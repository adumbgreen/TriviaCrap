// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.a;

import java.io.IOException;
import org.b.c.a.i;
import org.b.c.c;
import org.b.c.j;
import org.b.c.k;
import org.b.d.e;

// Referenced classes of package org.b.e.a:
//            h, j, b, d

public class a
    implements h
{

    public a()
    {
    }

    private byte[] c(i l)
    {
        java.io.InputStream inputstream = l.e();
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        byte abyte0[] = e.a(inputstream);
        return abyte0;
        IOException ioexception;
        ioexception;
        return new byte[0];
    }

    public void a(i l)
    {
        org.b.c.i i1 = l.a();
        k k1 = l.d().c();
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[j.values().length];
                try
                {
                    a[j.d.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[j.e.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        java.nio.charset.Charset charset;
        byte abyte0[];
        if (k1 != null)
        {
            charset = k1.e();
        } else
        {
            charset = null;
        }
        abyte0 = c(l);
        switch (_cls1.a[i1.c().ordinal()])
        {
        default:
            throw new org.b.e.a.j((new StringBuilder()).append("Unknown status code [").append(i1).append("]").toString());

        case 1: // '\001'
            throw new b(i1, l.c(), abyte0, charset);

        case 2: // '\002'
            throw new d(i1, l.c(), abyte0, charset);
        }
    }

    protected boolean a(org.b.c.i l)
    {
        return l.c() == j.d || l.c() == j.e;
    }

    public boolean b(i l)
    {
        return a(l.a());
    }
}
