// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            a, n

public class e
{

    private Map a;

    public e()
    {
        a = new HashMap();
    }

    private List b(QuestionCategory questioncategory)
    {
        Object obj = (List)a.get(questioncategory);
        if (obj == null)
        {
            obj = new ArrayList();
            a.put(questioncategory, obj);
        }
        return ((List) (obj));
    }

    public int a()
    {
        Iterator iterator = a.values().iterator();
        int i;
        for (i = 0; iterator.hasNext(); i += ((List)iterator.next()).size()) { }
        return i;
    }

    public int a(QuestionCategory questioncategory)
    {
        boolean flag = a.containsKey(questioncategory);
        int i = 0;
        if (flag)
        {
            Iterator iterator = ((List)a.get(questioncategory)).iterator();
            while (iterator.hasNext()) 
            {
                a a1 = (a)iterator.next();
                int j;
                if (a1.a() != n.a && a1.a() != n.c)
                {
                    j = i + 1;
                } else
                {
                    j = i;
                }
                i = j;
            }
        }
        return i;
    }

    public a a(int i)
    {
        Iterator iterator = a.keySet().iterator();
        int k;
        for (int j = 0; iterator.hasNext(); j += k)
        {
            List list = b((QuestionCategory)iterator.next());
            k = list.size();
            if (i >= j && i < j + k)
            {
                return (a)list.get(i - j);
            }
        }

        return null;
    }

    public void a(QuestionCategory questioncategory, Collection collection)
    {
        List list = b(questioncategory);
        list.clear();
        list.addAll(collection);
    }

    public void b()
    {
        a.clear();
    }

    public void b(QuestionCategory questioncategory, Collection collection)
    {
        List list = b(questioncategory);
        if (!list.isEmpty())
        {
            int i = -1 + list.size();
            if (((a)list.get(i)).a() == n.c)
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
