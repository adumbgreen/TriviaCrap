// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

// Referenced classes of package com.etermax.chat.a:
//            f, i, g

public class j
{

    public static ArrayList a(ArrayList arraylist)
    {
        ArrayList arraylist1;
        SimpleDateFormat simpledateformat;
        Iterator iterator;
        arraylist1 = new ArrayList();
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        iterator = arraylist.iterator();
_L2:
        f f1;
        int k;
        int l;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = (f)iterator.next();
        k = arraylist.indexOf(f1);
        if (k == 0)
        {
            f f2 = new f(i.i);
            f2.a(f1.f());
            arraylist1.add(f2);
            arraylist1.add(f1);
            continue; /* Loop/switch isn't completed */
        }
        if (k <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        l = k - 1;
        Date date3 = simpledateformat.parse(simpledateformat.format(((f)arraylist.get(l)).f()));
        Date date1 = date3;
        Date date4 = simpledateformat.parse(simpledateformat.format(((f)arraylist.get(k)).f()));
        Date date2 = date4;
_L3:
        if (date2.after(date1))
        {
            f f3 = new f(i.i);
            f3.a(f1.f());
            arraylist1.add(f3);
        }
        arraylist1.add(f1);
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        Exception exception1;
        Date date;
        exception1 = exception;
        date = null;
_L4:
        exception1.printStackTrace();
        date1 = date;
        date2 = null;
          goto _L3
_L1:
        return a(arraylist1, arraylist1.size());
        Exception exception2;
        exception2;
        date = date1;
        exception1 = exception2;
          goto _L4
    }

    public static ArrayList a(ArrayList arraylist, int k)
    {
        if (arraylist == null || arraylist.size() == 0)
        {
            return arraylist;
        }
        int l = Math.min(arraylist.size(), k);
        if (arraylist.size() > 1)
        {
            int i1 = -2 + arraylist.size();
            while (i1 >= 2 + (arraylist.size() - l)) 
            {
                f f1 = (f)arraylist.get(i1 - 1);
                f f2 = (f)arraylist.get(i1);
                f f3 = (f)arraylist.get(i1 + 1);
                if (f2.a(f1) && f2.a(f3))
                {
                    f2.a(g.b);
                } else
                if (!f2.a(f1) && f2.a(f3))
                {
                    f2.a(g.a);
                } else
                if (!f2.a(f1) && !f2.a(f3))
                {
                    f2.a(g.d);
                } else
                {
                    f2.a(g.c);
                }
                i1--;
            }
            if (((f)arraylist.get(0)).b() == ((f)arraylist.get(1)).b())
            {
                ((f)arraylist.get(0)).a(g.a);
            } else
            {
                ((f)arraylist.get(0)).a(g.d);
            }
            if (((f)arraylist.get(-1 + arraylist.size())).b() == ((f)arraylist.get(-2 + arraylist.size())).b())
            {
                ((f)arraylist.get(-1 + arraylist.size())).a(g.c);
                return arraylist;
            } else
            {
                ((f)arraylist.get(-1 + arraylist.size())).a(g.d);
                return arraylist;
            }
        } else
        {
            ((f)arraylist.get(0)).a(g.d);
            return arraylist;
        }
    }
}
