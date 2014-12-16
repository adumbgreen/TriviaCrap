// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b;

import com.millennialmedia.a.a.b.a.p;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.j;
import java.io.Writer;

// Referenced classes of package com.millennialmedia.a.a.b:
//            t

public final class s
{

    public static Writer a(Appendable appendable)
    {
        if (appendable instanceof Writer)
        {
            return (Writer)appendable;
        } else
        {
            return new t(appendable);
        }
    }

    public static void a(j j, c c)
    {
        p.P.a(c, j);
    }
}
