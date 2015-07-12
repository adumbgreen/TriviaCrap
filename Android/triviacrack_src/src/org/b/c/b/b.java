// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.b;

import java.io.ByteArrayOutputStream;
import org.b.c.c;
import org.b.c.d;
import org.b.c.g;
import org.b.c.k;
import org.b.d.e;

// Referenced classes of package org.b.c.b:
//            a

public class b extends a
{

    public b()
    {
        k ak[] = new k[2];
        ak[0] = new k("application", "octet-stream");
        ak[1] = k.a;
        super(ak);
    }

    protected volatile Long a(Object obj, k k1)
    {
        return a((byte[])obj, k1);
    }

    protected Long a(byte abyte0[], k k1)
    {
        return Long.valueOf(abyte0.length);
    }

    protected volatile void a(Object obj, g g1)
    {
        a((byte[])obj, g1);
    }

    protected void a(byte abyte0[], g g1)
    {
        e.a(abyte0, g1.a());
    }

    public boolean a(Class class1)
    {
        return [B.equals(class1);
    }

    public Object b(Class class1, d d1)
    {
        return c(class1, d1);
    }

    public byte[] c(Class class1, d d1)
    {
        long l = d1.d().b();
        if (l >= 0L)
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream((int)l);
            e.a(d1.e(), bytearrayoutputstream);
            return bytearrayoutputstream.toByteArray();
        } else
        {
            return e.a(d1.e());
        }
    }
}
