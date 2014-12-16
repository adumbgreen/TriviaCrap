// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;
import java.math.BigInteger;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public BigInteger a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        BigInteger biginteger;
        try
        {
            biginteger = new BigInteger(a1.h());
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new q(numberformatexception);
        }
        return biginteger;
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (BigInteger)obj);
    }

    public void a(c c1, BigInteger biginteger)
    {
        c1.a(biginteger);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
