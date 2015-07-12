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
//            am, an, ao, aq

class ap
    implements Runnable
{

    final am a;
    private final ArrayList b = new ArrayList();
    private final ArrayList c = new ArrayList();

    ap(am am1)
    {
        a = am1;
        super();
    }

    public void run()
    {
        am.a(a, false);
        for (Iterator iterator = am.a(a).entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            View view = (View)entry.getKey();
            int i = ((an)entry.getValue()).a;
            if (am.b(a).a(view, i))
            {
                b.add(view);
            } else
            {
                c.add(view);
            }
        }

        if (am.c(a) != null)
        {
            am.c(a).onVisibilityChanged(b, c);
        }
        b.clear();
        c.clear();
    }
}
