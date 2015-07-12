// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.support.v4.app.Fragment;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.k;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a, h, i, g

public class f extends com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a
{

    public f()
    {
    }

    public static Fragment a(TranslationOrigin translationorigin, int j, int l)
    {
        return h.e().a(translationorigin).b(j).a(l).a();
    }

    protected TranslationStatus a()
    {
        return TranslationStatus.PENDING;
    }

    protected a a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        return new k(userfactorytranslationstatdto);
    }

    protected void b(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        ((g)mCallbacks).a(userfactorytranslationstatdto);
    }

    protected void c(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
    }

    public g d()
    {
        return new g() {

            final f a;

            public void a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
            {
            }

            
            {
                a = f.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return d();
    }
}
