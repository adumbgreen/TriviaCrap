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

public class d extends a
    implements b
{

    private static c a;

    public d()
    {
        setTargetFragment(this, 0);
    }

    public static d a(Context context, String s, String s1, c c1)
    {
        a = c1;
        d d1 = new d();
        String s2;
        if (s1 == null)
        {
            s2 = context.getString(o.are_you_sure_facebook_link_guest_account);
        } else
        {
            s2 = String.format(context.getString(o.facebook_already_link_mail), new Object[] {
                s, s1
            });
        }
        d1.setArguments(b(s2, context.getString(o.accept), context.getString(o.cancel)));
        return d1;
    }

    public void a(Bundle bundle)
    {
        if (a != null)
        {
            a.d.d();
            a.e();
            a = null;
        }
    }

    protected int b()
    {
        return k.link_choose_dialog;
    }

    public void onAccept(Bundle bundle)
    {
        if (a != null)
        {
            com.etermax.gamescommon.j.c.a(a, getActivity(), false);
            a = null;
        }
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        super.onCancel(dialoginterface);
        if (a != null)
        {
            a.d.d();
            a.e();
            a = null;
        }
    }
}
