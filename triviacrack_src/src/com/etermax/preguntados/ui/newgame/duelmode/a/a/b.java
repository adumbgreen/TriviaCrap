// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.ui.newgame.duelmode.a.d;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode.a.a:
//            c

public class b extends com.etermax.tools.widget.a.b
{

    protected c a;

    public b(Context context, List list, c c1)
    {
        super(context, list, c1);
        a = c1;
        c.add(Integer.valueOf(2));
    }

    public void a(List list, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new d((UserDTO)iterator.next(), 0))) { }
        h h1 = new h(arraylist, 0, true);
        c.clear();
        if (h1.c() && flag)
        {
            c.add(h1);
        }
        g g1;
        for (Iterator iterator1 = h1.a().iterator(); iterator1.hasNext(); c.add(g1))
        {
            g1 = (g)iterator1.next();
        }

        c.add(Integer.valueOf(2));
        notifyDataSetChanged();
        a.a();
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
        if (c.get(i).equals(Integer.valueOf(2)))
        {
            return 2;
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
            case 2: // '\002'
                break MISSING_BLOCK_LABEL_63;
            }
        }
_L1:
        switch (j)
        {
        default:
            return view1;

        case 2: // '\002'
            a.a(view1);
            break;
        }
        break MISSING_BLOCK_LABEL_88;
        view1 = a.a(d);
          goto _L1
        return view1;
    }

    public int getViewTypeCount()
    {
        return 1 + super.getViewTypeCount();
    }

    public boolean isEnabled(int i)
    {
        return getItemViewType(i) == 2;
    }
}
