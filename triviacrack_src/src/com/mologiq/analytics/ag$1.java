// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import java.util.Comparator;

// Referenced classes of package com.mologiq.analytics:
//            ag

class a
    implements Comparator
{

    private final boolean a;

    public int a(java.util.ntry ntry, java.util.ntry ntry1)
    {
        if (a)
        {
            return ((Integer)ntry.getValue()).compareTo((Integer)ntry1.getValue());
        } else
        {
            return ((Integer)ntry1.getValue()).compareTo((Integer)ntry.getValue());
        }
    }

    public int compare(Object obj, Object obj1)
    {
        return a((java.util.ntry)obj, (java.util.ntry)obj1);
    }

    (boolean flag)
    {
        a = flag;
        super();
    }
}
