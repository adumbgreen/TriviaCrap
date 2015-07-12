// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.g;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.etermax.gamescommon.g:
//            j, k

public class a
{

    Map a;
    Map b;

    public a()
    {
        a = new HashMap();
        b = new HashMap();
    }

    List a(String s)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            j j1 = (j)iterator.next();
            if (j1.a().equals(s))
            {
                arraylist.add(j1.c());
            }
        } while (true);
        return arraylist;
    }

    public Map a()
    {
        return a;
    }

    void a(j j1)
    {
        b.put(j1.c(), j1);
    }

    void a(k k1)
    {
        a.put(k1.a(), k1);
    }

    public List b()
    {
        return new ArrayList(b.values());
    }
}
