// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;
import java.util.BitSet;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public BitSet a(a a1)
    {
        BitSet bitset;
        b b1;
        int i;
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        bitset = new BitSet();
        a1.a();
        b1 = a1.f();
        i = 0;
_L2:
        boolean flag;
        if (b1 == b.b)
        {
            break MISSING_BLOCK_LABEL_210;
        }
        switch (com.millennialmedia.a.a.b.a.a[b1.ordinal()])
        {
        default:
            throw new q((new StringBuilder()).append("Invalid bitset value type: ").append(b1).toString());

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break MISSING_BLOCK_LABEL_150;

        case 1: // '\001'
            if (a1.m() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            break;
        }
_L3:
        if (flag)
        {
            bitset.set(i);
        }
        i++;
        b1 = a1.f();
        if (true) goto _L2; else goto _L1
_L1:
        flag = a1.i();
          goto _L3
        String s1 = a1.h();
        int j;
        try
        {
            j = Integer.parseInt(s1);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new q((new StringBuilder()).append("Error: Expecting: bitset number value (1, 0), Found: ").append(s1).toString());
        }
        if (j != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L3
        a1.b();
        return bitset;
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (BitSet)obj);
    }

    public void a(c c1, BitSet bitset)
    {
        if (bitset == null)
        {
            c1.f();
            return;
        }
        c1.b();
        int i = 0;
        while (i < bitset.length()) 
        {
            int j;
            if (bitset.get(i))
            {
                j = 1;
            } else
            {
                j = 0;
            }
            c1.a(j);
            i++;
        }
        c1.c();
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
