// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.util.AttributeSet;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            ProfileFacebookFriendsButton

public final class ProfileFacebookFriendsButton_ extends ProfileFacebookFriendsButton
    implements a, b
{

    private boolean a;
    private final c b = new c();

    public ProfileFacebookFriendsButton_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        c();
    }

    private void c()
    {
        c c1 = org.a.a.b.c.a(b);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a();
    }

    public void onFinishInflate()
    {
        if (!a)
        {
            a = true;
            inflate(getContext(), 0x7f0300f2, this);
            b.a(this);
        }
        super.onFinishInflate();
    }
}
