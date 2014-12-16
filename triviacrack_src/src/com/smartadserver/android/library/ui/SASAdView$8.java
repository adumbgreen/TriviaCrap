// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import com.smartadserver.android.library.controller.a;
import com.smartadserver.android.library.controller.mraid.f;
import java.lang.reflect.Method;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements Runnable
{

    final SASAdView a;

    public void run()
    {
        a.setVisibility(8);
        a.g.c.b();
        try
        {
            Class.forName("android.webkit.WebView").getMethod("onPause", (Class[])null).invoke(a.j.getChildAt(0), (Object[])null);
        }
        catch (Exception exception) { }
        a.j.b();
        a.j.a("about:blank");
    }

    d.f(SASAdView sasadview)
    {
        a = sasadview;
        super();
    }
}
