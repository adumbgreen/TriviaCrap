// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.achievements.ui.o;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.b.p;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.datasource.l;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.ui.LoginActivity;
import com.etermax.gamescommon.mediation.MediationManager;
import com.etermax.gamescommon.menu.b;
import com.etermax.gamescommon.menu.c;
import com.etermax.gamescommon.menu.navigation.d;
import com.etermax.gamescommon.menu.navigation.f;
import com.etermax.gamescommon.promotion.PromotionsManager;
import com.etermax.i;
import com.etermax.preguntados.a.j;
import com.etermax.preguntados.datasource.dto.DashboardDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.InboxDTO;
import com.etermax.preguntados.datasource.dto.LivesConfigDTO;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.f.a;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.achievements.AchievementsActivity;
import com.etermax.preguntados.ui.chat.ChatActivity;
import com.etermax.preguntados.ui.coupon.CouponActivity_;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.game.duelmode.DuelModeActivity;
import com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity;
import com.etermax.preguntados.ui.game.question.crown.QuestionCrownActivity;
import com.etermax.preguntados.ui.game.question.duel.QuestionDuelActivity;
import com.etermax.preguntados.ui.game.question.normal.QuestionNormalActivity;
import com.etermax.preguntados.ui.help.HelpActivity;
import com.etermax.preguntados.ui.newgame.NewGameActivity;
import com.etermax.preguntados.ui.newgame.duelmode.NewDuelModeActivity;
import com.etermax.preguntados.ui.newgame.e;
import com.etermax.preguntados.ui.profile.ProfileActivity;
import com.etermax.preguntados.ui.questionsfactory.QuestionsFactoryActivity;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.RateQuestionActivity;
import com.etermax.preguntados.ui.questionsfactory.statistics.StatisticsActivity;
import com.etermax.preguntados.ui.questionsfactory.suggestquestion.SuggestQuestionActivity;
import com.etermax.preguntados.ui.rankings.RankingsActivity;
import com.etermax.preguntados.ui.rankings.n;
import com.etermax.preguntados.ui.settings.SettingsActivity;
import com.etermax.preguntados.ui.shop.ShopActivity;
import com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.g;
import com.etermax.tools.widget.b.h;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            b, f, DashboardActivity_, e, 
//            a

