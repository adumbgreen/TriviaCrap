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
import java.util.List;
import java.util.Map;
import org.b.e.a.k;

public interface b
{

    public abstract ProductListDTO a();

    public abstract CouponDTO a(long l, CodeDTO codedto);

    public abstract DashboardDTO a(long l, int j);

    public abstract GameDTO a(long l, long l1);

    public abstract GameDTO a(long l, long l1, AnswerListDTO answerlistdto);

    public abstract GameDTO a(long l, long l1, GameActionDTO gameactiondto);

    public abstract GameDTO a(long l, GameRequestDTO gamerequestdto);

    public abstract QuestionDTO a(long l, Language language, Language language1);

    public abstract QuestionDTO a(long l, Language language, Country country);

    public abstract SuggestedOpponentDTO a(long l, String s, String s1);

    public abstract Map a(long l, TranslationStatus translationstatus, TranslationOrigin translationorigin);

    public abstract Map a(long l, TranslationStatus translationstatus, TranslationOrigin translationorigin, int j, QuestionCategory questioncategory);

    public abstract void a(long l);

    public abstract void a(long l, int j, AnswerDTO answerdto);

    public abstract void a(long l, FactoryQuestionDTO factoryquestiondto);

    public abstract void a(long l, QuestionRatingDTO questionratingdto);

    public abstract void a(long l, RegistrationDTO registrationdto);

    public abstract void a(long l, ReportedQuestionDTO reportedquestiondto);

    public abstract void a(long l, SuggestedQuestionDTO suggestedquestiondto);

    public abstract void a(long l, UserTranslationDTO usertranslationdto);

    public abstract void a(String s);

    public abstract void a(k k);

    public abstract GameDTO b(long l, long l1);

    public abstract RoomDTO b(long l, GameRequestDTO gamerequestdto);

    public abstract SuggestedOpponentsDTO b(long l);

    public abstract TvShowQuestionDTO b(long l, int j);

    public abstract ProfileDTO c(long l, long l1);

    public abstract UserSuggestionConfigDTO c(long l);

    public abstract UserListDTO d(long l, long l1);

    public abstract UserSuggestionConfigDTO d(long l);

    public abstract RoomDTO e(long l, long l1);

    public abstract TranslateQuestionConfigDTO e(long l);

    public abstract UserFactoryStatsListDTO f(long l);

    public abstract List g(long l);

    public abstract RankingsDTO h(long l);

    public abstract UserRankDTO i(long l);
}
