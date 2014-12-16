// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            c, a

public class d
{

    private Bundle a;

    private d()
    {
        a = new Bundle();
    }

    d(c._cls1 _pcls1)
    {
        this();
    }

    public a a()
    {
        c c1 = new c();
        c1.setArguments(a);
        return c1;
    }

    public d a(UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        a.putSerializable("mConfig", usersuggestionconfigdto);
        return this;
    }

    public d a(QuestionCategory questioncategory)
    {
        a.putSerializable("mSelectedCategory", questioncategory);
        return this;
    }
}
