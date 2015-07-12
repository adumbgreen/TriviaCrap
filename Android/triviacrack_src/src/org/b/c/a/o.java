// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a;

import java.net.URI;
import java.util.Collections;
import java.util.List;
import org.b.c.f;
import org.b.d.a;

// Referenced classes of package org.b.c.a:
//            c, m, g, e

public class o extends c
{

    private final List a;

    public o(g g, List list)
    {
        super(g);
        org.b.d.a.a(g, "'requestFactory' must not be null");
        if (list == null)
        {
            list = Collections.emptyList();
        }
        a = list;
    }

    protected e a(URI uri, f f, g g)
    {
        return new m(g, a, uri, f);
    }
}
