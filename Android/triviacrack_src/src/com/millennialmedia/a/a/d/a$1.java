// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.d;

import com.millennialmedia.a.a.b.a.e;
import com.millennialmedia.a.a.b.h;

// Referenced classes of package com.millennialmedia.a.a.d:
//            a

final class n extends h
{

    public void a(a a1)
    {
        if (a1 instanceof e)
        {
            ((e)a1).o();
            return;
        }
        int i = com.millennialmedia.a.a.d.a.a(a1);
        if (i == 0)
        {
            i = com.millennialmedia.a.a.d.a.b(a1);
        }
        if (i == 13)
        {
            com.millennialmedia.a.a.d.a.a(a1, 9);
            return;
        }
        if (i == 12)
        {
            com.millennialmedia.a.a.d.a.a(a1, 8);
            return;
        }
        if (i == 14)
        {
            com.millennialmedia.a.a.d.a.a(a1, 10);
            return;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(a1.f()).append(" ").append(" at line ").append(com.millennialmedia.a.a.d.a.c(a1)).append(" column ").append(com.millennialmedia.a.a.d.a.d(a1)).toString());
        }
    }

    n()
    {
    }
}
