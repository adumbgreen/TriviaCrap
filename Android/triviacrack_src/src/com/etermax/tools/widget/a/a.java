// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.tools.widget.a:
//            h, g, e

public class a extends BaseAdapter
{

    protected List c;
    protected Context d;
    protected e e;

    public a(Context context, List list, e e1)
    {
        d = context;
        e = e1;
        c = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            h h1 = (h)iterator.next();
            if (h1.c())
            {
                c.add(h1);
            }
            Iterator iterator1 = h1.a().iterator();
            while (iterator1.hasNext()) 
            {
                g g1 = (g)iterator1.next();
                c.add(g1);
            }
        }

    }

    protected void a(int i, View view)
    {
        boolean flag = b(i);
        boolean flag1 = a(i);
        if (flag && flag1)
        {
            e.f(view);
            return;
        }
        if (flag)
        {
            e.d(view);
            return;
        }
        if (flag1)
        {
            e.e(view);
            return;
        } else
        {
            e.g(view);
            return;
        }
    }

    public void a(g g1)
    {
        int i = 0;
        do
        {
label0:
            {
                int j = c.size();
                boolean flag = false;
                if (i < j)
                {
                    Object obj = c.get(i);
                    if (!(obj instanceof g) || !g1.equals(obj))
                    {
                        break label0;
                    }
                    c.remove(i);
                    flag = true;
                }
                if (flag)
                {
                    notifyDataSetChanged();
                }
                return;
            }
            i++;
        } while (true);
    }

    protected boolean a(int i)
    {
        return i == -1 + getCount() || getItemViewType(i + 1) == 0;
    }

    protected boolean b(int i)
    {
        return i > 0 && getItemViewType(i - 1) == 0;
    }

    public int getCount()
    {
        return c.size();
    }

    public Object getItem(int i)
    {
        return c.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        Object obj = c.get(i);
        if (obj instanceof h)
        {
            return 0;
        }
        return !(obj instanceof g) ? -1 : 1;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        int j = getItemViewType(i);
        if (view != null) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 0 1: default 36
    //                   0 65
    //                   1 82;
           goto _L2 _L3 _L4
_L2:
        Object obj = getItem(i);
        if (j != 0) goto _L6; else goto _L5
_L5:
        e.a(view, (h)obj);
_L8:
        return view;
_L3:
        view = e.g(d);
        continue; /* Loop/switch isn't completed */
_L4:
        view = e.h(d);
        continue; /* Loop/switch isn't completed */
_L6:
        if (j != 1) goto _L8; else goto _L7
_L7:
        a(i, view);
        e.a(this, view, (g)obj);
        return view;
        if (true) goto _L2; else goto _L9
_L9:
    }

    public int getViewTypeCount()
    {
        return 2;
    }
}
