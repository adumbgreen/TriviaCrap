// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserButtonsView, j

class a
    implements android.view.fileUserButtonsView._cls3
{

    final ProfileUserButtonsView a;

    public void onClick(View view)
    {
        a.o.j();
        ProfileUserButtonsView.a(a, "invite_friends", "own_profile_main_actions");
    }

    A(ProfileUserButtonsView profileuserbuttonsview)
    {
        a = profileuserbuttonsview;
        super();
    }
}
