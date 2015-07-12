// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.datasource;

import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
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
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.preguntados.datasource.dto.RegistrationDTO;
import com.etermax.preguntados.datasource.dto.ReportedQuestionDTO;
import com.etermax.preguntados.datasource.dto.RoomDTO;
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
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.a.a.a.a;
import org.b.c.b;
import org.b.c.b.j;
import org.b.c.f;
import org.b.c.l;
import org.b.e.a.k;

// Referenced classes of package com.etermax.preguntados.datasource:
//            b

public final class c
    implements com.etermax.preguntados.datasource.b
{

    private k a;
    private String b;
    private a c;

    public c()
    {
        a = new k();
        b = "";
        a.c().add(new j());
    }

    public ProductListDTO a()
    {
        ProductListDTO productlistdto;
        try
        {
            productlistdto = (ProductListDTO)a.a(b.concat("/products"), f.a, null, com/etermax/gamescommon/shop/dto/ProductListDTO, new Object[0]).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return productlistdto;
    }

    public CouponDTO a(long l1, CodeDTO codedto)
    {
        b b1 = new b(codedto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        CouponDTO coupondto;
        try
        {
            coupondto = (CouponDTO)a.a(b.concat("/users/{userId}/codes"), f.b, b1, com/etermax/preguntados/datasource/dto/CouponDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return coupondto;
    }

    public DashboardDTO a(long l1, int i1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("appConfigVersion", Integer.valueOf(i1));
        hashmap.put("userId", Long.valueOf(l1));
        DashboardDTO dashboarddto;
        try
        {
            dashboarddto = (DashboardDTO)a.a(b.concat("/users/{userId}/dashboard?app_config_version={appConfigVersion}"), f.a, null, com/etermax/preguntados/datasource/dto/DashboardDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return dashboarddto;
    }

    public GameDTO a(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("gameId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        GameDTO gamedto;
        try
        {
            gamedto = (GameDTO)a.a(b.concat("/users/{userId}/games/{gameId}/wheel"), f.b, null, com/etermax/preguntados/datasource/dto/GameDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return gamedto;
    }

    public GameDTO a(long l1, long l2, AnswerListDTO answerlistdto)
    {
        b b1 = new b(answerlistdto);
        HashMap hashmap = new HashMap();
        hashmap.put("gameId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        GameDTO gamedto;
        try
        {
            gamedto = (GameDTO)a.a(b.concat("/users/{userId}/games/{gameId}/answers"), f.b, b1, com/etermax/preguntados/datasource/dto/GameDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return gamedto;
    }

    public GameDTO a(long l1, long l2, GameActionDTO gameactiondto)
    {
        b b1 = new b(gameactiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("gameId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        GameDTO gamedto;
        try
        {
            gamedto = (GameDTO)a.a(b.concat("/users/{userId}/games/{gameId}/actions"), f.b, b1, com/etermax/preguntados/datasource/dto/GameDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return gamedto;
    }

    public GameDTO a(long l1, GameRequestDTO gamerequestdto)
    {
        b b1 = new b(gamerequestdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        GameDTO gamedto;
        try
        {
            gamedto = (GameDTO)a.a(b.concat("/users/{userId}/games"), f.b, b1, com/etermax/preguntados/datasource/dto/GameDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return gamedto;
    }

    public QuestionDTO a(long l1, Language language, Language language1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("sourceLanguage", language);
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("targetLanguage", language1);
        QuestionDTO questiondto;
        try
        {
            questiondto = (QuestionDTO)a.a(b.concat("/users/{userId}/translate-question?source_language={sourceLanguage}&target_language={targetLanguage}"), f.a, null, com/etermax/preguntados/datasource/dto/QuestionDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return questiondto;
    }

    public QuestionDTO a(long l1, Language language, Country country)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("language", language);
        hashmap.put("country", country);
        QuestionDTO questiondto;
        try
        {
            questiondto = (QuestionDTO)a.a(b.concat("/users/{userId}/question-rating?lang={language}&country={country}"), f.a, null, com/etermax/preguntados/datasource/dto/QuestionDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return questiondto;
    }

    public SuggestedOpponentDTO a(long l1, String s, String s1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("searchEmailString", s1);
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("searchUsernameString", s);
        SuggestedOpponentDTO suggestedopponentdto;
        try
        {
            suggestedopponentdto = (SuggestedOpponentDTO)a.a(b.concat("/users/{userId}/search?username={searchUsernameString}&email={searchEmailString}"), f.a, null, com/etermax/preguntados/datasource/dto/SuggestedOpponentDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return suggestedopponentdto;
    }

    public Map a(long l1, TranslationStatus translationstatus, TranslationOrigin translationorigin)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("status", translationstatus);
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("origin", translationorigin);
        Map map;
        try
        {
            map = (Map)a.a(b.concat("/users/{userId}/user-factory-stats/questions?status={status}&origin={origin}"), f.a, null, com/etermax/preguntados/datasource/b/a/b, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return map;
    }

    public Map a(long l1, TranslationStatus translationstatus, TranslationOrigin translationorigin, int i1, QuestionCategory questioncategory)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("category", questioncategory);
        hashmap.put("page", Integer.valueOf(i1));
        hashmap.put("status", translationstatus);
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("origin", translationorigin);
        Map map;
        try
        {
            map = (Map)a.a(b.concat("/users/{userId}/user-factory-stats/questions?status={status}&origin={origin}&page={page}&category={category}"), f.a, null, com/etermax/preguntados/datasource/b/a/b, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return map;
    }

    public void a(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/games"), f.f, null, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, int i1, AnswerDTO answerdto)
    {
        b b1 = new b(answerdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("showId", Integer.valueOf(i1));
        try
        {
            a.a(b.concat("/users/{userId}/shows/{showId}/live"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, FactoryQuestionDTO factoryquestiondto)
    {
        b b1 = new b(factoryquestiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/user-factory-stats/questions"), f.e, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, QuestionRatingDTO questionratingdto)
    {
        b b1 = new b(questionratingdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/question-rating"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, RegistrationDTO registrationdto)
    {
        b b1 = new b(registrationdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/tv-registrations"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, ReportedQuestionDTO reportedquestiondto)
    {
        b b1 = new b(reportedquestiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/reported-questions"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, SuggestedQuestionDTO suggestedquestiondto)
    {
        b b1 = new b(suggestedquestiondto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/suggested-questions"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(long l1, UserTranslationDTO usertranslationdto)
    {
        b b1 = new b(usertranslationdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        try
        {
            a.a(b.concat("/users/{userId}/translate-question"), f.b, b1, null, hashmap);
            return;
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return;
            } else
            {
                throw j1;
            }
        }
    }

    public void a(String s)
    {
        b = s;
    }

    public void a(k k1)
    {
        a = k1;
    }

    public GameDTO b(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("gameId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        GameDTO gamedto;
        try
        {
            gamedto = (GameDTO)a.a(b.concat("/users/{userId}/games/{gameId}"), f.a, null, com/etermax/preguntados/datasource/dto/GameDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return gamedto;
    }

    public RoomDTO b(long l1, GameRequestDTO gamerequestdto)
    {
        b b1 = new b(gamerequestdto);
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        RoomDTO roomdto;
        try
        {
            roomdto = (RoomDTO)a.a(b.concat("/users/{userId}/rooms"), f.b, b1, com/etermax/preguntados/datasource/dto/RoomDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return roomdto;
    }

    public SuggestedOpponentsDTO b(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        SuggestedOpponentsDTO suggestedopponentsdto;
        try
        {
            suggestedopponentsdto = (SuggestedOpponentsDTO)a.a(b.concat("/users/{userId}/opponents"), f.a, null, com/etermax/preguntados/datasource/dto/SuggestedOpponentsDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return suggestedopponentsdto;
    }

    public TvShowQuestionDTO b(long l1, int i1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("showId", Integer.valueOf(i1));
        TvShowQuestionDTO tvshowquestiondto;
        try
        {
            tvshowquestiondto = (TvShowQuestionDTO)a.a(b.concat("/users/{userId}/shows/{showId}/live"), f.a, null, com/etermax/preguntados/datasource/dto/TvShowQuestionDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return tvshowquestiondto;
    }

    public ProfileDTO c(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("profileId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        ProfileDTO profiledto;
        try
        {
            profiledto = (ProfileDTO)a.a(b.concat("/users/{userId}/profiles/{profileId}"), f.a, null, com/etermax/preguntados/datasource/dto/ProfileDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return profiledto;
    }

    public UserSuggestionConfigDTO c(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        UserSuggestionConfigDTO usersuggestionconfigdto;
        try
        {
            usersuggestionconfigdto = (UserSuggestionConfigDTO)a.a(b.concat("/users/{userId}/suggested-questions"), f.a, null, com/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return usersuggestionconfigdto;
    }

    public UserListDTO d(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("profileId", Long.valueOf(l2));
        hashmap.put("userId", Long.valueOf(l1));
        UserListDTO userlistdto;
        try
        {
            userlistdto = (UserListDTO)a.a(b.concat("/users/{userId}/profiles/{profileId}/friends"), f.a, null, com/etermax/gamescommon/login/datasource/dto/UserListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return userlistdto;
    }

    public UserSuggestionConfigDTO d(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        UserSuggestionConfigDTO usersuggestionconfigdto;
        try
        {
            usersuggestionconfigdto = (UserSuggestionConfigDTO)a.a(b.concat("/users/{userId}/question-rating-config"), f.a, null, com/etermax/preguntados/datasource/dto/UserSuggestionConfigDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return usersuggestionconfigdto;
    }

    public RoomDTO e(long l1, long l2)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        hashmap.put("roomId", Long.valueOf(l2));
        RoomDTO roomdto;
        try
        {
            roomdto = (RoomDTO)a.a(b.concat("/users/{userId}/rooms/{roomId}"), f.a, null, com/etermax/preguntados/datasource/dto/RoomDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return roomdto;
    }

    public TranslateQuestionConfigDTO e(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        TranslateQuestionConfigDTO translatequestionconfigdto;
        try
        {
            translatequestionconfigdto = (TranslateQuestionConfigDTO)a.a(b.concat("/users/{userId}/translate-question-config"), f.a, null, com/etermax/preguntados/datasource/dto/TranslateQuestionConfigDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return translatequestionconfigdto;
    }

    public UserFactoryStatsListDTO f(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        UserFactoryStatsListDTO userfactorystatslistdto;
        try
        {
            userfactorystatslistdto = (UserFactoryStatsListDTO)a.a(b.concat("/users/{userId}/user-factory-stats"), f.a, null, com/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return userfactorystatslistdto;
    }

    public List g(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        List list;
        try
        {
            list = (List)a.a(b.concat("/users/{userId}/new-levels"), f.a, null, com/etermax/preguntados/datasource/b/a/a, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return list;
    }

    public RankingsDTO h(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        RankingsDTO rankingsdto;
        try
        {
            rankingsdto = (RankingsDTO)a.a(b.concat("/users/{userId}/rankings"), f.a, null, com/etermax/preguntados/datasource/dto/RankingsDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return rankingsdto;
    }

    public UserRankDTO i(long l1)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("userId", Long.valueOf(l1));
        UserRankDTO userrankdto;
        try
        {
            userrankdto = (UserRankDTO)a.a(b.concat("/users/{userId}/rankings/last-week"), f.a, null, com/etermax/preguntados/datasource/dto/UserRankDTO, hashmap).b();
        }
        catch (org.b.e.a.j j1)
        {
            if (c != null)
            {
                c.a(j1);
                return null;
            } else
            {
                throw j1;
            }
        }
        return userrankdto;
    }
}
