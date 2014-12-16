// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.q;
import com.millennialmedia.a.a.s;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public Character a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        String s1 = a1.h();
        if (s1.length() != 1)
        {
            throw new q((new StringBuilder()).append("Expecting character, got: ").append(s1).toString());
        } else
        {
            return Character.valueOf(s1.charAt(0));
        }
    }

    public void a(c c1, Character character)
    {
        String s1;
        if (character == null)
        {
            s1 = null;
        } else
        {
            s1 = String.valueOf(character);
        }
        c1.b(s1);
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Character)obj);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
