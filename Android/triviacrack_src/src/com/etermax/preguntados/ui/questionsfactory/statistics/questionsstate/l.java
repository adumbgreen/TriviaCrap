// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.UserFactoryTranslationStatDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics.questionsstate:
//            j, m

public final class l extends j
    implements a, b
{

    private final c h = new c();
    private View i;

    public l()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        i();
        d = e.a(getActivity());
        c = com.etermax.preguntados.c.a.c.a(getActivity());
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
            e = (QuestionCategory)bundle.getSerializable("mSelectedCategory");
            f = (Country)bundle.getSerializable("mSelectedCountry");
            g = (Language)bundle.getSerializable("mSelectedLanguage");
            return;
        }
    }

    public static m h()
    {
        return new m();
    }

    private void i()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mConfigDTO"))
            {
                b = (UserSuggestionConfigDTO)bundle.getSerializable("mConfigDTO");
            }
            if (bundle.containsKey("mQuestionDTO"))
            {
                a = (UserFactoryTranslationStatDTO)bundle.getSerializable("mQuestionDTO");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a03fd);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0413);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a03fc);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view4)
                {
                    a.d();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a03fb);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final l a;

                public void onClick(View view4)
                {
                    a.c();
                }

            
            {
                a = l.this;
                super();
            }
            });
        }
        g();
    }

    public View findViewById(int k)
    {
        if (i == null)
        {
            return null;
        } else
        {
            return i.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(h);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        return i;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mSelectedCategory", e);
        bundle.putSerializable("mSelectedCountry", f);
        bundle.putSerializable("mSelectedLanguage", g);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
