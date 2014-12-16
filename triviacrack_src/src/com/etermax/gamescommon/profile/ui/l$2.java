// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            l, h, m

class a
    implements android.view..OnClickListener
{

    final l a;

    public void onClick(View view)
    {
        a.b();
        if (l.a(a).isFriend())
        {
            l.b(a).f();
            l.a(a, "remove_friend", "another_profile_setting_actions");
            return;
        } else
        {
            l.b(a).e();
            l.a(a, "add_friend", "another_profile_main_actions");
            return;
        }
    }

    (l l1)
    {
        a = l1;
        super();
    }
}
