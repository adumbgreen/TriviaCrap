// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import com.etermax.gamescommon.achievements.ui.o;
import com.etermax.gamescommon.b.g;
import com.etermax.gamescommon.b.v;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.shop.b;
import com.etermax.gamescommon.shop.c;
import com.etermax.preguntados.a.j;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameUserDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.datasource.dto.enums.PowerUp;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.dto.enums.SpinType;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.ui.chat.ChatActivity;
import com.etermax.preguntados.ui.d.f;
import com.etermax.preguntados.ui.d.i;
import com.etermax.preguntados.ui.game.question.crown.QuestionCrownActivity;
import com.etermax.preguntados.ui.game.question.duel.QuestionDuelActivity;
import com.etermax.preguntados.ui.game.question.normal.QuestionNormalActivity;
import com.etermax.preguntados.ui.newgame.e;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            b, f, j, CategoryActivity_, 
//            i, a, e, m

public class CategoryActivity extends BaseFragmentActivity
    implements o, b, com.etermax.preguntados.ui.b.b, com.etermax.preguntados.ui.d.b, f, com.etermax.preguntados.ui.game.category.a.b, com.etermax.preguntados.ui.game.category.b, com.etermax.preguntados.ui.game.category.f, com.etermax.preguntados.ui.game.category.j
{

    GameDTO a;
    int b;
    int c;
    boolean d;
    QuestionCategory e;
    e f;
    d g;
    a h;
    com.etermax.gamescommon.achievements.ui.k i;
    c j;
    i k;
    com.etermax.gamescommon.social.a l;
    com.etermax.tools.social.a.b m;
    d n;
    com.etermax.gamescommon.login.datasource.a o;
    m p;
    private boolean q;

    public CategoryActivity()
    {
    }

    public static Intent a(Context context, GameDTO gamedto, int i1, int j1, boolean flag)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/category/CategoryActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", i1).putExtra("mExtraShots", j1).putExtra("mStartsFromDashboard", flag);
    }

    public static Intent a(Context context, GameDTO gamedto, int i1, int j1, boolean flag, boolean flag1, QuestionCategory questioncategory)
    {
        return (new Intent(context, com/etermax/preguntados/ui/game/category/CategoryActivity_)).putExtra("mGameDTO", gamedto).putExtra("mCoins", i1).putExtra("mExtraShots", j1).putExtra("mStartsFromDashboard", flag).putExtra("mSelectedCrown", questioncategory);
    }

    private void a(long l1)
    {
        (new com.etermax.tools.i.a(l1) {

            final long a;
            final CategoryActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(CategoryActivity categoryactivity, List list)
            {
                if (list != null && list.size() > 0)
                {
                    int i1 = -1 + list.size();
                    categoryactivity.a(com.etermax.preguntados.ui.b.a.a((UserLevelDataDTO)list.get(i1)), (new StringBuilder()).append("NEW_LEVEL_").append(((UserLevelDataDTO)list.get(i1)).getLevel()).toString(), true);
                }
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((CategoryActivity)obj, (List)obj1);
            }

            public List b()
            {
                return b.n.g(a);
            }

            
            {
                b = CategoryActivity.this;
                a = l1;
                super();
            }
        }).a(this);
    }

    private void a(Language language, String s)
    {
        v v1 = new v();
        v1.a(language);
        v1.a(s);
        h.a(v1);
    }

    static void a(CategoryActivity categoryactivity, GameDTO gamedto)
    {
        categoryactivity.o(gamedto);
    }

    private void a(String s, Integer integer, Long long1)
    {
        j j1 = new j();
        j1.a(s);
        j1.a(integer);
        j1.a(long1);
        h.a(j1);
    }

    private void c(GameDTO gamedto, boolean flag)
    {
        if (flag && !TextUtils.isEmpty(o.j()))
        {
            l.a(this, new com.etermax.gamescommon.social.c(gamedto) {

                final GameDTO a;
                final CategoryActivity b;

                public void a()
                {
                    b.l.a(b, "finish_duel", new com.etermax.gamescommon.social.d(this) {

                        final _cls1 a;

                        public void a()
                        {
                            com.etermax.preguntados.ui.game.category.CategoryActivity.a(a.b, a.a);
                        }

            
            {
                a = _pcls1;
                super();
            }
                    });
                }

                public void b()
                {
                    com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
                }

                public void c()
                {
                    com.etermax.preguntados.ui.game.category.CategoryActivity.a(b, a);
                }

            
            {
                b = CategoryActivity.this;
                a = gamedto;
                super();
            }
            });
            return;
        } else
        {
            o(gamedto);
            return;
        }
    }

    private void o(GameDTO gamedto)
    {
        if (!a.isMyTurn() && !gamedto.isEnded())
        {
            finish();
        }
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.game.category.i.a(a);
    }

    public void a(int i1)
    {
        if (!f.a())
        {
            f.a(v().getId());
            return;
        }
        if (!d)
        {
            b = i1 + b;
        }
        a(a.getLanguageCode(), "rematch");
        f.a(GameType.NORMAL, a.getLanguageCode(), a.getOpponent().getId(), b, c, false);
    }

    public void a(AchievementDTO achievementdto)
    {
        com.etermax.preguntados.sharing.a a1 = com.etermax.preguntados.sharing.b.a(getApplicationContext(), achievementdto);
        p.a(a1);
    }

    public void a(GameDTO gamedto)
    {
        long l1 = (gamedto.getEnded_date().getTime() - gamedto.getCreated().getTime()) / 0x36ee80L;
        a("resigned", Integer.valueOf(gamedto.getRound_number()), Long.valueOf(l1));
        finish();
    }

    public void a(GameDTO gamedto, PowerUp powerup)
    {
        startActivity(QuestionNormalActivity.a(this, gamedto, b, c, powerup));
        finish();
    }

    public void a(GameDTO gamedto, boolean flag)
    {
        c(gamedto, flag);
    }

    public void a(ShareView shareview)
    {
        p.a(shareview);
    }

    public void a(com.etermax.preguntados.ui.b.a a1)
    {
        b(a1);
        getSupportFragmentManager().popBackStackImmediate();
        if (a.hasNewAchievements() && a.getMyPlayerInfo().getCharges() != 3 && !i.q)
        {
            i.a();
        }
    }

    public void a(String s)
    {
        a(com.etermax.preguntados.ui.d.e.a(s), "fgTutorialCategory", false);
    }

    public void a(boolean flag)
    {
        q = flag;
    }

    public void b(GameDTO gamedto)
    {
        a(com.etermax.preguntados.ui.game.category.a.a(gamedto), "fgCategory", false);
    }

    public void b(GameDTO gamedto, PowerUp powerup)
    {
        startActivity(QuestionCrownActivity.a(this, gamedto, b, c, powerup));
        finish();
    }

    public void b(GameDTO gamedto, boolean flag)
    {
        a(com.etermax.preguntados.ui.game.category.a.a.a(gamedto, flag), "fgGameEnded", false);
    }

    public boolean b()
    {
        FragmentManager fragmentmanager = getSupportFragmentManager();
        return fragmentmanager.findFragmentByTag("fgCategory") == null && fragmentmanager.findFragmentByTag("fgCrown") == null;
    }

    public void c()
    {
        finish();
    }

    public void c(GameDTO gamedto)
    {
        a(com.etermax.preguntados.ui.game.category.e.a(gamedto, c), "fgCrown", false);
    }

    public void d()
    {
        startActivity(ChatActivity.a(getApplicationContext(), a.getOpponent().getId().longValue(), a.getOpponent().getName(), false, g.b));
    }

    public void d(GameDTO gamedto)
    {
        startActivity(QuestionDuelActivity.a(this, gamedto, b, c, true, SpinType.DUEL));
        finish();
    }

    public void e()
    {
        finish();
    }

    public void e(GameDTO gamedto)
    {
        finish();
    }

    public void f()
    {
        b(getSupportFragmentManager().findFragmentByTag("fgTutorialCategory"));
        ((com.etermax.preguntados.ui.game.category.i)getSupportFragmentManager().findFragmentByTag("main_tag")).e();
    }

    public void f(GameDTO gamedto)
    {
        startActivity(QuestionDuelActivity.a(this, gamedto, b, c, false, SpinType.FINAL_DUEL));
        finish();
    }

    public void g(GameDTO gamedto)
    {
        a(com.etermax.preguntados.ui.d.k.a(e), "fgTutorialYouWon", false);
    }

    public void h()
    {
        b(getSupportFragmentManager().findFragmentByTag("fgTutorialCategory"));
    }

    public void h(GameDTO gamedto)
    {
        c = -1 + c;
        b(getSupportFragmentManager().findFragmentByTag("fgCategory"));
        ((com.etermax.preguntados.ui.game.category.i)getSupportFragmentManager().findFragmentByTag("main_tag")).d();
    }

    public void h_()
    {
    }

    public void i()
    {
        if (!TextUtils.isEmpty(o.j()))
        {
            l.a(this, new com.etermax.gamescommon.social.c() {

                final CategoryActivity a;

                public void a()
                {
                    a.l.a(a, "finish_game", new com.etermax.gamescommon.social.d(this) {

                        final _cls2 a;

                        public void a()
                        {
                            a.a.finish();
                        }

            
            {
                a = _pcls2;
                super();
            }
                    });
                }

                public void b()
                {
                    a.finish();
                }

                public void c()
                {
                    a.finish();
                }

            
            {
                a = CategoryActivity.this;
                super();
            }
            });
            return;
        } else
        {
            finish();
            return;
        }
    }

    public void i(GameDTO gamedto)
    {
        a(getSupportFragmentManager().findFragmentByTag("fgCategory"), com.etermax.preguntados.ui.game.category.m.a(gamedto), "fgGetSpins", true);
    }

    public void j()
    {
        a(o.e());
    }

    public void j(GameDTO gamedto)
    {
        if (k.d(getApplicationContext()))
        {
            a(getSupportFragmentManager().findFragmentByTag("fgCategory"), com.etermax.preguntados.ui.d.a.a(1, gamedto, k.c(getApplicationContext())), "fgTutorialPowerUps", true);
            return;
        } else
        {
            startActivity(QuestionNormalActivity.a(this, gamedto, b, c));
            finish();
            return;
        }
    }

    public void k(GameDTO gamedto)
    {
        if (k.d(getApplicationContext()))
        {
            a(getSupportFragmentManager().findFragmentByTag("fgCrown"), com.etermax.preguntados.ui.d.a.a(2, gamedto, k.c(getApplicationContext())), "fgTutorialPowerUps", true);
            return;
        } else
        {
            startActivity(QuestionCrownActivity.a(this, gamedto, b, c));
            finish();
            return;
        }
    }

    public void l(GameDTO gamedto)
    {
        startActivity(QuestionDuelActivity.a(this, gamedto, b, c, false, SpinType.DUEL));
        finish();
    }

    public void m(GameDTO gamedto)
    {
        a(getSupportFragmentManager().findFragmentByTag("fgGameEnded"), com.etermax.preguntados.ui.game.category.a.e.a(gamedto), "fgMatchScores", true);
    }

    public void n(GameDTO gamedto)
    {
        FragmentManager fragmentmanager = getSupportFragmentManager();
        fragmentmanager.executePendingTransactions();
        if (fragmentmanager.findFragmentByTag("fgGameStats") == null)
        {
            a(com.etermax.preguntados.ui.game.b.a.a(gamedto.getStatistics(), gamedto.getMyPlayerNumber()), "fgGameStats", true);
        }
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        j.a(i1, j1, intent);
        m.a(this, i1, j1, intent);
        super.onActivityResult(i1, j1, intent);
    }

    public void onBackPressed()
    {
        if (!q)
        {
            super.onBackPressed();
        }
    }

    protected void onStart()
    {
        super.onStart();
        j.a(this);
        h.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        j.b(this);
        h.b(this);
    }
}
