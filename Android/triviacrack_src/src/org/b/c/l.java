// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c;

import org.b.d.h;

// Referenced classes of package org.b.c:
//            b, i

public class l extends b
{

    private final i b;

    public l(Object obj, h h, i j)
    {
        super(obj, h);
        b = j;
    }

    public l(h h, i j)
    {
        super(h);
        b = j;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("<");
        stringbuilder.append(b.toString());
        stringbuilder.append(' ');
        stringbuilder.append(b.b());
        stringbuilder.append(',');
        Object obj = b();
        c c = a();
        if (obj != null)
        {
            stringbuilder.append(obj);
            if (c != null)
            {
                stringbuilder.append(',');
            }
        }
        if (c != null)
        {
            stringbuilder.append(c);
        }
        stringbuilder.append('>');
        return stringbuilder.toString();
    }
}
