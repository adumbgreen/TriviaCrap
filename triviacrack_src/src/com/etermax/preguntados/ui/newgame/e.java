// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.etermax.a.a;
import com.etermax.gamescommon.language.Language;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import java.util.Locale;
import org.b.d.j;

public class e
{

    protected Context a;
    protected d b;
    protected com.etermax.gamescommon.c.a c;

    public e()
    {
    }

    public Language a(FragmentActivity fragmentactivity)
    {
        String s = fragmentactivity.getSharedPreferences("last_played_language", 0).getString("selected_flag_item_tag", null);
        if (s != null) goto _L2; else goto _L1
_L1:
        s = j.c(Locale.getDefault().getLanguage());
        if (!s.equals("GB")) goto _L4; else goto _L3
_L3:
        s = "EN_UK";
_L6:
        com.etermax.a.a.a("NewGameFragment", (new StringBuilder()).append("DEFAULT LANGUAGE FOR THIS DEVICE: ").append(s).toString());
_L2:
        return Language.get(s, true);
_L4:
        if (s.equals("BR"))
        {
            s = "PT_BR";
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(int i)
    {
        if (!a() && (a instanceof FragmentActivity))
        {
            FragmentTransaction fragmenttransaction = ((FragmentActivity)a).getSupportFragmentManager().beginTransaction();
            fragmenttransaction.add(i, com.etermax.preguntados.ui.dashboard.a.e.a(), "out_of_lives_fragment");
            fragmenttransaction.addToBackStack("out_of_lives_fragment");
            fragmenttransaction.commit();
        }
    }

    public void a(GameType gametype, Language language, Long long1, int i, int k, boolean flag)
    {
        GameRequestDTO gamerequestdto = new GameRequestDTO(gametype, language, long1);
        (new com.etermax.tools.i.a(a.getString(o.loading), gamerequestdto, i, k, flag) {

            final GameRequestDTO a;
            final int b;
            final int c;
            final boolean d;
            final e e;

            public Object a()
            {
                return b();
            }

            public void a(FragmentActivity fragmentactivity, GameDTO gamedto)
            {
                super.a(fragmentactivity, gamedto);
                e.c.b();
                fragmentactivity.startActivity(CategoryActivity.a(e.a, gamedto, b, c, d));
                fragmentactivity.finish();
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (GameDTO)obj1);
            }

            public void a_(FragmentActivity fragmentactivity)
            {
                super.a_(fragmentactivity);
            }

            public GameDTO b()
            {
                return e.b.a(a);
            }

            
            {
                e = e.this;
                a = gamerequestdto;
                b = i;
                c = k;
                d = flag;
                super(s);
            }
        }).a((FragmentActivity)a);
    }

    public boolean a()
    {
        return b.B();
    }
}
