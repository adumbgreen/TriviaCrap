// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.util.Map;

// Referenced classes of package org.b.e.b:
//            f

class c
    implements f
{

    private final Map a;

    public c(Map map)
    {
        a = map;
    }

    public Object a(String s)
    {
        if (!a.containsKey(s))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Map has no value for '").append(s).append("'").toString());
        } else
        {
            return a.get(s);
        }
    }
}
