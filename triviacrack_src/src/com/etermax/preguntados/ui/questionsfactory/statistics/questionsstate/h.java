// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.questionsfactory.statistics.enums.TranslationOrigin;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            f, i

public final class h extends f
    implements a
{

    private final c e = new c();
    private View f;

    public h()
    {
    }

    private void a(Bundle bundle)
    {
        f();
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        b();
    }

    public static i e()
    {
        return new i();
    }

    private void f()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mSubtitleResourceId"))
            {
                d = bundle.getInt("mSubtitleResourceId");
            }
            if (bundle.containsKey("mQuestionType"))
            {
                b = (TranslationOrigin)bundle.getSerializable("mQuestionType");
            }
            if (bundle.containsKey("mTitleResourceId"))
            {
                c = bundle.getInt("mTitleResourceId");
            }
        }
    }

    public View findViewById(int j)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(e);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        f = super.onCreateView(layoutinflater, viewgroup, bundle);
        return f;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        e.a(this);
    }
}
