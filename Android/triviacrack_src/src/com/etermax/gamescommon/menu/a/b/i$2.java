// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            i

class a
    implements android.view.animation.ation.AnimationListener
{

    final i a;

    public void onAnimationEnd(Animation animation)
    {
        a.post(new Runnable() {

            final i._cls2 a;

            public void run()
            {
                View view = a.a.getOptions();
                if (view != null)
                {
                    view.setVisibility(4);
                }
            }

            
            {
                a = i._cls2.this;
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

    _cls1.a(i j)
    {
        a = j;
        super();
    }
}
