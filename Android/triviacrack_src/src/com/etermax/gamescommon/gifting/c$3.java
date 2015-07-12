// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.widget.Toast;
import com.etermax.a.a;
import com.etermax.gamescommon.social.i;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            c, e

class a
    implements i
{

    final c a;

    public void a()
    {
        if (a.d != null)
        {
            a.d.a(false);
        }
        a.dismiss();
    }

    public void a(Exception exception)
    {
        Toast.makeText(a.getActivity(), a.getString(o.error), 1).show();
        com.etermax.a.a.c("Facebook", exception.getMessage());
    }

    (c c1)
    {
        a = c1;
        super();
    }
}
