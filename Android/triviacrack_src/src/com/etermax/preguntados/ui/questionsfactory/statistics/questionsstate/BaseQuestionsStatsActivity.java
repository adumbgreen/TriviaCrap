// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            c, g, k, s, 
//            w, v, n, j, 
//            f, b, r

public abstract class BaseQuestionsStatsActivity extends BaseFragmentActivity
    implements c, g, k, s, w
{

    UserFactoryStatsCountDTO a;

    public BaseQuestionsStatsActivity()
    {
    }

    private void o()
    {
        Toast.makeText(getApplicationContext(), getString(o.no_questions_state), 0).show();
    }

    protected Fragment a()
    {
        return v.a(b(), a);
    }

    public void a(UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.n.a(userfactorytranslationstatdto), true);
    }

    public void a(UserSuggestionConfigDTO usersuggestionconfigdto, UserFactoryTranslationStatDTO userfactorytranslationstatdto)
    {
        a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.j.a(usersuggestionconfigdto, userfactorytranslationstatdto), "fragment_edit_rejected_question", true);
    }

    protected abstract int b();

    protected abstract TranslationOrigin c();

    protected abstract int d();

    protected abstract int e();

    protected abstract int f();

    protected abstract int h();

    protected abstract int i();

    protected abstract int j();

    public void k()
    {
        if (a.getInRate() != 0)
        {
            a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.f.a(c(), d(), e()), true);
            return;
        } else
        {
            o();
            return;
        }
    }

    public void l()
    {
        if (a.getApproved() != 0)
        {
            a(com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate.b.a(c(), f(), h()), true);
            return;
        } else
        {
            o();
            return;
        }
    }

    public void m()
    {
        if (a.getRejected() != 0)
        {
            a(r.a(c(), i(), j()), true, "fragment_rejected_questions");
            return;
        } else
        {
            o();
            return;
        }
    }

    public void n()
    {
        FragmentManager fragmentmanager = getSupportFragmentManager();
        Fragment fragment = fragmentmanager.findFragmentByTag("fragment_edit_rejected_question");
        if (fragment != null)
        {
            b(fragment);
            fragmentmanager.popBackStackImmediate();
        }
        Fragment fragment1 = v();
        if (fragment1 instanceof r)
        {
            ((r)fragment1).e();
        }
    }
}
