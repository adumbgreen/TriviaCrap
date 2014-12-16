// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.net.Uri;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, f

class 
{

    public int a(AdMarvelWebView admarvelwebview)
    {
        f f1 = (f)admarvelwebview.findViewWithTag((new StringBuilder()).append(admarvelwebview.e).append("EMBEDDED_VIDEO").toString());
        if (f1 != null)
        {
            return !f1.b(f1.a().toString()) ? 0 : 1;
        } else
        {
            return 0;
        }
    }

    ()
    {
    }
}
