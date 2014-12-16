// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.slidingtab;

import android.support.v4.view.ViewPager;
import android.view.View;

// Referenced classes of package com.etermax.widget.slidingtab:
//            SlidingTabLayout, e

class b
    implements android.view.View.OnClickListener
{

    final SlidingTabLayout a;

    private b(SlidingTabLayout slidingtablayout)
    {
        a = slidingtablayout;
        super();
    }

    b(SlidingTabLayout slidingtablayout, SlidingTabLayout._cls1 _pcls1)
    {
        this(slidingtablayout);
    }

    public void onClick(View view)
    {
        int i = 0;
        while (i < SlidingTabLayout.a(a).getChildCount()) 
        {
            if (view == SlidingTabLayout.a(a).getChildAt(i))
            {
                SlidingTabLayout.c(a).setCurrentItem(i);
                view.setSelected(true);
            } else
            {
                SlidingTabLayout.a(a).getChildAt(i).setSelected(false);
            }
            i++;
        }
    }
}
