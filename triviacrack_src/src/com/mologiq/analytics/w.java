// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mologiq.analytics:
//            ag, ad, c, d, 
//            e, x, ac

public class w
    implements Runnable
{

    private final List a;
    private final Map b = new HashMap();
    private final String c;
    private final long d;
    private final String e;
    private final WeakReference f;

    public w(Context context, List list, Map map, String s, int i, String s1)
    {
        f = new WeakReference(context);
        a = list;
        Iterator iterator = map.keySet().iterator();
        do
        {
            String s2;
            do
            {
                if (!iterator.hasNext())
                {
                    c = s;
                    d = i;
                    e = s1;
                    return;
                }
                s2 = (String)iterator.next();
            } while (!(map.get(s2) instanceof String));
            b.put(s2, (String)map.get(s2));
        } while (true);
    }

    private void a()
    {
        Context context;
        int i;
        c c1;
        String s;
        d d1;
        Iterator iterator;
        ArrayList arraylist;
        Iterator iterator1;
        ad ad1;
        try
        {
            context = (Context)f.get();
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
            return;
        }
        if (context == null)
        {
            return;
        }
        x x1;
        if (ag.b(context).equals("wifi"))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        ad1 = ad.c();
        ad1.a(context);
        c1 = new c();
        c1.e(ad1.n());
        c1.a(ad1.o());
        c1.f(ad1.p());
        c1.a("1.2.9");
        c1.b("2014-07-08");
        if (context.getPackageName() != null) goto _L2; else goto _L1
_L1:
        s = "";
_L8:
        c1.c(s);
        c1.getClass();
        d1 = new d(c1);
        d1.a(Long.valueOf(System.currentTimeMillis()));
        d1.a(c);
        d1.b(Long.valueOf(d));
        d1.b(context.getPackageName());
        if (b == null || b.size() <= 0) goto _L4; else goto _L3
_L3:
        arraylist = new ArrayList();
        iterator1 = b.keySet().iterator();
_L9:
        if (iterator1.hasNext()) goto _L6; else goto _L5
_L5:
        d1.a(arraylist);
_L4:
        c1.d(e);
        c1.a(i);
        iterator = a.iterator();
_L10:
        if (!iterator.hasNext())
        {
            a(context, c1.a());
            return;
        }
          goto _L7
_L2:
        s = context.getPackageName();
          goto _L8
_L6:
        String s1 = (String)iterator1.next();
        String s2 = (String)b.get(s1);
        d1.getClass();
        e e1 = new e(d1);
        e1.a(s1);
        e1.b(s2);
        arraylist.add(e1);
          goto _L9
_L7:
label0:
        {
            x1 = (x)iterator.next();
            if (!x1.equals(x.a))
            {
                break label0;
            }
            c1.b(d1);
        }
          goto _L10
        if (!x1.equals(x.b)) goto _L12; else goto _L11
_L11:
        c1.a(d1);
          goto _L10
_L12:
        if (!x1.equals(x.c)) goto _L10; else goto _L13
_L13:
        c1.c(d1);
          goto _L10
    }

    private void a(Context context, String s)
    {
        ag ag1 = new ag(context);
        ac ac1 = ac.d(context);
        String s1 = ag1.a(ac1.e(), s, context, 500, 1000, true);
        if (s1 != null && s1.length() > 0)
        {
            ac1.b(s1);
            ac1.b(context);
        }
    }

    public void run()
    {
        Context context = (Context)f.get();
        if (context == null)
        {
            return;
        }
        try
        {
            if (!ac.d(context).b())
            {
                a();
                return;
            }
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
        }
        return;
    }
}
