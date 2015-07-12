// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import com.smartadserver.android.library.b.e;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.a;

// Referenced classes of package com.smartadserver.android.library.controller:
//            a

class b
    implements a
{

    a a;
    boolean b;
    final com.smartadserver.android.library.controller.a c;

    public b(com.smartadserver.android.library.controller.a a1, a a2, boolean flag)
    {
        c = a1;
        super();
        a = a2;
        b = flag;
    }

    private void a(Exception exception)
    {
        if (com.smartadserver.android.library.controller.a.a(c).getCurrentLoaderView() != null)
        {
            com.smartadserver.android.library.controller.a.a(c).b(com.smartadserver.android.library.controller.a.a(c).getCurrentLoaderView());
        }
        c.d();
        if (exception != null)
        {
            com.smartadserver.android.library.h.c.a(com.smartadserver.android.library.controller.a.e(), (new StringBuilder()).append("adElementLoadFail: ").append(exception.toString()).toString());
            if (a != null)
            {
                a.adLoadingFailed(exception);
            }
        }
    }

    public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
    {
label0:
        {
            int i = 0;
            com.smartadserver.android.library.controller.a.a(c).l = a1;
            if (!b)
            {
                a1.b(false);
            }
            boolean flag = c.a(a1);
            String as[] = a1.a();
            if (flag && as.length != 0)
            {
                e e1 = com.smartadserver.android.library.controller.a.a(c).e;
                for (int j = as.length; i < j; i++)
                {
                    e1.a(as[i], true);
                }

            }
            if (com.smartadserver.android.library.controller.a.a(c).getCurrentLoaderView() != null)
            {
                com.smartadserver.android.library.controller.a.a(c).b(com.smartadserver.android.library.controller.a.a(c).getCurrentLoaderView());
            }
            c.d();
            com.smartadserver.android.library.h.c.a(com.smartadserver.android.library.controller.a.e(), "Display ad finished");
            if (a != null)
            {
                if (!flag)
                {
                    break label0;
                }
                a.adLoadingCompleted(a1);
            }
            return;
        }
        a(new com.smartadserver.android.library.a.b("Ad was not properly displayed"));
    }

    public void adLoadingFailed(Exception exception)
    {
        a(exception);
    }
}
