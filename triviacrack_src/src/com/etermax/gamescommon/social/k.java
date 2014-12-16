// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.etermax.gamescommon.b.r;
import com.etermax.gamescommon.j.f;
import com.etermax.i;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.widget.CustomFontTextView;
import com.etermax.tools.widget.b.e;

// Referenced classes of package com.etermax.gamescommon.social:
//            l

public class k extends e
{

    com.etermax.tools.b.a a;
    com.etermax.tools.social.twitter.a b;
    com.etermax.gamescommon.login.datasource.a c;
    a d;

    public k()
    {
    }

    public static k a()
    {
        return new l();
    }

    static void a(k k1)
    {
        k1.b();
    }

    private void b()
    {
        if (d != null)
        {
            d.a(new r());
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(com.etermax.k.twitter_actions, viewgroup);
        setCancelable(true);
        getDialog().setCanceledOnTouchOutside(true);
        ((RelativeLayout)view.findViewById(i.btnTwitterInvite)).setOnClickListener(new android.view.View.OnClickListener() {

            final k a;

            public void onClick(View view1)
            {
                com.etermax.a.a.c("TwitterActionsDialog", "invite click");
                (new f(this, a.getString(o.loading), a.b) {

                    final _cls1 a;

                    protected void a(k k1, Exception exception)
                    {
                        Toast.makeText(k1.getActivity(), o.twitter_invite_failure, 1).show();
                        b(false);
                        super.a(k1, exception);
                        k1.dismiss();
                    }

                    protected void a(k k1, Void void1)
                    {
                        Toast.makeText(k1.getActivity(), o.twitter_invite_success, 1).show();
                        super.a(k1, void1);
                        k1.dismiss();
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((k)obj, exception);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((k)obj, (Void)obj1);
                    }

                    protected Void b()
                    {
                        com.etermax.tools.social.twitter.a a1 = b;
                        StringBuilder stringbuilder = new StringBuilder();
                        String s = a.a.getString(o.twitter_invite_text);
                        Object aobj[] = new Object[2];
                        aobj[0] = a.a.getString(o.app_name);
                        aobj[1] = a.a.c.g();
                        a1.b(stringbuilder.append(String.format(s, aobj)).append(" @").append(a.a.getString(o.twitter_account_name)).append(" | ").append(a.a.getString(o.web)).toString());
                        return null;
                    }

                    protected Object c()
                    {
                        return b();
                    }

            
            {
                a = _pcls1;
                super(s, a1);
            }
                }).a(a);
            }

            
            {
                a = k.this;
                super();
            }
        });
        RelativeLayout relativelayout = (RelativeLayout)view.findViewById(i.btnTwitterFollow);
        CustomFontTextView customfonttextview = (CustomFontTextView)view.findViewById(i.txtTwFollow);
        String s = getString(o.twitter_follow);
        Object aobj[] = new Object[1];
        aobj[0] = getString(o.twitter_account_name);
        customfonttextview.setText(String.format(s, aobj));
        relativelayout.setOnClickListener(new android.view.View.OnClickListener() {

            final k a;

            public void onClick(View view1)
            {
                com.etermax.a.a.c("TwitterActionsDialog", "follow click");
                (new f(this, a.getString(o.loading), a.b) {

                    final _cls2 a;

                    protected void a(k k1, Exception exception)
                    {
                        Toast.makeText(k1.getActivity(), o.twitter_follow_failure, 1).show();
                        b(false);
                        super.a(k1, exception);
                        k1.dismiss();
                    }

                    protected void a(k k1, Void void1)
                    {
                        com.etermax.gamescommon.social.k.a(a.a);
                        Toast.makeText(j(), o.twitter_follow_success, 1).show();
                        super.a(k1, void1);
                        k1.dismiss();
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((k)obj, exception);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((k)obj, (Void)obj1);
                    }

                    protected Void b()
                    {
                        b.c(a.a.getString(o.twitter_account_name));
                        return null;
                    }

                    protected Object c()
                    {
                        return b();
                    }

            
            {
                a = _pcls2;
                super(s, a1);
            }
                }).a(a);
            }

            
            {
                a = k.this;
                super();
            }
        });
        return view;
    }
}
