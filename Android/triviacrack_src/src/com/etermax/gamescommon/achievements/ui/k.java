// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.etermax.a.b;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.o;
import com.etermax.tools.i.a;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            n, l

public class k
{

    BaseFragmentActivity a;
    e b;

    public k()
    {
    }

    static ArrayList a(k k1, AchievementDTO aachievementdto[])
    {
        return k1.a(aachievementdto);
    }

    private ArrayList a(AchievementDTO aachievementdto[])
    {
        ArrayList arraylist = new ArrayList();
        int i = aachievementdto.length;
        int j = 0;
        while (j < i) 
        {
            AchievementDTO achievementdto = aachievementdto[j];
            String s;
            String s1;
            String s2;
            int l;
            int i1;
            if (achievementdto.getId() < 10)
            {
                s = (new StringBuilder()).append("0").append(achievementdto.getId()).toString();
            } else
            {
                s = String.valueOf(achievementdto.getId());
            }
            s1 = (new StringBuilder()).append("achievement_").append(s).toString();
            s2 = com.etermax.a.b.a(a, s1, new Object[0]);
            l = com.etermax.a.b.c(a, (new StringBuilder()).append(s1).append("_active").toString());
            i1 = com.etermax.a.b.c(a, s1);
            if (!TextUtils.isEmpty(s2) && l != 0)
            {
                achievementdto.setTitle(s2);
                BaseFragmentActivity basefragmentactivity = a;
                String s3 = (new StringBuilder()).append(s1).append("_txt").toString();
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(achievementdto.getMax());
                achievementdto.setDescription(com.etermax.a.b.a(basefragmentactivity, s3, aobj));
                achievementdto.setActiveImageResourceId(l);
                achievementdto.setImageResourceId(i1);
                arraylist.add(achievementdto);
            }
            j++;
        }
        return arraylist;
    }

    static void a(k k1, ArrayList arraylist)
    {
        k1.a(arraylist);
    }

    private void a(com.etermax.gamescommon.datasource.dto.AchievementDTO.Status status, l l)
    {
        (new a(a.getString(o.loading), status, l) {

            final com.etermax.gamescommon.datasource.dto.AchievementDTO.Status a;
            final l b;
            final k c;

            public Object a()
            {
                return b();
            }

            protected void a(FragmentActivity fragmentactivity, Exception exception)
            {
                super.a(fragmentactivity, exception);
            }

            protected void a(FragmentActivity fragmentactivity, AchievementDTO aachievementdto[])
            {
                super.a(fragmentactivity, aachievementdto);
                if (a == com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.PENDING)
                {
                    if (aachievementdto.length > 0)
                    {
                        com.etermax.gamescommon.achievements.ui.k.a(c, com.etermax.gamescommon.achievements.ui.k.a(c, aachievementdto));
                    }
                    return;
                } else
                {
                    b.a(com.etermax.gamescommon.achievements.ui.k.a(c, aachievementdto));
                    return;
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((FragmentActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (AchievementDTO[])obj1);
            }

            public AchievementDTO[] b()
            {
                return c.b.a(a);
            }

            
            {
                c = k.this;
                a = status;
                b = l1;
                super(s);
            }
        }).a(a);
    }

    private void a(ArrayList arraylist)
    {
        a.a(com.etermax.gamescommon.achievements.ui.n.a(arraylist), "new_achievement_fg", false);
    }

    public void a()
    {
        a(com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.PENDING, new l() {

            final k a;

            public void a(List list)
            {
            }

            
            {
                a = k.this;
                super();
            }
        });
    }

    public void a(l l)
    {
        a(com.etermax.gamescommon.datasource.dto.AchievementDTO.Status.ALL, l);
    }

    public void a(AchievementDTO achievementdto)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(achievementdto);
        a.a(com.etermax.gamescommon.achievements.ui.n.a(arraylist), "new_achievement_fg", false);
    }

    public void b()
    {
        android.support.v4.app.Fragment fragment = a.getSupportFragmentManager().findFragmentByTag("new_achievement_fg");
        FragmentTransaction fragmenttransaction = a.getSupportFragmentManager().beginTransaction();
        fragmenttransaction.remove(fragment);
        fragmenttransaction.commitAllowingStateLoss();
    }
}
