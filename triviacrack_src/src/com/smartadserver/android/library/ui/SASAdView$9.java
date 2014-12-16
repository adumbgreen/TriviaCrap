// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import java.lang.reflect.Method;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASAdView, g

class a
    implements Runnable
{

    final SASAdView a;

    public void run()
    {
        a.j.b();
        a.j.a("about:blank");
        try
        {
            Class.forName("android.webkit.WebView").getMethod("onResume", (Class[])null).invoke(a.j.getChildAt(0), (Object[])null);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    (SASAdView sasadview)
    {
        a = sasadview;
        super();
    }
}
