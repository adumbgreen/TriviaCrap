// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.view.View;
import com.etermax.preguntados.datasource.dto.ProfileDTO;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            e, f

class a
    implements android.view..OnClickListener
{

    final e a;

    public void onClick(View view)
    {
        ((f)e.c(a)).a(e.a(a).getLevel());
    }

    ProfileDTO(e e1)
    {
        a = e1;
        super();
    }
}
