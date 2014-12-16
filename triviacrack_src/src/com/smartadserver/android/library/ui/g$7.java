// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.webkit.WebView;
import com.smartadserver.android.library.controller.mraid.a;
import com.smartadserver.android.library.controller.mraid.e;
import com.smartadserver.android.library.controller.mraid.f;

// Referenced classes of package com.smartadserver.android.library.ui:
//            g

class a
    implements Runnable
{

    final g a;

    public void run()
    {
        a.removeView(g.c(a));
        Object obj = new Object();
        a.a(obj, a.b);
        a.a(obj, e.a);
        a.a(obj, f.a);
        g.c(a).setOnTouchListener(null);
        g.c(a).destroy();
    }

    ler.mraid.f(g g1)
    {
        a = g1;
        super();
    }
}
