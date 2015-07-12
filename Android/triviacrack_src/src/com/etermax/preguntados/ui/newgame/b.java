// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.gamescommon.h.a;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.ui.widget.ManualCustomLinearButton;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            d, c

public class b extends a
{

    d c;
    com.etermax.gamescommon.login.datasource.a d;
    View e;
    View f;
    View g;
    View h;
    TextView i;
    ManualCustomLinearButton j;
    ManualCustomLinearButton k;
    ManualCustomLinearButton l;
    ManualCustomLinearButton m;
    private boolean n;
    private boolean o;

    public b()
    {
    }

    public static Fragment g()
    {
        return new com.etermax.preguntados.ui.newgame.d();
    }

    private void k()
    {
        SharedPreferences sharedpreferences = getActivity().getSharedPreferences("NewGamePreferences", 0);
        sharedpreferences.edit().putBoolean("classic_game", n).commit();
        sharedpreferences.edit().putBoolean("friend_mode", o).commit();
    }

    public com.etermax.gamescommon.h.b a()
    {
        return f();
    }

    protected void b()
    {
        super.b();
        SharedPreferences sharedpreferences = getActivity().getSharedPreferences("NewGamePreferences", 0);
        if (sharedpreferences.getBoolean("classic_game", true))
        {
            i.setText(getApplicationContext().getString(o.classic_txt));
            e.setVisibility(0);
            j.a();
            n = true;
        } else
        {
            i.setText(getApplicationContext().getString(o.challenge_txt));
            f.setVisibility(0);
            k.a();
            n = false;
        }
        if (sharedpreferences.getBoolean("friend_mode", true))
        {
            g.setVisibility(0);
            l.a();
            o = true;
            return;
        } else
        {
            m.a();
            h.setVisibility(0);
            o = false;
            return;
        }
    }

    protected Language[] c()
    {
        return c.s().getAvailableLanguages();
    }

    protected void d()
    {
        if (h.getVisibility() == 4)
        {
            l.b();
            h.setVisibility(0);
            g.setVisibility(4);
            o = false;
            k();
        }
    }

    protected void e()
    {
        if (g.getVisibility() == 4)
        {
            m.b();
            g.setVisibility(0);
            h.setVisibility(4);
            o = true;
            k();
        }
    }

    public c f()
    {
        return new c() {

            final b a;

            public void a(Language language)
            {
            }

            public void b(Language language)
            {
            }

            public void c(Language language)
            {
            }

            public void d(Language language)
            {
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return f();
    }

    protected void h()
    {
        a(a);
        if (f.getVisibility() == 4)
        {
            j.b();
            f.setVisibility(0);
            e.setVisibility(4);
            n = false;
            i.setText(getApplicationContext().getString(o.challenge_txt));
            k();
        }
    }

    protected void i()
    {
        if (e.getVisibility() == 4)
        {
            k.b();
            e.setVisibility(0);
            f.setVisibility(4);
            n = true;
            k();
            i.setText(getApplicationContext().getString(o.classic_txt));
        }
    }

    void j()
    {
        if (n && o)
        {
            ((c)mCallbacks).b(a);
        } else
        {
            if (n && !o)
            {
                ((c)mCallbacks).a(a);
                return;
            }
            if (!n && o)
            {
                ((c)mCallbacks).c(a);
                return;
            }
            if (!n && !o)
            {
                ((c)mCallbacks).d(a);
                return;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return super.onCreateView(layoutinflater, viewgroup, bundle);
    }
}
