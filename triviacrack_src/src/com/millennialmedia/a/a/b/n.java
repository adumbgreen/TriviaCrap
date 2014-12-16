// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.util.AbstractSet;
import java.util.Iterator;

// Referenced classes of package com.millennialmedia.a.a.b:
//            j, o, p

class n extends AbstractSet
{

    final j a;

    n(j j1)
    {
        a = j1;
        super();
    }

    public void clear()
    {
        a.clear();
    }

    public boolean contains(Object obj)
    {
        return a.containsKey(obj);
    }

    public Iterator iterator()
    {
        return new o() {

            final n a;

            public Object next()
            {
                return b().f;
            }

            
            {
                a = n.this;
                super(n.this.a, null);
            }
        };
    }

    public boolean remove(Object obj)
    {
        return a.b(obj) != null;
    }

    public int size()
    {
        return a.d;
    }
}
