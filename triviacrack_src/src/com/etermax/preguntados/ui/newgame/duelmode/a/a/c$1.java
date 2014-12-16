// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode.a.a;

import android.view.View;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode.a.a:
//            c, a

class a
    implements android.view..OnClickListener
{

    final UserDTO a;
    final c b;

    public void onClick(View view)
    {
        b.a.a(a);
    }

    (c c1, UserDTO userdto)
    {
        b = c1;
        a = userdto;
        super();
    }
}
