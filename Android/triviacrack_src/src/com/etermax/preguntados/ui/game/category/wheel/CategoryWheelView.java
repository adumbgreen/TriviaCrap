// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.wheel;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.Transformation;
import android.widget.ImageView;
import com.etermax.a.a;
import java.io.PrintStream;
import java.util.Random;

// Referenced classes of package com.etermax.preguntados.ui.game.category.wheel:
//            a, c, b

public class CategoryWheelView extends ImageView
{

    private int a;
    private Object b;
    private RotateAnimation c;
    private int d;
    private b e;
    private int f;
    private int g;
    private int h;
    private long i;
    private boolean j;
    private int k;
    private float l;
    private android.view.animation.Animation.AnimationListener m = new android.view.animation.Animation.AnimationListener() {

        final CategoryWheelView a;

        public void onAnimationEnd(Animation animation)
        {
            if (CategoryWheelView.b(a) != null)
            {
                CategoryWheelView.b(a).a(CategoryWheelView.d(a));
            }
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            
            {
                a = CategoryWheelView.this;
                super();
            }
    };
    private Interpolator n = new LinearInterpolator() {

        final CategoryWheelView a;

        public float getInterpolation(float f1)
        {
            CategoryWheelView.b(a).a(com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(a));
            return f1;
        }

            
            {
                a = CategoryWheelView.this;
                super();
            }
    };
    private Interpolator o = new Interpolator() {

        final CategoryWheelView a;

        public float getInterpolation(float f1)
        {
            if (f1 < 0.4F)
            {
                CategoryWheelView.b(a).a(com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(a));
            }
            return 1.0F - (1.0F - f1) * (1.0F - f1) * (1.0F - f1);
        }

            
            {
                a = CategoryWheelView.this;
                super();
            }
    };
    private Interpolator p = new Interpolator() {

        final CategoryWheelView a;

        public float getInterpolation(float f1)
        {
            return f1 * f1;
        }

            
            {
                a = CategoryWheelView.this;
                super();
            }
    };

    public CategoryWheelView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = true;
        l = 0.0F;
        b();
    }

