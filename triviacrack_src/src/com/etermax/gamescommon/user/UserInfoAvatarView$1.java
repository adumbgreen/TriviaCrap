// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.view.View;
import com.etermax.gamescommon.j;

// Referenced classes of package com.etermax.gamescommon.user:
//            UserInfoAvatarView, b

class a
    implements android.view.nfoAvatarView._cls1
{

    final j a;
    final UserInfoAvatarView b;

    public void onClick(View view)
    {
        if (UserInfoAvatarView.a(b) != null)
        {
            UserInfoAvatarView.a(b).a(a);
        }
    }

    (UserInfoAvatarView userinfoavatarview, j j)
    {
        b = userinfoavatarview;
        a = j;
        super();
    }
}
