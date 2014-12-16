// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.statistics;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsCountDTO;
import com.etermax.preguntados.datasource.dto.UserFactoryStatsListDTO;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.statistics:
//            c, d, b

public class a extends b
{

    d a;

    public a()
    {
    }

    public static Fragment a()
    {
        return com.etermax.preguntados.ui.questionsfactory.statistics.c.g().a();
    }

    static Object a(a a1)
    {
        return a1.mCallbacks;
    }

    private void g()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            public void a(a a1, UserFactoryStatsListDTO userfactorystatslistdto)
            {
                super.a(a1, userfactorystatslistdto);
                a.a(userfactorystatslistdto);
                ((com.etermax.preguntados.ui.questionsfactory.statistics.b)a.a(a)).a(userfactorystatslistdto);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (UserFactoryStatsListDTO)obj1);
            }

            public UserFactoryStatsListDTO b()
            {
                return a.a.p();
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected void a(UserFactoryStatsListDTO userfactorystatslistdto)
    {
        ((TextView)getView().findViewById(i.statistics_panel_suggest_counter)).setText(String.valueOf(userfactorystatslistdto.getSuggested().getTotal()));
        ((TextView)getView().findViewById(i.statistics_panel_rate_counter)).setText(String.valueOf(userfactorystatslistdto.getRated().getTotal()));
        ((TextView)getView().findViewById(i.statistics_panel_translate_counter)).setText(String.valueOf(userfactorystatslistdto.getTranslated().getTotal()));
    }

    public com.etermax.preguntados.ui.questionsfactory.statistics.b b()
    {
        return new com.etermax.preguntados.ui.questionsfactory.statistics.b() {

            final a a;

            public void a(UserFactoryStatsListDTO userfactorystatslistdto)
            {
            }

            public void b()
            {
            }

            public void c()
            {
            }

            public void d()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void c()
    {
        g();
    }

    public void d()
    {
        ((com.etermax.preguntados.ui.questionsfactory.statistics.b)mCallbacks).b();
    }

    public void e()
    {
        ((com.etermax.preguntados.ui.questionsfactory.statistics.b)mCallbacks).c();
    }

    public void f()
    {
        ((com.etermax.preguntados.ui.questionsfactory.statistics.b)mCallbacks).d();
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.statistics_panel_fragment, viewgroup, false);
        ((TextView)view.findViewById(i.questions_factory_header_title)).setText(getString(o.my_questions));
        return view;
    }
}
