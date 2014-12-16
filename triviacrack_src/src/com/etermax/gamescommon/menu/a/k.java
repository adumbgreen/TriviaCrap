// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import com.etermax.gamescommon.menu.a.a.a;
import com.etermax.gamescommon.menu.a.a.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            o

public class k
{

    Map a;

    public k()
    {
        a = new HashMap();
        o ao[] = o.values();
        int i = ao.length;
        for (int j = 0; j < i; j++)
        {
            o o1 = ao[j];
            a.put(o1, new ArrayList());
        }

    }

    public int a()
    {
        o ao[] = o.values();
        int i = ao.length;
        int j = 0;
        int l = 0;
        for (; j < i; j++)
        {
            o o1 = ao[j];
            l += ((List)a.get(o1)).size();
        }

        return l;
    }

    public a a(int i)
    {
        o ao[] = o.values();
        int j = ao.length;
        int l = 0;
        int i1 = 0;
        for (; l < j; l++)
        {
            o o1 = ao[l];
            List list = (List)a.get(o1);
            int j1 = list.size();
            if (i >= i1 && i < i1 + j1)
            {
                return (a)list.get(i - i1);
            }
            i1 += j1;
        }

        return null;
    }

    public void a(o o1)
    {
        ((List)a.get(o1)).clear();
    }

    public void a(o o1, Collection collection)
    {
        List list = (List)a.get(o1);
        list.clear();
        list.addAll(collection);
    }

    public void b()
    {
        for (Iterator iterator = a.values().iterator(); iterator.hasNext(); ((List)iterator.next()).clear()) { }
    }

    public void b(o o1, Collection collection)
    {
        List list = (List)a.get(o1);
        if (!list.isEmpty())
        {
            int i = -1 + list.size();
            if (((a)list.get(i)).a() == g.e)
            {
                list.remove(i);
            }
        }
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            a a1 = (a)iterator.next();
            if (!list.contains(a1))
            {
                list.add(a1);
            }
        } while (true);
    }
}
