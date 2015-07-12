// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.os.Bundle;
import android.view.View;
import com.etermax.gamescommon.j.c;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.o;
import com.etermax.tools.social.a.b;

// Referenced classes of package com.etermax.gamescommon.social:
//            e

class a
    implements android.view..OnClickListener
{

    final e a;

    public void onClick(View view)
    {
        (new c(a.getString(o.loading), a.a, a.d, a.b, a.e, a.getArguments().getString("FROM")) {

            final e._cls3 a;

            
            {
                a = e._cls3.this;
                super(s, b, c1, a1, a2, s1);
            }
        }).a(a.getActivity());
        a.dismiss();
    }

    ource.a(e e1)
    {
        a = e1;
        super();
    }
}
