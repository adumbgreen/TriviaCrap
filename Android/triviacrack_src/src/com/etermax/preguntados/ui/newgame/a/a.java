// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.gamescommon.h.a.c;
import com.etermax.gamescommon.h.a.g;
import com.etermax.gamescommon.h.a.h;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentsDTO;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            f, g, d, c, 
//            e, b

public class a extends com.etermax.gamescommon.h.a.a
{

    d h;
    protected TextView i;
    protected EditText j;
    private g k;
    private g l;
    private g m;
    private g n;

    public a()
    {
    }

    public static Fragment a(Language language)
    {
        return com.etermax.preguntados.ui.newgame.a.f.j().a(language).a();
    }

    static void a(a a1, Object obj)
    {
        a1.a(obj);
    }

    static void b(a a1, Object obj)
    {
        a1.b(obj);
    }

    protected com.etermax.gamescommon.user.a.a a(c c1)
    {
        return new h(c1);
    }

    protected com.etermax.gamescommon.user.a.a a(com.etermax.gamescommon.h.a.d d1)
    {
        return new h(d1);
    }

    protected void a(String s)
    {
        (new com.etermax.tools.i.a(getString(o.loading), s) {

            final String a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, SuggestedOpponentDTO suggestedopponentdto)
            {
                super.a(a1, suggestedopponentdto);
                a.b(b, suggestedopponentdto);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (SuggestedOpponentDTO)obj1);
            }

            public SuggestedOpponentDTO b()
            {
                return b.h.a(a);
            }

            
            {
                b = a.this;
                a = s1;
                super(s);
            }
        }).a(this);
    }

    protected g c()
    {
        if (k == null)
        {
            k = new com.etermax.preguntados.ui.newgame.a.d(this);
        }
        return k;
    }

    protected g d()
    {
        if (l == null)
        {
            l = new com.etermax.preguntados.ui.newgame.a.c(this);
        }
        return l;
    }

    protected g e()
    {
        if (m == null)
        {
            m = new e(this);
        }
        return m;
    }

    protected g f()
    {
        if (n == null)
        {
            n = new b(this);
        }
        return n;
    }

    protected void g()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, SuggestedOpponentsDTO suggestedopponentsdto)
            {
                super.a(a1, suggestedopponentsdto);
                a.j.setEnabled(true);
                a.a(a, suggestedopponentsdto);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (SuggestedOpponentsDTO)obj1);
            }

            protected void a_(FragmentActivity fragmentactivity)
            {
                super.a_(fragmentactivity);
                a.j.setEnabled(false);
            }

            public SuggestedOpponentsDTO b()
            {
                return a.h.l();
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected void i()
    {
        i.setText(o.friend_plural);
    }
}
