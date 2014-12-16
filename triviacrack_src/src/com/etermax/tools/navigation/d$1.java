// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.navigation;

import android.app.Activity;
import android.content.Context;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

// Referenced classes of package com.etermax.tools.navigation:
//            d, e

class a
    implements android.support.v4.widget.erLayout.DrawerListener
{

    final d a;

    public void onDrawerClosed(View view)
    {
        if (d.f(a))
        {
            a.a(null, null);
        }
        if (d.g(a))
        {
            a.b(null, null);
        }
        if (view != d.a(a) || d.b(a) == null) goto _L2; else goto _L1
_L1:
        d.b(a).h();
_L4:
        InputMethodManager inputmethodmanager = (InputMethodManager)d.d(a).getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(((Activity)d.d(a).getContext()).getCurrentFocus().getWindowToken(), 0);
        }
        return;
_L2:
        if (view == d.c(a) && d.e(a) != null)
        {
            d.e(a).h();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onDrawerOpened(View view)
    {
        if (view != d.a(a)) goto _L2; else goto _L1
_L1:
        if (d.b(a) != null)
        {
            d.b(a).i();
        }
        d.d(a).setDrawerLockMode(1, d.c(a));
_L4:
        InputMethodManager inputmethodmanager = (InputMethodManager)d.d(a).getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(((Activity)d.d(a).getContext()).getCurrentFocus().getWindowToken(), 0);
        }
        return;
_L2:
        if (view == d.c(a))
        {
            if (d.e(a) != null)
            {
                d.e(a).i();
            }
            d.d(a).setDrawerLockMode(1, d.a(a));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onDrawerSlide(View view, float f)
    {
    }

    public void onDrawerStateChanged(int i)
    {
    }

    hodManager(d d1)
    {
        a = d1;
        super();
    }
}
