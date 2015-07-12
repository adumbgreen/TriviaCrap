// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.b;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.i.a;
import com.etermax.tools.nationality.Nationality;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.b:
//            b

class a extends a
{

    final Nationality a;
    final b b;

    public Object a()
    {
        b.b.a(a);
        return null;
    }

    public void a(b b1, Void void1)
    {
        super.a(b1, void1);
        b.a.a(a);
        b1.getActivity().getSupportFragmentManager().beginTransaction().remove(b1).commit();
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((b)obj, (Void)obj1);
    }

    (b b1, String s, Nationality nationality)
    {
        b = b1;
        a = nationality;
        super(s);
    }
}
