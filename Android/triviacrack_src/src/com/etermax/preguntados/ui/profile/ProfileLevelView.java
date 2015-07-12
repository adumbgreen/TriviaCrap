// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.j;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.UserLevelDataDTO;
import java.util.Locale;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            ProfileLevelProgressBar

public class ProfileLevelView extends LinearLayout
{

    TextView a;
    ImageView b;
    TextView c;
    TextView d;
    ProfileLevelProgressBar e;
    TextView f;

    public ProfileLevelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ProfileLevelView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private Drawable a(Context context, int i)
    {
        int k = getResources().getInteger(j.level_image_count);
        int l = 1 + (i - 1) % k;
        Locale locale = Locale.US;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(l);
        String s = String.format(locale, "%02d", aobj);
        int i1 = com.etermax.a.b.c(context, (new StringBuilder()).append("level_up_profile_").append(s).toString());
        if (i1 != 0)
        {
            return getResources().getDrawable(i1);
        } else
        {
            return null;
        }
    }

    public void a(UserLevelDataDTO userleveldatadto)
    {
        Resources resources = getResources();
        TextView textview = a;
        int i = o.level_number;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(userleveldatadto.getLevel());
        textview.setText(resources.getString(i, aobj));
        b.setImageDrawable(a(getContext(), userleveldatadto.getLevel()));
        TextView textview1 = c;
        int k = o.number_answered_questions;
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(userleveldatadto.getPoints());
        textview1.setText(resources.getString(k, aobj1));
        d.setText(resources.getString(o.progress));
        if (userleveldatadto.getPoints() <= userleveldatadto.getGoalPoints());
        e.a(userleveldatadto.getProgress(), 100);
    }
}
