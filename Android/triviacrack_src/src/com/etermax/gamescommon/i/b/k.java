// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.etermax.o;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.b;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            h

public class k extends a
    implements b
{

    protected static boolean b;
    h a;

    public k()
    {
        setTargetFragment(this, 0);
    }

    public static k a(Context context, h h1, boolean flag)
    {
        b = flag;
        k k1 = new k();
        k1.setArguments(a(context.getString(o.logging_out), context.getString(o.dialog_logout), context.getString(o.yes), context.getString(o.cancel), null, true));
        k1.a(h1);
        return k1;
    }

    public void a(Bundle bundle)
    {
        a.a(2);
    }

    public void a(FragmentManager fragmentmanager)
    {
        super.show(fragmentmanager, "logout_dialog");
    }

    public void a(h h1)
    {
        a = h1;
    }

    protected int b()
    {
        if (b)
        {
            return com.etermax.k.etermaxtools_accept_cancel_dialog_red_green;
        } else
        {
            return super.b();
        }
    }

    public void onAccept(Bundle bundle)
    {
        a.c();
        a.a(1);
    }
}
