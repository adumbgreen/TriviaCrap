// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            ao, ap, an, aq

class am
{

    android.view.ViewTreeObserver.OnPreDrawListener a;
    final WeakReference b;
    private final ArrayList c;
    private long d;
    private final Map e;
    private final ao f;
    private aq g;
    private final ap h;
    private final Handler i;
    private boolean j;

    public am(Context context)
    {
        this(context, ((Map) (new WeakHashMap(10))), new ao(), new Handler());
    }

    am(Context context, Map map, ao ao1, Handler handler)
    {
        d = 0L;
        e = map;
        f = ao1;
        i = handler;
        h = new ap(this);
        c = new ArrayList(50);
        View view = ((Activity)context).getWindow().getDecorView();
        b = new WeakReference(view);
        ViewTreeObserver viewtreeobserver = view.getViewTreeObserver();
        if (!viewtreeobserver.isAlive())
        {
            MoPubLog.w("Visibility Tracker was unable to track views because the root view tree observer was not alive");
            return;
        } else
        {
            a = new android.view.ViewTreeObserver.OnPreDrawListener() {

                final am a;

                public boolean onPreDraw()
                {
                    a.c();
                    return true;
                }

            
            {
                a = am.this;
                super();
            }
            };
            viewtreeobserver.addOnPreDrawListener(a);
            return;
        }
    }

    static Map a(am am1)
    {
        return am1.e;
    }

    private void a(long l)
    {
        Iterator iterator = e.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (((an)entry.getValue()).b < l)
            {
                c.add(entry.getKey());
            }
        } while (true);
        for (Iterator iterator1 = c.iterator(); iterator1.hasNext(); a((View)iterator1.next())) { }
        c.clear();
    }

    static boolean a(am am1, boolean flag)
    {
        am1.j = flag;
        return flag;
    }

    static ao b(am am1)
    {
        return am1.f;
    }

    static aq c(am am1)
    {
        return am1.g;
    }

    void a()
    {
        e.clear();
        i.removeMessages(0);
        j = false;
    }

    void a(View view)
    {
        e.remove(view);
    }

    void a(View view, int k)
    {
        an an1 = (an)e.get(view);
        if (an1 == null)
        {
            an1 = new an();
            e.put(view, an1);
            c();
        }
        an1.a = k;
        an1.b = d;
        d = 1L + d;
        if (d % 50L == 0L)
        {
            a(d - 50L);
        }
    }

    void a(aq aq)
    {
        g = aq;
    }

    void b()
    {
        a();
        View view = (View)b.get();
        if (view != null && a != null)
        {
            ViewTreeObserver viewtreeobserver = view.getViewTreeObserver();
            if (viewtreeobserver.isAlive())
            {
                viewtreeobserver.removeOnPreDrawListener(a);
            }
            a = null;
        }
        g = null;
    }

    void c()
    {
        if (j)
        {
            return;
        } else
        {
            j = true;
            i.postDelayed(h, 100L);
            return;
        }
    }
}
