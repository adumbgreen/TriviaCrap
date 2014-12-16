// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.view.View;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.mopub.nativeads:
//            aq, o, NativeResponse, aj

class a
    implements aq
{

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

    veResponse(o o1)
    {
        a = o1;
        super();
    }
}
