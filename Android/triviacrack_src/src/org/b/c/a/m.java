// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.URI;
import java.util.List;
import org.b.c.c;
import org.b.c.f;

// Referenced classes of package org.b.c.a:
//            a, n, g, i

class m extends a
{

    private final g a;
    private final List b;
    private f c;
    private URI d;

    protected m(g g, List list, URI uri, f f)
    {
        a = g;
        b = list;
        c = f;
        d = uri;
    }

    static List a(m m1)
    {
        return m1.b;
    }

    static g b(m m1)
    {
        return m1.a;
    }

    protected final i a(c c1, byte abyte0[])
    {
        return (new n(this)).a(this, abyte0);
    }

    public f b()
    {
        return c;
    }

    public URI c()
    {
        return d;
    }
}
