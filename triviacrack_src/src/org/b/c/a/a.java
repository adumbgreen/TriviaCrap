// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import org.b.c.c;

// Referenced classes of package org.b.c.a:
//            b, i

abstract class a extends b
{

    private ByteArrayOutputStream a;

    a()
    {
        a = new ByteArrayOutputStream();
    }

    protected OutputStream a(c c1)
    {
        return a;
    }

    protected abstract i a(c c1, byte abyte0[]);

    protected i b(c c1)
    {
        byte abyte0[] = a.toByteArray();
        if (c1.b() == -1L)
        {
            c1.a(abyte0.length);
        }
        i i = a(c1, abyte0);
        a = null;
        return i;
    }
}
