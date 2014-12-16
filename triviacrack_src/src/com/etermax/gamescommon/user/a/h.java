// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import android.widget.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.user.a:
//            g, f

public class h extends Filter
{

    final g a;

    public h(g g1)
    {
        a = g1;
        super();
    }

    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (a.c == null)
        {
            a.c = a.b;
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = a.b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            f f1 = ((f)iterator.next()).a(charsequence);
            if (f1 != null)
            {
                arraylist.add(f1);
            }
        } while (true);
        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
        filterresults.count = arraylist.size();
        filterresults.values = arraylist;
        return filterresults;
    }

    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        g.a(a, (List)filterresults.values);
        a.notifyDataSetChanged();
    }
}
