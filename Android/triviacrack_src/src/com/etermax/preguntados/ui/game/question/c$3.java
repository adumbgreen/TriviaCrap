// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.preguntados.ui.a.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            c

class d
    implements android.view.animation.ation.AnimationListener
{

    final Button a;
    final int b;
    final List c;
    final View d;
    final com.etermax.preguntados.ui.game.question.c e;

    public void onAnimationEnd(Animation animation)
    {
        a.setEnabled(true);
        if (b == -1 + c.size())
        {
            d.startAnimation(com.etermax.preguntados.ui.a.c.c());
            d.setEnabled(true);
            if (e.u != null && e.s.size() == 0)
            {
                ImageView imageview = (ImageView)e.getView().findViewById(((Integer)((List)c.v.get(e.u)).get(2)).intValue());
                imageview.setScaleType(android.widget.eView.ScaleType.MATRIX);
                Matrix matrix = new Matrix();
                matrix.setRotate(-135F, imageview.getDrawable().getIntrinsicWidth() / 2, imageview.getDrawable().getIntrinsicHeight() / 2);
                matrix.postScale(1.3F, 1.3F);
                imageview.setImageMatrix(matrix);
                imageview.setVisibility(0);
                ((TextView)e.getView().findViewById(((Integer)((List)c.v.get(e.u)).get(3)).intValue())).setVisibility(0);
            }
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        com.etermax.preguntados.ui.game.question.c.a(e, a);
        a.setEnabled(false);
    }

    tener(com.etermax.preguntados.ui.game.question.c c1, Button button, int i, List list, View view)
    {
        e = c1;
        a = button;
        b = i;
        c = list;
        d = view;
        super();
    }
}
