// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.image;

import android.support.v4.app.Fragment;
import com.etermax.gamescommon.datasource.dto.PreferencesDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.profile.image:
//            a, c

class a extends a
{

    final com.etermax.gamescommon.profile.image.a a;

    public Object a()
    {
        PreferencesDTO preferencesdto = new PreferencesDTO();
        preferencesdto.setFBShowPicture(true);
        a.a.a(preferencesdto);
        return null;
    }

    protected void a(Fragment fragment, Void void1)
    {
        super.a(fragment, void1);
        a.e.c(true);
        if (com.etermax.gamescommon.profile.image.a.b(a) != null)
        {
            com.etermax.gamescommon.profile.image.a.b(a).a(null);
        }
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((Fragment)obj, (Void)obj1);
    }

    (com.etermax.gamescommon.profile.image.a a1)
    {
        a = a1;
        super();
    }
}
