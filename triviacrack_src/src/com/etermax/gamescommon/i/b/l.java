// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.i.a.a;
import com.etermax.o;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            h

public class l extends c
    implements d
{

    private a a;

    public l()
    {
        setTargetFragment(this, 0);
    }

    public static l a(Context context, h h, a a1)
    {
        l l1 = new l();
        l1.setArguments(c(context.getString(o.must_set_pass_desc), context.getString(o.ok)));
        l1.a(a1);
        return l1;
    }

    private void a(a a1)
    {
        a = a1;
    }

    public void a(FragmentManager fragmentmanager)
    {
        super.show(fragmentmanager, "missing_password_dialog");
    }

    public void onAccept(Bundle bundle)
    {
        a.a(getFragmentManager());
    }
}
