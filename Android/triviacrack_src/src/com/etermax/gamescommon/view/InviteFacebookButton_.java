// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.util.AttributeSet;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.view:
//            InviteFacebookButton

public final class InviteFacebookButton_ extends InviteFacebookButton
    implements a
{

    private boolean a;
    private final c b;

    public InviteFacebookButton_(Context context)
    {
        super(context);
        a = false;
        b = new c();
        a();
    }

    public InviteFacebookButton_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = false;
        b = new c();
        a();
    }

    public InviteFacebookButton_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = false;
        b = new c();
        a();
    }

    public static InviteFacebookButton a(Context context)
    {
        InviteFacebookButton_ invitefacebookbutton_ = new InviteFacebookButton_(context);
        invitefacebookbutton_.onFinishInflate();
        return invitefacebookbutton_;
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
            inflate(getContext(), 0x7f030060, this);
            b.a(this);
        }
        super.onFinishInflate();
    }
}
