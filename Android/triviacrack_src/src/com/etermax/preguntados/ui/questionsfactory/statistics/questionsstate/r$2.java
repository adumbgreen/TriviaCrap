// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            r, s

class a extends a
{

    final UserFactoryTranslationStatDTO a;
    final r b;

    public Object a()
    {
        return b();
    }

    public void a(r r1, UserSuggestionConfigDTO usersuggestionconfigdto)
    {
        super.a(r1, usersuggestionconfigdto);
        b.e = usersuggestionconfigdto;
        ((s)com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.r.a(r1)).a(b.e, a);
    }

    public volatile void a(Object obj, Object obj1)
    {
        a((r)obj, (UserSuggestionConfigDTO)obj1);
    }

    public UserSuggestionConfigDTO b()
    {
        return b.a.m();
    }

    (r r1, String s1, UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        b = r1;
        a = userfactorytranslationstatdto;
        super(s1);
    }
}
