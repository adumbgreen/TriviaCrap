// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;
import com.etermax.gamescommon.menu.a.c;
import com.etermax.gamescommon.menu.a.m;

public abstract class i extends RelativeLayout
{

    private android.view.animation.Animation.AnimationListener a;
    private android.view.animation.Animation.AnimationListener b;
    protected m i;
    protected c j;

    public i(Context context)
    {
        super(context);
        a = new android.view.animation.Animation.AnimationListener() {

            final i a;

            public void onAnimationEnd(Animation animation)
            {
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                a.post(new Runnable(this) {

                    final _cls1 a;

                    public void run()
                    {
                        View view = a.a.getOptions();
                        if (view != null)
                        {
                            view.setVisibility(0);
                        }
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                a = i.this;
                super();
            }
        };
        b = new android.view.animation.Animation.AnimationListener() {

            final i a;

            public void onAnimationEnd(Animation animation)
            {
                a.post(new Runnable(this) {

                    final _cls2 a;

                    public void run()
                    {
                        View view = a.a.getOptions();
                        if (view != null)
                        {
                            view.setVisibility(4);
                        }
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
            }

            
            {
                a = i.this;
                super();
            }
        };
    }

    public void a(c c1)
    {
        View view = getOptions();
        if (view != null)
        {
            TranslateAnimation translateanimation = new TranslateAnimation(view.getWidth(), 0.0F, 0.0F, 0.0F);
            translateanimation.setDuration(300L);
            translateanimation.setAnimationListener(a);
            view.startAnimation(translateanimation);
            j = c1;
        }
    }

    public boolean b()
    {
        while (getOptions() == null || getOptions().getVisibility() != 0) 
        {
            return false;
        }
        return true;
    }

    public void c()
    {
        View view = getOptions();
        if (view != null)
        {
            TranslateAnimation translateanimation = new TranslateAnimation(0.0F, view.getWidth(), 0.0F, 0.0F);
            translateanimation.setDuration(300L);
            translateanimation.setAnimationListener(b);
            view.startAnimation(translateanimation);
            j = null;
            i.b();
        }
    }

    protected abstract View getOptions();
}
