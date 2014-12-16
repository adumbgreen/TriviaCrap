// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.view.View;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.user.b.d;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            h, f

class c
    implements android.view..OnClickListener
{

    final UserDTO a;
    final d b;
    final BaseAdapter c;
    final h d;

    public void onClick(View view)
    {
        if (a.getIs_app_user())
        {
            d.a.a(b.b(), a);
        } else
        if (a.getInvitationStatus() == com.etermax.gamescommon.login.datasource.dto.DTO.InvitationStatus.NOT_INVITED)
        {
            d.a.a(c, a);
            return;
        }
    }

    (h h1, UserDTO userdto, d d1, BaseAdapter baseadapter)
    {
        d = h1;
        a = userdto;
        b = d1;
        c = baseadapter;
        super();
    }
}
