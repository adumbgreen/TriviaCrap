// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package org.b.e.b:
//            f

class g
    implements f
{

    private final Iterator a;

    public transient g(Object aobj[])
    {
        a = Arrays.asList(aobj).iterator();
    }

    public Object a(String s)
    {
        if (!a.hasNext())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Not enough variable values available to expand '").append(s).append("'").toString());
        } else
        {
            return a.next();
        }
    }
}
