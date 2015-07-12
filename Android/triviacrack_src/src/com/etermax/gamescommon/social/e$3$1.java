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

class rce.a extends c
{

    final rce.a a;

    rce.a(rce.a a1, String s, b b, com.etermax.gamescommon.login.datasource.c c1, a a2, com.etermax.tools.f.a a3, String s1)
    {
        a = a1;
        super(s, b, c1, a2, a3, s1);
    }

    // Unreferenced inner class com/etermax/gamescommon/social/e$3

/* anonymous class */
    class e._cls3
        implements android.view.View.OnClickListener
    {

        final e a;

        public void onClick(View view)
        {
            (new e._cls3._cls1(this, a.getString(o.loading), a.a, a.d, a.b, a.e, a.getArguments().getString("FROM"))).a(a.getActivity());
            a.dismiss();
        }

            
            {
                a = e1;
                super();
            }
    }

}
