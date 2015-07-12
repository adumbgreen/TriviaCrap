// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import com.smartadserver.android.library.d.a;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.g;

// Referenced classes of package com.smartadserver.android.library.controller:
//            a

class c
    implements Runnable
{

    final a a;
    final g b;
    final String c;
    final com.smartadserver.android.library.controller.a d;

    public void run()
    {
        String s = a.c();
        if (s == null)
        {
            s = SASAdView.getBaseUrl();
        }
        b.a(s, c, "text/html", "UTF-8", null);
        int i = a.g();
        b.setCloseButtonPosition(i);
        com.smartadserver.android.library.controller.a.a(d).k.setCloseButtonPosition(i);
    }

    (com.smartadserver.android.library.controller.a a1, a a2, g g1, String s)
    {
        d = a1;
        a = a2;
        b = g1;
        c = s;
        super();
    }
}
