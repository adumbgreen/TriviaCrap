// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.a;

import android.support.v4.app.Fragment;
import android.widget.EditText;
import com.etermax.a.b;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.o;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.i.a:
//            a

class a extends a
{

    final com.etermax.gamescommon.i.a.a a;

    public Object a()
    {
        String s = a.a.g();
        String s1 = com.etermax.gamescommon.i.a.a.a(a).getText().toString();
        a.c.b(s, s1);
        return null;
    }

    protected void a(Fragment fragment, Void void1)
    {
        super.a(fragment, void1);
        a.dismiss();
        b.a(fragment.getActivity(), o.update_profile_success);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((Fragment)obj, (Void)obj1);
    }

    tasource.c(com.etermax.gamescommon.i.a.a a1, String s)
    {
        a = a1;
        super(s);
    }
}
