// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.URI;
import org.b.c.f;
import org.b.d.a;

// Referenced classes of package org.b.c.a:
//            g, e

public abstract class c
    implements g
{

    private final g a;

    protected c(g g1)
    {
        org.b.d.a.a(g1, "'requestFactory' must not be null");
        a = g1;
    }

    public final e a(URI uri, f f)
    {
        return a(uri, f, a);
    }

    protected abstract e a(URI uri, f f, g g1);
}
