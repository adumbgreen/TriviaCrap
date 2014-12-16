// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.tools.widget.a.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode.a:
//            d, c

public class b extends a
{

    protected c a;
    protected int b;

    public b(Context context, List list, int i, c c1)
    {
        super(context, list, c1);
        a = c1;
        b = i;
        c.add(Integer.valueOf(3));
    }

    public int a()
    {
        int i = 0;
        Iterator iterator = c.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (iterator.next() instanceof d)
            {
                i++;
            }
        } while (true);
        return i;
    }

    protected boolean a(int i)
    {
        return super.a(i) || getItemViewType(i + 1) != 1;
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public int getCount()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return super.getCount();
        }
    }

    public int getItemViewType(int i)
    {
        if (c.get(i).equals(Integer.valueOf(3)))
        {
            return 3;
        } else
        {
            return super.getItemViewType(i);
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        int j;
        view1 = super.getView(i, view, viewgroup);
        j = getItemViewType(i);
        if (view1 == null)
        {
            switch (j)
            {
            case 3: // '\003'
                break MISSING_BLOCK_LABEL_75;
            }
        }
_L1:
        switch (j)
        {
        case 1: // '\001'
        case 2: // '\002'
        default:
            return view1;

        case 0: // '\0'
            a.a(view1, a(), b);
            return view1;

        case 3: // '\003'
            a.a(view1);
            break;
        }
        break MISSING_BLOCK_LABEL_120;
        view1 = a.a(d);
          goto _L1
        return view1;
    }

    public int getViewTypeCount()
    {
        return 2 + super.getViewTypeCount();
    }

    public boolean isEnabled(int i)
    {
        return false;
    }
}
