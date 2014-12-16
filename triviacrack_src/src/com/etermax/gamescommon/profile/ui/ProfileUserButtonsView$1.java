// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserButtonsView, j

class a
    implements android.view.fileUserButtonsView._cls1
{

    final ProfileUserButtonsView a;

    public void onClick(View view)
    {
        a.o.n();
        if (ProfileUserButtonsView.a(a))
        {
            ProfileUserButtonsView.a(a, "view_friends", "own_profile_main_actions");
            return;
        } else
        {
            ProfileUserButtonsView.a(a, "view_friends", "another_profile_main_actions");
            return;
        }
    }

    A(ProfileUserButtonsView profileuserbuttonsview)
    {
        a = profileuserbuttonsview;
        super();
    }
}
