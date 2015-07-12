// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.c;

// Referenced classes of package com.millennialmedia.a.a:
//            s

class f extends s
{

    private s a;

    f()
    {
    }

    public void a(c c, Object obj)
    {
        if (a == null)
        {
            throw new IllegalStateException();
        } else
        {
            a.a(c, obj);
            return;
        }
    }

    public void a(s s1)
    {
        if (a != null)
        {
            throw new AssertionError();
        } else
        {
            a = s1;
            return;
        }
    }

    public Object b(a a1)
    {
        if (a == null)
        {
            throw new IllegalStateException();
        } else
        {
            return a.b(a1);
        }
    }
}
