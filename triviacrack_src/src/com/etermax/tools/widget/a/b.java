// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.a;

import android.content.Context;
import android.widget.Filter;
import android.widget.Filterable;
import java.util.List;

// Referenced classes of package com.etermax.tools.widget.a:
//            a, g, c, e

public class b extends a
    implements Filterable
{

    private c a;
    private List b;

    public b(Context context, List list, e e)
    {
        super(context, list, e);
        b = null;
    }

    static List a(b b1)
    {
        return b1.b;
    }

    static List a(b b1, List list)
    {
        b1.b = list;
        return list;
    }

    public void a(g g1)
    {
        super.a(g1);
        if (b == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L7:
        if (i >= b.size()) goto _L2; else goto _L3
_L3:
        Object obj = b.get(i);
        if (!(obj instanceof g) || !g1.equals(obj)) goto _L5; else goto _L4
_L4:
        b.remove(i);
_L2:
        return;
_L5:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Filter getFilter()
    {
        if (a == null)
        {
            a = new c(this);
        }
        return a;
    }
}
