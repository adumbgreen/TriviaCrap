// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.OpenUDID;

import java.util.Comparator;
import java.util.Map;

// Referenced classes of package org.OpenUDID:
//            a

class b
    implements Comparator
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public int a(String s, String s1)
    {
        if (((Integer)org.OpenUDID.a.a(a).get(s)).intValue() < ((Integer)org.OpenUDID.a.a(a).get(s1)).intValue())
        {
            return 1;
        }
        return org.OpenUDID.a.a(a).get(s) != org.OpenUDID.a.a(a).get(s1) ? -1 : 0;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((String)obj, (String)obj1);
    }
}
