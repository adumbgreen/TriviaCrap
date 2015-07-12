// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.b;

// Referenced classes of package com.etermax.gamescommon.j:
//            c

public class e extends a
    implements b
{

    private static c a;

    public e()
    {
        setTargetFragment(this, 0);
    }

    public static e a(Context context, String s, c c1)
    {
        a = c1;
        e e1 = new e();
        String s1;
        if (s == null)
        {
            s1 = context.getString(o.are_you_sure_facebook_link_guest_account);
        } else
        {
            s1 = String.format(context.getString(o.are_you_sure_to_link), new Object[] {
                s
            });
        }
        e1.setArguments(b(s1, context.getString(o.accept), context.getString(o.cancel)));
        return e1;
    }

    public void a(Bundle bundle)
    {
        a.d.d();
        a.e();
        a = null;
    }

    protected int b()
    {
        return k.link_choose_dialog;
    }

    public void onAccept(Bundle bundle)
    {
        com.etermax.gamescommon.j.c.a(a, getActivity(), false);
        a = null;
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        super.onCancel(dialoginterface);
        a.d.d();
        a.e();
        a = null;
    }
}
