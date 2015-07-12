// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.datasource.l;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.shop.b;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.j;
import com.etermax.preguntados.sharing.m;
import com.etermax.preguntados.sharing.n;
import com.etermax.preguntados.ui.b.c;
import com.etermax.preguntados.ui.b.d;
import com.etermax.preguntados.ui.dashboard.a.e;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.widget.b.f;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            f, ProfileActivity_, g

public class ProfileActivity extends BaseFragmentActivity
    implements b, n, com.etermax.preguntados.ui.b.b, com.etermax.preguntados.ui.profile.f
{

    long a;
    String b;
    ShareView c;
    com.etermax.gamescommon.social.a d;
    com.etermax.tools.f.a e;
    com.etermax.preguntados.datasource.d f;
    a g;
    m h;
    com.etermax.tools.social.a.b i;
    l j;

    public ProfileActivity()
    {
    }

    public static Intent a(Context context, long l1, String s)
    {
        return (new Intent(context, com/etermax/preguntados/ui/profile/ProfileActivity_)).putExtra("userId", l1).putExtra("com.etermax.gamescommon.from", s);
    }

    static void a(ProfileActivity profileactivity)
    {
        profileactivity.d();
    }

    static void b(ProfileActivity profileactivity)
    {
        profileactivity.e();
    }

    private void c()
    {
        j.b(com.etermax.preguntados.notification.b.c.a());
    }

    private void d()
    {
        f f1 = com.etermax.tools.widget.b.f.a(getString(o.loading));
        f1.setCancelable(false);
        f1.show(getSupportFragmentManager(), "facebook_cover_loading_dialog");
    }

    private void e()
    {
        f f1 = (f)getSupportFragmentManager().findFragmentByTag("facebook_cover_loading_dialog");
        if (f1 != null)
        {
            f1.dismissAllowingStateLoss();
        }
    }

    protected Fragment a()
    {
        if (a == 0L)
        {
            a = g.e();
        }
        return com.etermax.preguntados.ui.profile.g.a(a, b);
    }

    public void a(ProfileDTO profiledto)
    {
        d.a(this, new com.etermax.gamescommon.social.c(profiledto) {

            final ProfileDTO a;
            final ProfileActivity b;

            public void a()
            {
                com.etermax.preguntados.ui.profile.ProfileActivity.a(b);
                b.i.a(new com.etermax.tools.social.a.f(this) {

                    final _cls1 a;

                    public void a()
                    {
                        String s = (new StringBuilder()).append("https://graph.facebook.com/").append(a.b.g.j()).append("/picture?width=%s&height=%s").toString();
                        Object aobj[] = new Object[2];
                        aobj[0] = Integer.valueOf(640);
                        aobj[1] = Integer.valueOf(640);
                        String s1 = String.format(s, aobj);
                        a.b.c = com.etermax.preguntados.sharing.j.a(a.b.getApplicationContext(), a.a, s1, a.b);
                        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
                    }

                    public void a(String s)
                    {
                        a.b.c = com.etermax.preguntados.sharing.j.a(a.b.getApplicationContext(), a.a, s, a.b);
                        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
                    }

                    public void b(String s)
                    {
                        com.etermax.preguntados.ui.profile.ProfileActivity.b(a.b);
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
                b = ProfileActivity.this;
                a = profiledto;
                super();
            }
        });
    }

    public void a(UserLevelDataDTO userleveldatadto)
    {
        a(((Fragment) (com.etermax.preguntados.ui.b.c.e().a(userleveldatadto).a())), (new StringBuilder()).append("NEW_LEVEL_").append(userleveldatadto.getLevel()).toString(), true);
    }

    public void a(ShareView shareview)
    {
        h.a(shareview);
    }

    public void a(com.etermax.preguntados.ui.b.a a1)
    {
        b(a1);
        getSupportFragmentManager().popBackStack();
    }

    public void b()
    {
        if (c != null)
        {
            h.a(c);
        }
    }

    public void h_()
    {
    }

    public void j_()
    {
        a(com.etermax.preguntados.ui.dashboard.a.e.a(), "", true);
    }

    public void onActivityResult(int k, int i1, Intent intent)
    {
        super.onActivityResult(k, i1, intent);
        i.a(this, k, i1, intent);
    }

    protected void onResume()
    {
        c();
        super.onResume();
    }

    public void onStart()
    {
        super.onStart();
        e.a(this);
    }

    public void onStop()
    {
        super.onStop();
        e.b(this);
    }
}
