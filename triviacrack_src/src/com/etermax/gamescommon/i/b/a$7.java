// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.etermax.b;
import com.etermax.j;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

class a
    implements android.view..OnTouchListener
{

    final a a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i = a.getResources().getInteger(j.glow_radius);
        boolean flag;
        if (motionevent.getAction() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            if (com.etermax.gamescommon.i.b.a.f(a) == null)
            {
                com.etermax.gamescommon.i.b.a.g(a).buildDrawingCache();
                Bitmap bitmap = com.etermax.gamescommon.i.b.a.g(a).getDrawingCache();
                if (bitmap != null)
                {
                    Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                    if (bitmap1 != null)
                    {
                        com.etermax.gamescommon.i.b.a.a(a, new BitmapDrawable(com.etermax.gamescommon.i.b.a.a(bitmap1, i, -1)));
                        if (com.etermax.gamescommon.i.b.a.f(a) != null)
                        {
                            com.etermax.gamescommon.i.b.a.h(a).setBackgroundDrawable(com.etermax.gamescommon.i.b.a.f(a));
                        }
                    }
                }
            }
            com.etermax.gamescommon.i.b.a.h(a).setAnimation(AnimationUtils.loadAnimation(view.getContext(), b.alpha_fade_in));
            com.etermax.gamescommon.i.b.a.h(a).setVisibility(0);
            return false;
        } else
        {
            com.etermax.gamescommon.i.b.a.h(a).setAnimation(AnimationUtils.loadAnimation(view.getContext(), b.alpha_fade_out));
            com.etermax.gamescommon.i.b.a.h(a).setVisibility(8);
            return false;
        }
    }

    Utils(a a1)
    {
        a = a1;
        super();
    }
}
