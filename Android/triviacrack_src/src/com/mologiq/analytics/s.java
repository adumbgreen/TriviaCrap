// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mologiq.analytics:
//            k, aa, ac, ad, 
//            y, ag, ab, x, 
//            w, t, f

public class s
{

    private static s b;
    private final WeakReference a;

    private s(Context context)
    {
        a = new WeakReference(context);
    }

    public static s a(Context context)
    {
        if (b == null)
        {
            b = new s(context);
        }
        return b;
    }

    private Map a(List list, List list1)
    {
        Object obj = null;
        Iterator iterator = list.iterator();
        do
        {
            k k1;
            boolean flag;
            do
            {
                if (!iterator.hasNext())
                {
                    return ((Map) (obj));
                }
                k1 = (k)iterator.next();
                flag = true;
                if (k1.d().size() > 0)
                {
                    HashSet hashset = new HashSet(list1);
                    hashset.retainAll(k1.d());
                    if (hashset.isEmpty())
                    {
                        flag = false;
                    }
                }
                if (k1.c().size() > 0)
                {
                    HashSet hashset1 = new HashSet(list1);
                    hashset1.retainAll(k1.c());
                    if (!hashset1.isEmpty())
                    {
                        flag = false;
                    }
                }
            } while (!flag);
            if (obj == null)
            {
                obj = new HashMap();
            }
            Iterator iterator1 = k1.e().iterator();
            while (iterator1.hasNext()) 
            {
                aa aa1 = (aa)iterator1.next();
                ((Map) (obj)).put(aa1.a(), aa1.b());
            }
        } while (true);
    }

    public Map a(String s1, Map map)
    {
        Object obj;
        Context context;
        ac ac1;
        ad ad1;
        y y1;
        long l;
        ag ag1;
        ab ab1;
        String s2;
        ArrayList arraylist;
        Iterator iterator;
        String s3;
        aa aa1;
        String s4;
        Map map1;
        Map map2;
        try
        {
            context = (Context)a.get();
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
            return null;
        }
        if (context == null)
        {
            return null;
        }
        ac1 = ac.d(context);
        if (ac1.b())
        {
            return null;
        }
        if (map != null)
        {
            break MISSING_BLOCK_LABEL_486;
        }
        obj = new HashMap();
_L15:
        ad1 = ad.c();
        ad1.a(context);
        if (ac1.s() == null || ac1.s().size() <= 0) goto _L2; else goto _L1
_L1:
        map2 = a(ac1.s(), ad1.A());
        if (map2 == null) goto _L2; else goto _L3
_L3:
        ((Map) (obj)).putAll(map2);
_L2:
        y1 = y.b();
        y1.a(context);
        l = System.currentTimeMillis();
        if (l - y1.d() <= ac1.l()) goto _L5; else goto _L4
_L4:
        ag1 = new ag(context);
        ab1 = new ab();
        ab1.e(ad1.n());
        ab1.a(ad1.o());
        ab1.f(ad1.p());
        ab1.b("1.2.9");
        ab1.c("2014-07-08");
        if (context.getPackageName() != null) goto _L7; else goto _L6
_L6:
        s2 = "";
_L13:
        ab1.a(s2);
        ab1.d(s1);
        if (obj == null) goto _L9; else goto _L8
_L8:
        if (((Map) (obj)).size() <= 0) goto _L9; else goto _L10
_L10:
        arraylist = new ArrayList();
        iterator = ((Map) (obj)).keySet().iterator();
_L14:
        if (iterator.hasNext()) goto _L12; else goto _L11
_L11:
        if (arraylist.size() > 0)
        {
            ab1.a(arraylist);
        }
_L9:
        s4 = ag1.a(ac1.g(), ab1.a(), context, 500, 1000, true);
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_346;
        }
        if (s4.length() > 0)
        {
            y1.b(s4);
        }
        y1.a(l);
        y1.b(context);
_L5:
        map1 = y1.c();
        if (obj == null || map1 == null)
        {
            break MISSING_BLOCK_LABEL_492;
        }
        ((Map) (obj)).putAll(map1);
        break MISSING_BLOCK_LABEL_492;
_L7:
        s2 = context.getPackageName();
          goto _L13
_L12:
        s3 = (String)iterator.next();
        if (((Map) (obj)).get(s3) instanceof String)
        {
            aa1 = new aa();
            aa1.a(s3);
            aa1.b((String)((Map) (obj)).get(s3));
            arraylist.add(aa1);
        }
          goto _L14
        obj = map;
          goto _L15
        return ((Map) (obj));
    }

    public void a()
    {
    }

    public void a(String s1, int i, Map map, String s2)
    {
        Context context = (Context)a.get();
        if (context == null)
        {
            return;
        }
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(x.a);
            (new Thread(new w(context, arraylist, map, s1, i, s2))).start();
            return;
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
        }
        return;
    }

    public void a(String s1, int i, Map map, String s2, String s3)
    {
        Context context = (Context)a.get();
        if (context == null)
        {
            return;
        }
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(x.c);
            (new Thread(new w(context, arraylist, map, s1, i, s3))).start();
            return;
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
        }
        return;
    }

    public void b()
    {
    }

    public void b(String s1, int i, Map map, String s2)
    {
        Context context = (Context)a.get();
        if (context == null)
        {
            return;
        }
        try
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(x.a);
            arraylist.add(x.b);
            (new Thread(new w(context, arraylist, map, s1, i, s2))).start();
            return;
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
        }
        return;
    }

    public void c()
    {
        Context context = (Context)a.get();
        if (context == null)
        {
            return;
        }
        try
        {
            (new Thread(new t(context))).start();
            return;
        }
        catch (Exception exception)
        {
            ag.a((new StringBuilder("MologiqAnalytics")).append(exception.getStackTrace().toString()).toString());
        }
        return;
    }

    public void d()
    {
        Context context;
        try
        {
            context = (Context)a.get();
            f.c();
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
            return;
        }
        if (context != null);
    }
}
