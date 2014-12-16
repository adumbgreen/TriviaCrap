// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;
import java.net.InetAddress;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public InetAddress a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        } else
        {
            return InetAddress.getByName(a1.h());
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (InetAddress)obj);
    }

    public void a(c c1, InetAddress inetaddress)
    {
        String s1;
        if (inetaddress == null)
        {
            s1 = null;
        } else
        {
            s1 = inetaddress.getHostAddress();
        }
        c1.b(s1);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
