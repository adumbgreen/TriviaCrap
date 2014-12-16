// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.c.a.f;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinQuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinsDataDTO;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            c, d, b

public class a extends b
{

    d a;
    GameDTO b;
    com.etermax.preguntados.g.a c;
    com.etermax.preguntados.ui.d.i d;
    com.etermax.preguntados.b.a e;
    com.etermax.preguntados.c.a.b f;
    protected RelativeLayout g;
    protected ImageView h;
    TextView i;
    com.etermax.gamescommon.k.a j;
    com.etermax.gamescommon.k.a k;
    TextView l;
    TextView m;
    View n;

    public a()
    {
        j = null;
        k = null;
    }

    public static Fragment a(GameDTO gamedto)
    {
        return com.etermax.preguntados.ui.game.category.c.e().a(gamedto).a();
    }

    static void a(a a1)
    {
        a1.h();
    }

    private void e()
    {
        ((RelativeLayout)getView().findViewById(i.categoryConfirmationFragmentLayout)).setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                a.a(a);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    private void f()
    {
        if (d.a(getApplicationContext(), "tutorial_category_confirm"))
        {
            g();
        }
    }

    private void g()
    {
        View view = getView().findViewById(i.extraSpinButton);
        View view1 = getView().findViewById(i.playButton);
        ViewTreeObserver viewtreeobserver = view1.getViewTreeObserver();
        viewtreeobserver.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(viewtreeobserver, view1) {

            final ViewTreeObserver a;
            final View b;
            final a c;

            public void onGlobalLayout()
            {
                com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory;
                int i1;
                String s;
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    a.removeGlobalOnLayoutListener(this);
                } else
                {
                    a.removeOnGlobalLayoutListener(this);
                }
                c.k = new com.etermax.gamescommon.k.a(c.getActivity(), b);
                questioncategory = ((SpinQuestionDTO)((SpinDTO)c.b.getSpins_data().getSpins().get(0)).getQuestions().get(0)).getQuestion().getCategory();
                i1 = c.f.a(questioncategory).getNameResource();
                s = c.getResources().getString(i1);
                c.k.a();
                c.k.a(c.getResources().getString(o.tutotial_tooltip_play, new Object[] {
                    s
                }));
                c.k.a(1, 0, false, false, false);
            }

            
            {
                c = a.this;
                a = viewtreeobserver;
                b = view;
                super();
            }
        });
        ViewTreeObserver viewtreeobserver1 = view.getViewTreeObserver();
        viewtreeobserver1.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(viewtreeobserver1, view) {

            final ViewTreeObserver a;
            final View b;
            final a c;

            public void onGlobalLayout()
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    a.removeGlobalOnLayoutListener(this);
                } else
                {
                    a.removeOnGlobalLayoutListener(this);
                }
                c.j = new com.etermax.gamescommon.k.a(c.getActivity(), b);
                c.j.a();
                c.j.a(c.getResources().getString(o.tutotial_tooltip_spin));
                c.j.a(0, -20, false, false, false);
            }

            
            {
                c = a.this;
                a = viewtreeobserver;
                b = view;
                super();
            }
        });
    }

    private void h()
    {
        if (j != null)
        {
            j.b();
            j = null;
        }
        if (k != null)
        {
            k.b();
            k = null;
        }
    }

    public void a()
    {
        com.etermax.preguntados.datasource.dto.enums.QuestionCategory questioncategory = ((SpinQuestionDTO)((SpinDTO)b.getSpins_data().getSpins().get(0)).getQuestions().get(0)).getQuestion().getCategory();
        int i1 = f.a(questioncategory).getNameResource();
        int j1 = f.d(questioncategory).g();
        if (j1 != 0)
        {
            i.setText(getString(j1));
        }
        int k1;
        if (((SpinDTO)b.getSpins_data().getSpins().get(0)).isWorst())
        {
            l = (TextView)getView().findViewById(i.worst_category_text);
            m = (TextView)getView().findViewById(i.worst_category_performance);
            n = getView().findViewById(i.arrow);
            l.setVisibility(0);
            m.setVisibility(0);
            StringBuilder stringbuilder = new StringBuilder();
            int l1 = o.worst_category_performance;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(((SpinDTO)b.getSpins_data().getSpins().get(0)).getPerformance());
            String s = stringbuilder.append(getString(l1, aobj)).append("%").toString();
            m.setText(s);
            ImageView imageview = (ImageView)getView().findViewById(i.arrow);
            Matrix matrix = new Matrix();
            matrix.setRotate(-135F, imageview.getDrawable().getIntrinsicWidth() / 2, imageview.getDrawable().getIntrinsicHeight() / 2);
            imageview.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
            imageview.setImageMatrix(matrix);
            imageview.setVisibility(0);
            k1 = f.d(questioncategory).f();
        } else
        {
            k1 = f.d(questioncategory).a();
        }
        ((TextView)getView().findViewById(i.category_title_textview)).setText(i1);
        ((Button)getView().findViewById(i.extraSpinButton)).setText(String.valueOf(a.u()));
        h.setImageResource(k1);
        if (!e.b(f.d(questioncategory).b()) || ((SpinDTO)b.getSpins_data().getSpins().get(0)).isWorst()) goto _L2; else goto _L1
_L1:
        h.setVisibility(8);
        e.a(g, f.d(questioncategory).b());
_L4:
        ((TextView)getView().findViewById(i.category_title_textview)).setText(i1);
        ((Button)getView().findViewById(i.extraSpinButton)).setText(String.valueOf(a.u()));
        e();
        return;
_L2:
        try
        {
            h.setVisibility(0);
            g.setVisibility(8);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            h.setVisibility(0);
            g.setVisibility(8);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public com.etermax.preguntados.ui.game.category.b b()
    {
        return new com.etermax.preguntados.ui.game.category.b() {

            final a a;

            public void h(GameDTO gamedto)
            {
            }

            public void i(GameDTO gamedto)
            {
            }

            public void j(GameDTO gamedto)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void c()
    {
        h();
        if (b.getAvailable_extra_shots() == 0)
        {
            c.a(com.etermax.preguntados.g.a.w);
            com.etermax.tools.widget.b.c.c(getString(o.attention), getString(o.extra_shots_limits), getString(o.accept), null).show(getActivity().getSupportFragmentManager(), "");
            return;
        }
        if (a.u() == 0)
        {
            ((com.etermax.preguntados.ui.game.category.b)mCallbacks).i(b);
            return;
        } else
        {
            c.a(com.etermax.preguntados.g.a.n);
            ((com.etermax.preguntados.ui.game.category.b)mCallbacks).h(b);
            a.w();
            return;
        }
    }

    void d()
    {
        h();
        c.a(com.etermax.preguntados.g.a.z);
        ((com.etermax.preguntados.ui.game.category.b)mCallbacks).j(b);
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onPause()
    {
        e.a(g);
        super.onPause();
    }

    public void onResume()
    {
        f();
        super.onResume();
        c.a(com.etermax.preguntados.g.a.v);
    }
}
