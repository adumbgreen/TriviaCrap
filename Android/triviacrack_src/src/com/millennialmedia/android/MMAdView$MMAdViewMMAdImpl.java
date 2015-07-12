// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import java.util.Map;
import java.util.Random;

// Referenced classes of package com.millennialmedia.android:
//            MMAdView, MMSDK

class ientListener extends ientListener
{

    final MMAdView a;

    void a(Bitmap bitmap)
    {
        a.a.setImageBitmap(bitmap);
        a.a.setVisibility(0);
        a.a.bringToFront();
    }

    void a(Map map)
    {
        if (a.c > 0)
        {
            map.put("hsht", String.valueOf(a.c));
        }
        if (a.d > 0)
        {
            map.put("hswd", String.valueOf(a.d));
        }
        super.a(map);
    }

    boolean h()
    {
        return a.b != 0;
    }

    public boolean hasCachedVideoSupport()
    {
        return false;
    }

    void i()
    {
        if (a.a.getDrawable() == null) goto _L2; else goto _L1
_L1:
        int j;
        j = a.b;
        if (j == 4)
        {
            j = (new Random()).nextInt(4);
        }
        j;
        JVM INSTR tableswitch 2 3: default 60
    //                   2 113
    //                   3 136;
           goto _L3 _L4 _L5
_L3:
        Object obj = new AlphaAnimation(1.0F, 0.0F);
_L7:
        ((Animation) (obj)).setDuration(1000L);
        ((Animation) (obj)).setAnimationListener(a);
        ((Animation) (obj)).setFillEnabled(true);
        ((Animation) (obj)).setFillBefore(true);
        ((Animation) (obj)).setFillAfter(true);
        MMSDK.a(new Runnable(((Animation) (obj))) {

            final Animation a;
            final MMAdView.MMAdViewMMAdImpl b;

            public void run()
            {
                b.a.a.startAnimation(a);
            }

            
            {
                b = MMAdView.MMAdViewMMAdImpl.this;
                a = animation;
                super();
            }
        });
_L2:
        return;
_L4:
        obj = new TranslateAnimation(0.0F, 0.0F, 0.0F, -(float)a.getHeight());
        continue; /* Loop/switch isn't completed */
_L5:
        obj = new TranslateAnimation(0.0F, 0.0F, 0.0F, a.getHeight());
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean isBanner()
    {
        return true;
    }

    String m()
    {
        return "millennialmedia.action.ACTION_GETAD_FAILED";
    }

    String n()
    {
        return "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
    }

    String o()
    {
        return "getad";
    }

    boolean q()
    {
        return a.getWindowToken() != null;
    }

    public _cls1.a(MMAdView mmadview, Context context)
    {
        a = mmadview;
        super(mmadview, context);
        m = new ientListener(this);
    }
}
