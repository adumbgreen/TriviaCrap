// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            o, aj, NativeResponse, ao

class p
    implements Runnable
{

    final o a;
    private final ArrayList b = new ArrayList();

    p(o o1)
    {
        a = o1;
        super();
    }

    public void run()
    {
        Iterator iterator = o.b(a).entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            View view1 = (View)entry.getKey();
            aj aj1 = (aj)entry.getValue();
            if (o.c(a).a(aj1.b, ((NativeResponse)aj1.a).getImpressionMinTimeViewed()))
            {
                ((NativeResponse)aj1.a).recordImpression(view1);
                b.add(view1);
            }
        } while (true);
        View view;
        for (Iterator iterator1 = b.iterator(); iterator1.hasNext(); a.a(view))
        {
            view = (View)iterator1.next();
        }

        b.clear();
        if (!o.b(a).isEmpty())
        {
            a.c();
        }
    }
}
