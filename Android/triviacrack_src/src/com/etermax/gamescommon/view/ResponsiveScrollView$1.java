// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;


// Referenced classes of package com.etermax.gamescommon.view:
//            ResponsiveScrollView, g

class a
    implements Runnable
{

    final ResponsiveScrollView a;

    public void run()
    {
        if (a.getScrollY() == 0)
        {
            if (ResponsiveScrollView.a(a) != null)
            {
                ResponsiveScrollView.a(a).a();
            }
            return;
        } else
        {
            a.postDelayed(ResponsiveScrollView.b(a), ResponsiveScrollView.c(a));
            return;
        }
    }

    _cls9(ResponsiveScrollView responsivescrollview)
    {
        a = responsivescrollview;
        super();
    }
}
