// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import android.widget.Filter;
import com.etermax.a.b;
import com.etermax.gamescommon.j;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.etermax.gamescommon.user.a:
//            b, e

public class c extends Filter
{

    final com.etermax.gamescommon.user.a.b a;

    public c(com.etermax.gamescommon.user.a.b b1)
    {
        a = b1;
        super();
    }

    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        if (com.etermax.gamescommon.user.a.b.b(a) == null)
        {
            b.a(a, b.c(a));
        }
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Iterator iterator = com.etermax.gamescommon.user.a.b.b(a).values().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            e e1 = (e)iterator.next();
            String s = b.d(e1.b().getName());
            if (Pattern.compile(charsequence.toString(), 2).matcher(s).find())
            {
                linkedhashmap.put(e1.b().getId(), e1);
            }
        } while (true);
        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
        filterresults.count = linkedhashmap.size();
        filterresults.values = linkedhashmap;
        return filterresults;
    }

    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        com.etermax.gamescommon.user.a.b.b(a, (Map)filterresults.values);
        a.notifyDataSetChanged();
    }
}
