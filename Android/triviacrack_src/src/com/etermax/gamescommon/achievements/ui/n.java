// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.support.v4.app.Fragment;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            p, q, k, o

public class n extends b
{

    k a;
    protected ImageView b;
    protected TextView c;
    protected TextView d;
    protected TextView e;
    protected LinearLayout f;
    int g;
    ArrayList h;

    public n()
    {
    }

    public static Fragment a(ArrayList arraylist)
    {
        return p.d().a(arraylist).a();
    }

    static void a(n n1)
    {
        n1.d();
    }

    private void d()
    {
        if (h.size() == g)
        {
            a.b();
            return;
        }
        int i = ((AchievementDTO)h.get(g)).getId();
        String s;
        int j;
        AlphaAnimation alphaanimation;
        AlphaAnimation alphaanimation1;
        AnimationSet animationset;
        if (i < 10)
        {
            s = (new StringBuilder()).append("0").append(i).toString();
        } else
        {
            s = String.valueOf(i);
        }
        j = com.etermax.a.b.c(getApplicationContext(), (new StringBuilder()).append("achievement_").append(s).toString());
        if (j != 0)
        {
            b.setImageResource(j);
        }
        c.setText(((AchievementDTO)h.get(g)).getTitle());
        e.setText(String.valueOf(((AchievementDTO)h.get(g)).getRewards()));
        d.setText(((AchievementDTO)h.get(g)).getDescription());
        alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setInterpolator(new DecelerateInterpolator());
        alphaanimation.setDuration(1000L);
        alphaanimation1 = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation1.setInterpolator(new AccelerateInterpolator());
        alphaanimation1.setStartOffset(5500L);
        alphaanimation1.setDuration(1000L);
        animationset = new AnimationSet(false);
        animationset.addAnimation(alphaanimation);
        animationset.addAnimation(alphaanimation1);
        animationset.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final n a;

            public void onAnimationEnd(Animation animation)
            {
                n n1 = a;
                n1.g = 1 + n1.g;
                n.a(a);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                a = n.this;
                super();
            }
        });
        f.setAnimation(animationset);
    }

    public o a()
    {
        return new o() {

            final n a;

            public void a(AchievementDTO achievementdto)
            {
            }

            
            {
                a = n.this;
                super();
            }
        };
    }

    void b()
    {
        f.setOnClickListener(new android.view.View.OnClickListener() {

            final n a;

            public void onClick(View view)
            {
                a.a.b();
            }

            
            {
                a = n.this;
                super();
            }
        });
        d();
    }

    public void c()
    {
        ((o)mCallbacks).a((AchievementDTO)h.get(0));
    }

    public Object getDummyCallbacks()
    {
        return a();
    }
}
