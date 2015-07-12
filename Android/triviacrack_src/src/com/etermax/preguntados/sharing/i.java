// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.b.a.aa;
import com.b.a.ae;
import com.b.a.ak;
import com.b.a.ap;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;
import com.etermax.preguntados.c.a.g;
import com.etermax.preguntados.datasource.dto.CategoryQuestionDTO;
import com.etermax.preguntados.datasource.dto.ProfileDTO;
import com.etermax.preguntados.datasource.dto.ProfileStatisticsDTO;
import com.etermax.tools.nationality.NationalityManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.sharing:
//            ShareView, n

public class i extends ShareView
    implements ap
{

    protected b a;
    protected RelativeLayout b;
    protected TextView c;
    protected TextView d;
    protected ViewSwitcher e;
    private ProfileDTO f;
    private String g;
    private n h;
    private HashMap i;

    public i(Context context, ProfileDTO profiledto, String s, n n1)
    {
        super(context);
        g = s;
        f = profiledto;
        h = n1;
    }

    public void a()
    {
        i = new HashMap();
        i.put(a.a(5), Integer.valueOf(com.etermax.i.category_5));
        i.put(a.a(4), Integer.valueOf(com.etermax.i.category_4));
        i.put(a.a(3), Integer.valueOf(com.etermax.i.category_3));
        i.put(a.a(2), Integer.valueOf(com.etermax.i.category_2));
        i.put(a.a(1), Integer.valueOf(com.etermax.i.category_1));
        i.put(a.a(0), Integer.valueOf(com.etermax.i.category_0));
    }

    public void a(Bitmap bitmap, ae ae)
    {
        BitmapDrawable bitmapdrawable = new BitmapDrawable(getResources(), bitmap);
        b.setBackgroundDrawable(bitmapdrawable);
        h.b();
    }

    public void a(Drawable drawable)
    {
    }

    public void a(List list)
    {
        g ag[] = a.a();
        int j = ag.length;
        int k = 0;
        while (k < j) 
        {
            g g1 = ag[k];
            if (list != null)
            {
                Iterator iterator = list.iterator();
                int l = 0;
                while (iterator.hasNext()) 
                {
                    CategoryQuestionDTO categoryquestiondto = (CategoryQuestionDTO)iterator.next();
                    int i1;
                    if (g1.getCategory() == categoryquestiondto.getCategory())
                    {
                        int j1 = categoryquestiondto.getCorrect() + categoryquestiondto.getIncorrect();
                        i1 = (100 * categoryquestiondto.getCorrect()) / j1;
                    } else
                    {
                        i1 = l;
                    }
                    l = i1;
                }
            } else
            {
                l = 0;
            }
            ((TextView)findViewById(((Integer)i.get(g1.getCategory())).intValue())).setText((new StringBuilder()).append(l).append("%").toString());
            k++;
        }
    }

    public void b()
    {
        c();
    }

    public void b(Drawable drawable)
    {
    }

    public void c()
    {
        aa.a(getContext()).a(g).a(this);
        a(f.getStatistics().getCategory_question());
        l.a(e, m.j(), m.g());
        String s = getContext().getString(NationalityManager.getNameResource(getContext(), m.n()));
        String s1;
        if (TextUtils.isEmpty(m.j()))
        {
            s1 = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s1 = m.k();
        }
        c.setText(s1);
        d.setText(s);
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        i j;
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        j = (i)obj;
        if (f != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j.f == null) goto _L1; else goto _L3
_L3:
        return false;
        if (f.equals(j.f)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public String getShareText()
    {
        String s;
        if (TextUtils.isEmpty(m.j()))
        {
            s = (new StringBuilder()).append("@").append(m.g()).toString();
        } else
        {
            s = m.k();
        }
        return (new StringBuilder()).append(getContext().getString(o.user_share_profile, new Object[] {
            s
        })).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }

    public int hashCode()
    {
        int j;
        if (f == null)
        {
            j = 0;
        } else
        {
            j = f.hashCode();
        }
        return j + 31;
    }
}
