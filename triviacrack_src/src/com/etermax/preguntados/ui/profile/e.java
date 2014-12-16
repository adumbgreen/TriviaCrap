// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.b.g;
import com.etermax.gamescommon.b.v;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.profile.ui.ProfilePerformanceView;
import com.etermax.gamescommon.profile.ui.ProfileUserButtonsView;
import com.etermax.gamescommon.profile.ui.ProfileUserHeader;
import com.etermax.gamescommon.profile.ui.ProfileVersusView;
import com.etermax.gamescommon.profile.ui.a;
import com.etermax.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.datasource.dto.ChallengeDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.LanguageGameDTO;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.datasource.dto.ProfileRankingsDTO;
import com.etermax.preguntados.datasource.dto.ProfileStatisticsDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.datasource.dto.enums.GameType;
import com.etermax.preguntados.ui.chat.ChatActivity;
import com.etermax.preguntados.ui.game.category.CategoryActivity;
import com.etermax.preguntados.ui.settings.SettingsActivity;
import com.etermax.tools.j.d;
import com.etermax.tools.nationality.Nationality;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            g, h, ProfileFriendsActivity, ProfileBlockedUsersActivity, 
//            ProfileCategoryDetailsView, ProfileLevelView, ProfileRankingsView, f

public class e extends a
{

    long n;
    String o;
    protected com.etermax.preguntados.datasource.d p;
    protected b q;
    protected ImageView r;
    protected ProfileVersusView s;
    protected ProfileVersusView t;
    protected ProfileLevelView u;
    protected ProfileRankingsView v;
    private boolean w;
    private ProfileDTO x;
    private ProfileCategoryDetailsView y;

    public e()
    {
    }

    public static Fragment a(long l1, String s1)
    {
        return g.z().a(l1).a(s1).a();
    }

    static ProfileDTO a(e e1)
    {
        return e1.x;
    }

    static ProfileDTO a(e e1, ProfileDTO profiledto)
    {
        e1.x = profiledto;
        return profiledto;
    }

    private void a(Language language, String s1)
    {
        v v1 = new v();
        v1.a(language);
        v1.a(s1);
        c.a(v1);
    }

