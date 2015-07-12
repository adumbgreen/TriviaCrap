// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.slidingtab;

import android.view.View;

// Referenced classes of package com.etermax.widget.slidingtab:
//            SlidingTabLayout, e

class a
    implements android.support.v4.view.ViewPager.OnPageChangeListener
{

    final SlidingTabLayout a;
    private int b;

    private a(SlidingTabLayout slidingtablayout)
    {
        a = slidingtablayout;
        super();
    }

    a(SlidingTabLayout slidingtablayout, SlidingTabLayout._cls1 _pcls1)
    {
        this(slidingtablayout);
    }

    public void onPageScrollStateChanged(int i)
    {
        b = i;
        if (SlidingTabLayout.b(a) != null)
        {
            SlidingTabLayout.b(a).onPageScrollStateChanged(i);
        }
    }

    public void onPageScrolled(int i, float f, int j)
    {
        int k = SlidingTabLayout.a(a).getChildCount();
        if (k != 0 && i >= 0 && i < k)
        {
            SlidingTabLayout.a(a).a(i, f);
            View view = SlidingTabLayout.a(a).getChildAt(i);
            int l;
            if (view != null)
            {
                l = (int)(f * (float)view.getWidth());
            } else
            {
                l = 0;
            }
            SlidingTabLayout.a(a, i, l);
            if (SlidingTabLayout.b(a) != null)
            {
                SlidingTabLayout.b(a).onPageScrolled(i, f, j);
                return;
            }
        }
    }

    public void onPageSelected(int i)
    {
        if (b == 0)
        {
            SlidingTabLayout.a(a).a(i, 0.0F);
            SlidingTabLayout.a(a, i, 0);
        }
        if (SlidingTabLayout.b(a) != null)
        {
            SlidingTabLayout.b(a).onPageSelected(i);
        }
    }
}
