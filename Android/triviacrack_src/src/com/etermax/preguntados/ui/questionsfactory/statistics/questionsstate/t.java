// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            r, u

public final class t extends r
    implements a
{

    private final c f = new c();
    private View g;

    public t()
    {
    }

    private void a(Bundle bundle)
    {
        g();
        a = e.a(getActivity());
        b(bundle);
        b();
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            e = (UserSuggestionConfigDTO)bundle.getSerializable("mConfig");
            return;
        }
    }

    public static u f()
    {
        return new u();
    }

    private void g()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mQuestionType"))
            {
                b = (TranslationOrigin)bundle.getSerializable("mQuestionType");
            }
            if (bundle.containsKey("mSubtitleResourceId"))
            {
                d = bundle.getInt("mSubtitleResourceId");
            }
            if (bundle.containsKey("mTitleResourceId"))
            {
                c = bundle.getInt("mTitleResourceId");
            }
        }
    }

    public View findViewById(int i)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        return g;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mConfig", e);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
