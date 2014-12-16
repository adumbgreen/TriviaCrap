// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Handler;
import android.util.Pair;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import com.etermax.f;
import com.etermax.h;
import com.etermax.i;
import com.etermax.tools.widget.pulltorefresh.c;
import java.util.ArrayList;
import java.util.List;

public class g
    implements c
{

    private Context a;
    private List b;
    private int c;
    private Handler d;
    private ImageView e;
    private ImageView f;
    private AnimationSet g;
    private AnimationSet h;
    private AnimationSet i;
    private AnimationSet j;
    private ShapeDrawable k;
    private ShapeDrawable l;
    private android.view.animation.Animation.AnimationListener m;
    private android.view.animation.Animation.AnimationListener n;

    public g(Context context)
    {
        m = new android.view.animation.Animation.AnimationListener() {

            final g a;

            public void onAnimationEnd(Animation animation)
            {
                g.a(a, g.a(a));
                com.etermax.preguntados.ui.dashboard.widget.g.i(a).post(new Runnable(this) {

                    final _cls1 a;

                    public void run()
                    {
                        com.etermax.preguntados.ui.dashboard.widget.g.f(a.a).startAnimation(g.e(a.a));
                        com.etermax.preguntados.ui.dashboard.widget.g.h(a.a).startAnimation(g.g(a.a));
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                g.d(a).getPaint().setColor(com.etermax.preguntados.ui.dashboard.widget.g.c(a).getResources().getColor(((Integer)((Pair)g.b(a).get(g.a(a))).first).intValue()));
            }

            
            {
                a = g.this;
                super();
            }
        };
        n = new android.view.animation.Animation.AnimationListener() {

            final g a;

            public void onAnimationEnd(Animation animation)
            {
                com.etermax.preguntados.ui.dashboard.widget.g.i(a).post(new Runnable(this) {

                    final _cls2 a;

                    public void run()
                    {
                        g.d(a.a).getPaint().setColor(com.etermax.preguntados.ui.dashboard.widget.g.c(a.a).getResources().getColor(((Integer)((Pair)g.b(a.a).get(g.a(a.a))).first).intValue()));
                        com.etermax.preguntados.ui.dashboard.widget.g.f(a.a).startAnimation(g.l(a.a));
                        com.etermax.preguntados.ui.dashboard.widget.g.h(a.a).startAnimation(g.m(a.a));
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                g.k(a).getPaint().setColor(com.etermax.preguntados.ui.dashboard.widget.g.c(a).getResources().getColor(((Integer)((Pair)g.b(a).get(g.j(a))).first).intValue()));
                com.etermax.preguntados.ui.dashboard.widget.g.f(a).setImageResource(((Integer)((Pair)g.b(a).get(g.j(a))).second).intValue());
            }

            
            {
                a = g.this;
                super();
            }
        };
        a = context;
        a();
        b();
    }

    static int a(g g1)
    {
        return g1.c();
    }

    static int a(g g1, int i1)
    {
        g1.c = i1;
        return i1;
    }

    private void a()
    {
        c = 0;
        d = new Handler();
        b = new ArrayList();
        b.add(new Pair(Integer.valueOf(f.category_01), Integer.valueOf(h.icon_category_01)));
        b.add(new Pair(Integer.valueOf(f.category_02), Integer.valueOf(h.icon_category_02)));
        b.add(new Pair(Integer.valueOf(f.category_03), Integer.valueOf(h.icon_category_03)));
        b.add(new Pair(Integer.valueOf(f.category_04), Integer.valueOf(h.icon_category_04)));
        b.add(new Pair(Integer.valueOf(f.category_05), Integer.valueOf(h.icon_category_05)));
        b.add(new Pair(Integer.valueOf(f.category_06), Integer.valueOf(h.icon_category_06)));
        k = new ShapeDrawable(new OvalShape());
        l = new ShapeDrawable(new OvalShape());
    }

    static List b(g g1)
    {
        return g1.b;
    }

    private void b()
    {
        g = new AnimationSet(true);
        h = new AnimationSet(true);
        i = new AnimationSet(true);
        j = new AnimationSet(true);
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, 360F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(375L);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.7F, 1.0F, 0.7F, 1.0F, 1, 0.5F, 1, 0.5F);
        ScaleAnimation scaleanimation1 = new ScaleAnimation(1.0F, 0.7F, 1.0F, 0.7F, 1, 0.5F, 1, 0.5F);
        g.setDuration(375L);
        g.setFillAfter(true);
        g.addAnimation(rotateanimation);
        g.addAnimation(scaleanimation1);
        g.addAnimation(alphaanimation1);
        h.setDuration(375L);
        h.setFillAfter(true);
        h.addAnimation(rotateanimation);
        h.addAnimation(scaleanimation1);
        i.setDuration(375L);
        i.setFillBefore(true);
        i.addAnimation(rotateanimation);
        i.addAnimation(scaleanimation);
        i.addAnimation(alphaanimation);
        j.setDuration(375L);
        j.setFillBefore(true);
        j.addAnimation(rotateanimation);
        j.addAnimation(scaleanimation);
    }

    private int c()
    {
        int i1 = 1 + c;
        if (i1 >= b.size())
        {
            i1 = 0;
        }
        return i1;
    }

    static Context c(g g1)
    {
        return g1.a;
    }

    static ShapeDrawable d(g g1)
    {
        return g1.l;
    }

    static AnimationSet e(g g1)
    {
        return g1.i;
    }

    static ImageView f(g g1)
    {
        return g1.e;
    }

    static AnimationSet g(g g1)
    {
        return g1.j;
    }

    static ImageView h(g g1)
    {
        return g1.f;
    }

    static Handler i(g g1)
    {
        return g1.d;
    }

    static int j(g g1)
    {
        return g1.c;
    }

    static ShapeDrawable k(g g1)
    {
        return g1.k;
    }

    static AnimationSet l(g g1)
    {
        return g1.g;
    }

    static AnimationSet m(g g1)
    {
        return g1.h;
    }

    public void a(View view)
    {
        e = (ImageView)view.findViewById(i.image_top);
        f = (ImageView)view.findViewById(i.image_back);
        e.setBackgroundDrawable(k);
        k.getPaint().setColor(a.getResources().getColor(((Integer)((Pair)b.get(c)).first).intValue()));
        e.setImageResource(((Integer)((Pair)b.get(c)).second).intValue());
        f.setBackgroundDrawable(l);
        l.getPaint().setColor(a.getResources().getColor(((Integer)((Pair)b.get(c())).first).intValue()));
        g.setAnimationListener(m);
        i.setAnimationListener(n);
        e.startAnimation(g);
        f.startAnimation(h);
    }

    public void b(View view)
    {
        i.setAnimationListener(null);
        g.setAnimationListener(null);
    }
}