public class DashboardActivity extends BaseFragmentActivity
    implements o, b, c, d, com.etermax.gamescommon.shop.b, com.etermax.preguntados.ui.b.b, com.etermax.preguntados.ui.dashboard.a.b, com.etermax.preguntados.ui.dashboard.b, com.etermax.preguntados.ui.dashboard.f, n, h
{

    private int A;
    private int B;
    private Intent C;
    private com.etermax.gamescommon.mediation.MediationManager.AdMediationConfig D;
    private com.etermax.gamescommon.gifting.f E;
    private com.etermax.gamescommon.gifting.e F;
    protected boolean a;
    protected com.etermax.gamescommon.menu.a b;
    protected com.etermax.gamescommon.login.datasource.a c;
    protected com.etermax.tools.social.a.b d;
    protected com.etermax.preguntados.datasource.d e;
    protected com.etermax.gamescommon.shop.c f;
    protected com.etermax.preguntados.ui.game.a.a g;
    protected com.etermax.tools.f.a h;
    protected com.etermax.gamescommon.menu.a.d i;
    protected com.etermax.gamescommon.c.a j;
    protected com.etermax.gamescommon.e k;
    protected com.etermax.gamescommon.achievements.ui.k l;
    protected a m;
    protected com.etermax.gamescommon.datasource.e n;
    protected com.etermax.gamescommon.datasource.j o;
    protected PromotionsManager p;
    protected com.etermax.gamescommon.social.h q;
    protected com.etermax.preguntados.e.c r;
    protected MediationManager s;
    protected e t;
    protected m u;
    protected com.etermax.preguntados.ui.d.i v;
    protected com.etermax.chat.a.a w;
    protected l x;
    private int z;

    public DashboardActivity()
    {
        E = new com.etermax.gamescommon.gifting.f() {

            final DashboardActivity a;

            public void a(boolean flag)
            {
                if (flag)
                {
                    com.etermax.preguntados.ui.dashboard.e e1 = (com.etermax.preguntados.ui.dashboard.e)a.getSupportFragmentManager().findFragmentByTag("main_tag");
                    if (e1 != null)
                    {
                        e1.l();
                    }
                }
            }

            
            {
                a = DashboardActivity.this;
                super();
            }
        };
        F = new com.etermax.gamescommon.gifting.e() {

            final DashboardActivity a;

            public void a(boolean flag)
            {
                a.e.z();
                if (flag)
                {
                    a.e.h();
                    a.o();
                    return;
                } else
                {
                    a.b.c();
                    return;
                }
            }

            
            {
                a = DashboardActivity.this;
                super();
            }
        };
    }

    private void B()
    {
        x.b(com.etermax.preguntados.notification.b.a.a());
        x.b(com.etermax.preguntados.notification.b.c.a());
    }

    private boolean C()
    {
        return C != null;
    }

    private void D()
    {
        Bundle bundle = C.getExtras();
        if (bundle.containsKey("gameId"))
        {
            long l1 = bundle.getLong("gameId");
            GameDTO gamedto = a(l1);
            if (gamedto != null)
            {
                if (bundle.containsKey("acceptNewGame"))
                {
                    a(gamedto);
                } else
                if (bundle.containsKey("rematchGame"))
                {
                    if (!t.a())
                    {
                        t.a(v().getId());
                    } else
                    {
                        t.a(GameType.NORMAL, gamedto.getLanguageCode(), gamedto.getOpponent().getId(), z, A, false);
                    }
                } else
                {
                    b(l1);
                }
            }
        }
        C = null;
    }

    private void E()
    {
        if (getSupportFragmentManager().findFragmentByTag("dialog_app_rater") == null)
        {
            String s1 = getString(com.etermax.o.please_rate);
            Object aobj[] = new Object[1];
            aobj[0] = getString(com.etermax.o.app_name);
            com.etermax.tools.widget.b.g.a(null, String.format(s1, aobj), getString(com.etermax.o.rate), getString(com.etermax.o.no_thanks), getString(com.etermax.o.remind_me_later), com.etermax.k.app_rater_layout, null).show(getSupportFragmentManager(), "dialog_app_rater");
        }
    }

    private void F()
    {
        k.b("has_rated_preguntados", true);
    }

    private boolean G()
    {
        return k.a("has_rated_preguntados", false);
    }

    private void H()
    {
        com.etermax.preguntados.d.h h1 = (com.etermax.preguntados.d.h)getSupportFragmentManager().findFragmentByTag("inbox_dialog_fragment");
        if (h1 == null)
        {
            m.a("click_inbox");
            m.a(this, new com.etermax.gamescommon.social.c() {

                final DashboardActivity a;

                public void a()
                {
                    p p1 = new p();
                    p1.a("click_inbox");
                    a.h.a(p1);
                    com.etermax.preguntados.ui.dashboard.DashboardActivity.c(a);
                }

                public void b()
                {
                }

                public void c()
                {
                }

            
            {
                a = DashboardActivity.this;
                super();
            }
            });
            return;
        } else
        {
            h1.a(E);
            h1.a(F);
            return;
        }
    }

    private void I()
    {
        (new com.etermax.tools.i.a(getResources().getString(com.etermax.o.loading)) {

            final DashboardActivity a;

            public Object a()
            {
                return b();
            }

            protected void a(DashboardActivity dashboardactivity, GiftsDTO giftsdto)
            {
                super.a(dashboardactivity, giftsdto);
                int i1;
                int j1;
                if (giftsdto != null)
                {
                    com.etermax.preguntados.d.h h1;
                    com.etermax.preguntados.d.a a1;
                    com.etermax.gamescommon.gifting.dto.GiftsDTO.Gift agift[];
                    if (giftsdto.getGifts() != null)
                    {
                        i1 = giftsdto.getGifts().length;
                    } else
                    {
                        i1 = 0;
                    }
                    agift = giftsdto.getAsks();
                    j1 = 0;
                    if (agift != null)
                    {
                        j1 = giftsdto.getAsks().length;
                    }
                } else
                {
                    i1 = 0;
                    j1 = 0;
                }
                if (i1 > 0 || j1 > 0)
                {
                    h1 = com.etermax.preguntados.d.h.b();
                    h1.a(giftsdto);
                    h1.a(com.etermax.preguntados.ui.dashboard.DashboardActivity.d(a));
                    h1.a(com.etermax.preguntados.ui.dashboard.DashboardActivity.e(a));
                    h1.show(a.getSupportFragmentManager(), "inbox_dialog_fragment");
                    return;
                } else
                {
                    a1 = com.etermax.preguntados.d.a.a();
                    a1.a(com.etermax.preguntados.ui.dashboard.DashboardActivity.d(a));
                    a1.show(a.getSupportFragmentManager(), "empty_inbox_dialog_fragment");
                    return;
                }
            }

            protected void a(DashboardActivity dashboardactivity, Exception exception)
            {
                super.a(dashboardactivity, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((DashboardActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DashboardActivity)obj, (GiftsDTO)obj1);
            }

            public GiftsDTO b()
            {
                return a.n.i();
            }

            
            {
                a = DashboardActivity.this;
                super(s1);
            }
        }).a(this);
    }

    private void J()
    {
        (new com.etermax.tools.i.a() {

            final DashboardActivity a;

            public Object a()
            {
                return b();
            }

            protected void a(DashboardActivity dashboardactivity, UserRankDTO userrankdto)
            {
                dashboardactivity.a(com.etermax.preguntados.ui.rankings.m.a(userrankdto), "Weekly Ranking", true);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DashboardActivity)obj, (UserRankDTO)obj1);
            }

            public UserRankDTO b()
            {
                return a.e.D();
            }

            
            {
                a = DashboardActivity.this;
                super();
            }
        }).a(this);
    }

    private void K()
    {
        Fragment fragment = getSupportFragmentManager().findFragmentByTag("fragment_accept_game");
        if (fragment != null)
        {
            b(fragment);
        }
    }

    private void L()
    {
        if (e.B())
        {
            com.etermax.preguntados.ui.game.duelmode.g g1 = com.etermax.preguntados.ui.game.duelmode.g.a;
            startActivity(NewDuelModeActivity.a(this, null, t.a(this), M(), g1));
            return;
        } else
        {
            a(e.q(), e.r());
            return;
        }
    }

    private ArrayList M()
    {
        String s1 = k.a("last_participants", null);
        return (ArrayList)(new Gson()).fromJson(s1, (new TypeToken() {

            final DashboardActivity a;

            
            {
                a = DashboardActivity.this;
                super();
            }
        }).getType());
    }

    private void N()
    {
        getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity.toString(), 0).edit().clear().commit();
        getApplicationContext().getSharedPreferences(com/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity.toString(), 0).edit().clear().commit();
    }

    static int a(DashboardActivity dashboardactivity)
    {
        return dashboardactivity.z;
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/dashboard/DashboardActivity_);
    }

    private com.etermax.adsinterface.a a(com.etermax.gamescommon.mediation.MediationManager.AdMediatorType admediatortype)
    {
        class _cls5
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[SpinType.values().length];
                try
                {
                    b[SpinType.CROWN.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[SpinType.DUEL.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[SpinType.FINAL_DUEL.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    b[SpinType.NORMAL.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                a = new int[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.values().length];
                try
                {
                    a[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.admob.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        switch (com.etermax.preguntados.ui.dashboard._cls5.a[admediatortype.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return (com.etermax.adsinterface.a)findViewById(i.ad_place_admob);

        case 2: // '\002'
            return (com.etermax.adsinterface.a)findViewById(i.ad_place_mopub);
        }
    }

    private void a(Intent intent)
    {
        if (intent.getExtras() != null)
        {
            if (intent.getExtras().containsKey("go_to_login"))
            {
                i.j();
                k.b("last_participants", null);
                N();
                startActivityForResult(LoginActivity.a(this), 0);
            } else
            {
                if (intent.getExtras().containsKey("go_to_chat"))
                {
                    b(intent);
                    return;
                }
                if (intent.getExtras().containsKey("go_to_profile"))
                {
                    a(Long.valueOf(intent.getExtras().getLong("userId")));
                    return;
                }
                if (intent.getExtras().containsKey("go_to_statistics"))
                {
                    startActivity(StatisticsActivity.a(this));
                    return;
                }
                if (intent.getExtras().containsKey("gameId"))
                {
                    C = intent;
                    return;
                }
            }
        }
    }

    private void a(GameRequestDTO gamerequestdto)
    {
        (new com.etermax.tools.i.a(getString(com.etermax.o.loading), gamerequestdto) {

            final GameRequestDTO a;
            final DashboardActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(DashboardActivity dashboardactivity, GameDTO gamedto)
            {
                super.a(dashboardactivity, gamedto);
                b.j.b();
                dashboardactivity.startActivity(CategoryActivity.a(dashboardactivity, gamedto, com.etermax.preguntados.ui.dashboard.DashboardActivity.a(b), com.etermax.preguntados.ui.dashboard.DashboardActivity.b(b), false));
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DashboardActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.e.a(a);
            }

            
            {
                b = DashboardActivity.this;
                a = gamerequestdto;
                super(s1);
            }
        }).a(this);
    }

    static void a(DashboardActivity dashboardactivity, String s1, Integer integer, Long long1)
    {
        dashboardactivity.a(s1, integer, long1);
    }

    private void a(Nationality nationality)
    {
        if (getSupportFragmentManager().findFragmentByTag("fragment_set_country") == null)
        {
            a(com.etermax.preguntados.ui.dashboard.b.b.a(nationality), "fragment_set_country", false);
        }
    }

    private void a(String s1, Integer integer, Long long1)
    {
        j j1 = new j();
        j1.a(s1);
        j1.a(integer);
        j1.a(long1);
        h.a(j1);
    }

    private void a(List list)
    {
        FragmentManager fragmentmanager = getSupportFragmentManager();
        if (fragmentmanager.findFragmentByTag("dialog_inactive_friends") == null && !a)
        {
            com.etermax.preguntados.d.c c1 = com.etermax.preguntados.d.c.a(new ArrayList(list));
            c1.a(new com.etermax.gamescommon.gifting.e() {

                final DashboardActivity a;

                public void a(boolean flag)
                {
                    a.a = false;
                    a.e.x();
                }

            
            {
                a = DashboardActivity.this;
                super();
            }
            });
            a = true;
            c1.show(fragmentmanager, "dialog_inactive_friends");
        }
    }

    static int b(DashboardActivity dashboardactivity)
    {
        return dashboardactivity.A;
    }

    public static Intent b(Context context)
    {
        return (new Intent(context, com/etermax/preguntados/ui/dashboard/DashboardActivity_)).setFlags(0x4000000).putExtra("go_to_login", 0);
    }

    private void b(long l1)
    {
        ((com.etermax.preguntados.ui.dashboard.e)getSupportFragmentManager().findFragmentByTag("main_tag")).b(l1);
    }

    private void b(Intent intent)
    {
        startActivity(ChatActivity.a(this, intent.getExtras().getLong("data.U"), intent.getExtras().getString("data.OPP"), false, com.etermax.gamescommon.b.g.a));
    }

    private void c(long l1)
    {
        (new com.etermax.tools.i.a(l1) {

            final long a;
            final DashboardActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(DashboardActivity dashboardactivity, GameDTO gamedto)
            {
                super.a(dashboardactivity, gamedto);
                Date date;
                long l2;
                if (gamedto.getGameType() == null || gamedto.getGameType() == GameType.DUEL_GAME)
                {
                    date = com.etermax.tools.j.h.a(dashboardactivity);
                } else
                {
                    date = gamedto.getEnded_date();
                }
                l2 = (date.getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                com.etermax.preguntados.ui.dashboard.DashboardActivity.a(b, "rejected", Integer.valueOf(gamedto.getRound_number()), Long.valueOf(l2));
                com.etermax.preguntados.ui.dashboard.DashboardActivity.f(b);
                b.o();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DashboardActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.e.b(a);
            }

            
            {
                b = DashboardActivity.this;
                a = l1;
                super();
            }
        }).a(this);
    }

    static void c(DashboardActivity dashboardactivity)
    {
        dashboardactivity.I();
    }

    static com.etermax.gamescommon.gifting.e d(DashboardActivity dashboardactivity)
    {
        return dashboardactivity.F;
    }

    private void d(long l1)
    {
        (new com.etermax.tools.i.a(l1) {

            final long a;
            final DashboardActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(DashboardActivity dashboardactivity, List list)
            {
                if (list != null && list.size() > 0)
                {
                    int i1 = -1 + list.size();
                    dashboardactivity.a(com.etermax.preguntados.ui.b.a.a((UserLevelDataDTO)list.get(i1)), (new StringBuilder()).append("NEW_LEVEL_").append(((UserLevelDataDTO)list.get(i1)).getLevel()).toString(), true);
                }
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((DashboardActivity)obj, (List)obj1);
            }

            public List b()
            {
                return b.e.g(a);
            }

            
            {
                b = DashboardActivity.this;
                a = l1;
                super();
            }
        }).a(this);
    }

    static com.etermax.gamescommon.gifting.f e(DashboardActivity dashboardactivity)
    {
        return dashboardactivity.E;
    }

    private void e(GameDTO gamedto)
    {
        Date date = com.etermax.tools.j.h.a(getApplicationContext());
        if (gamedto.isMyTurn() && date.compareTo(gamedto.getExpiration_date()) < 0)
        {
            startActivity(DuelModeActivity.a(this, gamedto));
            return;
        } else
        {
            startActivity(DuelModeResultsActivity.a(this, gamedto, com.etermax.preguntados.ui.game.duelmode.g.a));
            return;
        }
    }

    static void f(DashboardActivity dashboardactivity)
    {
        dashboardactivity.K();
    }

    public int a(com.etermax.gamescommon.menu.navigation.c c1)
    {
        if (c1.c() == f.g)
        {
            return B;
        } else
        {
            return 0;
        }
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.dashboard.e.n();
    }

    protected GameDTO a(long l1)
    {
label0:
        {
            List list = e.i();
            if (list == null || list.size() <= 0)
            {
                break label0;
            }
            Iterator iterator = list.iterator();
            GameDTO gamedto;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                gamedto = (GameDTO)iterator.next();
            } while (gamedto.getId() != l1);
            return gamedto;
        }
        return null;
    }

    public void a(int i1, int j1)
    {
        startActivity(NewGameActivity.a(this, i1, j1));
    }

    public void a(Bundle bundle)
    {
        F();
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((EtermaxGamesApplication)getApplication()).v())));
    }

    public void a(AchievementDTO achievementdto)
    {
        com.etermax.preguntados.sharing.a a1 = com.etermax.preguntados.sharing.b.a(getApplicationContext(), achievementdto);
        u.a(a1);
    }

    public void a(Language language, UserDTO userdto)
    {
        a(new GameRequestDTO(GameType.NORMAL, language, userdto));
    }

    public void a(UserDTO userdto)
    {
        if (i.l() > 0)
        {
            e.h();
        }
        startActivity(ChatActivity.a(this, userdto.getId().longValue(), userdto.getName(), true, com.etermax.gamescommon.b.g.c));
    }

    public void a(DashboardDTO dashboarddto)
    {
        z = dashboarddto.getCoins();
        A = dashboarddto.getExtra_shots();
        int i1;
        int j1;
        com.etermax.preguntados.ui.dashboard.e e1;
        if (dashboarddto.getInbox() != null)
        {
            i1 = dashboarddto.getInbox().getTotal();
        } else
        {
            i1 = 0;
        }
        B = i1;
        if (dashboarddto.getInbox() != null)
        {
            j1 = dashboarddto.getInbox().getNews();
        } else
        {
            j1 = 0;
        }
        m();
        e1 = (com.etermax.preguntados.ui.dashboard.e)getSupportFragmentManager().findFragmentByTag("main_tag");
        if (e1 != null)
        {
            if (g.u())
            {
                e1.b(g.m());
            } else
            {
                if (g.A())
                {
                    g.v();
                    GameDTO gamedto = a(g.x().a());
                    g.a(this, gamedto);
                    return;
                }
                if (C())
                {
                    D();
                    return;
                }
                if (!dashboarddto.hasConfirmedCountry() || c.n() == null)
                {
                    v.f(getApplicationContext());
                    a(dashboarddto.getCountry());
                    return;
                }
                if (j1 > 0 && d.h())
                {
                    H();
                    return;
                }
                if (dashboarddto.getInactiveFriends() != null && d.h())
                {
                    a(dashboarddto.getInactiveFriends());
                    return;
                }
                if (p.isCurrentPromoActive() && p.mustShowDailyPromo())
                {
                    e1.h();
                    return;
                }
                if (j.a(getApplicationContext()) && !G())
                {
                    E();
                    return;
                }
                if (dashboarddto.isLevelUp())
                {
                    d(c.e());
                    dashboarddto.setLevelUp(false);
                    return;
                }
                if (dashboarddto.hasNewAchievements())
                {
                    l.a();
                    e.y();
                    return;
                }
                if (dashboarddto.isWeeklyRank())
                {
                    J();
                    dashboarddto.setWeeklyRank(false);
                    return;
                }
            }
        }
    }

    public void a(GameDTO gamedto)
    {
        if (!e.B())
        {
            a(e.q(), e.r());
        } else
        if (gamedto != null)
        {
            K();
            e.h();
            j.b();
            c(gamedto);
            return;
        }
    }

    public void a(LivesDTO livesdto, LivesConfigDTO livesconfigdto)
    {
        y();
        a(com.etermax.preguntados.ui.dashboard.a.e.a(), "out_of_lives_fragment", true);
    }

    public void a(ShareView shareview)
    {
        u.a(shareview);
    }

    public void a(com.etermax.preguntados.ui.b.a a1)
    {
        b(a1);
        getSupportFragmentManager().popBackStackImmediate();
    }

    public void a(com.etermax.preguntados.ui.rankings.m m1)
    {
        b(m1);
        getSupportFragmentManager().popBackStackImmediate();
    }

    public void a(Long long1)
    {
        if (long1.longValue() != 0L)
        {
            startActivity(ProfileActivity.a(this, long1.longValue(), an.b.toString()));
        }
    }

    public void b()
    {
        startActivity(ProfileActivity.a(this, c.e(), an.a.toString()));
    }

    public void b(Bundle bundle)
    {
        j.d();
    }

    public void b(UserDTO userdto)
    {
        (new com.etermax.tools.i.a(userdto) {

            final UserDTO a;
            final DashboardActivity b;

            public Object a()
            {
                com.etermax.gamescommon.b.d d1 = new com.etermax.gamescommon.b.d();
                d1.a("mp_swipe");
                b.h.a(d1);
                b.n.e(a.getId().longValue());
                b.w.a(a.getId().longValue());
                return null;
            }

            protected void a(FragmentActivity fragmentactivity, Void void1)
            {
                super.a(fragmentactivity, void1);
                b.i.c(a.getId().longValue());
                b.b.e();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (Void)obj1);
            }

            
            {
                b = DashboardActivity.this;
                a = userdto;
                super();
            }
        }).a(this);
    }

    public void b(GameDTO gamedto)
    {
        c(gamedto.getId());
    }

    public void b(LivesDTO livesdto, LivesConfigDTO livesconfigdto)
    {
        y();
        a(com.etermax.preguntados.ui.dashboard.a.a.a(), "get_more_lives_key", true);
    }

    public void b(ShareView shareview)
    {
        u.a(shareview);
    }

    public boolean b(com.etermax.gamescommon.menu.navigation.c c1)
    {
        return false;
    }

    public void c()
    {
        startActivity(SettingsActivity.a(this));
    }

    public void c(Bundle bundle)
    {
        j.c();
    }

    public void c(UserDTO userdto)
    {
        startActivity(ProfileActivity.a(this, userdto.getId().longValue(), an.c.toString()));
    }

    public void c(GameDTO gamedto)
    {
        r.a(gamedto);
        if (!g.u()) goto _L2; else goto _L1
_L1:
        if (gamedto.getStatusVersion() != g.p() || g.d() == null) goto _L4; else goto _L3
_L3:
        int i1;
        Intent intent;
        i1 = com.etermax.preguntados.ui.dashboard._cls5.b[g.d().ordinal()];
        intent = null;
        i1;
        JVM INSTR tableswitch 1 4: default 92
    //                   1 110
    //                   2 131
    //                   3 168
    //                   4 205;
           goto _L5 _L6 _L7 _L8 _L9
_L5:
        if (intent == null) goto _L11; else goto _L10
_L10:
        intent.setFlags(0x4000000);
        startActivity(intent);
_L13:
        return;
_L6:
        intent = QuestionCrownActivity.a(getApplicationContext(), gamedto, z, A, null);
        continue; /* Loop/switch isn't completed */
_L7:
        intent = QuestionDuelActivity.a(getApplicationContext(), gamedto, g.f(), A, g.g(), g.d());
        continue; /* Loop/switch isn't completed */
_L8:
        intent = QuestionDuelActivity.a(getApplicationContext(), gamedto, g.f(), A, g.g(), g.d());
        continue; /* Loop/switch isn't completed */
_L9:
        intent = QuestionNormalActivity.a(getApplicationContext(), gamedto, z, A, null);
        continue; /* Loop/switch isn't completed */
_L11:
        g.s();
        g.t();
        return;
_L4:
        g.s();
        g.t();
        com.etermax.a.a.c("DashboardActivity", "Estado no coincide");
        return;
_L2:
        if (gamedto.getGameType() == null || gamedto.getGameType() == GameType.NORMAL)
        {
            startActivity(CategoryActivity.a(this, gamedto, z, A, true).setFlags(0x4000000));
            return;
        }
        if (gamedto.getGameType() != GameType.DUEL_GAME) goto _L13; else goto _L12
_L12:
        e(gamedto);
        return;
        if (true) goto _L5; else goto _L14
_L14:
    }

    public void d()
    {
        startActivity(HelpActivity.a(this));
    }

    public void d(UserDTO userdto)
    {
        t.a(GameType.NORMAL, Language.get(Locale.getDefault().getLanguage(), true), userdto.getId(), z, A, true);
    }

    public void d(GameDTO gamedto)
    {
        a(com.etermax.preguntados.ui.dashboard.a.a(gamedto), "fragment_accept_game", true);
    }

    public void e()
    {
        startActivity(ShopActivity.a(this, A, "left_panel"));
    }

    public void f()
    {
        startActivity(SuggestQuestionActivity.a(this));
    }

    public void h()
    {
    }

    public void h_()
    {
    }

    public void i()
    {
        startActivity(AchievementsActivity.a(this));
    }

    public void i_()
    {
        startActivity(QuestionsFactoryActivity.a(this));
    }

    public void j()
    {
        H();
    }

    public void k()
    {
        startActivity(RankingsActivity.a(getApplicationContext()));
    }

    public void l()
    {
        startActivity(CouponActivity_.a(this).a());
    }

    public void m()
    {
        b.b();
    }

    public void n()
    {
        e.h();
        o();
    }

    public void o()
    {
        com.etermax.preguntados.ui.dashboard.e e1 = (com.etermax.preguntados.ui.dashboard.e)getSupportFragmentManager().findFragmentByTag("main_tag");
        if (e1 != null)
        {
            e1.l();
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        d.a(this, i1, j1, intent);
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        if (j1 != -1) goto _L4; else goto _L3
_L3:
        return;
_L4:
        finish();
        return;
_L2:
        if (i1 == 1001)
        {
            f.a(i1, j1, intent);
            super.onActivityResult(i1, j1, intent);
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b.a(c.j(), this, this, ((com.etermax.preguntados.a)getApplicationContext()).x());
        b.a(this);
        j.a();
        e.h();
        n.l();
        D = s.getMediationForAdUnitType("banner");
        a(getIntent());
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        if (com.etermax.tools.g.a.a())
        {
            getMenuInflater().inflate(com.etermax.l.preguntados_debug_menu, menu);
            return true;
        } else
        {
            return super.onCreateOptionsMenu(menu);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        com.etermax.adsinterface.a a1 = a(D.getMediator());
        if (a1 != null)
        {
            a1.b();
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        a(intent);
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (com.etermax.tools.g.a.a() && menuitem.getItemId() == i.cheat)
        {
            if (k.a("ANSWERS_CHEAT", true))
            {
                k.b("ANSWERS_CHEAT", false);
                menuitem.setTitle("Enable Answer Cheat");
                return true;
            } else
            {
                k.b("ANSWERS_CHEAT", true);
                menuitem.setTitle("Disable Answer Cheat");
                return true;
            }
        } else
        {
            return super.onOptionsItemSelected(menuitem);
        }
    }

    protected void onPause()
    {
        super.onPause();
        com.etermax.adsinterface.a a1 = a(D.getMediator());
        if (a1 != null)
        {
            a1.a();
        }
    }

    protected void onResume()
    {
        super.onResume();
        B();
        com.etermax.adsinterface.a a1 = a(D.getMediator());
        if (a1 != null)
        {
            a1.a(this, D.getId());
        }
    }

    protected void onStart()
    {
        super.onStart();
        f.a(this);
        h.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        f.b(this);
        h.b(this);
    }

    public void p()
    {
        if (com.etermax.tools.g.a.a())
        {
            openOptionsMenu();
        }
    }

    public void q()
    {
        L();
    }

    public void r()
    {
        startActivity(TvShowQuestionActivity.a(getApplicationContext(), e.s().getShowQuestionsReloadSeconds()));
    }
}
