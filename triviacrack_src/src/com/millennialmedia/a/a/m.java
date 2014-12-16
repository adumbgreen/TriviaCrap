// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.j;
import java.util.Set;

// Referenced classes of package com.millennialmedia.a.a:
//            j, l

public final class m extends com.millennialmedia.a.a.j
{

    private final j a = new j();

    public m()
    {
    }

    public void a(String s, com.millennialmedia.a.a.j j1)
    {
        if (j1 == null)
        {
            j1 = l.a;
        }
        a.put(s, j1);
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof m) && ((m)obj).a.equals(a);
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public Set o()
    {
        return a.entrySet();
    }
}
