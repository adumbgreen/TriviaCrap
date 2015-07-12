// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.SystemClock;
import com.etermax.gamescommon.datasource.dto.PromotionDTO;
import com.etermax.gamescommon.datasource.j;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.gamescommon.promotion.PromotionsManager;
import com.etermax.gamescommon.shop.dto.ProductListDTO;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.AnswerListDTO;
import com.etermax.preguntados.datasource.dto.CodeDTO;
import com.etermax.preguntados.datasource.dto.CouponDTO;
import com.etermax.preguntados.datasource.dto.DashboardDTO;
import com.etermax.preguntados.datasource.dto.FactoryQuestionDTO;
import com.etermax.preguntados.datasource.dto.GameActionDTO;
import com.etermax.preguntados.datasource.dto.GameDTO;
import com.etermax.preguntados.datasource.dto.GameRequestDTO;
import com.etermax.preguntados.datasource.dto.InboxDTO;
import com.etermax.preguntados.datasource.dto.LivesConfigDTO;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.datasource.dto.OpponentListDTO;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.preguntados.datasource.dto.RegistrationDTO;
import com.etermax.preguntados.datasource.dto.ReportedQuestionDTO;
import com.etermax.preguntados.datasource.dto.RoomDTO;
import com.etermax.preguntados.datasource.dto.ShowDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentsDTO;
import com.etermax.preguntados.datasource.dto.SuggestedQuestionDTO;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsListDTO;
import com.etermax.preguntados.datasource.dto.UserRankDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.UserTranslationDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.GameAction;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.e.c;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import com.etermax.tools.j.h;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.social.a.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

// Referenced classes of package com.etermax.preguntados.datasource:
//            a, b

public class d extends com.etermax.gamescommon.d
{

    protected com.etermax.preguntados.datasource.b c;
    protected com.etermax.tools.a.a.j d;
    com.etermax.gamescommon.resources.a e;
    j f;
    b g;
    PromotionsManager h;
    c i;
    com.etermax.gamescommon.e.a j;
    protected SharedPreferences k;
    protected Handler l;
    protected LivesDTO m;
    protected int n;
    protected int o;
    protected DashboardDTO p;
    protected boolean q;
    protected Runnable r;

    public d()
    {
        n = -1;
        o = -1;
        q = true;
        r = new Runnable() {

            final d a;

            public void run()
            {
                com.etermax.preguntados.datasource.d.a(a).setQuantity(com.etermax.preguntados.datasource.d.a(a).getQuantity() + a.r().getIncrement_quantity());
                if (com.etermax.preguntados.datasource.d.a(a).getQuantity() < com.etermax.preguntados.datasource.d.a(a).getMax())
                {
                    com.etermax.preguntados.datasource.d.a(a).setNextIncrement(a.r().getIncrement_interval());
                    a.k.edit().putLong("DASHBOARD_RECEIVED_TIME", SystemClock.elapsedRealtime()).commit();
                    a.k.edit().putLong("NEXT_INCREMENT_INTERVAL", com.etermax.preguntados.datasource.d.a(a).getNextIncrement()).commit();
                    a.l.removeCallbacks(a.r);
                    a.l.postDelayed(a.r, 1000 * com.etermax.preguntados.datasource.d.a(a).getNextIncrement());
                }
            }

            
            {
                a = d.this;
                super();
            }
        };
    }

    static a A(d d1)
    {
        return d1.b;
    }

    static a B(d d1)
    {
        return d1.b;
    }

    static a C(d d1)
    {
        return d1.b;
    }

    static a D(d d1)
    {
        return d1.b;
    }

    static a E(d d1)
    {
        return d1.b;
    }

    static a F(d d1)
    {
        return d1.b;
    }

    private String I()
    {
        return (new StringBuilder()).append(s.getPackageName()).append(".DATASOURCE").toString();
    }

