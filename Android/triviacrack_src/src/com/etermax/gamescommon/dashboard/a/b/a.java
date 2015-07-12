// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a.b;

import com.etermax.tools.widget.a.f;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.dashboard.a.b:
//            b

public class a
    implements f
{

    public a()
    {
    }

    public volatile List a(Object obj)
    {
        return a((List)obj);
    }

    public List a(List list)
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        ArrayList arraylist3;
        ArrayList arraylist4;
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        arraylist3 = new ArrayList();
        arraylist4 = new ArrayList();
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = list.iterator();
_L4:
        if (iterator.hasNext())
        {
            b b1 = (b)iterator.next();
            switch (b1.getSectionType())
            {
            case 0: // '\0'
                arraylist1.add(new g(b1, 0));
                break;

            case 2: // '\002'
                arraylist3.add(new g(b1, 2));
                break;

            case 1: // '\001'
                arraylist2.add(new g(b1, 1));
                break;

            case 3: // '\003'
                arraylist4.add(new g(b1, 3));
                break;
            }
            continue; /* Loop/switch isn't completed */
        }
_L2:
        if (arraylist1.size() > 0)
        {
            arraylist.add(new h(arraylist1, 0));
        }
        if (arraylist2.size() > 0)
        {
            arraylist.add(new h(arraylist2, 1));
        }
        if (arraylist3.size() > 0)
        {
            arraylist.add(new h(arraylist3, 2));
        }
        if (arraylist4.size() > 0)
        {
            arraylist.add(new h(arraylist4, 3));
        }
        return arraylist;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
