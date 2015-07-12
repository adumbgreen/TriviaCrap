// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;
import org.b.c.a;
import org.b.c.c;
import org.b.c.i;

// Referenced classes of package org.b.c.a:
//            i

public abstract class d
    implements org.b.c.a.i
{

    private InputStream a;

    public d()
    {
    }

    private InputStream a(InputStream inputstream)
    {
        if (a == null)
        {
            a = new GZIPInputStream(inputstream);
        }
        return a;
    }

    private boolean i()
    {
        for (Iterator iterator = d().a().iterator(); iterator.hasNext();)
        {
            if (((a)iterator.next()).equals(a.c))
            {
                return true;
            }
        }

        return false;
    }

    public i a()
    {
        return org.b.c.i.a(b());
    }

    public InputStream e()
    {
        InputStream inputstream = g();
        if (i())
        {
            inputstream = a(inputstream);
        }
        return inputstream;
    }

    public void f()
    {
        if (a != null)
        {
            try
            {
                a.close();
            }
            catch (IOException ioexception) { }
        }
        h();
    }

    protected abstract InputStream g();

    protected abstract void h();
}
