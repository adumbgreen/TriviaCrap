// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.millennialmedia.a.a.b:
//            j, p

abstract class o
    implements Iterator
{

    p b;
    p c;
    int d;
    final j e;

    private o(j j1)
    {
        e = j1;
        super();
        b = e.c.d;
        c = null;
        d = e.e;
    }

    o(j j1, j._cls1 _pcls1)
    {
        this(j1);
    }

    final p b()
    {
        p p1 = b;
        if (p1 == e.c)
        {
            throw new NoSuchElementException();
        }
        if (e.e != d)
        {
            throw new ConcurrentModificationException();
        } else
        {
            b = p1.d;
            c = p1;
            return p1;
        }
    }

    public final boolean hasNext()
    {
        return b != e.c;
    }

    public final void remove()
    {
        if (c == null)
        {
            throw new IllegalStateException();
        } else
        {
            e.a(c, true);
            c = null;
            d = e.e;
            return;
        }
    }
}
