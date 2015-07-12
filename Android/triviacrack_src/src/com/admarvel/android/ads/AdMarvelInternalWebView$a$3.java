// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.view.KeyEvent;
import android.view.View;

class a
    implements android.view.WebView.a._cls3
{

    final a a;

    public boolean onKey(View view, int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 0 && i == 4)
        {
            if (a(a) == null)
            {
                return view.onKeyDown(i, keyevent);
            } else
            {
                a.a();
                return true;
            }
        } else
        {
            return false;
        }
    }

    ( )
    {
        a = ;
        super();
    }
}
