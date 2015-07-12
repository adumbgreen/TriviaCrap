// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.support.v4.app.Fragment;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationStatus;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.a;
import com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a.h;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            a, t, u, s

public class r extends com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.a
{

    UserSuggestionConfigDTO e;

    public r()
    {
    }

    public static Fragment a(TranslationOrigin translationorigin, int i, int j)
    {
        return t.f().a(translationorigin).b(i).a(j).a();
    }

    static Object a(r r1)
    {
        return r1.mCallbacks;
    }

    private void d(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), userfactorytranslationstatdto) {

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

            
            {
                b = r.this;
                a = userfactorytranslationstatdto;
                super(s1);
            }
        }).a(this);
    }

    protected TranslationStatus a()
    {
        return TranslationStatus.DISAPPROVED;
    }

    protected a a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        return new h(userfactorytranslationstatdto);
    }

    protected void b(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
    }

    protected void c(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        if (e == null)
        {
            d(userfactorytranslationstatdto);
            return;
        } else
        {
            ((s)mCallbacks).a(e, userfactorytranslationstatdto);
            return;
        }
    }

    public s d()
    {
        return new s() {

            final r a;

            public void a(UserSuggestionConfigDTO usersuggestionconfigdto, UserFactoryTranslationStatDTO userfactorytranslationstatdto)
            {
            }

            
            {
                a = r.this;
                super();
            }
        };
    }

    public void e()
    {
        c();
    }

    public Object getDummyCallbacks()
    {
        return d();
    }
}
