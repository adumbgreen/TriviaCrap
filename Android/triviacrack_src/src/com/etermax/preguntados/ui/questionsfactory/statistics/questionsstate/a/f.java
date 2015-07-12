// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a;

import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a:
//            a, n

public abstract class f extends a
{

    protected UserFactoryTranslationStatDTO c;

    public f(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        super(n.b, userfactorytranslationstatdto.getCategory());
        c = userfactorytranslationstatdto;
    }

    public UserFactoryTranslationStatDTO c()
    {
        return c;
    }
}
