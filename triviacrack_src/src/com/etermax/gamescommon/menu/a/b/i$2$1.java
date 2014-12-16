// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a.b;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.etermax.gamescommon.menu.a.b:
//            i

class a
    implements Runnable
{

    final ptions a;

    public void run()
    {
        View view = a.a.getOptions();
        if (view != null)
        {
            view.setVisibility(4);
        }
    }

    ionListener(ionListener ionlistener)
    {
        a = ionlistener;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/menu/a/b/i$2

/* anonymous class */
    class i._cls2
        implements android.view.animation.Animation.AnimationListener
    {

        final i a;

        public void onAnimationEnd(Animation animation)
        {
            a.post(new i._cls2._cls1(this));
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            
            {
                a = j;
                super();
            }
    }

}
