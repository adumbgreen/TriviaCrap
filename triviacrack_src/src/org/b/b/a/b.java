// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.b.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Arrays;

// Referenced classes of package org.b.b.a:
//            a

public class b extends a
{

    private final byte a[];
    private final String b;

    public b(byte abyte0[])
    {
        this(abyte0, "resource loaded from byte array");
    }

    public b(byte abyte0[], String s)
    {
        if (abyte0 == null)
        {
            throw new IllegalArgumentException("Byte array must not be null");
        }
        a = abyte0;
        if (s == null)
        {
            s = "";
        }
        b = s;
    }

    public long b()
    {
        return (long)a.length;
    }

    public InputStream d()
    {
        return new ByteArrayInputStream(a);
    }

    public String e()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof b) && Arrays.equals(((b)obj).a, a);
    }

    public int hashCode()
    {
        return 29 * [B.hashCode() * a.length;
    }
}
