// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.View;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileUserHeader, e

class a
    implements android.view.
{

    final ProfileUserHeader a;

    public void onClick(View view)
    {
        if (ProfileUserHeader.a(a) != null && !ProfileUserHeader.a(a).isAdded())
        {
            ProfileUserHeader.b(a).getChildFragmentManager().executePendingTransactions();
            ProfileUserHeader.a(a).show(ProfileUserHeader.b(a).getChildFragmentManager(), "big_picture_dialog");
        }
    }

    (ProfileUserHeader profileuserheader)
    {
        a = profileuserheader;
        super();
    }
}
