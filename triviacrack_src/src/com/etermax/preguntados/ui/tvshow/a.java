// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            d, e, c, b

public class a extends b
{

    protected LinearLayout a;
    protected TextView b;
    protected TextView c;
    protected View d;
    protected int e;
    protected int f;
    protected int g;
    protected int h;
    protected c i;

    public a()
    {
    }

    public static Fragment a(int j, int k, int l, int i1)
    {
        return com.etermax.preguntados.ui.tvshow.d.d().d(j).b(k).a(l).c(i1).a();
    }

    public com.etermax.preguntados.ui.tvshow.b a()
    {
        return new com.etermax.preguntados.ui.tvshow.b() {

            final a a;

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void a(c c1)
    {
        i = c1;
    }

    void b()
    {
        int j = getResources().getColor(g);
        int k = getResources().getColor(h);
        ((GradientDrawable)d.getBackground()).setColor(j);
        b.setText(getString(e));
        b.setTextColor(k);
        c.setText(getString(f));
        c.setTextColor(k);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(500L);
        AlphaAnimation alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation1.setStartOffset(3000L);
        alphaanimation1.setDuration(500L);
        AnimationSet animationset = new AnimationSet(false);
        animationset.addAnimation(alphaanimation);
        animationset.addAnimation(alphaanimation1);
        animationset.setFillAfter(true);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final a a;

            public void onAnimationEnd(Animation animation)
            {
                if (a.i != null)
                {
                    a.i.a();
                }
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
        a.setAnimation(animationset);
    }

    public void c()
    {
        if (i != null)
        {
            i.a();
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
