// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            ib

public final class hz
{

    private final List a;
    private final Object b;

    private hz(Object obj)
    {
        b = ib.a(obj);
        a = new ArrayList();
    }

    hz(Object obj, hy._cls1 _pcls1)
    {
        this(obj);
    }

    public hz a(String s, Object obj)
    {
        a.add((new StringBuilder()).append((String)ib.a(s)).append("=").append(String.valueOf(obj)).toString());
        return this;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder(100)).append(b.getClass().getSimpleName()).append('{');
        int i = a.size();
        for (int j = 0; j < i; j++)
        {
            stringbuilder.append((String)a.get(j));
            if (j < i - 1)
            {
                stringbuilder.append(", ");
            }
        }

        return stringbuilder.append('}').toString();
    }
}
