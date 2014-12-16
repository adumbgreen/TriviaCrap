// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.ui.rankings.adapter.view.e;
import com.etermax.tools.widget.a.a;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter:
//            c

public class b extends a
{

    private int a;

    public b(Context context, List list, c c1, long l)
    {
        super(context, list, c1);
        c.add(0, Integer.valueOf(2));
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public int getItemViewType(int i)
    {
        if (getItem(i).equals(Integer.valueOf(2)))
        {
            return 2;
        } else
        {
            return super.getItemViewType(i);
        }
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1 = super.getView(i, view, viewgroup);
        int j = getItemViewType(i);
        if (view1 == null)
        {
            view1 = ((c)e).a(d);
        }
        if (j == 0)
        {
            ((c)e).a((e)view1, a);
        }
        return view1;
    }

    public int getViewTypeCount()
    {
        return 1 + super.getViewTypeCount();
    }

    public boolean isEnabled(int i)
    {
        return false;
    }
}
