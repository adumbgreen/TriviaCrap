// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            e

class a
    implements g
{

    final e a;

    public void a()
    {
    }

    public void a(String s)
    {
        if (a.getActivity() != null)
        {
            Toast.makeText(a.getActivity(), o.facebook_invite_failure, 0).show();
            Toast.makeText(a.getActivity(), (new StringBuilder()).append("Facebook Error: ").append(s).toString(), 0).show();
        }
    }

    public void b()
    {
    }

    (e e1)
    {
        a = e1;
        super();
    }
}
