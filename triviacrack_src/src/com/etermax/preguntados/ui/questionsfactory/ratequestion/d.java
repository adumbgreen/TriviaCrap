// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.ratequestion;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.language.Language;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import com.etermax.preguntados.datasource.dto.QuestionRatingDTO;
import com.etermax.preguntados.datasource.dto.UserSuggestionConfigDTO;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.ratequestion:
//            b, e

public final class d extends com.etermax.preguntados.ui.questionsfactory.ratequestion.b
    implements a, b
{

    private final c n = new c();
    private View o;

    public d()
    {
    }

    private void a(Bundle bundle)
    {
        c.a(this);
        m();
        b = com.etermax.preguntados.g.b.a(getActivity());
        c = com.etermax.preguntados.c.a.c.a(getActivity());
        a = e.a(getActivity());
        e = com.etermax.preguntados.e.d.a(getActivity());
        d = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        b(bundle);
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            g = bundle.getBoolean("mHasAnswered");
            i = (Language)bundle.getSerializable("mSelectedLanguage");
            h = (QuestionDTO)bundle.getSerializable("mQuestion");
            j = (Country)bundle.getSerializable("mSelectedCountry");
            k = (QuestionRatingDTO)bundle.getSerializable("mReportedQuestion");
            return;
        }
    }

    public static com.etermax.preguntados.ui.questionsfactory.ratequestion.e l()
    {
        return new com.etermax.preguntados.ui.questionsfactory.ratequestion.e();
    }

    private void m()
    {
        Bundle bundle = getArguments();
        if (bundle != null && bundle.containsKey("mConfig"))
        {
            f = (UserSuggestionConfigDTO)bundle.getSerializable("mConfig");
        }
    }

    public void a(a a1)
    {
        m = a1.findViewById(0x7f0a0438);
        l = (ViewSwitcher)a1.findViewById(0x7f0a0437);
        View view = a1.findViewById(0x7f0a03fd);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.g();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view1 = a1.findViewById(0x7f0a0441);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.k();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view2 = a1.findViewById(0x7f0a0444);
        if (view2 != null)
        {
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.h();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view3 = a1.findViewById(0x7f0a0440);
        if (view3 != null)
        {
            view3.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.j();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view4 = a1.findViewById(0x7f0a03fc);
        if (view4 != null)
        {
            view4.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.f();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        View view5 = a1.findViewById(0x7f0a043f);
        if (view5 != null)
        {
            view5.setOnClickListener(new android.view.View.OnClickListener() {

                final d a;

                public void onClick(View view6)
                {
                    a.i();
                }

            
            {
                a = d.this;
                super();
            }
            });
        }
        e();
    }

    public View findViewById(int i)
    {
        if (o == null)
        {
            return null;
        } else
        {
            return o.findViewById(i);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(n);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        o = super.onCreateView(layoutinflater, viewgroup, bundle);
        return o;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("mHasAnswered", g);
        bundle.putSerializable("mSelectedLanguage", i);
        bundle.putSerializable("mQuestion", h);
        bundle.putSerializable("mSelectedCountry", j);
        bundle.putSerializable("mReportedQuestion", k);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        n.a(this);
    }
}
