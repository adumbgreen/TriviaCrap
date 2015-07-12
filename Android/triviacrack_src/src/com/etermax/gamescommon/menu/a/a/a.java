// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.a;

import android.content.Context;
import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.menu.a.o;

// Referenced classes of package com.etermax.gamescommon.menu.a.a:
//            g

public abstract class a
{

    protected g a;
    protected o b;

    protected a(g g1, o o1)
    {
        a = g1;
        b = o1;
    }

    public abstract View a(Context context, View view, BaseAdapter baseadapter);

    public g a()
    {
        return a;
    }

    public o b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (b != a1.b)
            {
                return false;
            }
            if (a != a1.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i;
        int j;
        g g1;
        int k;
        if (b == null)
        {
            i = 0;
        } else
        {
            i = b.hashCode();
        }
        j = 31 * (i + 31);
        g1 = a;
        k = 0;
        if (g1 != null)
        {
            k = a.hashCode();
        }
        return j + k;
    }
}
