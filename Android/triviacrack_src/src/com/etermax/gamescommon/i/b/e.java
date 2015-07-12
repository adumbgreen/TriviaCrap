// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.etermax.o;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.b;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a, b

public class e extends a
    implements b
{

    private static com.etermax.gamescommon.i.b.a a;

    public e()
    {
        setTargetFragment(this, 0);
    }

    public static e a(com.etermax.gamescommon.i.b.a a1)
    {
        e e1 = new e();
        Bundle bundle = new Bundle();
        e1.setArguments(b(a1.getString(o.are_you_sure_save), a1.getString(o.yes), a1.getString(o.no), bundle));
        a = a1;
        return e1;
    }

    public void a(Bundle bundle)
    {
        ((com.etermax.gamescommon.i.b.b)com.etermax.gamescommon.i.b.a.w(a)).a(1);
        getActivity().finish();
    }

    public void onAccept(Bundle bundle)
    {
        ((com.etermax.gamescommon.i.b.b)com.etermax.gamescommon.i.b.a.v(a)).a(1);
        if (!com.etermax.gamescommon.i.b.a.b(a))
        {
            com.etermax.gamescommon.i.b.a.b(a, true);
            com.etermax.gamescommon.i.b.a.c(a);
        }
    }

    public void onDestroy()
    {
        a = null;
        super.onDestroy();
    }
}
