// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import java.util.AbstractSet;
import java.util.Iterator;

// Referenced classes of package com.millennialmedia.a.a.b:
//            j, o

class m extends AbstractSet
{

    final j a;

    m(j j1)
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
        return (obj instanceof java.util.Map.Entry) && a.a((java.util.Map.Entry)obj) != null;
    }

    public Iterator iterator()
    {
        return new o() {

            final m a;

            public java.util.Map.Entry a()
            {
                return b();
            }

            public Object next()
            {
                return a();
            }

            
            {
                a = m.this;
                super(m.this.a, null);
            }
        };
    }

    public boolean remove(Object obj)
    {
        p p;
        if (obj instanceof java.util.Map.Entry)
        {
            if ((p = a.a((java.util.Map.Entry)obj)) != null)
            {
                a.a(p, true);
                return true;
            }
        }
        return false;
    }

    public int size()
    {
        return a.d;
    }
}
