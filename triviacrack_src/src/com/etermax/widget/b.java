// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget;

import com.etermax.widget.a.a;
import java.text.Collator;
import java.util.Comparator;

// Referenced classes of package com.etermax.widget:
//            a

public class b
    implements Comparator
{

    final com.etermax.widget.a a;
    private Collator b;

    public b(com.etermax.widget.a a1, Collator collator)
    {
        a = a1;
        super();
        b = collator;
    }

    public int a(a a1, a a2)
    {
        return b.compare(a1.toString(), a2.toString());
    }

    public int compare(Object obj, Object obj1)
    {
        return a((a)obj, (a)obj1);
    }

    public boolean equals(Object obj)
    {
        return false;
    }
}
