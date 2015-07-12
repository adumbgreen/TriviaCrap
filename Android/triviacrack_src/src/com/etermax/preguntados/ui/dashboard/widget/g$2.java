// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.os.Handler;
import android.util.Pair;
import android.view.animation.Animation;
import android.widget.ImageView;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            g

class a
    implements android.view.animation.ation.AnimationListener
{

    final g a;

    public void onAnimationEnd(Animation animation)
    {
        g.i(a).post(new Runnable() {

            final g._cls2 a;

            public void run()
            {
                g.d(a.a).getPaint().setColor(g.c(a.a).getResources().getColor(((Integer)((Pair)g.b(a.a).get(g.a(a.a))).first).intValue()));
                g.f(a.a).startAnimation(g.l(a.a));
                g.h(a.a).startAnimation(g.m(a.a));
            }

            
            {
                a = g._cls2.this;
                super();
            }
        });
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        g.k(a).getPaint().setColor(g.c(a).getResources().getColor(((Integer)((Pair)g.b(a).get(g.j(a))).first).intValue()));
        g.f(a).setImageResource(((Integer)((Pair)g.b(a).get(g.j(a))).second).intValue());
    }

    _cls1.a(g g1)
    {
        a = g1;
        super();
    }
}
