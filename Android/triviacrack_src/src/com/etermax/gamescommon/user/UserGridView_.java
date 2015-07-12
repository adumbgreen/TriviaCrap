// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.util.AttributeSet;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.user:
//            UserGridView

public final class UserGridView_ extends UserGridView
    implements a
{

    private boolean a;
    private final c b;

    public UserGridView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = new c();
        b();
    }

    public UserGridView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        b = new c();
        b();
    }

    private void b()
    {
        c.a(c.a(b));
    }

    public void onFinishInflate()
    {
        if (!a)
        {
            a = true;
            b.a(this);
        }
        super.onFinishInflate();
    }
}
