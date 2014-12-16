// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import org.w3c.dom.Node;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            e, a

class c
{

    final a a;
    private final Node b;

    c(a a1, Node node)
    {
        a = a1;
        super();
        if (node == null)
        {
            throw new IllegalArgumentException("Media node cannot be null");
        } else
        {
            b = node;
            return;
        }
    }

    Integer a()
    {
        return e.b(b, "width");
    }

    Integer b()
    {
        return e.b(b, "height");
    }

    String c()
    {
        return e.c(b, "type");
    }

    String d()
    {
        return e.a(b);
    }
}
