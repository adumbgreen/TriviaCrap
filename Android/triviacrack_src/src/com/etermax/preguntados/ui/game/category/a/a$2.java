// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import android.view.View;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.k;
import com.etermax.preguntados.ui.profile.ProfileActivity;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            a

class a
    implements android.view..OnClickListener
{

    final k a;
    final a b;

    public void onClick(View view)
    {
        android.content.Intent intent = ProfileActivity.a(com.etermax.preguntados.ui.game.category.a.a.a(b), a.getId().longValue(), an.h.toString());
        b.startActivity(intent);
    }

    ity(a a1, k k1)
    {
        b = a1;
        a = k1;
        super();
    }
}
