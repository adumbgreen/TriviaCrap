// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.preguntados.datasource.dto.UserTranslationDTO;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            a, d

public final class c extends com.etermax.preguntados.ui.questionsfactory.translatequestion.a
    implements a, b
{

    private final org.a.a.b.c f = new org.a.a.b.c();
    private View g;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        e();
        a = com.etermax.preguntados.datasource.e.a(getActivity());
        c = com.etermax.tools.j.c.a(getActivity());
        b = com.etermax.preguntados.c.a.c.a(getActivity());
    }

    public static d d()
    {
        return new d();
    }

    private void e()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mQuestionCategory"))
            {
                d = (QuestionCategory)bundle.getSerializable("mQuestionCategory");
            }
            if (bundle.containsKey("mUserTranslationDTO"))
            {
                e = (UserTranslationDTO)bundle.getSerializable("mUserTranslationDTO");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0413);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view1)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        b();
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
        org.a.a.b.c c1 = org.a.a.b.c.a(f);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = super.onCreateView(layoutinflater, viewgroup, bundle);
        return g;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
