// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.b;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.widget.a;
import com.etermax.widget.c;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.b:
//            d, e, a, c

public class b extends com.etermax.tools.navigation.b
    implements c
{

    d a;
    com.etermax.gamescommon.login.datasource.c b;
    Nationality c;
    private a d;

    public b()
    {
    }

    public static Fragment a(Nationality nationality)
    {
        return com.etermax.preguntados.ui.dashboard.b.d.d().a(nationality).a();
    }

    private void b(Nationality nationality)
    {
        (new com.etermax.tools.i.a(getString(o.loading), nationality) {

            final Nationality a;
            final b b;

            public Object a()
            {
                b.b.a(a);
                return null;
            }

            public void a(b b1, Void void1)
            {
                super.a(b1, void1);
                b.a.a(a);
                b1.getActivity().getSupportFragmentManager().beginTransaction().remove(b1).commit();
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((b)obj, (Void)obj1);
            }

            
            {
                b = b.this;
                a = nationality;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.preguntados.ui.dashboard.b.c a()
    {
        return new com.etermax.preguntados.ui.dashboard.b.c() {

            final b a;

            
            {
                a = b.this;
                super();
            }
        };
    }

    public void a(com.etermax.preguntados.ui.dashboard.b.a a1)
    {
        c = a1.a();
        if (getView() != null)
        {
            ((TextView)getView().findViewById(i.set_country_chosen_text_view)).setText(NationalityManager.getNameResource(getApplicationContext(), c));
        }
    }

    public volatile void a(Object obj)
    {
        a((com.etermax.preguntados.ui.dashboard.b.a)obj);
    }

    public void b()
    {
        d.a();
    }

    public void c()
    {
        if (c != null)
        {
            b(c);
            return;
        } else
        {
            Toast.makeText(getApplicationContext(), getString(o.error_select_country), 0).show();
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        ArrayList arraylist = new ArrayList();
        Nationality anationality[] = Nationality.values();
        int j = anationality.length;
        for (int l = 0; l < j; l++)
        {
            Nationality nationality = anationality[l];
            arraylist.add(new com.etermax.preguntados.ui.dashboard.b.a(NationalityManager.getName(getApplicationContext(), nationality), nationality));
        }

        d = new a(getActivity(), arraylist, this, true);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.dashboard_set_country_fragment, viewgroup, false);
        TextView textview = (TextView)view.findViewById(i.set_country_chosen_text_view);
        if (c != null)
        {
            textview.setText(NationalityManager.getNameResource(getApplicationContext(), c));
            return view;
        } else
        {
            textview.setText(getString(o.set_country));
            return view;
        }
    }

    public void onPause()
    {
        super.onPause();
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).x();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (getActivity() instanceof BaseFragmentActivity)
        {
            ((BaseFragmentActivity)getActivity()).y();
        }
    }
}