    public CategoryWheelView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        j = true;
        l = 0.0F;
        b();
    }

    static float a(CategoryWheelView categorywheelview, float f1)
    {
        categorywheelview.l = f1;
        return f1;
    }

    private static int a(int i1)
    {
        if (i1 == -1)
        {
            return 0;
        } else
        {
            return (int)(-154.2857F + 51.42857F * (float)i1);
        }
    }

    private int a(MotionEvent motionevent)
    {
        double d1 = (double)motionevent.getX() - (double)getWidth() / 2D;
        double d2 = (double)motionevent.getY() - (double)getHeight() / 2D;
        int i1;
        if (d1 < 0.0D)
        {
            i1 = 180;
        } else
        if (d2 < 0.0D)
        {
            i1 = 360;
        } else
        {
            i1 = 0;
        }
        return (int)((180D * Math.atan(d2 / d1)) / 3.1415926535897931D + (double)i1);
    }

    private void a(float f1, int i1, boolean flag, boolean flag1)
    {
        float f2;
        float f3;
        RotateAnimation rotateanimation;
        Interpolator interpolator;
        if (flag)
        {
            f2 = 720F;
        } else
        {
            f2 = -720F;
        }
        if (flag1)
        {
            f3 = f2 - f1;
        } else
        {
            f3 = f2 / 2.0F;
        }
        rotateanimation = new RotateAnimation(f1, f3, 1, 0.5F, 1, 0.5F);
        if (flag1)
        {
            interpolator = p;
        } else
        {
            interpolator = n;
        }
        rotateanimation.setInterpolator(interpolator);
        rotateanimation.setAnimationListener(new com.etermax.preguntados.ui.game.category.wheel.a(this, i1, flag));
        rotateanimation.setFillAfter(true);
        startAnimation(rotateanimation);
        rotateanimation.setDuration((long)(((float)i1 / 360F) * Math.abs(f3 - f1)));
        setEnabled(false);
        startAnimation(rotateanimation);
    }

    private void a(int i1, int j1, boolean flag)
    {
        System.out.println((new StringBuilder()).append("START DESCELERATE: ").append(j1).toString());
        int k1 = a(i1);
        double d1;
        int l1;
        float f1;
        int i2;
        float f2;
        float f3;
        float f4;
        RotateAnimation rotateanimation;
        if (System.currentTimeMillis() % 2L == 0L)
        {
            d1 = 0.0D;
        } else
        {
            d1 = 1.0D;
        }
        l1 = (int)Math.pow(-1D, d1);
        f1 = 20.71428F * (new Random(System.currentTimeMillis())).nextFloat();
        if (k1 < 0)
        {
            i2 = k1 + 360;
        } else
        {
            i2 = k1;
        }
        f2 = i2;
        if (flag)
        {
            f3 = 1800F;
        } else
        {
            f3 = -1800F;
        }
        f4 = f3 + f2 + f1 * (float)l1;
        k = (int)Math.abs(Math.rint(f4 / 51.42857F));
        com.etermax.a.a.c("CategoryWheelView", (new StringBuilder()).append("Number of steps: ").append(k).toString());
        rotateanimation = new RotateAnimation(0.0F, f4, 1, 0.5F, 1, 0.5F, f4) {

            final float a;
            final CategoryWheelView b;

            protected void applyTransformation(float f5, Transformation transformation)
            {
                float f6 = 0.0F + f5 * (a - 0.0F);
                if (Math.abs((25.71428F + f6) % 51.42857F) < 3F && Math.abs(f6 - CategoryWheelView.c(b)) > 46.42857F)
                {
                    CategoryWheelView.b(b).a(com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(b));
                    com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(b, f6);
                }
                super.applyTransformation(f5, transformation);
            }

            
            {
                b = CategoryWheelView.this;
                a = f5;
                super(f1, f2, i1, f3, j1, f4);
            }
        };
        rotateanimation.setInterpolator(o);
        rotateanimation.setDuration(5000L);
        rotateanimation.setAnimationListener(m);
        rotateanimation.setFillAfter(true);
        startAnimation(rotateanimation);
        d = i2;
    }

    private void a(int i1, boolean flag)
    {
        float f1;
        int j1;
        if (flag)
        {
            f1 = 720F;
        } else
        {
            f1 = -720F;
        }
        j1 = (int)(((float)i1 / 360F) * Math.abs(f1));
        c = new RotateAnimation(0.0F, f1, 1, 0.5F, 1, 0.5F, f1) {

            final float a;
            final CategoryWheelView b;

            protected void applyTransformation(float f2, Transformation transformation)
            {
                if (Math.abs((25.71428F + (0.0F + f2 * (a - 0.0F))) % 51.42857F) < 3F)
                {
                    CategoryWheelView.b(b).a(com.etermax.preguntados.ui.game.category.wheel.CategoryWheelView.a(b));
                }
                super.applyTransformation(f2, transformation);
            }

            
            {
                b = CategoryWheelView.this;
                a = f5;
                super(f1, f2, i1, f3, j1, f4);
            }
        };
        c.setInterpolator(n);
        c.setAnimationListener(new c(this, i1, flag, j1));
        c.setFillAfter(true);
        c.setDuration(j1);
        c.setRepeatCount(8000 / j1);
        startAnimation(c);
    }

    private void a(MotionEvent motionevent, int i1)
    {
        if (Math.floor((25.71428F + (float)Math.abs(g)) % 51.42857F) == 0.0D && f != i1)
        {
            int j1 = b(motionevent);
            boolean flag = false;
            if (j1 > 0)
            {
                flag = true;
            }
            e.a(flag);
        }
    }

    static void a(CategoryWheelView categorywheelview, int i1, int j1, boolean flag)
    {
        categorywheelview.a(i1, j1, flag);
    }

    static void a(CategoryWheelView categorywheelview, int i1, boolean flag)
    {
        categorywheelview.a(i1, flag);
    }

    static boolean a(CategoryWheelView categorywheelview)
    {
        return categorywheelview.j;
    }

    private int b(MotionEvent motionevent)
    {
        int i1 = a(motionevent) - h;
        return (int)((float)(360L * (motionevent.getEventTime() - i)) / (float)i1);
    }

    static b b(CategoryWheelView categorywheelview)
    {
        return categorywheelview.e;
    }

    private void b()
    {
        a = -1;
        d = 0;
    }

    static float c(CategoryWheelView categorywheelview)
    {
        return categorywheelview.l;
    }

    private void c()
    {
        a = -1;
        b = null;
    }

    static Object d(CategoryWheelView categorywheelview)
    {
        return categorywheelview.b;
    }

    static int e(CategoryWheelView categorywheelview)
    {
        return categorywheelview.a;
    }

    static RotateAnimation f(CategoryWheelView categorywheelview)
    {
        return categorywheelview.c;
    }

    public void a()
    {
        c();
        a(g % 360 + d, 250, true, false);
        g = 0;
    }

    public void a(int i1, Object obj)
    {
        a = i1;
        b = obj;
    }

    protected void onDraw(Canvas canvas)
    {
        if (g == 0)
        {
            super.onDraw(canvas);
            return;
        } else
        {
            canvas.save();
            float f1 = (float)getHeight() / 2.0F;
            float f2 = (float)getWidth() / 2.0F;
            canvas.rotate(g, f2, f1);
            super.onDraw(canvas);
            canvas.restore();
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag = true;
        if (!isEnabled())
        {
            flag = super.onTouchEvent(motionevent);
        } else
        {
            int i1;
            int j1;
            switch (motionevent.getAction())
            {
            default:
                return flag;

            case 0: // '\0'
                f = a(motionevent);
                return flag;

            case 2: // '\002'
                int k1 = a(motionevent);
                h = f;
                g = g + (k1 - f);
                i = motionevent.getEventTime();
                a(motionevent, k1);
                f = k1;
                invalidate();
                return flag;

            case 3: // '\003'
                f = 0;
                // fall through

            case 1: // '\001'
                i1 = b(motionevent);
                j1 = Math.abs(i1);
                break;
            }
            boolean flag1;
            if (i1 > 0)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            j = flag1;
            com.etermax.a.a.a("WHEEL", (new StringBuilder()).append("cicle duration: ").append(j1).toString());
            if (j1 < 1100 && j1 > 100)
            {
                setEnabled(false);
                a(d + g % 360, 250, flag1, false);
                g = 0;
                e.a();
                return flag;
            }
        }
        return flag;
    }

    public void setListener(b b1)
    {
        e = b1;
    }
}
