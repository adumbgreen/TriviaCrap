// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.user.b.a;
import com.etermax.gamescommon.user.b.b;
import com.etermax.gamescommon.user.b.c;
import com.etermax.gamescommon.user.b.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.user.a:
//            f, h, a

public class g extends BaseAdapter
    implements Filterable
{

    List a;
    List b;
    List c;
    private Filter d;
    private com.etermax.gamescommon.user.a.a e;
    private Context f;
    private int g;
    private boolean h;

    public g(Context context, int i, List list, com.etermax.gamescommon.user.a.a a1)
    {
        this(context, i, list, a1, false);
    }

    public g(Context context, int i, List list, com.etermax.gamescommon.user.a.a a1, boolean flag)
    {
        f = context;
        b = list;
        e = a1;
        g = i;
        h = flag;
        a(list);
    }

    static void a(g g1, List list)
    {
        g1.a(list);
    }

    private void a(List list)
    {
        Iterator iterator;
        a = new ArrayList();
        iterator = list.iterator();
_L3:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        f f1 = (f)iterator.next();
        if (!f1.b().isEmpty())
        {
            a.add(new b(f1.a(), f1.c()));
            List list1 = f1.b();
            boolean flag = false;
            int i = 0;
            while (!flag) 
            {
                d d1 = new d(f1.a(), g);
                for (int j = 0; j < g; j++)
                {
                    if (list1.size() > i + j)
                    {
                        d1.a((UserDTO)list1.get(i + j));
                    }
                }

                int k = i + g;
                a.add(d1);
                boolean flag1;
                if (list1.size() <= k)
                {
                    flag1 = true;
                } else
                {
                    flag1 = flag;
                }
                flag = flag1;
                i = k;
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void a()
    {
        a(b);
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public int getCount()
    {
        return a.size();
    }

    public Filter getFilter()
    {
        if (d == null)
        {
            d = new h(this);
        }
        return d;
    }

    public Object getItem(int i)
    {
        return a.get(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemViewType(int i)
    {
        return ((a)a.get(i)).a().ordinal();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view != null) goto _L2; else goto _L1
_L1:
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.user.b.c.values().length];
                try
                {
                    a[c.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[c.a.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        com.etermax.gamescommon.user.a._cls1.a[((a)a.get(i)).a().ordinal()];
        JVM INSTR tableswitch 1 2: default 48
    //                   1 94
    //                   2 111;
           goto _L3 _L4 _L5
_L3:
        break; /* Loop/switch isn't completed */
_L5:
        break MISSING_BLOCK_LABEL_111;
_L2:
        switch (com.etermax.gamescommon.user.a._cls1.a[((a)a.get(i)).a().ordinal()])
        {
        default:
            return view;

        case 1: // '\001'
            e.a(this, view, (d)a.get(i), h);
            return view;

        case 2: // '\002'
            e.a(this, view, (b)a.get(i));
            break;
        }
        break MISSING_BLOCK_LABEL_182;
_L4:
        view = e.b(f);
          goto _L2
        view = e.a(f);
          goto _L2
        return view;
    }

    public int getViewTypeCount()
    {
        return com.etermax.gamescommon.user.b.c.values().length;
    }

    public boolean isEnabled(int i)
    {
        return false;
    }
}
