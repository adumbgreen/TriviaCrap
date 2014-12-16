// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.translatequestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.TranslateQuestionConfigDTO;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.translatequestion:
//            e, h

public final class g extends com.etermax.preguntados.ui.questionsfactory.translatequestion.e
    implements a, b
{

    private final c f = new c();
    private View g;

    public g()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        i();
        a = e.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            e = (QuestionDTO)bundle.getSerializable("mQuestion");
            return;
        }
    }

    public static h h()
    {
        return new h();
    }

    private void i()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mLanguageFrom"))
            {
                c = (Language)bundle.getSerializable("mLanguageFrom");
            }
            if (bundle.containsKey("mConfig"))
            {
                b = (TranslateQuestionConfigDTO)bundle.getSerializable("mConfig");
            }
            if (bundle.containsKey("mLanguageTo"))
            {
                d = (Language)bundle.getSerializable("mLanguageTo");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a0516);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view4)
                {
                    a.c();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0519);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view4)
                {
                    a.d();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0513);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a053d);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int j)
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.findViewById(j);
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
        bundle.putSerializable("mQuestion", e);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        f.a(this);
    }
}
