// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;
import com.etermax.widget.a.a;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

public class c extends a
{

    Nationality a;
    final com.etermax.gamescommon.i.b.a b;

    public c(com.etermax.gamescommon.i.b.a a1, Nationality nationality, String s)
    {
        b = a1;
        super(s);
        a = nationality;
    }

    public Drawable a(Context context)
    {
        return NationalityManager.getFlag(context, a);
    }
}
