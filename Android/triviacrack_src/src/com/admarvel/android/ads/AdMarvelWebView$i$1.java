// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.os.Handler;
import android.view.View;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

class a
    implements android.view.
{

    final AdMarvelWebView a;
    final a b;

    public void onClick(View view)
    {
        AdMarvelWebView.d(a).post(new nit>(a));
    }

    ( , AdMarvelWebView admarvelwebview)
    {
        b = ;
        a = admarvelwebview;
        super();
    }
}
