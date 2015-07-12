// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados;

import android.app.Activity;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.b.n;
import com.etermax.gamescommon.c.a;
import com.etermax.gamescommon.datasource.dto.AdUnitDTO;
import com.etermax.gamescommon.menu.navigation.e;
import com.etermax.gamescommon.menu.navigation.f;
import com.etermax.gamescommon.promotion.PromotionsManager;
import com.etermax.h;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;

// Referenced classes of package com.etermax.preguntados:
//            a

public abstract class BasePreguntadosApplication extends EtermaxGamesApplication
    implements com.etermax.preguntados.a
{

    private static e k[];
    protected a f;
    protected d g;
    protected com.etermax.preguntados.g.a h;
    protected PromotionsManager i;
    protected b j;

    public BasePreguntadosApplication()
    {
    }

    public void b(Activity activity)
    {
        g.h();
        activity.startActivity(DashboardActivity.b(getApplicationContext()));
    }

    public AdUnitDTO[] getDefaultMediation()
    {
        AdUnitDTO aadunitdto[] = new AdUnitDTO[8];
        aadunitdto[0] = new AdUnitDTO("banner", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "d20507e2fa544c759602b0be7ba2316c");
        aadunitdto[1] = new AdUnitDTO("banner_tablet", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "b822b9088ef14f3a9f5d5f95d8c46d25");
        aadunitdto[2] = new AdUnitDTO("interstitial", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "e5a92c11c26d44d183adb7afed9b7c80");
        aadunitdto[3] = new AdUnitDTO("interstitial_tablet", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "89c753a7c1f04ce3b392fb622b15ed31");
        aadunitdto[4] = new AdUnitDTO("interstitial_duel", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "e5a92c11c26d44d183adb7afed9b7c80");
        aadunitdto[5] = new AdUnitDTO("interstitial_duel_tablet", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "89c753a7c1f04ce3b392fb622b15ed31");
        aadunitdto[6] = new AdUnitDTO("interstitial_duel_wc", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "e5a92c11c26d44d183adb7afed9b7c80");
        aadunitdto[7] = new AdUnitDTO("interstitial_duel_wc_tablet", com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub, "89c753a7c1f04ce3b392fb622b15ed31");
        return aadunitdto;
    }

    public String h()
    {
        return "com.etermax.preguntados.preferences";
    }

    public String i()
    {
        return "271648825839";
    }

    protected void j()
    {
        f.a(10L, 3L, 1L);
        h.a();
        k();
        l();
    }

    public abstract void k();

    public void l()
    {
        com.etermax.preguntados.c.a.a a1 = new com.etermax.preguntados.c.a.a();
        j.a(a1);
    }

    public int m()
    {
        return o.unknown_error;
    }

    public void n()
    {
        g();
        g.e();
    }

    public String o()
    {
        return "279901035446446";
    }

    public String p()
    {
        return "preguntados";
    }

    public String q()
    {
        return (new StringBuilder()).append(b()).append("com.etermax.preguntados.pro").toString();
    }

    public String r()
    {
        return "6RY2I2s9fbek5lN3tWxw";
    }

    public String s()
    {
        return "JnMMiPzaL0XAqYNpqSrqzS56zJ3RXtac7zKfA3wvkI4";
    }

    public String t()
    {
        return "preguntados-twitter-callback";
    }

    public String u()
    {
        return "market_google";
    }

    public String v()
    {
        return (new StringBuilder()).append(b()).append(getPackageName()).toString();
    }

    public String w()
    {
        return "H7NMF324GKZXV57H4FJT";
    }

    public e[] x()
    {
        return k;
    }

    static 
    {
        e ae[] = new e[17];
        ae[0] = new e(f.a, n.g, false);
        ae[1] = new e(f.d, n.j, false);
        ae[2] = new e(f.i, n.L, false);
        ae[3] = new e(f.j, o.redeem_coupon, h.dashboard_coupon, n.k, false);
        ae[4] = new e(f.p, o.player_ranking_plural, h.dashboard_ranking, n.O, false);
        ae[5] = new e(f.n, o.questions_factory, h.dashboard_factory, n.K, false);
        ae[6] = new e(f.g, n.M, false);
        ae[7] = new e(f.e, n.m, false);
        ae[8] = new e(f.f, n.n, false);
        ae[9] = new e(f.b, n.i, false);
        ae[10] = new e(f.c, n.l, false);
        ae[11] = new e(f.h, o.buy_premium, h.dashboard_pro_version, n.o, false);
        ae[12] = new e(f.k, false);
        ae[13] = new e(f.l, "com.etermax.triviafans.fcb", o.fcbarcelona_app_name, h.dashboard_games_fcbarcelona, n.t, false);
        ae[14] = new e(f.l, "com.etermax.apalabrados", o.apalabrados_app_name, h.dashboard_games_apalabrados, n.q, false);
        ae[15] = new e(f.l, "com.etermax.wordcrack", o.wordcrack_app_name, h.dashboard_games_mezcladitos, n.p, false);
        ae[16] = new e(f.l, "com.etermax.bingocrack", o.bingocrack_app_name, h.dashboard_games_bingocrack, n.r, false);
        k = ae;
    }
}
