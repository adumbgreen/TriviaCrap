// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.a.f;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.c;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            g, h, f

public class e extends b
{

    GameDTO a;
    int b;
    a c;
    com.etermax.preguntados.g.a d;
    com.etermax.preguntados.ui.d.i e;
    ImageView f;
    private com.etermax.gamescommon.k.a g;
    private com.etermax.gamescommon.k.a h;

    public e()
    {
        g = null;
        h = null;
    }

    public static Fragment a(GameDTO gamedto, int j)
    {
        return com.etermax.preguntados.ui.game.category.g.e().a(gamedto).a(j).a();
    }

    static com.etermax.gamescommon.k.a a(e e1)
    {
        return e1.g;
    }

    static com.etermax.gamescommon.k.a a(e e1, com.etermax.gamescommon.k.a a1)
    {
        e1.g = a1;
        return a1;
    }

    private void a(String s)
    {
        f f1 = new f();
        f1.a(s);
        c.a(f1);
    }

    static com.etermax.gamescommon.k.a b(e e1)
    {
        return e1.h;
    }

    static com.etermax.gamescommon.k.a b(e e1, com.etermax.gamescommon.k.a a1)
    {
        e1.h = a1;
        return a1;
    }

    private void e()
    {
        ((RelativeLayout)getView().findViewById(i.categoryCrownFragmentLayout)).setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    private void f()
    {
        if (e.a(getApplicationContext(), "tutorial_chrown_challenge"))
        {
            g();
        }
    }

    private void g()
    {
        View view = getView().findViewById(i.crown_button);
        View view1 = getView().findViewById(i.challenge_button);
        ViewTreeObserver viewtreeobserver = view.getViewTreeObserver();
        viewtreeobserver.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(viewtreeobserver, view) {

            final ViewTreeObserver a;
            final View b;
            final e c;

            public void onGlobalLayout()
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    a.removeGlobalOnLayoutListener(this);
                } else
                {
                    a.removeOnGlobalLayoutListener(this);
                }
                com.etermax.preguntados.ui.game.category.e.a(c, new com.etermax.gamescommon.k.a(c.getActivity(), b));
                com.etermax.preguntados.ui.game.category.e.a(c).a();
                com.etermax.preguntados.ui.game.category.e.a(c).a(c.getResources().getString(o.tutotial_tooltip_crown));
                com.etermax.preguntados.ui.game.category.e.a(c).a(0, -20, false, false, false);
            }

            
            {
                c = e.this;
                a = viewtreeobserver;
                b = view;
                super();
            }
        });
        view1.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(viewtreeobserver, view1) {

            final ViewTreeObserver a;
            final View b;
            final e c;

            public void onGlobalLayout()
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    a.removeGlobalOnLayoutListener(this);
                } else
                {
                    a.removeOnGlobalLayoutListener(this);
                }
                com.etermax.preguntados.ui.game.category.e.b(c, new com.etermax.gamescommon.k.a(c.getActivity(), b));
                com.etermax.preguntados.ui.game.category.e.b(c).a();
                com.etermax.preguntados.ui.game.category.e.b(c).a(c.getResources().getString(o.tutotial_tooltip_challenge));
                com.etermax.preguntados.ui.game.category.e.b(c).a(1, 20, false, false, false);
            }

            
            {
                c = e.this;
                a = viewtreeobserver;
                b = view;
                super();
            }
        });
    }

    private void h()
    {
        if (g != null)
        {
            g.b();
            g = null;
        }
        if (h != null)
        {
            h.b();
            h = null;
        }
    }

    public void a()
    {
        e();
        f.setVisibility(0);
    }

    public com.etermax.preguntados.ui.game.category.f b()
    {
        return new com.etermax.preguntados.ui.game.category.f() {

            final e a;

            public void k(GameDTO gamedto)
            {
            }

            public void l(GameDTO gamedto)
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void c()
    {
        a("crown");
        h();
        ((com.etermax.preguntados.ui.game.category.f)mCallbacks).k(a);
    }

    public void d()
    {
        h();
        int j;
        int k;
        int l;
        if (a.getMyPlayerInfo().getCrowns() != null)
        {
            j = a.getMyPlayerInfo().getCrowns().size();
        } else
        {
            j = 0;
        }
        if (a.getOpponentPlayerInfo().getCrowns() != null)
        {
            k = a.getOpponentPlayerInfo().getCrowns().size();
        } else
        {
            k = 0;
        }
        if (j != 0 && k != 0)
        {
            a("duel");
            ((com.etermax.preguntados.ui.game.category.f)mCallbacks).l(a);
            return;
        }
        if (j != 0 || k != 0) goto _L2; else goto _L1
_L1:
        l = o.trivia_challenge_txt_01;
_L4:
        com.etermax.tools.widget.b.c.b(getString(l), getString(o.accept)).show(getActivity().getSupportFragmentManager(), "");
        d.a(com.etermax.preguntados.g.a.w);
        return;
_L2:
        if (j == 0)
        {
            l = o.trivia_challenge_txt_02;
        } else
        {
            l = 0;
            if (k == 0)
            {
                l = o.trivia_challenge_txt_03;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        f();
        super.onResume();
        d.a(com.etermax.preguntados.g.a.u);
    }
}
