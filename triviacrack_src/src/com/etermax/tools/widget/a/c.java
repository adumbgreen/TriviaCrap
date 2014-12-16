// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.a;

import android.widget.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.etermax.tools.widget.a:
//            b, d

public class c extends Filter
{

    final b a;

    public c(b b1)
    {
        a = b1;
        super();
    }

    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
    {
        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
        if (charsequence == null || charsequence.length() == 0)
        {
            filterresults.count = a.c.size();
            filterresults.values = a.c;
            return filterresults;
        }
        if (b.a(a) == null)
        {
            b.a(a, a.c);
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = b.a(a).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj = iterator.next();
            if (obj instanceof d)
            {
                String s = ((d)obj).a();
                if (Pattern.compile(charsequence.toString(), 2).matcher(s).find())
                {
                    arraylist.add(obj);
                }
            } else
            {
                arraylist.add(obj);
            }
        } while (true);
        filterresults.count = arraylist.size();
        filterresults.values = arraylist;
        return filterresults;
    }

    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
    {
        a.c = (List)filterresults.values;
        a.notifyDataSetChanged();
    }
}
