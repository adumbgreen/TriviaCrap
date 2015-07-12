// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.b.g;
import com.etermax.gamescommon.menu.a.b.h;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            a, g

public class e extends a
{

    private boolean c;

    public e(o o)
    {
        super(g.e, o);
    }

    public View a(Context context, View view, BaseAdapter baseadapter)
    {
        g g1;
        if (view == null)
        {
            g1 = h.a(context);
        } else
        {
            g1 = (g)view;
        }
        if (c)
        {
            g1.c();
            return g1;
        } else
        {
            g1.b();
            return g1;
        }
    }

    public void a(boolean flag)
    {
        c = flag;
    }

    public boolean c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!super.equals(obj))
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            e e1 = (e)obj;
            if (c != e1.c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i = 31 * super.hashCode();
        char c1;
        if (c)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        return c1 + i;
    }
}
