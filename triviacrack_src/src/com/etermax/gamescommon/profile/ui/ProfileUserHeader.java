// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.gamescommon.k;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.gamescommon.profile.image.a;
import com.etermax.gamescommon.profile.image.c;
import com.etermax.o;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;
import com.etermax.tools.widget.CustomFontTextView;
import com.etermax.tools.widget.UsernameCustomFontTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            e, k

public class ProfileUserHeader extends RelativeLayout
    implements c
{

    private e A;
    private Fragment B;
    protected ViewSwitcher a;
    protected TextView b;
    protected UsernameCustomFontTextView c;
    protected UsernameCustomFontTextView d;
    protected TextView e;
    protected TextView f;
    protected CustomFontTextView g;
    protected CustomFontTextView h;
    protected ImageView i;
    protected ImageView j;
    protected TextView k;
    protected ImageView l;
    protected TextView m;
    protected ImageView n;
    protected TextView o;
    protected RelativeLayout p;
    protected CustomFontTextView q;
    protected View r;
    protected ImageView s;
    protected ImageView t;
    protected View u;
    protected com.etermax.gamescommon.login.datasource.a v;
    protected com.etermax.tools.c.a w;
    List x;
    protected a y;
    private b z;

    public ProfileUserHeader(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfileUserHeader(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
    }

    static e a(ProfileUserHeader profileuserheader)
    {
        return profileuserheader.A;
    }

    private String[] a(HashMap hashmap)
    {
        HashMap hashmap1 = (HashMap)hashmap.clone();
        String as[] = new String[hashmap.size()];
        int i1 = 0;
        do
        {
label0:
            {
                if (hashmap1.size() > 0)
                {
                    String s1 = null;
                    long l1 = 0L;
                    Iterator iterator = hashmap1.keySet().iterator();
                    while (iterator.hasNext()) 
                    {
                        String s2 = (String)iterator.next();
                        long l2;
                        String s3;
                        if (((Long)hashmap1.get(s2)).longValue() > l1)
                        {
                            long l3 = ((Long)hashmap1.get(s2)).longValue();
                            s3 = s2;
                            l2 = l3;
                        } else
                        {
                            l2 = l1;
                            s3 = s1;
                        }
                        s1 = s3;
                        l1 = l2;
                    }
                    if (s1 != null)
                    {
                        break label0;
                    }
                }
                return as;
            }
            as[i1] = s1;
            hashmap1.remove(s1);
            i1++;
        } while (true);
    }

    static Fragment b(ProfileUserHeader profileuserheader)
    {
        return profileuserheader.B;
    }

    private void b(String s1)
    {
        k k1 = new k() {

            final ProfileUserHeader a;

            public String getFacebookId()
            {
                return a.v.j();
            }

            public Long getId()
            {
                return Long.valueOf(a.v.e());
            }

            public String getName()
            {
                String s2 = (new StringBuilder()).append("@").append(a.v.g()).toString();
                if (!TextUtils.isEmpty(a.v.k()) && a.v.l())
                {
                    s2 = a.v.k();
                }
                return s2;
            }

            public String getPhotoUrl()
            {
                return null;
            }

            public boolean isFbShowPicture()
            {
                return a.v.m();
            }

            
            {
                a = ProfileUserHeader.this;
                super();
            }
        };
        a(B, k1);
    }

    public void a()
    {
        b(((String) (null)));
    }

    public void a(int i1, int j1, Intent intent)
    {
        y.a(i1, j1, intent);
    }

    public void a(Fragment fragment, k k1)
    {
        B = fragment;
        z.a(a, k1);
        a.setVisibility(0);
        if (k1.getId().longValue() == v.e())
        {
            y.a(B, this);
        }
        if (!TextUtils.isEmpty(k1.getPhotoUrl()) || k1.isFbShowPicture() && !TextUtils.isEmpty(k1.getFacebookId()))
        {
            A = com.etermax.gamescommon.profile.ui.e.a(k1);
        }
        a.setOnClickListener(new android.view.View.OnClickListener() {

            final ProfileUserHeader a;

            public void onClick(View view)
            {
                if (com.etermax.gamescommon.profile.ui.ProfileUserHeader.a(a) != null && !com.etermax.gamescommon.profile.ui.ProfileUserHeader.a(a).isAdded())
                {
                    com.etermax.gamescommon.profile.ui.ProfileUserHeader.b(a).getChildFragmentManager().executePendingTransactions();
                    com.etermax.gamescommon.profile.ui.ProfileUserHeader.a(a).show(com.etermax.gamescommon.profile.ui.ProfileUserHeader.b(a).getChildFragmentManager(), "big_picture_dialog");
                }
            }

            
            {
                a = ProfileUserHeader.this;
                super();
            }
        });
    }

    public void a(Nationality nationality, boolean flag)
    {
        if (nationality != null)
        {
            r.setVisibility(0);
            s.setImageResource(NationalityManager.getFlagResource(getContext(), nationality));
            u.setVisibility(8);
            s.setVisibility(0);
        } else
        {
            if (flag)
            {
                r.setVisibility(0);
                u.setVisibility(0);
            } else
            {
                r.setVisibility(8);
            }
            s.setVisibility(8);
        }
        r.setVisibility(8);
    }

    public void a(String s1)
    {
        b(s1);
    }

    public void a(String s1, boolean flag)
    {
        if (flag)
        {
            g.setText(s1);
            h.setVisibility(8);
            return;
        } else
        {
            g.setText((new StringBuilder()).append(": ").append(s1).toString());
            h.setVisibility(0);
            return;
        }
    }

    protected void b()
    {
        j.setVisibility(8);
        k.setVisibility(8);
        l.setVisibility(8);
        m.setVisibility(8);
        n.setVisibility(8);
        o.setVisibility(8);
        q.setVisibility(8);
        r.setVisibility(8);
        z = new b();
        a.setVisibility(4);
        x = new ArrayList();
        Nationality anationality[] = Nationality.values();
        int i1 = anationality.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            Nationality nationality = anationality[j1];
            try
            {
                x.add(new com.etermax.gamescommon.profile.ui.k(this, nationality, NationalityManager.getName(getContext(), nationality)));
            }
            catch (Exception exception)
            {
                com.etermax.a.a.b("NATIONALITY", (new StringBuilder()).append("Exception loading country name for iso code ").append(nationality.name()).toString());
            }
            j1++;
        }
    }

    public void c()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.6F);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        a.startAnimation(alphaanimation);
        i.setVisibility(0);
    }

    public void d()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.6F, 1.0F);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        a.startAnimation(alphaanimation);
        i.setVisibility(8);
    }

    public String getName()
    {
        return c.getText().toString();
    }

    public String getSmallName()
    {
        return d.getText().toString();
    }

    public void setAge(Integer integer)
    {
        if (integer != null)
        {
            f.setText(getContext().getString(o.opponents_age, new Object[] {
                integer
            }));
            f.setVisibility(0);
        }
    }

    public void setFlags(HashMap hashmap)
    {
        String as[] = a(hashmap);
        try
        {
            if (hashmap.size() > 0)
            {
                j.setImageResource(LanguageResourceMapper.getByCode(Language.get(as[0])).getFlagResource());
                k.setText(String.valueOf(hashmap.get(as[0])));
                j.setVisibility(0);
                k.setVisibility(0);
            }
            if (hashmap.size() > 1)
            {
                l.setImageResource(LanguageResourceMapper.getByCode(Language.get(as[1])).getFlagResource());
                m.setText(String.valueOf(hashmap.get(as[1])));
                l.setVisibility(0);
                m.setVisibility(0);
            }
            if (hashmap.size() > 2)
            {
                n.setImageResource(LanguageResourceMapper.getByCode(Language.get(as[2])).getFlagResource());
                o.setText(String.valueOf(hashmap.get(as[2])));
                n.setVisibility(0);
                o.setVisibility(0);
            }
            if (hashmap.size() > 3)
            {
                CustomFontTextView customfonttextview = q;
                Resources resources = getContext().getResources();
                int i1 = o.player_and_more;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(-3 + hashmap.size());
                customfonttextview.setText(resources.getString(i1, aobj));
                q.setVisibility(0);
            }
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setName(String s1)
    {
        c.setUsername(s1);
    }

    public void setOwnProfile(boolean flag)
    {
        if (flag)
        {
            b.setVisibility(0);
            t.setVisibility(0);
            r.setOnClickListener(new android.view.View.OnClickListener() {

                final ProfileUserHeader a;

                public void onClick(View view)
                {
                    (new com.etermax.widget.a(a.getContext(), a.x, new com.etermax.widget.c(this) {

                        final _cls2 a;

                        public void a(com.etermax.gamescommon.profile.ui.k k1)
                        {
                            a.a.a(k1.a, true);
                        }

                        public volatile void a(Object obj)
                        {
                            a((com.etermax.gamescommon.profile.ui.k)obj);
                        }

            
            {
                a = _pcls2;
                super();
            }
                    }, true)).a();
                }

            
            {
                a = ProfileUserHeader.this;
                super();
            }
            });
            b.setOnClickListener(new android.view.View.OnClickListener() {

                final ProfileUserHeader a;

                public void onClick(View view)
                {
                    a.y.a();
                }

            
            {
                a = ProfileUserHeader.this;
                super();
            }
            });
        } else
        {
            b.setVisibility(8);
            t.setVisibility(8);
        }
        b.setVisibility(8);
    }

    public void setSmallName(String s1)
    {
        d.setUsername(s1);
    }

    public void setUsernameWithArroba(String s1)
    {
        c.setUsernameWithArroba(s1);
    }
}
