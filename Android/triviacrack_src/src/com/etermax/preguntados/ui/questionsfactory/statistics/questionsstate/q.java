// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            p, n

public class q
{

    private Bundle a;

    private q()
    {
        a = new Bundle();
    }

    q(p._cls1 _pcls1)
    {
        this();
    }

    public n a()
    {
        p p1 = new p();
        p1.setArguments(a);
        return p1;
    }

    public q a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        a.putSerializable("mQuestion", userfactorytranslationstatdto);
        return this;
    }
}
