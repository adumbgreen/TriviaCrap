// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.b.c.c;
import org.b.c.g;

// Referenced classes of package org.b.c.b:
//            c

class d
    implements g
{

    final org.b.c.b.c a;
    private final c b = new c();
    private final OutputStream c;
    private boolean d;

    public d(org.b.c.b.c c1, OutputStream outputstream)
    {
        a = c1;
        super();
        d = false;
        c = outputstream;
    }

    private void b()
    {
        if (!d)
        {
            for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                byte abyte0[] = a((String)entry.getKey());
                Iterator iterator1 = ((List)entry.getValue()).iterator();
                while (iterator1.hasNext()) 
                {
                    byte abyte1[] = a((String)iterator1.next());
                    c.write(abyte0);
                    c.write(58);
                    c.write(32);
                    c.write(abyte1);
                    org.b.c.b.c.a(a, c);
                }
            }

            org.b.c.b.c.a(a, c);
            d = true;
        }
    }

    public OutputStream a()
    {
        b();
        return c;
    }

    protected byte[] a(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("US-ASCII");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new IllegalStateException(unsupportedencodingexception);
        }
        return abyte0;
    }

    public c d()
    {
        if (d)
        {
            return org.b.c.c.a(b);
        } else
        {
            return b;
        }
    }
}
