// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.DialogInterface;
import android.os.Bundle;
import com.etermax.tools.widget.b.a;

// Referenced classes of package com.etermax.gamescommon.social:
//            a, c

public class b extends a
    implements com.etermax.tools.widget.b.b
{

    protected static com.etermax.gamescommon.social.a a;

    public b()
    {
        setTargetFragment(this, 0);
    }

    public static b a(String s, String s1, String s2, com.etermax.gamescommon.social.a a1)
    {
        a = a1;
        b b1 = new b();
        b1.setArguments(b(s, s1, s2));
        return b1;
    }

    public void a(Bundle bundle)
    {
        if (com.etermax.gamescommon.social.a.d() != null)
        {
            com.etermax.gamescommon.social.a.d().c();
        }
        a.c();
        a = null;
    }

    public void onAccept(Bundle bundle)
    {
        com.etermax.gamescommon.social.a.a(a);
        a = null;
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        if (com.etermax.gamescommon.social.a.d() != null)
        {
            com.etermax.gamescommon.social.a.d().c();
        }
        a.c();
        a = null;
        super.onCancel(dialoginterface);
    }
}
