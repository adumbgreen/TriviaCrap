// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.d;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.etermax.i;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.d:
//            g, h, f, i

public class e extends b
{

    com.etermax.preguntados.ui.d.i a;
    String b;

    public e()
    {
    }

    public static Fragment a(String s)
    {
        return g.e().a(s).a();
    }

    static Object a(e e1)
    {
        return e1.mCallbacks;
    }

    static Object b(e e1)
    {
        return e1.mCallbacks;
    }

    public f a()
    {
        return new f() {

            final e a;

            public void f()
            {
            }

            public void h()
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void b()
    {
    }

    void c()
    {
        d();
    }

    void d()
    {
        ((f)mCallbacks).h();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onResume()
    {
        if (b == "tutorial_start")
        {
            ImageView imageview = (ImageView)getView().findViewById(i.arrow_start);
            View view = getView().findViewById(i.tutorial_text);
            View view1 = getView().findViewById(i.spin_button_image);
            View view2 = getView().findViewById(i.wheel_view);
            Matrix matrix = new Matrix();
            matrix.setRotate(-45F, imageview.getDrawable().getIntrinsicWidth() / 2, imageview.getDrawable().getIntrinsicHeight() / 2);
            imageview.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
            imageview.setImageMatrix(matrix);
            imageview.setVisibility(0);
            view2.setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view3)
                {
                    ((f)e.a(a)).f();
                }

            
            {
                a = e.this;
                super();
            }
            });
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view3)
                {
                    ((f)com.etermax.preguntados.ui.d.e.b(a)).f();
                }

            
            {
                a = e.this;
                super();
            }
            });
            imageview.setVisibility(0);
            view.setVisibility(0);
            view1.setVisibility(0);
            ((RelativeLayout)getView().findViewById(i.tutorialcategoryFragmentLayout)).setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view3)
                {
                    if (view3.getId() != i.spin_button_image)
                    {
                        a.d();
                    }
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
        if (b == "tutorial_charges")
        {
            getView().findViewById(i.charges_tutorial).setVisibility(0);
            getView().findViewById(i.charges_view).setVisibility(0);
            ((RelativeLayout)getView().findViewById(i.tutorialcategoryFragmentLayout)).setOnClickListener(new android.view.View.OnClickListener() {

                final e a;

                public void onClick(View view3)
                {
                    a.d();
                }

            
            {
                a = e.this;
                super();
            }
            });
        }
        super.onResume();
    }
}