    private LivesDTO J()
    {
        if (m == null)
        {
            m = (LivesDTO)f.a("com.etermax.preguntados.LIVES", com/etermax/preguntados/datasource/dto/LivesDTO);
        }
        return m;
    }

    private long K()
    {
        return k.getLong("DASHBOARD_RECEIVED_TIME", 0L);
    }

    private long L()
    {
        return k.getLong("NEXT_INCREMENT_INTERVAL", 0L);
    }

    static LivesDTO a(d d1)
    {
        return d1.J();
    }

    static a b(d d1)
    {
        return d1.b;
    }

    static a c(d d1)
    {
        return d1.b;
    }

    static a d(d d1)
    {
        return d1.b;
    }

    static a e(d d1)
    {
        return d1.b;
    }

    static a f(d d1)
    {
        return d1.b;
    }

    static a g(d d1)
    {
        return d1.b;
    }

    static a h(d d1)
    {
        return d1.b;
    }

    static a i(d d1)
    {
        return d1.b;
    }

    static a j(d d1)
    {
        return d1.b;
    }

    static a k(d d1)
    {
        return d1.b;
    }

    static a l(d d1)
    {
        return d1.b;
    }

    static a m(d d1)
    {
        return d1.b;
    }

    static a n(d d1)
    {
        return d1.b;
    }

    static a o(d d1)
    {
        return d1.b;
    }

    static a p(d d1)
    {
        return d1.b;
    }

    static a q(d d1)
    {
        return d1.b;
    }

    static a r(d d1)
    {
        return d1.b;
    }

    static a s(d d1)
    {
        return d1.b;
    }

    static a t(d d1)
    {
        return d1.b;
    }

    static a u(d d1)
    {
        return d1.b;
    }

    static a v(d d1)
    {
        return d1.b;
    }

    static a w(d d1)
    {
        return d1.b;
    }

    static a x(d d1)
    {
        return d1.b;
    }

    static a y(d d1)
    {
        return d1.b;
    }

    static a z(d d1)
    {
        return d1.b;
    }

