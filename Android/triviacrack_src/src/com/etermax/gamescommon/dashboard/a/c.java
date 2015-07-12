// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.etermax.h;
import com.etermax.o;
import com.etermax.tools.a;
import com.etermax.tools.b;
import com.etermax.tools.j.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.dashboard.a:
//            b

public class c
{

    private static com.etermax.gamescommon.dashboard.a.b a[];

    public static List a(FragmentActivity fragmentactivity)
    {
        ArrayList arraylist = new ArrayList();
        b b1 = (b)fragmentactivity.getApplication();
        a a1 = (a)fragmentactivity.getApplication();
        com.etermax.gamescommon.dashboard.a.b ab[] = a;
        int i = ab.length;
        for (int j = 0; j < i; j++)
        {
            com.etermax.gamescommon.dashboard.a.b b2 = ab[j];
            if (!e.a(fragmentactivity, b2.a()) && e.a(b1, a1, e.b(b2.a())) && !a(((Context) (fragmentactivity)), b2.a()))
            {
                arraylist.add(b2);
            }
        }

        return arraylist;
    }

    private static boolean a(Context context, String s)
    {
        return context.getPackageName().contains("triviafans") && s.contains("triviafans");
    }

    static 
    {
        com.etermax.gamescommon.dashboard.a.b ab[] = new com.etermax.gamescommon.dashboard.a.b[6];
        ab[0] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.triviafans.realmadrid.", h.dashboard_games_realmadrid, o.realmadrid_app_name);
        ab[1] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.triviafans.fcb.", h.dashboard_games_fcbarcelona, o.fcbarcelona_app_name);
        ab[2] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.preguntados.", h.dashboard_games_preguntados, o.preguntados_app_name);
        ab[3] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.apalabrados.", h.dashboard_games_apalabrados, o.apalabrados_app_name);
        ab[4] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.wordcrack.", h.dashboard_games_mezcladitos, o.wordcrack_app_name);
        ab[5] = new com.etermax.gamescommon.dashboard.a.b("com.etermax.bingocrack.", h.dashboard_games_bingocrack, o.bingocrack_app_name);
        a = ab;
    }
}
