// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.h;
import com.etermax.tools.widget.CustomFontTextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            NavigationPanelItemView

public final class NavigationPanelItemView_ extends NavigationPanelItemView
    implements a, b
{

    private boolean i;
    private final c j;

    public NavigationPanelItemView_(Context context)
    {
        super(context);
        i = false;
        j = new c();
        b();
    }

    public NavigationPanelItemView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = false;
        j = new c();
        b();
    }

    public static NavigationPanelItemView a(Context context)
    {
        NavigationPanelItemView_ navigationpanelitemview_ = new NavigationPanelItemView_(context);
        navigationpanelitemview_.onFinishInflate();
        return navigationpanelitemview_;
    }

    private void b()
    {
        c c1 = c.a(j);
        c.a(this);
        b = com.etermax.gamescommon.login.datasource.b.a(getContext());
        a = h.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        f = (CustomFontTextView)a1.findViewById(0x7f0a032c);
        g = (TextView)a1.findViewById(0x7f0a032a);
        c = (ImageView)a1.findViewById(0x7f0a0329);
        d = (ImageView)a1.findViewById(0x7f0a00c6);
        h = a1.findViewById(0x7f0a032b);
        e = (ViewSwitcher)a1.findViewById(0x7f0a0328);
        a();
    }

    public void onFinishInflate()
    {
        if (!i)
        {
            i = true;
            inflate(getContext(), 0x7f0300d2, this);
            j.a(this);
        }
        super.onFinishInflate();
    }
}