    public OpponentListDTO A()
    {
        return (OpponentListDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public OpponentListDTO a()
            {
                OpponentListDTO opponentlistdto = new OpponentListDTO();
                ArrayList arraylist = new ArrayList();
                com.etermax.tools.social.a.c ac[];
                int i1;
                UserDTO userdto;
                try
                {
                    ac = a.g.k();
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                    return opponentlistdto;
                }
                i1 = 0;
                if (i1 >= ac.length)
                {
                    break; /* Loop/switch isn't completed */
                }
                userdto = new UserDTO();
                userdto.setUsername(ac[i1].a());
                userdto.setFacebook_id(ac[i1].b());
                userdto.setIs_app_user(ac[i1].c());
                userdto.setFb_show_picture(true);
                arraylist.add(userdto);
                i1++;
                if (true) goto _L2; else goto _L1
_L2:
                break MISSING_BLOCK_LABEL_31;
_L1:
                opponentlistdto.setFriends(arraylist);
                return opponentlistdto;
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public boolean B()
    {
        LivesDTO livesdto = J();
        return livesdto.getQuantity() > 0 || livesdto.isUnlimited();
    }

    public RankingsDTO C()
    {
        return (RankingsDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public RankingsDTO a()
            {
                return a.c.h(d.C(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public UserRankDTO D()
    {
        return (UserRankDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public UserRankDTO a()
            {
                return a.c.i(d.D(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public int a(int i1)
    {
        n = n - i1;
        return n;
    }

    public CouponDTO a(CodeDTO codedto)
    {
        return (CouponDTO)a(new com.etermax.tools.a.a.c(codedto) {

            final CodeDTO a;
            final d b;

            public CouponDTO a()
            {
                return b.c.a(d.r(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = codedto;
                super();
            }
        });
    }

    public GameDTO a(long l1)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public GameDTO a()
            {
                return b.c.a(d.d(b).e(), a, new GameActionDTO(GameAction.RESIGN));
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
        a(gamedto);
        return gamedto;
    }

    public GameDTO a(long l1, AnswerListDTO answerlistdto)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(l1, answerlistdto) {

            final long a;
            final AnswerListDTO b;
            final d c;

            public GameDTO a()
            {
                return c.c.a(com.etermax.preguntados.datasource.d.j(c).e(), a, b);
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = d.this;
                a = l1;
                b = answerlistdto;
                super();
            }
        });
        i.c();
        i.a(gamedto);
        a(gamedto);
        return gamedto;
    }

    public GameDTO a(GameRequestDTO gamerequestdto)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(gamerequestdto) {

            final GameRequestDTO a;
            final d b;

            public GameDTO a()
            {
                return b.c.a(com.etermax.preguntados.datasource.d.c(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = gamerequestdto;
                super();
            }
        });
        i.a(gamedto);
        m = p.getLives();
        if (m.getQuantity() == p.getLives().getMax())
        {
            m.setNextIncrement(s().getLivesConfig().getIncrement_interval());
        }
        p.getLives().setQuantity(-1 + m.getQuantity());
        f.a("com.etermax.preguntados.LIVES", m);
        k.edit().putLong("NEXT_INCREMENT_INTERVAL", J().getNextIncrement()).commit();
        k.edit().putLong("DASHBOARD_RECEIVED_TIME", SystemClock.elapsedRealtime()).commit();
        if (J().getQuantity() < J().getMax())
        {
            l.removeCallbacks(r);
            l.postDelayed(r, 1000 * J().getNextIncrement());
        }
        a(gamedto);
        return gamedto;
    }

    public QuestionDTO a(Language language, Language language1)
    {
        return (QuestionDTO)a(new com.etermax.tools.a.a.c(language, language1) {

            final Language a;
            final Language b;
            final d c;

            public QuestionDTO a()
            {
                return c.c.a(d.m(c).e(), a, b);
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = d.this;
                a = language;
                b = language1;
                super();
            }
        });
    }

    public QuestionDTO a(Language language, Country country)
    {
        return (QuestionDTO)a(new com.etermax.tools.a.a.c(language, country) {

            final Language a;
            final Country b;
            final d c;

            public QuestionDTO a()
            {
                return c.c.a(d.o(c).e(), a, b);
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = d.this;
                a = language;
                b = country;
                super();
            }
        });
    }

    public SuggestedOpponentDTO a(String s1)
    {
        return (SuggestedOpponentDTO)a(new com.etermax.tools.a.a.c(s1) {

            final String a;
            final d b;

            public SuggestedOpponentDTO a()
            {
                return b.c.a(com.etermax.preguntados.datasource.d.h(b).e(), a, a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = s1;
                super();
            }
        });
    }

    public TvShowQuestionDTO a(long l1, int i1)
    {
        return (TvShowQuestionDTO)a(new com.etermax.tools.a.a.c(l1, i1) {

            final long a;
            final int b;
            final d c;

            public TvShowQuestionDTO a()
            {
                return c.c.b(a, b);
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = d.this;
                a = l1;
                b = i1;
                super();
            }
        });
    }

    public Map a(TranslationStatus translationstatus, TranslationOrigin translationorigin)
    {
        return (Map)a(new com.etermax.tools.a.a.c(translationstatus, translationorigin) {

            final TranslationStatus a;
            final TranslationOrigin b;
            final d c;

            public Map a()
            {
                return c.c.a(d.w(c).e(), a, b);
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = d.this;
                a = translationstatus;
                b = translationorigin;
                super();
            }
        });
    }

    public Map a(TranslationStatus translationstatus, TranslationOrigin translationorigin, int i1, QuestionCategory questioncategory)
    {
        return (Map)a(new com.etermax.tools.a.a.c(translationstatus, translationorigin, i1, questioncategory) {

            final TranslationStatus a;
            final TranslationOrigin b;
            final int c;
            final QuestionCategory d;
            final d e;

            public Map a()
            {
                return e.c.a(d.x(e).e(), a, b, c, d);
            }

            public Object b()
            {
                return a();
            }

            
            {
                e = d.this;
                a = translationstatus;
                b = translationorigin;
                c = i1;
                d = questioncategory;
                super();
            }
        });
    }

    public void a(long l1, int i1, AnswerDTO answerdto)
    {
        a(new com.etermax.tools.a.a.c(l1, i1, answerdto) {

            final long a;
            final int b;
            final AnswerDTO c;
            final d d;

            public Void a()
            {
                d.c.a(a, b, c);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                d = d.this;
                a = l1;
                b = i1;
                c = answerdto;
                super();
            }
        });
    }

    public void a(FactoryQuestionDTO factoryquestiondto)
    {
        a(new com.etermax.tools.a.a.c(factoryquestiondto) {

            final FactoryQuestionDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.y(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = factoryquestiondto;
                super();
            }
        });
    }

    public void a(GameDTO gamedto)
    {
        if (p != null)
        {
            if (p.getGames() == null)
            {
                p.setGames(new ArrayList());
            }
            if (p.getGames().contains(gamedto))
            {
                p.getGames().remove(gamedto);
            }
            p.getGames().add(gamedto);
            List list = com.etermax.preguntados.datasource.a.a(p.getGames());
            p.setGames(list);
        }
    }

    public void a(QuestionRatingDTO questionratingdto)
    {
        a(new com.etermax.tools.a.a.c(questionratingdto) {

            final QuestionRatingDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.s(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = questionratingdto;
                super();
            }
        });
    }

    public void a(RegistrationDTO registrationdto)
    {
        a(new com.etermax.tools.a.a.c(registrationdto) {

            final RegistrationDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.B(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = registrationdto;
                super();
            }
        });
    }

    public void a(ReportedQuestionDTO reportedquestiondto)
    {
        a(new com.etermax.tools.a.a.c(reportedquestiondto) {

            final ReportedQuestionDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.u(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = reportedquestiondto;
                super();
            }
        });
    }

    public void a(SuggestedQuestionDTO suggestedquestiondto)
    {
        a(new com.etermax.tools.a.a.c(suggestedquestiondto) {

            final SuggestedQuestionDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.t(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = suggestedquestiondto;
                super();
            }
        });
    }

    public void a(UserTranslationDTO usertranslationdto)
    {
        a(new com.etermax.tools.a.a.c(usertranslationdto) {

            final UserTranslationDTO a;
            final d b;

            public Void a()
            {
                b.c.a(d.q(b).e(), a);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = usertranslationdto;
                super();
            }
        });
    }

    public void a(Nationality nationality)
    {
        b.a(nationality);
        p.setHasConfirmedCountry(true);
    }

    public int b(int i1)
    {
        n = i1 + n;
        return n;
    }

    public GameDTO b(long l1)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public GameDTO a()
            {
                return b.c.a(d.e(b).e(), a, new GameActionDTO(GameAction.REJECT));
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
        a(gamedto);
        return gamedto;
    }

    public RoomDTO b(GameRequestDTO gamerequestdto)
    {
        return (RoomDTO)a(new com.etermax.tools.a.a.c(gamerequestdto) {

            final GameRequestDTO a;
            final d b;

            public RoomDTO a()
            {
                return b.c.b(d.E(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = gamerequestdto;
                super();
            }
        });
    }

    public int c(int i1)
    {
        o = i1 + o;
        return o;
    }

    public GameDTO c(long l1)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public GameDTO a()
            {
                return b.c.a(d.i(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
        i.a(gamedto);
        a(gamedto);
        return gamedto;
    }

    public void c()
    {
        c.a(F());
        l = new Handler();
        k = s.getSharedPreferences(I(), 0);
    }

    public GameDTO d(long l1)
    {
        GameDTO gamedto = (GameDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public GameDTO a()
            {
                return b.c.b(d.k(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
        i.a(gamedto);
        a(gamedto);
        return gamedto;
    }

    protected com.etermax.tools.a.b.a d()
    {
        return new com.etermax.preguntados.datasource.a.a();
    }

    public ProfileDTO e(long l1)
    {
        return (ProfileDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public ProfileDTO a()
            {
                return b.c.c(d.z(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
    }

    public void e()
    {
        c.a(d.b());
    }

    public UserListDTO f(long l1)
    {
        return (UserListDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public UserListDTO a()
            {
                return b.c.d(d.A(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
    }

    public DashboardDTO f()
    {
        if (g())
        {
            q = false;
            int i1;
            PreguntadosAppConfigDTO preguntadosappconfigdto;
            PromotionDTO promotiondto;
            if (s() == null || s().getAvailableLanguages() == null || s().getRejectedQuestionsExpirationTime() == 0 || s().getDashboardTTL() == 0 || s().getDuelModeMinPlayers() == 0 || s().getDuelModeMaxPlayers() == 0 || s().getShowQuestionsReloadSeconds() == 0)
            {
                i1 = 0;
            } else
            {
                i1 = s().getVersion();
            }
            p = (DashboardDTO)a(new com.etermax.tools.a.a.c(i1) {

                final int a;
                final d b;

                public DashboardDTO a()
                {
                    return b.c.a(com.etermax.preguntados.datasource.d.b(b).e(), a);
                }

                public Object b()
                {
                    return a();
                }

            
            {
                b = d.this;
                a = i1;
                super();
            }
            });
            com.etermax.tools.j.h.a(s, p.getTime(), new Date());
            if (p.getGames() != null && p.getGames().size() > 1)
            {
                p.setGames(com.etermax.preguntados.datasource.a.a(p.getGames()));
            }
            n = p.getCoins();
            o = p.getExtra_shots();
            k.edit().putInt("COINS", n).putInt("EXTRA_SHOTS", o).commit();
            if (p.getAppConfig() != null && p.getAppConfig().getVersion() != i1)
            {
                preguntadosappconfigdto = p.getAppConfig();
                f.a("com.etermax.preguntados.APP_CONFIG", preguntadosappconfigdto);
            } else
            {
                preguntadosappconfigdto = (PreguntadosAppConfigDTO)f.a("com.etermax.preguntados.APP_CONFIG", com/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO);
            }
            j.a(preguntadosappconfigdto);
            promotiondto = p.getCurrentPromotion();
            if (promotiondto != null)
            {
                com.etermax.preguntados.ui.c.a a1 = new com.etermax.preguntados.ui.c.a(promotiondto.getId(), promotiondto.getAppItemType(), System.currentTimeMillis(), promotiondto.getRemainingTime());
                h.setCurrentPromotion(a1);
            } else
            {
                h.clearCurrentPromotion();
            }
            if (p.getCountry() != null)
            {
                b.a(p.getCountry());
            }
            if (p.getShow() != null)
            {
                f.a("prefs_show_dto", p.getShow());
            } else
            {
                f.a("prefs_show_dto");
            }
            m = p.getLives();
            f.a("com.etermax.preguntados.LIVES", m);
            k.edit().putLong("NEXT_INCREMENT_INTERVAL", J().getNextIncrement()).commit();
            k.edit().putLong("DASHBOARD_RECEIVED_TIME", SystemClock.elapsedRealtime()).commit();
            if (J().getQuantity() < J().getMax())
            {
                l.removeCallbacks(r);
                l.postDelayed(r, 1000 * J().getNextIncrement());
            }
        }
        return p;
    }

    public List g(long l1)
    {
        return (List)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public List a()
            {
                return b.c.g(a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
    }

    public boolean g()
    {
        return p == null || q || (SystemClock.elapsedRealtime() - K()) / 1000L > (long)s().getDashboardTTL();
    }

    public RoomDTO h(long l1)
    {
        return (RoomDTO)a(new com.etermax.tools.a.a.c(l1) {

            final long a;
            final d b;

            public RoomDTO a()
            {
                return b.c.e(d.F(b).e(), a);
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = d.this;
                a = l1;
                super();
            }
        });
    }

    public void h()
    {
        q = true;
    }

    public List i()
    {
        if (p != null)
        {
            return p.getGames();
        } else
        {
            return null;
        }
    }

    public ShowDTO j()
    {
        if (p != null && p.getShow() != null)
        {
            return p.getShow();
        } else
        {
            return (ShowDTO)f.b("prefs_show_dto", com/etermax/preguntados/datasource/dto/ShowDTO);
        }
    }

    public void k()
    {
        a(new com.etermax.tools.a.a.c() {

            final d a;

            public Void a()
            {
                a.c.a(d.f(a).e());
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
        h();
    }

    public SuggestedOpponentsDTO l()
    {
        return (SuggestedOpponentsDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public SuggestedOpponentsDTO a()
            {
                return a.c.b(d.g(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public UserSuggestionConfigDTO m()
    {
        UserSuggestionConfigDTO usersuggestionconfigdto = (UserSuggestionConfigDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public UserSuggestionConfigDTO a()
            {
                return a.c.c(d.l(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
        for (Iterator iterator = usersuggestionconfigdto.getLanguages().values().iterator(); iterator.hasNext(); ((ArrayList)iterator.next()).removeAll(Collections.singleton(null))) { }
        return usersuggestionconfigdto;
    }

    public UserSuggestionConfigDTO n()
    {
        UserSuggestionConfigDTO usersuggestionconfigdto = (UserSuggestionConfigDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public UserSuggestionConfigDTO a()
            {
                return a.c.d(d.n(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
        for (Iterator iterator = usersuggestionconfigdto.getLanguages().values().iterator(); iterator.hasNext(); ((ArrayList)iterator.next()).removeAll(Collections.singleton(null))) { }
        return usersuggestionconfigdto;
    }

    public TranslateQuestionConfigDTO o()
    {
        return (TranslateQuestionConfigDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public TranslateQuestionConfigDTO a()
            {
                return a.c.e(d.p(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public UserFactoryStatsListDTO p()
    {
        return (UserFactoryStatsListDTO)a(new com.etermax.tools.a.a.c() {

            final d a;

            public UserFactoryStatsListDTO a()
            {
                return a.c.f(d.v(a).e());
            }

            public Object b()
            {
                return a();
            }

            
            {
                a = d.this;
                super();
            }
        });
    }

    public LivesDTO q()
    {
        double d1 = (double)(1000L * L()) - (double)(SystemClock.elapsedRealtime() - K());
        J().setNextIncrement((int)Math.ceil(d1 / 1000D));
        return m;
    }

    public LivesConfigDTO r()
    {
        return s().getLivesConfig();
    }

    public PreguntadosAppConfigDTO s()
    {
        return (PreguntadosAppConfigDTO)f.a("com.etermax.preguntados.APP_CONFIG", com/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO);
    }

    public int t()
    {
        if (n == -1)
        {
            n = k.getInt("COINS", 0);
        }
        return n;
    }

    public int u()
    {
        if (o == -1)
        {
            o = k.getInt("EXTRA_SHOTS", 0);
        }
        return o;
    }

    public ProductListDTO v()
    {
        return c.a();
    }

    public void w()
    {
        o = -1 + u();
    }

    public void x()
    {
        if (p.getInactiveFriends() != null)
        {
            p.getInactiveFriends().clear();
            p.setInactiveFriends(null);
        }
    }

    public void y()
    {
        p.setNewAchievements(false);
    }

    public void z()
    {
        if (p.getInbox() != null)
        {
            p.getInbox().setNews(0);
        }
    }
}
