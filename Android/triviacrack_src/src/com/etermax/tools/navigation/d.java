// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.navigation;

import android.app.Activity;
import android.content.Context;
import android.support.v4.widget.DrawerLayout;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;

// Referenced classes of package com.etermax.tools.navigation:
//            e

public class d
{

    private DrawerLayout a;
    private FrameLayout b;
    private FrameLayout c;
    private boolean d;
    private boolean e;
    private e f;
    private e g;

    public d(DrawerLayout drawerlayout, FrameLayout framelayout, FrameLayout framelayout1)
    {
        d = false;
        e = false;
        a = drawerlayout;
        b = framelayout;
        c = framelayout1;
        a.setDrawerListener(e());
    }

    static FrameLayout a(d d1)
    {
        return d1.b;
    }

    static e b(d d1)
    {
        return d1.g;
    }

    static FrameLayout c(d d1)
    {
        return d1.c;
    }

    static DrawerLayout d(d d1)
    {
        return d1.a;
    }

    static e e(d d1)
    {
        return d1.f;
    }

    static boolean f(d d1)
    {
        return d1.d;
    }

    static boolean g(d d1)
    {
        return d1.e;
    }

    public void a()
    {
        if (!d)
        {
            h();
        }
        if (!e)
        {
            i();
        }
    }

    public void a(int j, KeyEvent keyevent)
    {
        if (j == 82 && a.getDrawerLockMode(3) == 0 && d)
        {
            c();
        }
    }

    public void a(View view, e e1)
    {
        if (view != null)
        {
            b.addView(view);
        }
        if (e1 != null)
        {
            g = e1;
        }
        a.setDrawerLockMode(0, b);
        d = true;
    }

    public void b()
    {
        a.closeDrawers();
    }

    public void b(View view, e e1)
    {
        if (view != null)
        {
            c.addView(view);
        }
        if (e1 != null)
        {
            f = e1;
        }
        a.setDrawerLockMode(0, c);
        e = true;
    }

    public void c()
    {
        if (a.isDrawerOpen(3))
        {
            a.closeDrawer(3);
            return;
        }
        if (a.isDrawerOpen(5))
        {
            a.closeDrawer(5);
            return;
        } else
        {
            a.openDrawer(3);
            return;
        }
    }

    public void d()
    {
        if (a.isDrawerOpen(5))
        {
            a.closeDrawer(5);
            return;
        }
        if (a.isDrawerOpen(3))
        {
            a.closeDrawer(3);
            return;
        } else
        {
            a.openDrawer(5);
            return;
        }
    }

    public android.support.v4.widget.DrawerLayout.DrawerListener e()
    {
        return new android.support.v4.widget.DrawerLayout.DrawerListener() {

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

            public void onDrawerSlide(View view, float f1)
            {
            }

            public void onDrawerStateChanged(int j)
            {
            }

            
            {
                a = d.this;
                super();
            }
        };
    }

    public void f()
    {
        a.setDrawerLockMode(0);
    }

    public void g()
    {
        a.setDrawerLockMode(1);
    }

    public void h()
    {
        a.setDrawerLockMode(1, 3);
    }

    public void i()
    {
        a.setDrawerLockMode(1, 5);
    }
}
