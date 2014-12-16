// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.ViewSwitcher;
import com.etermax.f;
import com.etermax.h;
import com.etermax.preguntados.g.a;
import com.etermax.preguntados.ui.a.c;
import com.etermax.tools.widget.CustomFontButton;

// Referenced classes of package com.etermax.preguntados.ui.widget:
//            b, a

public class AnswerButtonView extends RelativeLayout
{

    CustomFontButton a;
    ViewSwitcher b;
    a c;
    private b d;
    private com.etermax.preguntados.ui.widget.a e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private android.view.animation.Animation.AnimationListener l = new android.view.animation.Animation.AnimationListener() {

        final AnswerButtonView a;

        public void onAnimationEnd(Animation animation)
        {
            if (AnswerButtonView.i(a) != null)
            {
                AnswerButtonView.i(a).d();
            }
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            com.etermax.preguntados.ui.widget.AnswerButtonView.h(a);
        }

            
            {
                a = AnswerButtonView.this;
                super();
            }
    };

    public AnswerButtonView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        h = h.button_green_background;
        i = h.button_green_background_pressed;
        j = h.button_red_background;
        k = h.button_red_background_pressed;
        b();
    }

    public AnswerButtonView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        h = h.button_green_background;
        i = h.button_green_background_pressed;
        j = h.button_red_background;
        k = h.button_red_background_pressed;
        b();
    }

    static boolean a(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.f;
    }

    static int b(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.h;
    }

    private void b()
    {
        f = false;
    }

    static int c(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.i;
    }

    private void c()
    {
        android.text.TextPaint textpaint = a.getPaint();
        Rect rect = new Rect();
        textpaint.getTextBounds(a.getText().toString(), 0, a.getText().length(), rect);
        if (-20 + a.getWidth() < rect.width())
        {
            a.setTextSize(0, a.getTextSize() * ((float)(-20 + a.getWidth()) / (float)rect.width()));
        }
    }

    static int d(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.j;
    }

    static int e(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.k;
    }

    static b f(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.d;
    }

    static int g(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.g;
    }

    static void h(AnswerButtonView answerbuttonview)
    {
        answerbuttonview.c();
    }

    static com.etermax.preguntados.ui.widget.a i(AnswerButtonView answerbuttonview)
    {
        return answerbuttonview.e;
    }

    public void a()
    {
        a.setOnClickListener(new android.view.View.OnClickListener() {

            final AnswerButtonView a;

            public void onClick(View view)
            {
                if (com.etermax.preguntados.ui.widget.AnswerButtonView.a(a))
                {
                    a.a.a(AnswerButtonView.b(a), com.etermax.preguntados.ui.widget.AnswerButtonView.c(a));
                    a.c.a(a.c);
                } else
                {
                    a.a.a(AnswerButtonView.d(a), AnswerButtonView.e(a));
                    a.c.a(a.d);
                }
                a.a.setTextColor(a.getResources().getColor(f.white));
                if (com.etermax.preguntados.ui.widget.AnswerButtonView.f(a) != null)
                {
                    com.etermax.preguntados.ui.widget.AnswerButtonView.f(a).a(AnswerButtonView.g(a));
                }
                a.setEnabled(false);
            }

            
            {
                a = AnswerButtonView.this;
                super();
            }
        });
    }

    public void a(int i1)
    {
        Animation animation = com.etermax.preguntados.ui.a.c.f();
        animation.setStartOffset(i1);
        animation.setAnimationListener(l);
        startAnimation(animation);
    }

    public void a(int i1, int j1)
    {
        h = i1;
        i = j1;
    }

    public void a(int i1, boolean flag)
    {
        g = i1;
        f = flag;
    }

    public void b(int i1, int j1)
    {
        j = i1;
        k = j1;
    }

    public void setAnswerListener(b b1)
    {
        d = b1;
    }

    public void setButtonAnimationListener(com.etermax.preguntados.ui.widget.a a1)
    {
        e = a1;
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        a.setEnabled(flag);
    }

    public void setText(String s)
    {
        a.setText(s);
        c();
    }
}
