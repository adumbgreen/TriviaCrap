// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.user:
//            UserInfoAvatarView

public final class UserInfoAvatarView_ extends UserInfoAvatarView
    implements a, b
{

    private boolean l;
    private final c m;

    public UserInfoAvatarView_(Context context)
    {
        super(context);
        l = false;
        m = new c();
        a();
    }

    public UserInfoAvatarView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        l = false;
        m = new c();
        a();
    }

    public UserInfoAvatarView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        l = false;
        m = new c();
        a();
    }

    public static UserInfoAvatarView a(Context context)
    {
        UserInfoAvatarView_ userinfoavatarview_ = new UserInfoAvatarView_(context);
        userinfoavatarview_.onFinishInflate();
        return userinfoavatarview_;
    }

    private void a()
    {
        c c1 = c.a(m);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        e = (ImageView)a1.findViewById(0x7f0a055b);
        c = (TextView)a1.findViewById(0x7f0a0121);
        g = (TextView)a1.findViewById(0x7f0a03bf);
        a = (ViewSwitcher)a1.findViewById(0x7f0a01ad);
        k = (Button)a1.findViewById(0x7f0a0381);
        d = (TextView)a1.findViewById(0x7f0a055a);
        h = a1.findViewById(0x7f0a055d);
        b = a1.findViewById(0x7f0a0558);
        j = a1.findViewById(0x7f0a01dc);
        i = (TextView)a1.findViewById(0x7f0a055e);
        f = (TextView)a1.findViewById(0x7f0a055c);
    }

    public void onFinishInflate()
    {
        if (!l)
        {
            l = true;
            inflate(getContext(), 0x7f030147, this);
            m.a(this);
        }
        super.onFinishInflate();
    }
}
