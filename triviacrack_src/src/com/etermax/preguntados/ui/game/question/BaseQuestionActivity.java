// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.widget.Toast;
import com.etermax.adsinterface.b;
import com.etermax.adsinterface.dummy.AdDummyInterstitialView;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.mediation.MediationManager;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.a.c;
import com.etermax.preguntados.a.e;
import com.etermax.preguntados.a.j;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.DuelPlayerDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.PowerUpDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.SpinDTO;
import com.etermax.preguntados.datasource.dto.SpinsDataDTO;
import com.etermax.preguntados.datasource.dto.enums.EndedReason;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.game.duelmode.DuelModeResultsActivity;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.preguntados.ui.questionsfactory.ratequestion.report.ReportQuestionActivity;
import com.etermax.preguntados.ui.withoutcoins.d;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            d, l, a, k, 
//            c

public abstract class BaseQuestionActivity extends BaseFragmentActivity
    implements com.etermax.preguntados.ui.game.question.d, l, d
{

    private com.etermax.gamescommon.mediation.MediationManager.AdMediationConfig a;
    private b b;
    protected GameDTO c;
    protected int d;
    protected int e;
    protected PowerUp f;
    protected com.etermax.preguntados.datasource.d g;
    protected a h;
    protected com.etermax.gamescommon.login.datasource.a i;
    protected com.etermax.preguntados.ui.game.a.a j;
    protected com.etermax.gamescommon.datasource.j k;
    protected com.etermax.preguntados.e.c l;
    protected MediationManager m;
    protected com.etermax.gamescommon.shop.c n;
    protected com.etermax.preguntados.ui.withoutcoins.g o;
    com.etermax.preguntados.ui.game.question.a p;

    public BaseQuestionActivity()
    {
        b = null;
        p = new com.etermax.preguntados.ui.game.question.a(this);
    }

    static Fragment a(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    private b a(com.etermax.gamescommon.mediation.MediationManager.AdMediatorType admediatortype)
    {
        class _cls4
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.values().length];
                try
                {
                    a[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.admob.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.etermax.gamescommon.mediation.MediationManager.AdMediatorType.mopub.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        com.etermax.preguntados.ui.game.question._cls4.a[admediatortype.ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 55
    //                   2 62;
           goto _L1 _L2 _L3
_L1:
        int i1 = 0;
_L5:
        b b1 = null;
        if (i1 != 0)
        {
            b1 = (b)LayoutInflater.from(this).inflate(i1, null);
        }
        return b1;
_L2:
        i1 = k.ad_place_interstitial_admob;
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = k.ad_place_interstitial_mopub;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void a(int i1, long l1, Date date, Date date1, UserDTO userdto, DuelPlayerDTO duelplayerdto)
    {
        String s = "normal";
        if (c != null && c.isRandomGame())
        {
            s = "aleatorio";
        }
        c c1 = new c();
        c1.a(s);
        c1.a(i1);
        c1.a(l1);
        String s1;
        if (date.compareTo(date1) < 0)
        {
            s1 = "time_expired";
        } else
        {
            s1 = "all_replied";
        }
        c1.b(s1);
        if (userdto.getId().toString().equals(duelplayerdto.getId().toString()))
        {
            c1.c("winner_creator");
        } else
        {
            c1.c("winner_other");
        }
        h.a(c1);
    }

    private void a(long l1, long l2, UserDTO userdto, List list)
    {
        String s = "normal";
        if (c != null && c.isRandomGame())
        {
            s = "aleatorio";
        }
        e e1 = new e();
        e1.a(l1);
        e1.b(s);
        String s1;
        Iterator iterator;
        if (userdto.getId().longValue() == l2)
        {
            s1 = "creator";
        } else
        {
            s1 = "other";
        }
        e1.a(s1);
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            DuelPlayerDTO duelplayerdto = (DuelPlayerDTO)iterator.next();
            if (duelplayerdto.getId().longValue() == l2)
            {
                e1.a(duelplayerdto.getCorrectAnswers());
            }
        } while (true);
        h.a(e1);
    }

    static void a(BaseQuestionActivity basequestionactivity, int i1, long l1, Date date, Date date1, UserDTO userdto, DuelPlayerDTO duelplayerdto)
    {
        basequestionactivity.a(i1, l1, date, date1, userdto, duelplayerdto);
    }

    static void a(BaseQuestionActivity basequestionactivity, long l1, long l2, UserDTO userdto, List list)
    {
        basequestionactivity.a(l1, l2, userdto, list);
    }

    static void a(BaseQuestionActivity basequestionactivity, String s, Integer integer, long l1)
    {
        basequestionactivity.a(s, integer, l1);
    }

    private void a(String s, Integer integer, long l1)
    {
        j j1 = new j();
        j1.a(s);
        j1.a(integer);
        j1.a(Long.valueOf(l1));
        h.a(j1);
    }

    static Fragment b(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    private String b()
    {
label0:
        {
            String s = "interstitial";
            if (c.getGameType() == GameType.DUEL_GAME)
            {
                if (!c.getWorldCupEnabled())
                {
                    break label0;
                }
                s = "interstitial_duel_wc";
            }
            return s;
        }
        return "interstitial_duel";
    }

    static Fragment c(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    static Fragment d(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    static Fragment e(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    static Fragment f(BaseQuestionActivity basequestionactivity)
    {
        return basequestionactivity.v();
    }

    protected int a(PowerUp powerup)
    {
        for (Iterator iterator = g.s().getPowerUps().iterator(); iterator.hasNext();)
        {
            PowerUpDTO powerupdto = (PowerUpDTO)iterator.next();
            if (powerupdto.getName() == powerup)
            {
                return powerupdto.getCost();
            }
        }

        return 0;
    }

    public SpinDTO a(GameDTO gamedto, SpinType spintype)
    {
        for (Iterator iterator = gamedto.getSpins_data().getSpins().iterator(); iterator.hasNext();)
        {
            SpinDTO spindto = (SpinDTO)iterator.next();
            if (spindto.getType() == spintype)
            {
                return spindto;
            }
        }

        return null;
    }

    protected void a(AnswerListDTO answerlistdto)
    {
        a(answerlistdto, false);
    }

    protected void a(AnswerListDTO answerlistdto, boolean flag)
    {
        l.b();
        (new com.etermax.tools.i.a(getString(o.loading), answerlistdto, flag) {

            final AnswerListDTO a;
            final boolean b;
            final BaseQuestionActivity c;

            public Object a()
            {
                return b();
            }

            protected void a(BaseQuestionActivity basequestionactivity, GameDTO gamedto)
            {
                super.a(basequestionactivity, gamedto);
                c.j.t();
                c.j.s();
                long l1 = ((new Date()).getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                if (GameType.DUEL_GAME.equals(gamedto.getGameType()))
                {
                    com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, l1, c.i.e(), gamedto.getDuelCreator(), gamedto.getDuelPlayers());
                }
                if (gamedto.isEnded() && gamedto.getEnded_reason() == EndedReason.NORMAL)
                {
                    if (gamedto.getGameType() == GameType.NORMAL)
                    {
                        long l3 = (gamedto.getEnded_date().getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                        com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, "completed", Integer.valueOf(gamedto.getRound_number()), l3);
                    } else
                    {
                        long l2 = (gamedto.getEnded_date().getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
                        com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c, gamedto.getDuelPlayers().size(), l2, gamedto.getExpiration_date(), gamedto.getEnded_date(), gamedto.getDuelCreator(), (DuelPlayerDTO)gamedto.getDuelPlayers().get(0));
                    }
                }
                if (b)
                {
                    c.finish();
                }
                if (com.etermax.preguntados.ui.game.question.BaseQuestionActivity.a(c) instanceof com.etermax.preguntados.ui.game.question.k)
                {
                    ((com.etermax.preguntados.ui.game.question.k)com.etermax.preguntados.ui.game.question.BaseQuestionActivity.b(c)).a(gamedto);
                } else
                if (com.etermax.preguntados.ui.game.question.BaseQuestionActivity.c(c) instanceof com.etermax.preguntados.ui.game.question.c)
                {
                    c.a(gamedto);
                    return;
                }
            }

            protected void a(BaseQuestionActivity basequestionactivity, Exception exception)
            {
                if (exception instanceof com.etermax.preguntados.datasource.a.b)
                {
                    if (((com.etermax.preguntados.datasource.a.b)exception).c() == 305)
                    {
                        b(false);
                        Toast.makeText(basequestionactivity, c.getString(o.opponent_removed_game), 1).show();
                        c.j.t();
                        c.j.s();
                        c.finish();
                        return;
                    } else
                    {
                        c.a(c.c.getId(), exception);
                        return;
                    }
                } else
                {
                    super.a(basequestionactivity, exception);
                    return;
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((BaseQuestionActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((BaseQuestionActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return c.g.a(c.c.getId(), a);
            }

            
            {
                c = BaseQuestionActivity.this;
                a = answerlistdto;
                b = flag;
                super(s);
            }
        }).a(this);
    }

    public void a(GameDTO gamedto)
    {
        boolean flag = gamedto.isMyTurn();
        boolean flag1 = false;
        if (!flag)
        {
            b b1 = b;
            flag1 = false;
            if (b1 != null)
            {
                boolean flag2 = b instanceof AdDummyInterstitialView;
                flag1 = false;
                if (!flag2)
                {
                    flag1 = true;
                    p.a(gamedto);
                    b.a(new com.etermax.adsinterface.d(gamedto) {

                        final GameDTO a;
                        final BaseQuestionActivity b;

                        public void a()
                        {
                            b.b(a);
                        }

            
            {
                b = BaseQuestionActivity.this;
                a = gamedto;
                super();
            }
                    });
                }
            }
        }
        if (!flag1)
        {
            b(gamedto);
        }
    }

    public void a(QuestionDTO questiondto)
    {
        startActivityForResult(ReportQuestionActivity.a(this, questiondto, c.getLanguageCode()), 123);
    }

    public void a(Integer integer, ArrayList arraylist)
    {
        j.x().a(integer.intValue());
        j.z();
        j.y();
        j.t();
    }

    protected boolean a(long l1, Exception exception)
    {
        return (new com.etermax.tools.i.a(getString(o.loading), l1, exception) {

            final long a;
            final Exception b;
            final BaseQuestionActivity c;

            public Object a()
            {
                return b();
            }

            protected void a(BaseQuestionActivity basequestionactivity, GameDTO gamedto)
            {
                super.a(basequestionactivity, gamedto);
                if (gamedto == null || gamedto.getStatusVersion() == c.c.getStatusVersion())
                {
                    break MISSING_BLOCK_LABEL_105;
                }
                c.j.t();
                c.j.s();
                com.etermax.a.a.a("BaseQuestionActivity", "Estado corrupto, borrando...");
                if (!(com.etermax.preguntados.ui.game.question.BaseQuestionActivity.d(c) instanceof com.etermax.preguntados.ui.game.question.k)) goto _L2; else goto _L1
_L1:
                ((com.etermax.preguntados.ui.game.question.k)com.etermax.preguntados.ui.game.question.BaseQuestionActivity.e(c)).a(gamedto);
_L4:
                return;
_L2:
                if (!(BaseQuestionActivity.f(c) instanceof com.etermax.preguntados.ui.game.question.c)) goto _L4; else goto _L3
_L3:
                c.a(gamedto);
                return;
                a(basequestionactivity, b);
                return;
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((BaseQuestionActivity)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return c.g.d(a);
            }

            
            {
                c = BaseQuestionActivity.this;
                a = l1;
                b = exception;
                super(s);
            }
        }).a(this);
    }

    public void b(GameDTO gamedto)
    {
        c(gamedto);
    }

    public void c(GameDTO gamedto)
    {
        if (gamedto.getGameType() != null && gamedto.getGameType() == GameType.DUEL_GAME && !gamedto.isMyTurn())
        {
            startActivity(DuelModeResultsActivity.a(this, gamedto, g.a));
        }
        if (gamedto.isMyTurn() || gamedto.getEvents() != null && gamedto.getEvents().size() != 0)
        {
            startActivity(CategoryActivity.a(this, gamedto, d, e, false));
        }
        finish();
    }

    public void d()
    {
        b = a(a.getMediator());
        if (b != null)
        {
            b.a(this, p, a.getId());
        }
    }

    public void e()
    {
        o.a(this);
    }

    public void h_()
    {
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 == 123)
        {
            if (j1 == -1)
            {
                Fragment fragment = v();
                if (fragment instanceof com.etermax.preguntados.ui.game.question.k)
                {
                    ((com.etermax.preguntados.ui.game.question.k)fragment).h();
                }
            }
            return;
        } else
        {
            n.a(i1, j1, intent);
            super.onActivityResult(i1, j1, intent);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        j.v();
        if (j.w())
        {
            j.a(c);
        }
        super.onCreate(bundle);
        a = m.getMediationForAdUnitType(b());
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (b != null)
        {
            b.b();
        }
    }

    protected void onStart()
    {
        n.a(this);
        h.a(this);
        super.onStart();
    }

    protected void onStop()
    {
        n.b(this);
        h.b(this);
        super.onStop();
    }
}
