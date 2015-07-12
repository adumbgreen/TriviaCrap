// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.a.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.widget.CustomLinearButton;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            e

public abstract class c extends DialogFragment
{

    protected ArrayList a;
    protected ArrayList b;
    protected ArrayList c;
    protected e d;
    protected h e;

    public c()
    {
    }

    static void a(c c1)
    {
        c1.d();
    }

    private void d()
    {
        String as[] = new String[b.size() + c.size()];
        int j = 0;
        int i1;
        do
        {
            int l = b.size();
            i1 = 0;
            if (j >= l)
            {
                break;
            }
            as[j] = ((UserDTO)b.get(j)).getFacebook_id();
            j++;
        } while (true);
        for (; i1 < c.size(); i1++)
        {
            as[i1 + b.size()] = ((UserDTO)c.get(i1)).getFacebook_id();
        }

        e.a(this, b(), as, c(), new com.etermax.gamescommon.social.i() {

            final c a;

            public void a()
            {
                if (a.d != null)
                {
                    a.d.a(false);
                }
                a.dismiss();
            }

            public void a(Exception exception)
            {
                Toast.makeText(a.getActivity(), a.getString(o.error), 1).show();
                com.etermax.a.a.c("Facebook", exception.getMessage());
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    protected abstract BaseAdapter a(List list);

    protected abstract String a();

    public void a(e e1)
    {
        d = e1;
    }

    protected abstract String b();

    protected abstract com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType c();

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setCancelable(false);
        b = new ArrayList();
        c = new ArrayList();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.inactive_friends_dialog_fragment, viewgroup, false);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getDialog().getWindow().requestFeature(1);
        ((TextView)view.findViewById(i.inactive_friends_title)).setText(a());
        ((ListView)view.findViewById(i.inactive_friends_listview)).setAdapter(a(a));
        ((CustomLinearButton)view.findViewById(i.inactive_friends_dialog_close_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final c a;

            public void onClick(View view1)
            {
                if (a.d != null)
                {
                    a.d.a(false);
                }
                a.dismiss();
            }

            
            {
                a = c.this;
                super();
            }
        });
        ((Button)view.findViewById(i.inactive_friends_dialog_send_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final c a;

            public void onClick(View view1)
            {
                if (a.b.size() > 0 || a.c.size() > 0)
                {
                    com.etermax.gamescommon.gifting.c.a(a);
                }
            }

            
            {
                a = c.this;
                super();
            }
        });
        return view;
    }
}
