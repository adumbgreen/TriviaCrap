// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.tools.widget.a.h;
import com.etermax.tools.widget.a.i;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.dashboard.a.a:
//            b, c

public class a extends com.etermax.tools.widget.a.a
{

    private b a;
    private boolean b;

    public a(Context context, List list, List list1, List list2, boolean flag, b b1)
    {
        int j = 1;
        super(context, list, b1);
        a = b1;
        b = flag;
        if (a.e())
        {
            a();
        } else
        if (a.d())
        {
            c.add(0, Integer.valueOf(9));
        } else
        {
            j = 0;
        }
        if (b1.a())
        {
            List list6 = c;
            int l1 = j + 1;
            list6.add(j, Integer.valueOf(2));
            j = l1;
        }
        if (b1.b() && list1 != null && list1.size() > 0)
        {
            List list3 = c;
            int k = j + 1;
            list3.add(j, Integer.valueOf(3));
            List list4 = c;
            int l = k + 1;
            list4.add(k, Integer.valueOf(5));
            Iterator iterator1 = list1.iterator();
            int k1;
            for (int i1 = l; iterator1.hasNext(); i1 = k1)
            {
                i j1 = (i)iterator1.next();
                List list5 = c;
                k1 = i1 + 1;
                list5.add(i1, j1);
            }

        }
        if (b1.c() && list2 != null && list2.size() > 0)
        {
            c.add(new h(null, 6));
            c c1;
            for (Iterator iterator = list2.iterator(); iterator.hasNext(); c.add(c1))
            {
                c1 = (c)iterator.next();
            }

        }
    }

    public void a()
    {
        if (c != null)
        {
            c.add(0, Integer.valueOf(8));
        }
    }

    protected boolean a(int j)
    {
        return j == -1 + getCount() || getItemViewType(j + 1) == 0 || getItemViewType(j + 1) == 6;
    }

    public void b()
    {
        if (c != null && c.size() > 0 && getItemViewType(0) == 8)
        {
            c.remove(0);
            notifyDataSetChanged();
        }
    }

    public int getItemViewType(int j)
    {
        byte byte0 = 2;
        Object obj = c.get(j);
        if (obj.equals(Integer.valueOf(8)))
        {
            byte0 = 8;
        } else
        {
            if (obj.equals(Integer.valueOf(9)))
            {
                return 9;
            }
            if (!obj.equals(Integer.valueOf(byte0)))
            {
                if (obj.equals(Integer.valueOf(3)))
                {
                    return 3;
                }
                if (obj.equals(Integer.valueOf(5)))
                {
                    return 5;
                }
                if (obj instanceof i)
                {
                    return 4;
                }
                if (obj.equals(Integer.valueOf(6)))
                {
                    return 6;
                }
                if ((obj instanceof c) || obj.equals(Integer.valueOf(7)))
                {
                    return 7;
                } else
                {
                    return super.getItemViewType(j);
                }
            }
        }
        return byte0;
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        View view1;
        int k;
        view1 = super.getView(j, view, viewgroup);
        k = getItemViewType(j);
        if (view1 != null) goto _L2; else goto _L1
_L1:
        k;
        JVM INSTR tableswitch 2 9: default 68
    //                   2 136
    //                   3 154
    //                   4 190
    //                   5 172
    //                   6 208
    //                   7 226
    //                   8 100
    //                   9 118;
           goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L2:
        View view2 = view1;
_L16:
        Object obj = getItem(j);
        if (k != 8) goto _L12; else goto _L11
_L11:
        a.b(view2);
_L14:
        return view2;
_L9:
        view2 = a.e(d);
        continue; /* Loop/switch isn't completed */
_L10:
        view2 = a.f(d);
        continue; /* Loop/switch isn't completed */
_L3:
        view2 = a.a(d);
        continue; /* Loop/switch isn't completed */
_L4:
        view2 = a.g(d);
        continue; /* Loop/switch isn't completed */
_L6:
        view2 = a.c(d);
        continue; /* Loop/switch isn't completed */
_L5:
        view2 = a.b(d);
        continue; /* Loop/switch isn't completed */
_L7:
        view2 = a.g(d);
        continue; /* Loop/switch isn't completed */
_L8:
        view2 = a.d(d);
        continue; /* Loop/switch isn't completed */
_L12:
        if (k == 9)
        {
            a.c(view2);
            return view2;
        }
        if (k == 2)
        {
            a.a(view2);
            return view2;
        }
        if (k == 5)
        {
            a.d(view2);
            a.a(view2, Boolean.valueOf(b));
            return view2;
        }
        if (k == 3)
        {
            h h1 = new h(null, 4);
            a.a(view2, h1);
            return view2;
        }
        if (k == 4)
        {
            a(j, view2);
            a.a(this, view2, (i)obj);
            return view2;
        }
        if (k == 6)
        {
            a.a(view2, (h)obj);
            return view2;
        }
        if (k != 7) goto _L14; else goto _L13
_L13:
        a(j, view2);
        a.a(this, view2, (c)obj);
        return view2;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public int getViewTypeCount()
    {
        int j = super.getViewTypeCount();
        if (a.d())
        {
            j++;
        }
        if (a.a())
        {
            j++;
        }
        if (a.b())
        {
            j = 1 + (1 + (j + 1));
        }
        if (a.c())
        {
            j = 1 + (j + 1);
        }
        return j + 1;
    }
}
