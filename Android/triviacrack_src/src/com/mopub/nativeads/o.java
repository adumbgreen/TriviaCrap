// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            ao, am, p, NativeResponse, 
//            aq, aj

class o
{

    private final am a;
    private final Map b;
    private final Map c;
    private final Handler d;
    private final p e;
    private final ao f;
    private aq g = new aq() {

        final o a;

        public void onVisibilityChanged(List list, List list1)
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                View view1 = (View)iterator.next();
                NativeResponse nativeresponse = (NativeResponse)o.a(a).get(view1);
                if (nativeresponse == null)
                {
                    a.a(view1);
                } else
                {
                    aj aj1 = (aj)o.b(a).get(view1);
                    if (aj1 == null || !nativeresponse.equals(aj1.a))
                    {
                        o.b(a).put(view1, new aj(nativeresponse));
                    }
                }
            } while (true);
            View view;
            for (Iterator iterator1 = list1.iterator(); iterator1.hasNext(); o.b(a).remove(view))
            {
                view = (View)iterator1.next();
            }

            a.c();
        }

            
            {
                a = o.this;
                super();
            }
    };

    o(Context context)
    {
        this(((Map) (new WeakHashMap())), ((Map) (new WeakHashMap())), new ao(), new am(context), new Handler());
    }

    o(Map map, Map map1, ao ao1, am am1, Handler handler)
    {
        b = map;
        c = map1;
        f = ao1;
        a = am1;
        a.a(g);
        d = handler;
        e = new p(this);
    }

    static Map a(o o1)
    {
        return o1.b;
    }

    static Map b(o o1)
    {
        return o1.c;
    }

    private void b(View view)
    {
        c.remove(view);
    }

    static ao c(o o1)
    {
        return o1.f;
    }

    void a()
    {
        b.clear();
        c.clear();
        a.a();
        d.removeMessages(0);
    }

    void a(View view)
    {
        b.remove(view);
        b(view);
        a.a(view);
    }

    void a(View view, NativeResponse nativeresponse)
    {
        if (b.get(view) != nativeresponse)
        {
            a(view);
            if (!nativeresponse.getRecordedImpression() && !nativeresponse.isDestroyed())
            {
                b.put(view, nativeresponse);
                a.a(view, nativeresponse.getImpressionMinPercentageViewed());
                return;
            }
        }
    }

    void b()
    {
        a();
        a.b();
        g = null;
    }

    void c()
    {
        if (d.hasMessages(0))
        {
            return;
        } else
        {
            d.postDelayed(e, 250L);
            return;
        }
    }
}
