// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.b.a.aa;
import com.b.a.ak;
import com.b.a.ar;
import com.etermax.gamescommon.user.c;
import com.etermax.h;
import com.etermax.i;
import com.etermax.tools.j.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ProfileFacebookFriendsButton extends LinearLayout
{

    private List a;
    private List b;

    public ProfileFacebookFriendsButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void a()
    {
        setOrientation(1);
        b = new ArrayList();
        b.add((ImageView)findViewById(i.avatar_1));
        b.add((ImageView)findViewById(i.avatar_2));
        b.add((ImageView)findViewById(i.avatar_3));
        b.add((ImageView)findViewById(i.avatar_4));
        b.add((ImageView)findViewById(i.avatar_5));
        b.add((ImageView)findViewById(i.avatar_6));
    }

    public void b()
    {
        if (a != null)
        {
            int j = 0;
            while (j < 6) 
            {
                ImageView imageview = (ImageView)b.get(j);
                String s = "";
                if (j < a.size())
                {
                    s = (String)a.get(j);
                }
                int k;
                if ((new Random()).nextInt(10) % 2 == 0)
                {
                    k = h.facebook_avatar_female;
                } else
                {
                    k = h.facebook_avatar_male;
                }
                if (!TextUtils.isEmpty(s))
                {
                    String s1 = c.a(s, imageview.getWidth());
                    aa.a(getContext()).a(s1).a(k).a(new ar() {

                        final ProfileFacebookFriendsButton a;

                        public Bitmap a(Bitmap bitmap)
                        {
                            Bitmap bitmap1 = f.b(bitmap, 12F);
                            if (bitmap1 != bitmap)
                            {
                                bitmap.recycle();
                            }
                            return bitmap1;
                        }

                        public String a()
                        {
                            return "rounded()";
                        }

            
            {
                a = ProfileFacebookFriendsButton.this;
                super();
            }
                    }).b().a(imageview);
                } else
                {
                    imageview.setImageBitmap(f.b(((BitmapDrawable)getResources().getDrawable(k)).getBitmap(), 12F));
                }
                j++;
            }
        }
    }

    public void setFacebookFriendsIds(List list)
    {
        a = list;
        b();
    }
}
