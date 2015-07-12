// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.view.KeyEvent;
import android.view.View;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView

class a
    implements android.view.WebView.o._cls2
{

    final AdMarvelWebView a;
    final a b;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && i == 4)
        {
            a.d();
            return true;
        } else
        {
            return false;
        }
    }

    ( , AdMarvelWebView admarvelwebview)
    {
        b = ;
        a = admarvelwebview;
        super();
    }
}
