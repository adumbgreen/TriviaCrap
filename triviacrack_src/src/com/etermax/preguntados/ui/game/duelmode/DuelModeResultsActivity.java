// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.shop.c;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.dashboard.a.e;
import com.etermax.preguntados.ui.newgame.duelmode.NewDuelModeActivity;
import com.etermax.preguntados.ui.profile.ProfileActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode:
//            d, DuelModeResultsActivity_, b, c, 
//            g

public class DuelModeResultsActivity extends BaseFragmentActivity
    implements com.etermax.preguntados.ui.game.duelmode.d
{

    a a;
    d b;
    m c;
    c d;
    GameDTO e;
    g f;

    public DuelModeResultsActivity()
    {
    }

    public static Intent a(Context context, GameDTO gamedto, g g)
    {
        return com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity_.a(context).a(gamedto).a(g).a();
    }

    private void a(long l)
    {
        (new com.etermax.tools.i.a(getString(o.loading), l) {

            final long a;
            final DuelModeResultsActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(DuelModeResultsActivity duelmoderesultsactivity, GameDTO gamedto)
            {
                super.a(duelmoderesultsactivity, gamedto);
                b.e = gamedto;
                Fragment fragment = com.etermax.preguntados.ui.game.duelmode.c.a(gamedto, b.f);
                com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity.a(b, fragment, false);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DuelModeResultsActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.b.d(a);
            }

            
            {
                b = DuelModeResultsActivity.this;
                a = l;
                super(s);
            }
        }).a(this);
    }

    static void a(DuelModeResultsActivity duelmoderesultsactivity, Fragment fragment, boolean flag)
    {
        duelmoderesultsactivity.a(fragment, flag);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.game.duelmode.c.a(e, f);
    }

    public void a(Long long1)
    {
        startActivity(ProfileActivity.a(this, long1.longValue(), an.k.toString()));
    }

    public void a(String s, Language language, List list)
    {
        if (b.B())
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                DuelPlayerDTO duelplayerdto = (DuelPlayerDTO)iterator.next();
                if (duelplayerdto.getId().longValue() != a.e())
                {
                    arraylist.add(duelplayerdto);
                }
            } while (true);
            startActivity(NewDuelModeActivity.a(this, s, language, arraylist, f));
            finish();
            return;
        } else
        {
            a(com.etermax.preguntados.ui.dashboard.a.e.a(), "fragment_out_of_lives", true);
            return;
        }
    }

    public void b()
    {
        com.etermax.preguntados.sharing.c c1 = com.etermax.preguntados.sharing.d.a(getApplicationContext(), e, f);
        c.a(c1);
    }

    public void c()
    {
        a(e.getId());
    }

    protected void onStart()
    {
        d.a(this);
        super.onStart();
    }

    protected void onStop()
    {
        d.b(this);
        super.onStop();
    }
}
