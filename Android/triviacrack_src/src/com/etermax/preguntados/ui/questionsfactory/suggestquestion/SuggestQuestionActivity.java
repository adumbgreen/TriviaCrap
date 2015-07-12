// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Window;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            b, f, SuggestQuestionActivity_, e, 
//            a

public class SuggestQuestionActivity extends BaseFragmentActivity
    implements b, f
{

    protected UserSuggestionConfigDTO a;

    public SuggestQuestionActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity_);
    }

    protected Fragment a()
    {
        return e.b();
    }

    public void a(UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        a = usersuggestionconfigdto;
    }

    public void a(QuestionCategory questioncategory)
    {
        a(com.etermax.preguntados.ui.questionsfactory.suggestquestion.a.a(a, questioncategory), true);
    }

    public void b()
    {
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(16);
    }
}
