// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            e, f

class a extends a
{

    final e a;

    public Object a()
    {
        return b();
    }

    public void a(e e1, UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        super.a(e1, usersuggestionconfigdto);
        ((f)com.etermax.preguntados.ui.questionsfactory.suggestquestion.e.a(a)).a(usersuggestionconfigdto);
        a.c = usersuggestionconfigdto.getCategories();
        com.etermax.preguntados.ui.questionsfactory.suggestquestion.e.a(a, a.c);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((e)obj, (UserSuggestionConfigDTO)obj1);
    }

    public UserSuggestionConfigDTO b()
    {
        return a.b.m();
    }

    (e e1, String s)
    {
        a = e1;
        super(s);
    }
}
