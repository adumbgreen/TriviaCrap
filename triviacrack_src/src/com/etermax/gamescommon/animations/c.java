// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations;

import android.content.Context;

// Referenced classes of package com.etermax.gamescommon.animations:
//            a

public final class c extends a
{

    private Context c;

    private c(Context context)
    {
        c = context;
        b();
    }

    public static c a(Context context)
    {
        return new c(context);
    }

    private void b()
    {
        a = c;
        b = com.etermax.gamescommon.resources.c.b(c);
    }
}
