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
        g.a(a, g.a(a));
        g.i(a).post(new Runnable() {

            final g._cls1 a;

            public void run()
            {
                g.f(a.a).startAnimation(g.e(a.a));
                g.h(a.a).startAnimation(g.g(a.a));
            }

            
            {
                a = g._cls1.this;
                super();
            }
        });
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        g.d(a).getPaint().setColor(g.c(a).getResources().getColor(((Integer)((Pair)g.b(a).get(g.a(a))).first).intValue()));
    }

    _cls1.a(g g1)
    {
        a = g1;
        super();
    }
}
