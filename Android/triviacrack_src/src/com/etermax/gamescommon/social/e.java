// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.etermax.gamescommon.b.aa;
import com.etermax.gamescommon.b.ab;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.h;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.d;
import com.etermax.tools.social.a.g;
import com.etermax.tools.widget.CustomFontTextView;

// Referenced classes of package com.etermax.gamescommon.social:
//            f, a, c

public class e extends com.etermax.tools.widget.b.e
{

    protected b a;
    protected com.etermax.gamescommon.login.datasource.a b;
    protected com.etermax.tools.b.a c;
    protected c d;
    protected a e;
    protected com.etermax.gamescommon.social.a f;
    private View g;

    public e()
    {
    }

    public static e a(String s)
    {
        f f1 = new f();
        Bundle bundle = new Bundle();
        bundle.putString("FROM", s);
        f1.setArguments(bundle);
        return f1;
    }

    private void a()
    {
        if (e != null)
        {
            e.a(new ab());
        }
    }

    static void a(e e1)
    {
        e1.b();
    }

    private void b()
    {
        if (e != null)
        {
            e.a(new aa());
        }
    }

    static void b(e e1)
    {
        e1.a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        g = layoutinflater.inflate(k.facebook_actions, viewgroup);
        setCancelable(true);
        getDialog().setCanceledOnTouchOutside(true);
        ((RelativeLayout)g.findViewById(i.btnFacebookInvite)).setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
                if (a.getActivity() != null)
                {
                    FragmentActivity fragmentactivity = a.getActivity();
                    a.f.a(a.getActivity(), new com.etermax.gamescommon.social.c(this, fragmentactivity) {

                        final Activity a;
                        final _cls1 b;

                        public void a()
                        {
                            b b1 = b.a.a;
                            Activity activity = a;
                            String s = a.getString(o.try_out);
                            Object aobj[] = new Object[1];
                            aobj[0] = a.getString(o.app_name);
                            b1.a(activity, String.format(s, aobj), new g(this) {

                                final _cls1 a;

                                public void a()
                                {
                                    com.etermax.gamescommon.social.e.a(a.b.a);
                                }

                                public void a(String s)
                                {
                                    if (a.a != null)
                                    {
                                        Toast.makeText(a.a, o.facebook_invite_failure, 0).show();
                                        if (com.etermax.tools.g.a.a())
                                        {
                                            Toast.makeText(a.a, (new StringBuilder()).append("Facebook Error: ").append(s).toString(), 0).show();
                                        }
                                    }
                                }

                                public void b()
                                {
                                }

            
            {
                a = _pcls1;
                super();
            }
                            });
                        }

                        public void b()
                        {
                        }

                        public void c()
                        {
                        }

            
            {
                b = _pcls1;
                a = activity;
                super();
            }
                    });
                    a.dismiss();
                }
            }

            
            {
                a = e.this;
                super();
            }
        });
        RelativeLayout relativelayout = (RelativeLayout)g.findViewById(i.btnFacebookLike);
        CustomFontTextView customfonttextview = (CustomFontTextView)g.findViewById(i.txtFbLike);
        String s = getActivity().getString(o.facebook_like);
        Object aobj[] = new Object[1];
        aobj[0] = getActivity().getString(o.app_name);
        customfonttextview.setText(String.format(s, aobj));
        relativelayout.setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
                com.etermax.gamescommon.social.e.b(a);
                if (a.getActivity() != null)
                {
                    String s1 = ((d)a.getActivity().getApplication()).e();
                    a.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s1)));
                }
                a.dismiss();
            }

            
            {
                a = e.this;
                super();
            }
        });
        RelativeLayout relativelayout1 = (RelativeLayout)g.findViewById(i.btnFacebookLink);
        relativelayout1.setOnClickListener(new android.view.View.OnClickListener() {

            final e a;

            public void onClick(View view)
            {
                (new com.etermax.gamescommon.j.c(this, a.getString(o.loading), a.a, a.d, a.b, a.e, a.getArguments().getString("FROM")) {

                    final _cls3 a;

            
            {
                a = _pcls3;
                super(s, b1, c1, a1, a2, s1);
            }
                }).a(a.getActivity());
                a.dismiss();
            }

            
            {
                a = e.this;
                super();
            }
        });
        if (b.j() != null)
        {
            relativelayout1.setVisibility(8);
            g.findViewById(i.sepFacebookLink).setVisibility(8);
            relativelayout.setBackgroundResource(h.social_item_background_top);
        } else
        {
            relativelayout.setBackgroundResource(h.social_item_background);
        }
        return g;
    }
}
