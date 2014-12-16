// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.b.q;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            l

public final class k extends s
{

    private final q a;
    private final Map b;

    private k(q q1, Map map)
    {
        a = q1;
        b = map;
    }

    k(q q1, Map map, j._cls1 _pcls1)
    {
        this(q1, map);
    }

    public void a(c c1, Object obj)
    {
        if (obj == null)
        {
            c1.f();
            return;
        }
        c1.d();
        try
        {
            Iterator iterator = b.values().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                l l1 = (l)iterator.next();
                if (l1.h)
                {
                    c1.a(l1.g);
                    l1.a(c1, obj);
                }
            } while (true);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError();
        }
        c1.e();
    }

    public Object b(a a1)
    {
        Object obj;
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        obj = a.a();
        a1.c();
_L1:
        l l1;
        if (!a1.e())
        {
            break MISSING_BLOCK_LABEL_111;
        }
        String s1 = a1.g();
        l1 = (l)b.get(s1);
        if (l1 == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        if (l1.i)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        IllegalStateException illegalstateexception;
        a1.n();
          goto _L1
        try
        {
            l1.a(a1, obj);
        }
        // Misplaced declaration of an exception variable
        catch (IllegalStateException illegalstateexception)
        {
            throw new com.millennialmedia.a.a.q(illegalstateexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
          goto _L1
        a1.d();
        return obj;
    }
}
