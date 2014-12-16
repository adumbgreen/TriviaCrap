// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.a;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;

public class c
{

    public static Animation a()
    {
        return a(300L);
    }

    public static Animation a(long l)
    {
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(l);
        scaleanimation.setInterpolator(new BounceInterpolator());
        scaleanimation.setFillBefore(false);
        scaleanimation.setFillAfter(true);
        return scaleanimation;
    }

    public static void a(View view, long l)
    {
        view.measure(-1, -2);
        view.getLayoutParams().height = 0;
        view.setVisibility(0);
        Animation animation = new Animation(view, view.getMeasuredHeight()) {

            final View a;
            final int b;

            protected void applyTransformation(float f1, Transformation transformation)
            {
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                int i1;
                if (f1 == 1.0F)
                {
                    i1 = -2;
                } else
                {
                    i1 = (int)(f1 * (float)b);
                }
                layoutparams.height = i1;
                a.requestLayout();
            }

            public boolean willChangeBounds()
            {
                return true;
            }

            
            {
                a = view;
                b = l;
                super();
            }
        };
        animation.setDuration(l);
        view.startAnimation(animation);
    }

    public static Animation b()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1F, 1, 0.0F);
        translateanimation.setInterpolator(new DecelerateInterpolator());
        translateanimation.setDuration(300L);
        translateanimation.setFillAfter(true);
        return translateanimation;
    }

    public static Animation c()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
        translateanimation.setDuration(300L);
        translateanimation.setFillAfter(true);
        return translateanimation;
    }

    public static Animation d()
    {
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, 360F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(1000L);
        rotateanimation.setFillAfter(true);
        return rotateanimation;
    }

    public static Animation e()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
        translateanimation.setDuration(300L);
        translateanimation.setFillAfter(true);
        return translateanimation;
    }

    public static Animation f()
    {
        ScaleAnimation scaleanimation = new ScaleAnimation(0.0F, 1.1F, 0.0F, 1.1F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(248L);
        scaleanimation.setInterpolator(new DecelerateInterpolator());
        scaleanimation.setFillAfter(true);
        ScaleAnimation scaleanimation1 = new ScaleAnimation(1.1F, 0.9F, 1.1F, 0.9F, 1, 0.5F, 1, 0.5F);
        scaleanimation1.setDuration(101L);
        scaleanimation1.setStartOffset(scaleanimation.getStartOffset() + scaleanimation.getDuration());
        scaleanimation1.setInterpolator(new DecelerateInterpolator());
        scaleanimation1.setFillAfter(true);
        AnimationSet animationset = new AnimationSet(false);
        animationset.addAnimation(scaleanimation);
        animationset.addAnimation(scaleanimation1);
        return animationset;
    }

    public static Animation g()
    {
        Animation animation = a(500L);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(300L);
        alphaanimation.setStartOffset(animation.getStartOffset() + animation.getDuration() + (long)300);
        AnimationSet animationset = new AnimationSet(false);
        animationset.addAnimation(animation);
        animationset.addAnimation(alphaanimation);
        animationset.setFillAfter(true);
        return animationset;
    }

    public static Animation h()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, -1.5F, 1, 0.0F, 1, 0.0F);
        translateanimation.setDuration(150L);
        translateanimation.setInterpolator(new LinearInterpolator());
        translateanimation.setFillAfter(true);
        return translateanimation;
    }

    public static Animation i()
    {
        RotateAnimation rotateanimation = new RotateAnimation(0.0F, -5F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(100L);
        RotateAnimation rotateanimation1 = new RotateAnimation(-5F, 5F, 1, 0.5F, 1, 0.5F);
        rotateanimation1.setStartOffset(rotateanimation.getStartOffset() + rotateanimation.getDuration());
        rotateanimation1.setDuration(100L);
        RotateAnimation rotateanimation2 = new RotateAnimation(5F, 0.0F, 1, 0.5F, 1, 0.5F);
        rotateanimation2.setStartOffset(rotateanimation1.getStartOffset() + rotateanimation1.getDuration());
        rotateanimation2.setDuration(100L);
        AnimationSet animationset = new AnimationSet(false);
        animationset.addAnimation(rotateanimation);
        animationset.addAnimation(rotateanimation1);
        animationset.addAnimation(rotateanimation2);
        animationset.setFillAfter(true);
        return animationset;
    }

    public static Animation j()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 2.2F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        translateanimation.setFillAfter(true);
        translateanimation.setDuration(150L);
        return translateanimation;
    }

    public static Animation k()
    {
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, -2.2F, 1, 0.0F, 1, 0.0F);
        translateanimation.setFillAfter(true);
        translateanimation.setDuration(150L);
        return translateanimation;
    }
}
