// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.mopub.mobileads:
//            a, AdAlertReporter, AdConfiguration

public class AdAlertGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
{

    private float a;
    private float b;
    private boolean c;
    private boolean d;
    private AdAlertReporter e;
    private int f;
    private float g;
    private a h;
    private View i;
    private AdConfiguration j;

    AdAlertGestureListener(View view, AdConfiguration adconfiguration)
    {
        a = 100F;
        h = a.UNSET;
        if (view != null && view.getWidth() > 0)
        {
            a = Math.min(100F, (float)view.getWidth() / 3F);
        }
        i = view;
        j = adconfiguration;
    }

    private void a(float f1)
    {
        if (f1 > g)
        {
            h = a.GOING_RIGHT;
        }
    }

    private boolean a(float f1, float f2)
    {
        return Math.abs(f2 - f1) > 50F;
    }

    private void b(float f1)
    {
        if (d(f1) && g(f1))
        {
            h = a.GOING_LEFT;
            g = f1;
        }
    }

    private void c()
    {
        f = 1 + f;
        if (f >= 4)
        {
            h = a.FINISHED;
        }
    }

    private void c(float f1)
    {
        if (e(f1) && f(f1))
        {
            h = a.GOING_RIGHT;
            g = f1;
        }
    }

    private boolean d(float f1)
    {
        if (d)
        {
            return true;
        }
        if (f1 >= g + a)
        {
            c = false;
            d = true;
            return true;
        } else
        {
            return false;
        }
    }

    private boolean e(float f1)
    {
        if (c)
        {
            return true;
        }
        if (f1 <= g - a)
        {
            d = false;
            c = true;
            c();
            return true;
        } else
        {
            return false;
        }
    }

    private boolean f(float f1)
    {
        return f1 > b;
    }

    private boolean g(float f1)
    {
        return f1 < b;
    }

    void a()
    {
        a a1 = h;
        a _tmp = h;
        if (a1 == a.FINISHED)
        {
            e = new AdAlertReporter(i.getContext(), i, j);
            e.send();
        }
        b();
    }

    void b()
    {
        f = 0;
        h = a.UNSET;
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        if (h == a.FINISHED)
        {
            return super.onScroll(motionevent, motionevent1, f1, f2);
        }
        if (a(motionevent.getY(), motionevent1.getY()))
        {
            h = a.FAILED;
            return super.onScroll(motionevent, motionevent1, f1, f2);
        }
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.mopub.mobileads.a.values().length];
                try
                {
                    a[a.UNSET.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[a.GOING_RIGHT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.GOING_LEFT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.FAILED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls1.a[h.ordinal()];
        JVM INSTR tableswitch 1 4: default 92
    //                   1 110
    //                   2 129
    //                   3 140
    //                   4 92;
           goto _L1 _L2 _L3 _L4 _L1
_L1:
        b = motionevent1.getX();
        return super.onScroll(motionevent, motionevent1, f1, f2);
_L2:
        g = motionevent.getX();
        a(motionevent1.getX());
        continue; /* Loop/switch isn't completed */
_L3:
        b(motionevent1.getX());
        continue; /* Loop/switch isn't completed */
_L4:
        c(motionevent1.getX());
        if (true) goto _L1; else goto _L5
_L5:
    }
}
