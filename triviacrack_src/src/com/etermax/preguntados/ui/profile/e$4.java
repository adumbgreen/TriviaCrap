// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.support.v4.app.FragmentActivity;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            e

class a extends a
{

    final e a;

    public Object a()
    {
        return b();
    }

    protected void a(e e1, ProfileDTO profiledto)
    {
        super.a(e1, profiledto);
        com.etermax.preguntados.ui.profile.e.a(a, profiledto);
        com.etermax.preguntados.ui.profile.e.a(a, profiledto);
        com.etermax.preguntados.ui.profile.e.a(a, a.o);
        a.s();
    }

    protected void a(e e1, Exception exception)
    {
        super.a(e1, exception);
        e1.getActivity().finish();
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((e)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (ProfileDTO)obj1);
    }

    public ProfileDTO b()
    {
        return a.p.e(a.n);
    }

    ProfileDTO(e e1, String s)
    {
        a = e1;
        super(s);
    }
}