    private void a(GameRequestDTO gamerequestdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), gamerequestdto) {

            final GameRequestDTO a;
            final e b;

            public Object a()
            {
                return b();
            }

            protected void a(e e1, GameDTO gamedto)
            {
                super.a(e1, gamedto);
                com.etermax.preguntados.ui.profile.e.a(b, a.getLanguage(), "profile");
                e1.startActivity(CategoryActivity.a(j(), gamedto, b.p.t(), b.p.u(), false));
                j().finish();
            }

            protected void a(e e1, Exception exception)
            {
                if (exception instanceof com.etermax.preguntados.datasource.a.b)
                {
                    b(false);
                    if (((com.etermax.preguntados.datasource.a.b)exception).c() == 2013)
                    {
                        ((f)com.etermax.preguntados.ui.profile.e.d(b)).j_();
                    }
                }
                super.a(e1, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((e)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (GameDTO)obj1);
            }

            public GameDTO b()
            {
                return b.p.a(a);
            }

            
            {
                b = e.this;
                a = gamerequestdto;
                super(s1);
            }
        }).a(this);
    }

    static void a(e e1, Language language, String s1)
    {
        e1.a(language, s1);
    }

    static void a(e e1, com.etermax.gamescommon.profile.ui.h h1)
    {
        e1.a(h1);
    }

    static void a(e e1, String s1)
    {
        e1.a(s1);
    }

    private void a(boolean flag)
    {
        if (flag)
        {
            if (w)
            {
                l.setVisibility(8);
                r.setVisibility(0);
            } else
            {
                l.setVisibility(0);
                r.setVisibility(8);
            }
            h.setVisibility(0);
            j.setVisibility(0);
            return;
        } else
        {
            l.setVisibility(8);
            r.setVisibility(8);
            h.setVisibility(4);
            j.setVisibility(4);
            return;
        }
    }

    static Object b(e e1)
    {
        return e1.mCallbacks;
    }

    static Object c(e e1)
    {
        return e1.mCallbacks;
    }

    static Object d(e e1)
    {
        return e1.mCallbacks;
    }

    private void z()
    {
        (new com.etermax.tools.i.a(getActivity().getString(o.loading)) {

            final e a;

            public Object a()
            {
                return b();
            }

            protected void a(e e1, ProfileDTO profiledto)
            {
                super.a(e1, profiledto);
                com.etermax.preguntados.ui.profile.e.a(a, profiledto);
                com.etermax.preguntados.ui.profile.e.a(a, profiledto);
                com.etermax.preguntados.ui.profile.e.a(a, a.o);
                a.s();
            }

            protected void a(e e1, Exception exception)
            {
                super.a(e1, exception);
                e1.getActivity().finish();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((e)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (ProfileDTO)obj1);
            }

            public ProfileDTO b()
            {
                return a.p.e(a.n);
            }

            
            {
                a = e.this;
                super(s1);
            }
        }).a(this);
    }

    public com.etermax.gamescommon.profile.ui.b a()
    {
        return q();
    }

    public Object getDummyCallbacks()
    {
        return q();
    }

    public void l()
    {
        UserDTO userdto = new UserDTO();
        userdto.setId(Long.valueOf(x.getConsultedUserId()));
        a(new GameRequestDTO(GameType.NORMAL, Language.get(Locale.getDefault().getLanguage()), userdto));
    }

    public void m()
    {
        if (getActivity() != null)
        {
            startActivity(ChatActivity.a(getActivity(), x.getConsultedUserId(), x.getName(), false, g.d));
        }
    }

    public void n()
    {
        startActivity(com.etermax.preguntados.ui.profile.ProfileFriendsActivity.a(getActivity(), x.getConsultedUserId(), x.getUsername()));
    }

    public void o()
    {
        startActivityForResult(com.etermax.preguntados.ui.profile.ProfileBlockedUsersActivity.a(getActivity(), x.getConsultedUserId()), 1);
    }

    public void onActivityResult(int j, int k, Intent intent)
    {
        if (j == 1 && k == -1 && intent != null)
        {
            int i1 = intent.getIntExtra("RESULT_INTENT_BLOCKED_USERS_REMAINING", -1);
            if (i1 != -1)
            {
                this.j.setBlockedCount(i1);
            }
        }
    }

    public void onResume()
    {
        super.onResume();
        if (x != null)
        {
            s();
            return;
        } else
        {
            z();
            return;
        }
    }

    public void p()
    {
        startActivity(SettingsActivity.a(getActivity()));
    }

    public f q()
    {
        return new f() {

            final e a;

            public void a(ProfileDTO profiledto)
            {
            }

            public void a(UserLevelDataDTO userleveldatadto)
            {
            }

            public void j_()
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void r()
    {
        if (n == b.e())
        {
            w = true;
        } else
        {
            w = false;
        }
        y = (ProfileCategoryDetailsView)getView().findViewById(i.profile_category_details);
        s.setSectionBackground(h.section_header_aqua);
        s.setSectionText(o.challenge_performance);
        r.setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
                ((f)com.etermax.preguntados.ui.profile.e.b(a)).a(com.etermax.preguntados.ui.profile.e.a(a));
            }

            
            {
                a = e.this;
                super();
            }
        });
        u.setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
                ((f)e.c(a)).a(com.etermax.preguntados.ui.profile.e.a(a).getLevel());
            }

            
            {
                a = e.this;
                super();
            }
        });
        a(false);
    }

    protected void s()
    {
        x();
        y();
        u();
        t();
        v();
        w();
        a(true);
    }

    protected void t()
    {
        if (x.getStatistics().getRankings() != null && x.getStatistics().getRankings().getPodium() != null)
        {
            v.setRankings(x.getStatistics().getRankings().getPodium());
            v.setVisibility(0);
        }
    }

    protected void u()
    {
        if (!w || x.getLevel() == null)
        {
            u.setVisibility(8);
            return;
        } else
        {
            u.a(x.getLevel());
            u.setVisibility(0);
            return;
        }
    }

    protected void v()
    {
        y.a(x.getStatistics().getCategory_question(), q);
        y.setVisibility(0);
    }

    protected void w()
    {
        ChallengeDTO challengedto;
        if (w)
        {
            i.setVisibility(8);
        } else
        {
            i.a(x.getVersus().getWon(), x.getVersus().getLost());
        }
        challengedto = x.getStatistics().getChallenges();
        if (challengedto != null)
        {
            s.a(challengedto.getWon(), challengedto.getLost(), true);
        }
        t.setSectionBackground(h.section_header_grana);
        t.setSectionText(o.group_challenge_performance);
        t.a(x.getStatistics().getDuelGamesWon(), x.getStatistics().getDuelGamesLost(), true);
    }

    protected void x()
    {
        h.findViewById(i.location).setVisibility(8);
        h.findViewById(i.age).setVisibility(8);
        if (x.getFacebook_id() == null || !x.showFacebookName()) goto _L2; else goto _L1
_L1:
        h.setName(x.getName());
        h.setSmallName((new StringBuilder()).append("@").append(x.getUsername()).toString());
_L10:
        TextView textview = (TextView)h.findViewById(i.level);
        if (x.getLevel() == null) goto _L4; else goto _L3
_L3:
        textview.setText(String.valueOf(x.getLevel().getLevel()));
        textview.setVisibility(0);
_L11:
        if (x.getLast_play_date() == null) goto _L6; else goto _L5
_L5:
        long l1 = com.etermax.tools.j.d.a(x.getLast_play_date());
        String s1 = com.etermax.tools.j.d.a(getResources(), l1, com.etermax.tools.j.h.a(getApplicationContext()).getTime());
        h.a(getResources().getString(o.time_ago, new Object[] {
            s1
        }), false);
_L12:
        HashMap hashmap;
        Iterator iterator;
        j.setFriendsCount(x.getFriends());
        j.setBlockedCount(x.getBlocked());
        hashmap = new HashMap();
        if (x.getStatistics() == null || x.getStatistics().getLanguageGames() == null)
        {
            break MISSING_BLOCK_LABEL_434;
        }
        iterator = x.getStatistics().getLanguageGames().iterator();
_L9:
        LanguageGameDTO languagegamedto;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_434;
        }
        languagegamedto = (LanguageGameDTO)iterator.next();
        if (languagegamedto.getLanguage() != Language.PT || b.n() == Nationality.PT) goto _L8; else goto _L7
_L7:
        Exception exception;
        hashmap.put(Language.PT_BR.name(), Long.valueOf(languagegamedto.getQuantity()));
          goto _L9
_L2:
        try
        {
            h.setUsernameWithArroba(x.getUsername());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
          goto _L10
_L4:
        textview.setVisibility(8);
          goto _L11
_L6:
        h.a(getResources().getString(o.no_games), true);
          goto _L12
_L8:
        hashmap.put(languagegamedto.getLanguage().name(), Long.valueOf(languagegamedto.getQuantity()));
          goto _L9
        h.setFlags(hashmap);
        return;
          goto _L10
    }

    protected void y()
    {
        if (x == null || x.getStatistics() == null)
        {
            k.setWon(0L);
            k.setLooses(0L);
            k.setResigned(0);
            return;
        }
        k.setWon(x.getStatistics().getGames_won());
        k.setLooses(x.getStatistics().getGames_lost());
        long l1 = x.getStatistics().getGames_lost() + x.getStatistics().getGames_won();
        int j;
        if (l1 > 0L)
        {
            j = (int)(100F * ((float)x.getStatistics().getGames_resigned() / (float)l1));
        } else
        {
            j = 0;
        }
        k.setResigned(j);
        k.setVisibility(0);
    }
}
