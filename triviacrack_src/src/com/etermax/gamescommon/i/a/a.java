// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.b.b;

public class a extends com.etermax.tools.widget.b.a
    implements b
{

    com.etermax.gamescommon.login.datasource.a a;
    com.etermax.tools.b.a b;
    c c;
    Context d;
    private EditText f;
    private EditText g;

    public a()
    {
    }

    static EditText a(a a1)
    {
        return a1.f;
    }

    private boolean c()
    {
        if (f.getText().toString().length() >= 0 && f.getText().toString().length() < 6)
        {
            com.etermax.a.b.a(f, getString(o.error_password_length), 0xff000000);
            return true;
        }
        if (!f.getText().toString().equals(g.getText().toString()))
        {
            com.etermax.a.b.a(g, getString(o.error_passwords_not_match), 0xff000000);
            return true;
        } else
        {
            return false;
        }
    }

    private void e()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final a a;

            public Object a()
            {
                String s = a.a.g();
                String s1 = a.a(a).getText().toString();
                a.c.b(s, s1);
                return null;
            }

            protected void a(Fragment fragment, Void void1)
            {
                super.a(fragment, void1);
                a.dismiss();
                com.etermax.a.b.a(fragment.getActivity(), o.update_profile_success);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((Fragment)obj, (Void)obj1);
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    protected void a()
    {
        setTargetFragment(this, 0);
        a(false);
        setArguments(b(d.getString(o.choose_your_password), d.getString(o.save), d.getString(o.cancel)));
    }

    public void a(Bundle bundle)
    {
        dismiss();
    }

    public void a(FragmentManager fragmentmanager)
    {
        super.show(fragmentmanager, "password_accept_cancel_dialog");
    }

    protected int b()
    {
        return k.password_accept_cancel_dialog;
    }

    public void onAccept(Bundle bundle)
    {
        if (!c())
        {
            e();
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        f = (EditText)view.findViewById(i.password_field);
        g = (EditText)view.findViewById(i.confirm_field);
        return view;
    }
}
