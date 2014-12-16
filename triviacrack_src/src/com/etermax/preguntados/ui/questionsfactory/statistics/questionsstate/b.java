// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.support.v4.app.Fragment;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.g;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a, d, e, c

public class b extends com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a
{

    public b()
    {
    }

    public static Fragment a(TranslationOrigin translationorigin, int i, int j)
    {
        return com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.d.e().a(translationorigin).a(i).b(j).a();
    }

    protected TranslationStatus a()
    {
        return TranslationStatus.ONLINE;
    }

    protected a a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        return new g(userfactorytranslationstatdto);
    }

    protected void b(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        ((c)mCallbacks).a(userfactorytranslationstatdto);
    }

    protected void c(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
    }

    public c d()
    {
        return new c() {

            final b a;

            public void a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
            {
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return d();
    }
}
