// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.ui.game.duelmode.adapter.a;
import com.etermax.preguntados.ui.game.duelmode.adapter.g;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.a.h;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            e, f, d, h, 
//            g

public class c extends b
    implements g
{

    com.etermax.gamescommon.login.datasource.a a;
    com.etermax.preguntados.g.a b;
    GameDTO c;
    com.etermax.preguntados.ui.game.duelmode.g d;
    private a e;
    private com.etermax.preguntados.ui.game.duelmode.adapter.b f;
    private boolean g;

    public c()
    {
    }

    public static Fragment a(GameDTO gamedto, com.etermax.preguntados.ui.game.duelmode.g g1)
    {
        return com.etermax.preguntados.ui.game.duelmode.e.h().a(gamedto).a(g1).a();
    }

    public d a()
    {
        return new d() {

            final c a;

            public void a(Long long1)
            {
            }

            public void a(String s, Language language, List list)
            {
            }

            public void b()
            {
            }

            public void c()
            {
            }

            
            {
                a = c.this;
                super();
            }
        };
    }

    public void a(Long long1)
    {
        ((d)mCallbacks).a(long1);
    }

    public void b()
    {
        com.etermax.preguntados.ui.game.duelmode.h h1 = com.etermax.preguntados.ui.game.duelmode.h.a(d);
        f = new com.etermax.preguntados.ui.game.duelmode.adapter.b(getApplicationContext(), h1);
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        for (int j = 0; j < c.getDuelPlayers().size(); j++)
        {
            arraylist1.add(new com.etermax.preguntados.ui.game.duelmode.adapter.c((DuelPlayerDTO)c.getDuelPlayers().get(j), 0, j + 1));
        }

        arraylist.add(new h(arraylist1, 0));
        e = new a(getApplicationContext(), arraylist, f, this, c, c.getDuelCreator().getId().equals(Long.valueOf(a.e())));
        ((ListView)getView().findViewById(i.duel_mode_results_listview)).setAdapter(e);
        if (c.isEnded())
        {
            int l;
            if (c.isWin())
            {
                l = h1.i();
            } else
            {
                l = h1.j();
            }
            b.a(l);
        }
    }

    public void c()
    {
        ((d)mCallbacks).c();
    }

    public void d()
    {
        ((d)mCallbacks).b();
    }

    public void e()
    {
        if (isResumed())
        {
            ((d)mCallbacks).c();
            return;
        } else
        {
            g = true;
            return;
        }
    }

    public void f()
    {
        ((d)mCallbacks).a(c.getName(), c.getLanguageCode(), c.getDuelPlayers());
    }

    public void g()
    {
        ((d)mCallbacks).b();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onCreate(Bundle bundle)
    {
        if (!c.isEnded() && com.etermax.tools.j.h.a(getApplicationContext()).compareTo(c.getExpiration_date()) >= 0)
        {
            g = true;
        }
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.duel_mode_results_fragment, null);
        TextView textview = (TextView)view.findViewById(i.duel_mode_results_header_title);
        ViewSwitcher viewswitcher;
        if (c.isRandomGame())
        {
            textview.setText(o.random_challenge);
        } else
        {
            textview.setText(c.getName());
        }
        viewswitcher = (ViewSwitcher)view.findViewById(i.duel_mode_results_switcher);
        if (c.isEnded())
        {
            viewswitcher.setDisplayedChild(1);
            return view;
        } else
        {
            viewswitcher.setDisplayedChild(0);
            return view;
        }
    }

    public void onDestroy()
    {
        e.a();
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        if (g)
        {
            g = false;
            ((d)mCallbacks).c();
        }
    }
}
