// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            c

public final class d extends com.etermax.gamescommon.menu.a.b.c
    implements a
{

    private boolean a;
    private final c b = new c();

    public d(Context context)
    {
        super(context);
        a = false;
        a();
    }

    public static com.etermax.gamescommon.menu.a.b.c a(Context context)
    {
        d d1 = new d(context);
        d1.onFinishInflate();
        return d1;
    }

    private void a()
    {
        c.a(c.a(b));
    }

    public void onFinishInflate()
    {
        if (!a)
        {
            a = true;
            inflate(getContext(), 0x7f03008d, this);
            b.a(this);
        }
        super.onFinishInflate();
    }
}
