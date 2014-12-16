// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.b.a.aa;
import com.b.a.ak;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.user.c;
import com.etermax.h;
import com.etermax.tools.widget.CustomFontTextView;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            c, f

public class NavigationPanelItemView extends RelativeLayout
{

    protected e a;
    protected a b;
    protected ImageView c;
    protected ImageView d;
    protected ViewSwitcher e;
    protected CustomFontTextView f;
    protected TextView g;
    protected View h;

    public NavigationPanelItemView(Context context)
    {
        super(context);
    }

    public NavigationPanelItemView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void a()
    {
        setBackgroundResource(h.navigation_panel_item_states);
    }

    public void a(com.etermax.gamescommon.menu.navigation.c c1)
    {
        f.setText(c1.a());
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.menu.navigation.f.values().length];
                try
                {
                    a[com.etermax.gamescommon.menu.navigation.f.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        int i;
        if (c1.d())
        {
            h.setVisibility(0);
        } else
        {
            h.setVisibility(8);
        }
        i = c1.e();
        if (i == 0)
        {
            g.setVisibility(8);
        } else
        {
            g.setText(String.valueOf(i));
            g.setVisibility(0);
        }
        switch (com.etermax.gamescommon.menu.navigation._cls1.a[c1.c().ordinal()])
        {
        default:
            aa.a(getContext()).a(c);
            c.setImageResource(c1.b());
            e.setDisplayedChild(0);
            return;

        case 1: // '\001'
            break;
        }
        if (!TextUtils.isEmpty(b.i()))
        {
            String s1 = com.etermax.gamescommon.user.c.b(b.i(), d.getWidth());
            aa.a(getContext()).a(s1).b().a(c1.b()).b(c1.b()).a(d);
            e.setDisplayedChild(1);
            return;
        }
        if (!TextUtils.isEmpty(b.j()))
        {
            String s = com.etermax.gamescommon.user.c.a(b.j(), d.getWidth());
            aa.a(getContext()).a(s).b().a(c1.b()).b(c1.b()).a(d);
            e.setDisplayedChild(1);
            return;
        } else
        {
            aa.a(getContext()).a(c);
            c.setImageResource(c1.b());
            e.setDisplayedChild(0);
            return;
        }
    }

    public void setImage(int i)
    {
        c.setImageResource(i);
    }

    public void setText(String s)
    {
        f.setText(s);
    }
}
