// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.widget.RelativeLayout;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            AnimatedView

class a extends RelativeLayout
{

    final AnimatedView a;
    private AnimationDrawable b;
    private long c;

    public a(AnimatedView animatedview, Context context, AnimationDrawable animationdrawable)
    {
        a = animatedview;
        super(context);
        b = animationdrawable;
        a(b);
        int i = animationdrawable.getNumberOfFrames();
        for (int j = 0; j < i; j++)
        {
            c = c + (long)animationdrawable.getDuration(j);
        }

    }

    static AnimationDrawable a(a a1)
    {
        return a1.b;
    }

    private void a(Drawable drawable)
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            setBackgroundDrawable(drawable);
        } else
        {
            setBackground(drawable);
        }
        postInvalidate();
    }

    public void a()
    {
        a(((Drawable) (b)));
        post(new Runnable() {

            final a a;

            public void run()
            {
                a.a(a).stop();
                a.a(a).start();
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void b()
    {
        post(new Runnable() {

            final a a;

            public void run()
            {
                a.a(a).stop();
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public long c()
    {
        return c;
    }

    public void setBackgroundColor(int i)
    {
        if (i == 0)
        {
            b.setColorFilter(null);
            return;
        } else
        {
            b.setColorFilter(i, android.graphics.PorterDuff.Mode.XOR);
            return;
        }
    }
}
