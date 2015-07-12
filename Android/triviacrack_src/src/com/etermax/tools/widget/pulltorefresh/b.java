// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.pulltorefresh;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.tools.widget.pulltorefresh:
//            c

public class b extends FrameLayout
{

    private final ViewSwitcher a;
    private final View b;
    private final ImageView c;
    private final TextView d;
    private final ProgressBar e;
    private final View f;
    private final ImageView g;
    private final View h;
    private String i;
    private String j;
    private String k;
    private final Animation l;
    private final Animation m;
    private c n;

    public b(Context context, int i1, String s, String s1, String s2)
    {
        super(context);
        ViewGroup viewgroup = (ViewGroup)LayoutInflater.from(context).inflate(k.pull_to_refresh_header, this);
        a = (ViewSwitcher)viewgroup.findViewById(i.pull_to_refresh_progress_switcher);
        b = viewgroup.findViewById(i.pull_to_refresh_loading_default);
        f = a.findViewById(i.pull_to_refresh_loading_custom);
        d = (TextView)b.findViewById(i.pull_to_refresh_text);
        c = (ImageView)b.findViewById(i.pull_to_refresh_image);
        e = (ProgressBar)b.findViewById(i.pull_to_refresh_progress);
        g = (ImageView)f.findViewById(i.pull_to_refresh_image);
        h = f.findViewById(i.custom_loading_animation_layout);
        LinearInterpolator linearinterpolator = new LinearInterpolator();
        l = new RotateAnimation(0.0F, -180F, 1, 0.5F, 1, 0.5F);
        l.setInterpolator(linearinterpolator);
        l.setDuration(150L);
        l.setFillAfter(true);
        m = new RotateAnimation(-180F, 0.0F, 1, 0.5F, 1, 0.5F);
        m.setInterpolator(linearinterpolator);
        m.setDuration(150L);
        m.setFillAfter(true);
        k = s;
        i = s1;
        j = s2;
        i1;
        JVM INSTR tableswitch 2 2: default 284
    //                   2 313;
           goto _L1 _L2
_L1:
        c.setImageResource(h.pulltorefresh_down_arrow);
        g.setImageResource(h.pulltorefresh_down_arrow);
_L4:
        a.setDisplayedChild(0);
        return;
_L2:
        c.setImageResource(h.pulltorefresh_up_arrow);
        g.setImageResource(h.pulltorefresh_up_arrow);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a()
    {
        d.setText(i);
        c.setVisibility(0);
        e.setVisibility(8);
        if (n != null)
        {
            a.setDisplayedChild(1);
            g.setVisibility(0);
            h.setVisibility(8);
            n.b(h);
        }
    }

    public void b()
    {
        d.setText(k);
        c.clearAnimation();
        c.startAnimation(l);
        if (n != null)
        {
            g.clearAnimation();
            g.startAnimation(l);
        }
    }

    public void c()
    {
        d.setText(j);
        c.clearAnimation();
        c.setVisibility(4);
        e.setVisibility(0);
        if (n != null)
        {
            a.setDisplayedChild(1);
            g.clearAnimation();
            g.setVisibility(4);
            h.setVisibility(0);
            n.a(h);
        }
    }

    public void d()
    {
        d.setText(i);
        c.clearAnimation();
        c.startAnimation(m);
        if (n != null)
        {
            g.clearAnimation();
            g.startAnimation(m);
        }
    }

    public void setLoadingListener(c c1)
    {
        n = c1;
    }

    public void setPullLabel(String s)
    {
        i = s;
    }

    public void setRefreshingLabel(String s)
    {
        j = s;
    }

    public void setReleaseLabel(String s)
    {
        k = s;
    }

    public void setTextColor(int i1)
    {
        d.setTextColor(i1);
    }
}
