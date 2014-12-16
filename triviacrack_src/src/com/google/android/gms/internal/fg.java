// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            aj, fz, aw, bj, 
//            ay, ba, am

public final class fg
{

    public final aj a;
    public final fz b;
    public final List c;
    public final int d;
    public final List e;
    public final List f;
    public final int g;
    public final long h;
    public final String i;
    public final JSONObject j;
    public final boolean k;
    public final aw l;
    public final bj m;
    public final String n;
    public final ay o;
    public final ba p;
    public final long q;
    public final am r;
    public final long s;
    public final long t;
    public final long u;
    public final String v;

    public fg(aj aj, fz fz, List list, int i1, List list1, List list2, int j1, 
            long l1, String s1, boolean flag, aw aw, bj bj, String s2, 
            ay ay, ba ba, long l2, am am, long l3, 
            long l4, long l5, String s3, JSONObject jsonobject)
    {
        a = aj;
        b = fz;
        List list3;
        List list4;
        List list5;
        if (list != null)
        {
            list3 = Collections.unmodifiableList(list);
        } else
        {
            list3 = null;
        }
        c = list3;
        d = i1;
        if (list1 != null)
        {
            list4 = Collections.unmodifiableList(list1);
        } else
        {
            list4 = null;
        }
        e = list4;
        if (list2 != null)
        {
            list5 = Collections.unmodifiableList(list2);
        } else
        {
            list5 = null;
        }
        f = list5;
        g = j1;
        h = l1;
        i = s1;
        k = flag;
        l = aw;
        m = bj;
        n = s2;
        o = ay;
        p = ba;
        q = l2;
        r = am;
        s = l3;
        t = l4;
        u = l5;
        v = s3;
        j = jsonobject;
    }
}
