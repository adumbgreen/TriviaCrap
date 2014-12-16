// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.tabs;


// Referenced classes of package com.etermax.gamescommon.dashboard.tabs:
//            BadgeView, a

class a
    implements Runnable
{

    final BadgeView a;

    public void run()
    {
        int i = 99;
        int j = a.a.a(BadgeView.a(a));
        if (j > 0)
        {
            a.setVisibility(0);
            if (j <= i)
            {
                i = j;
            }
            a.setText((new StringBuilder()).append("").append(i).toString());
        } else
        {
            a.setVisibility(8);
        }
        a.invalidate();
    }

    (BadgeView badgeview)
    {
        a = badgeview;
        super();
    }
}
