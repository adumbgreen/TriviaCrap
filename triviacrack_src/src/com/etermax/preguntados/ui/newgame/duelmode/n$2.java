// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.view.View;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.a;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            n

class a
    implements android.view..OnClickListener
{

    final UserDTO a;
    final n b;

    public void onClick(View view)
    {
        n.b(b).a(a);
    }

    rDTO(n n1, UserDTO userdto)
    {
        b = n1;
        a = userdto;
        super();
    }
}
