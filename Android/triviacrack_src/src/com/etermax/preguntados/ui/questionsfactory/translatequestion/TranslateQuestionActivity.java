// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.Window;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.datasource.dto.UserTranslationDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.ui.questionsfactory.e;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.List;
import java.util.Random;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            b, f, TranslateQuestionActivity_, e, 
//            a

public class TranslateQuestionActivity extends BaseFragmentActivity
    implements b, f
{

    d a;
    TranslateQuestionConfigDTO b;

    public TranslateQuestionActivity()
    {
    }

    public static Intent a(Context context, TranslateQuestionConfigDTO translatequestionconfigdto)
    {
        return (new Intent(context, com/etermax/preguntados/ui/questionsfactory/translatequestion/TranslateQuestionActivity_)).putExtra("mConfig", translatequestionconfigdto);
    }

    protected Fragment a()
    {
        Language language = e.a(getApplicationContext()).d();
        Language language1 = e.a(getApplicationContext()).e();
        Language language2;
        Language language3;
        if (!b.getSourceLanguages().contains(language))
        {
            language2 = Language.EN;
        } else
        {
            language2 = language;
        }
        if (!b.getTargetLanguages().contains(language1))
        {
            language3 = Language.EN;
        } else
        {
            language3 = language1;
        }
        if (language2 == language3)
        {
            language3 = b.getRecommendedLanguage();
            if (language3 == language2)
            {
                List list = b.getTargetLanguages();
                list.remove(language3);
                language3 = (Language)list.get((new Random(System.currentTimeMillis())).nextInt(list.size()));
            }
        }
        return e.a(b, language2, language3);
    }

    public void a(UserTranslationDTO usertranslationdto, QuestionCategory questioncategory)
    {
        a(com.etermax.preguntados.ui.questionsfactory.translatequestion.a.a(questioncategory, usertranslationdto), true, "fragment_preview");
    }

    public void b()
    {
        Fragment fragment = getSupportFragmentManager().findFragmentByTag("fragment_preview");
        if (fragment != null)
        {
            b(fragment);
        }
        w();
        a(a(), false);
    }

    public void onCreate(Bundle bundle)
    {
        getWindow().setSoftInputMode(16);
        super.onCreate(bundle);
    }
}
