// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.a;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.etermax.a.b;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;

public class c extends com.etermax.tools.widget.b.c
{

    a a;
    com.etermax.tools.b.a b;
    com.etermax.gamescommon.login.datasource.c c;
    Context d;
    private EditText f;

    public c()
    {
    }

    protected void a()
    {
        setTargetFragment(this, 0);
        a(false);
        Bundle bundle = new Bundle();
        bundle.putString("dialog_tag", "password_accept_cancel_dialog");
        setArguments(b(d.getString(o.enter_password), d.getString(o.ok), bundle));
    }

    protected int b()
    {
        return k.request_password_dialog;
    }

    public String c()
    {
        return f.getText().toString();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        f = (EditText)view.findViewById(i.password_field);
        return view;
    }

    public void onResume()
    {
        super.onResume();
        com.etermax.a.b.a(getActivity());
    }
}
