// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.b.a:
//            m, l, au, n, 
//            d, aa, a, ai, 
//            ah, e, o, am

class k
{

    final m a = new m();
    final Context b;
    final ExecutorService c;
    final o d;
    final Map e = new LinkedHashMap();
    final Map f = new WeakHashMap();
    final Handler g;
    final Handler h;
    final e i;
    final am j;
    final List k = new ArrayList(4);
    final n l = new n(this);
    final boolean m;
    boolean n;

    k(Context context, ExecutorService executorservice, Handler handler, o o, e e1, am am)
    {
        a.start();
        b = context;
        c = executorservice;
        g = new l(a.getLooper(), this);
        d = o;
        h = handler;
        i = e1;
        j = am;
        n = au.d(b);
        m = au.b(context, "android.permission.ACCESS_NETWORK_STATE");
        l.a();
    }

    private void a(List list)
    {
        while (list == null || list.isEmpty() || !((d)list.get(0)).k().k) 
        {
            return;
        }
        StringBuilder stringbuilder = new StringBuilder();
        d d1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); stringbuilder.append(au.a(d1)))
        {
            d1 = (d)iterator.next();
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
        }

        au.a("Dispatcher", "delivered", stringbuilder.toString());
    }

    private void b()
    {
        if (!f.isEmpty())
        {
            a a1;
            for (Iterator iterator = f.values().iterator(); iterator.hasNext(); c(a1))
            {
                a1 = (a)iterator.next();
                iterator.remove();
                if (a1.h().k)
                {
                    au.a("Dispatcher", "replaying", a1.c().a());
                }
            }

        }
    }

    private void e(a a1)
    {
        Object obj = a1.d();
        if (obj != null)
        {
            a1.i = true;
            f.put(obj, a1);
        }
    }

    private void f(d d1)
    {
        a a1 = d1.j();
        if (a1 != null)
        {
            e(a1);
        }
        List list = d1.l();
        if (list != null)
        {
            int i1 = list.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                e((a)list.get(j1));
            }

        }
    }

    private void g(d d1)
    {
        if (!d1.d())
        {
            k.add(d1);
            if (!g.hasMessages(7))
            {
                g.sendEmptyMessageDelayed(7, 200L);
                return;
            }
        }
    }

    void a()
    {
        ArrayList arraylist = new ArrayList(k);
        k.clear();
        h.sendMessage(h.obtainMessage(8, arraylist));
        a(((List) (arraylist)));
    }

    void a(NetworkInfo networkinfo)
    {
        g.sendMessage(g.obtainMessage(9, networkinfo));
    }

    void a(a a1)
    {
        g.sendMessage(g.obtainMessage(1, a1));
    }

    void a(d d1)
    {
        g.sendMessage(g.obtainMessage(4, d1));
    }

    void a(d d1, boolean flag)
    {
        if (d1.k().k)
        {
            String s = au.a(d1);
            StringBuilder stringbuilder = (new StringBuilder()).append("for error");
            String s1;
            if (flag)
            {
                s1 = " (will replay)";
            } else
            {
                s1 = "";
            }
            au.a("Dispatcher", "batched", s, stringbuilder.append(s1).toString());
        }
        e.remove(d1.h());
        g(d1);
    }

    void a(boolean flag)
    {
        Handler handler = g;
        Handler handler1 = g;
        int i1;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        handler.sendMessage(handler1.obtainMessage(10, i1, 0));
    }

    void b(NetworkInfo networkinfo)
    {
        if (c instanceof ah)
        {
            ((ah)c).a(networkinfo);
        }
        if (networkinfo != null && networkinfo.isConnected())
        {
            b();
        }
    }

    void b(a a1)
    {
        g.sendMessage(g.obtainMessage(2, a1));
    }

    void b(d d1)
    {
        g.sendMessageDelayed(g.obtainMessage(5, d1), 500L);
    }

    void b(boolean flag)
    {
        n = flag;
    }

    void c(a a1)
    {
        d d1 = (d)e.get(a1.e());
        if (d1 == null) goto _L2; else goto _L1
_L1:
        d1.a(a1);
_L4:
        return;
_L2:
        if (!c.isShutdown())
        {
            break; /* Loop/switch isn't completed */
        }
        if (a1.h().k)
        {
            au.a("Dispatcher", "ignored", a1.b.a(), "because shut down");
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        d d2 = com.b.a.d.a(b, a1.h(), this, i, j, a1, d);
        d2.k = c.submit(d2);
        e.put(a1.e(), d2);
        f.remove(a1.d());
        if (a1.h().k)
        {
            au.a("Dispatcher", "enqueued", a1.b.a());
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    void c(d d1)
    {
        g.sendMessage(g.obtainMessage(6, d1));
    }

    void d(a a1)
    {
        String s = a1.e();
        d d1 = (d)e.get(s);
        if (d1 != null)
        {
            d1.b(a1);
            if (d1.c())
            {
                e.remove(s);
                if (a1.h().k)
                {
                    au.a("Dispatcher", "canceled", a1.c().a());
                }
            }
        }
        a a2 = (a)f.remove(a1.d());
        if (a2 != null && a2.h().k)
        {
            au.a("Dispatcher", "canceled", a2.c().a(), "from replaying");
        }
    }

    void d(d d1)
    {
        boolean flag = true;
        if (!d1.d()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (c.isShutdown())
        {
            a(d1, false);
            return;
        }
        NetworkInfo networkinfo;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (m)
        {
            networkinfo = ((ConnectivityManager)au.a(b, "connectivity")).getActiveNetworkInfo();
        } else
        {
            networkinfo = null;
        }
        if (networkinfo != null && networkinfo.isConnected())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        flag2 = d1.a(n, networkinfo);
        flag3 = d1.f();
        if (flag2)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!m || !flag3)
        {
            flag = false;
        }
        a(d1, flag);
        if (flag)
        {
            f(d1);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!m || flag1)
        {
            if (d1.k().k)
            {
                au.a("Dispatcher", "retrying", au.a(d1));
            }
            d1.k = c.submit(d1);
            return;
        }
        a(d1, flag3);
        if (flag3)
        {
            f(d1);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    void e(d d1)
    {
        if (!d1.e())
        {
            i.a(d1.h(), d1.g());
        }
        e.remove(d1.h());
        g(d1);
        if (d1.k().k)
        {
            au.a("Dispatcher", "batched", au.a(d1), "for completion");
        }
    }
}
