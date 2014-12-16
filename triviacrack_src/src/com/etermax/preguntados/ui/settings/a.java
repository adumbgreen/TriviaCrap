// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.settings;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.i.b.g;
import com.etermax.gamescommon.i.b.h;
import com.etermax.gamescommon.i.b.k;
import com.etermax.i;
import com.etermax.o;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.settings:
//            b

public class a extends g
{

    private ToggleButton i;

    public a()
    {
    }

    public static Fragment a(ArrayList arraylist, boolean flag)
    {
        b b1 = new b();
        Bundle bundle = new Bundle();
        bundle.putIntegerArrayList("help_ids", arraylist);
        bundle.putBoolean("show_purchase", flag);
        b1.setArguments(bundle);
        return b1;
    }

    protected void a()
    {
        k.a(getActivity(), (h)mCallbacks, true).a(getFragmentManager());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        i = (ToggleButton)view.findViewById(i.toggle_sound);
        TextView textview = (TextView)view.findViewById(i.txt_purchase_description);
        String s = getActivity().getString(o.purchase_description);
        Object aobj[] = new Object[1];
        aobj[0] = getActivity().getString(o.app_name);
        textview.setText(String.format(s, aobj));
        ((TextView)view.findViewById(i.username)).setText((new StringBuilder()).append("@").append(a.g()).toString());
        ((TextView)view.findViewById(i.email)).setText(a.f());
        if (TextUtils.isEmpty(a.j()))
        {
            view.findViewById(i.facebook_section_divider).setVisibility(8);
        }
        return view;
    }

    public void onPause()
    {
        f.b(com.etermax.gamescommon.g.d, i.isChecked());
        super.onPause();
    }

    public void onResume()
    {
        i.setChecked(f.a(com.etermax.gamescommon.g.d, true));
        super.onResume();
    }
}
