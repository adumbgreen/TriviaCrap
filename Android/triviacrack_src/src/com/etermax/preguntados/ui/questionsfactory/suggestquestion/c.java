// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.suggestquestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.dto.enums.QuestionCategory;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.suggestquestion:
//            a, d

public final class c extends com.etermax.preguntados.ui.questionsfactory.suggestquestion.a
    implements a, b
{

    private final org.a.a.b.c h = new org.a.a.b.c();
    private View i;

    public c()
    {
    }

    private void a(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        h();
        d = com.etermax.preguntados.c.a.c.a(getActivity());
        c = e.a(getActivity());
        e = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            g = (Country)bundle.getSerializable("mSelectedCountry");
            f = (Language)bundle.getSerializable("mSelectedLanguage");
            return;
        }
    }

    public static d g()
    {
        return new d();
    }

    private void h()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mConfig"))
            {
                a = (UserSuggestionConfigDTO)bundle.getSerializable("mConfig");
            }
            if (bundle.containsKey("mSelectedCategory"))
            {
                b = (QuestionCategory)bundle.getSerializable("mSelectedCategory");
            }
        }
    }

    public void a(a a1)
    {
        View view = a1.findViewById(0x7f0a03fc);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.d();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0413);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.f();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a03fb);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.c();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a03fd);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final c a;

                public void onClick(View view4)
                {
                    a.e();
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
        b();
    }

    public View findViewById(int j)
    {
        if (i == null)
        {
            return null;
        } else
        {
            return i.findViewById(j);
        }
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(h);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        i = super.onCreateView(layoutinflater, viewgroup, bundle);
        return i;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("mSelectedCountry", g);
        bundle.putSerializable("mSelectedLanguage", f);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        h.a(this);
    }
}
