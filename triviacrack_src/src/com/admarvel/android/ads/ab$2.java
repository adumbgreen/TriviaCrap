// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.webkit.WebView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ab

class a
    implements Runnable
{

    final ab a;

    public void run()
    {
        if (ab.a(a) != null)
        {
            Context context = (Context)ab.a(a).get();
            if (context != null)
            {
                (new WebView(context)).loadDataWithBaseURL(null, ab.b(a), "text/html", "utf-8", null);
            }
        }
    }

    (ab ab1)
    {
        a = ab1;
        super();
    }
}
