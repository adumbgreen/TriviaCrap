// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.widget:
//            ViewDragHelper

public class SlidingPaneLayout extends ViewGroup
{

    private static final int DEFAULT_FADE_COLOR = 0xcccccccc;
    private static final int DEFAULT_OVERHANG_SIZE = 32;
    static final SlidingPanelLayoutImpl IMPL;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private final int mOverhangSize;
    private PanelSlideListener mPanelSlideListener;
    private int mParallaxBy;
    private float mParallaxOffset;
    private final ArrayList mPostedRunnables;
    private boolean mPreservedOpenState;
    private Drawable mShadowDrawable;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    public SlidingPaneLayout(Context context)
    {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mSliderFadeColor = 0xcccccccc;
        mFirstLayout = true;
        mTmpRect = new Rect();
        mPostedRunnables = new ArrayList();
        float f = context.getResources().getDisplayMetrics().density;
        mOverhangSize = (int)(0.5F + 32F * f);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewCompat.setImportantForAccessibility(this, 1);
        mDragHelper = ViewDragHelper.create(this, 0.5F, new DragHelperCallback());
        mDragHelper.setEdgeTrackingEnabled(1);
        mDragHelper.setMinVelocity(f * 400F);
    }

    private boolean closePane(View view, int i)
    {
        boolean flag;
label0:
        {
            if (!mFirstLayout)
            {
                boolean flag1 = smoothSlideTo(0.0F, i);
                flag = false;
                if (!flag1)
                {
                    break label0;
                }
            }
            mPreservedOpenState = false;
            flag = true;
        }
        return flag;
    }

    private void dimChildView(View view, float f, int i)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (f > 0.0F && i != 0)
        {
            int j = (int)(f * (float)((0xff000000 & i) >>> 24)) << 24 | 0xffffff & i;
            if (layoutparams.dimPaint == null)
            {
                layoutparams.dimPaint = new Paint();
            }
            layoutparams.dimPaint.setColorFilter(new PorterDuffColorFilter(j, android.graphics.PorterDuff.Mode.SRC_OVER));
            if (ViewCompat.getLayerType(view) != 2)
            {
                ViewCompat.setLayerType(view, 2, layoutparams.dimPaint);
            }
            invalidateChildRegion(view);
        } else
        if (ViewCompat.getLayerType(view) != 0)
        {
            if (layoutparams.dimPaint != null)
            {
                layoutparams.dimPaint.setColorFilter(null);
            }
            DisableLayerRunnable disablelayerrunnable = new DisableLayerRunnable(view);
            mPostedRunnables.add(disablelayerrunnable);
            ViewCompat.postOnAnimation(this, disablelayerrunnable);
            return;
        }
    }

    private void invalidateChildRegion(View view)
    {
        IMPL.invalidateChildRegion(this, view);
    }

    private void onPanelDragged(int i)
    {
        if (mSlideableView == null)
        {
            mSlideOffset = 0.0F;
            return;
        }
        LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
        mSlideOffset = (float)(i - (getPaddingLeft() + layoutparams.leftMargin)) / (float)mSlideRange;
        if (mParallaxBy != 0)
        {
            parallaxOtherViews(mSlideOffset);
        }
        if (layoutparams.dimWhenOffset)
        {
            dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
        }
        dispatchOnPanelSlide(mSlideableView);
    }

    private boolean openPane(View view, int i)
    {
        if (mFirstLayout || smoothSlideTo(1.0F, i))
        {
            mPreservedOpenState = true;
            return true;
        } else
        {
            return false;
        }
    }

    private void parallaxOtherViews(float f)
    {
        int i = 0;
        LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
        boolean flag;
        int j;
        if (layoutparams.dimWhenOffset && layoutparams.leftMargin <= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = getChildCount();
        while (i < j) 
        {
            View view = getChildAt(i);
            if (view != mSlideableView)
            {
                int k = (int)((1.0F - mParallaxOffset) * (float)mParallaxBy);
                mParallaxOffset = f;
                view.offsetLeftAndRight(k - (int)((1.0F - f) * (float)mParallaxBy));
                if (flag)
                {
                    dimChildView(view, 1.0F - mParallaxOffset, mCoveredFadeColor);
                }
            }
            i++;
        }
    }

    private static boolean viewIsOpaque(View view)
    {
        if (!ViewCompat.isOpaque(view))
        {
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                return false;
            }
            Drawable drawable = view.getBackground();
            if (drawable != null)
            {
                if (drawable.getOpacity() != -1)
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    protected boolean canScroll(View view, boolean flag, int i, int j, int k)
    {
        if (!(view instanceof ViewGroup)) goto _L2; else goto _L1
_L1:
        ViewGroup viewgroup;
        int l;
        int i1;
        int j1;
        viewgroup = (ViewGroup)view;
        l = view.getScrollX();
        i1 = view.getScrollY();
        j1 = -1 + viewgroup.getChildCount();
_L8:
        if (j1 < 0) goto _L2; else goto _L3
_L3:
        View view1 = viewgroup.getChildAt(j1);
        if (j + l < view1.getLeft() || j + l >= view1.getRight() || k + i1 < view1.getTop() || k + i1 >= view1.getBottom() || !canScroll(view1, true, i, (j + l) - view1.getLeft(), (k + i1) - view1.getTop())) goto _L5; else goto _L4
_L4:
        return true;
_L5:
        j1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (flag && ViewCompat.canScrollHorizontally(view, -i)) goto _L4; else goto _L6
_L6:
        return false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public boolean canSlide()
    {
        return mCanSlide;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public boolean closePane()
    {
        return closePane(mSlideableView, 0);
    }

    public void computeScroll()
    {
label0:
        {
            if (mDragHelper.continueSettling(true))
            {
                if (mCanSlide)
                {
                    break label0;
                }
                mDragHelper.abort();
            }
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    void dispatchOnPanelClosed(View view)
    {
        if (mPanelSlideListener != null)
        {
            mPanelSlideListener.onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelOpened(View view)
    {
        if (mPanelSlideListener != null)
        {
            mPanelSlideListener.onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    void dispatchOnPanelSlide(View view)
    {
        if (mPanelSlideListener != null)
        {
            mPanelSlideListener.onPanelSlide(view, mSlideOffset);
        }
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        View view;
        if (getChildCount() > 1)
        {
            view = getChildAt(1);
        } else
        {
            view = null;
        }
        if (view == null || mShadowDrawable == null)
        {
            return;
        } else
        {
            int i = mShadowDrawable.getIntrinsicWidth();
            int j = view.getLeft();
            int k = view.getTop();
            int l = view.getBottom();
            int i1 = j - i;
            mShadowDrawable.setBounds(i1, k, j, l);
            mShadowDrawable.draw(canvas);
            return;
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long l)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int i = canvas.save(2);
        if (mCanSlide && !layoutparams.slideable && mSlideableView != null)
        {
            canvas.getClipBounds(mTmpRect);
            mTmpRect.right = Math.min(mTmpRect.right, mSlideableView.getLeft());
            canvas.clipRect(mTmpRect);
        }
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            flag = super.drawChild(canvas, view, l);
        } else
        if (layoutparams.dimWhenOffset && mSlideOffset > 0.0F)
        {
            if (!view.isDrawingCacheEnabled())
            {
                view.setDrawingCacheEnabled(true);
            }
            android.graphics.Bitmap bitmap = view.getDrawingCache();
            if (bitmap != null)
            {
                canvas.drawBitmap(bitmap, view.getLeft(), view.getTop(), layoutparams.dimPaint);
                flag = false;
            } else
            {
                Log.e("SlidingPaneLayout", (new StringBuilder()).append("drawChild: child view ").append(view).append(" returned null drawing cache").toString());
                flag = super.drawChild(canvas, view, l);
            }
        } else
        {
            if (view.isDrawingCacheEnabled())
            {
                view.setDrawingCacheEnabled(false);
            }
            flag = super.drawChild(canvas, view, l);
        }
        canvas.restoreToCount(i);
        return flag;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    public int getCoveredFadeColor()
    {
        return mCoveredFadeColor;
    }

    public int getParallaxDistance()
    {
        return mParallaxBy;
    }

    public int getSliderFadeColor()
    {
        return mSliderFadeColor;
    }

    boolean isDimmed(View view)
    {
        if (view == null)
        {
            return false;
        }
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        boolean flag;
        if (mCanSlide && layoutparams.dimWhenOffset && mSlideOffset > 0.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public boolean isOpen()
    {
        return !mCanSlide || mSlideOffset == 1.0F;
    }

    public boolean isSlideable()
    {
        return mCanSlide;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mFirstLayout = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        mFirstLayout = true;
        int i = mPostedRunnables.size();
        for (int j = 0; j < i; j++)
        {
            ((DisableLayerRunnable)mPostedRunnables.get(j)).run();
        }

        mPostedRunnables.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i;
        boolean flag;
        i = MotionEventCompat.getActionMasked(motionevent);
        if (!mCanSlide && i == 0 && getChildCount() > 1)
        {
            View view = getChildAt(1);
            if (view != null)
            {
                boolean flag2;
                if (!mDragHelper.isViewUnder(view, (int)motionevent.getX(), (int)motionevent.getY()))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                mPreservedOpenState = flag2;
            }
        }
        if (mCanSlide && (!mIsUnableToDrag || i == 0)) goto _L2; else goto _L1
_L1:
        mDragHelper.cancel();
        flag = super.onInterceptTouchEvent(motionevent);
_L7:
        return flag;
_L2:
        if (i == 3 || i == 1)
        {
            mDragHelper.cancel();
            return false;
        }
        i;
        JVM INSTR tableswitch 0 2: default 152
    //                   0 175
    //                   1 152
    //                   2 241;
           goto _L3 _L4 _L3 _L5
_L3:
        boolean flag1 = false;
_L9:
        if (mDragHelper.shouldInterceptTouchEvent(motionevent))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = false;
        if (!flag1) goto _L7; else goto _L6
_L6:
        return true;
_L4:
        float f4;
        float f5;
        mIsUnableToDrag = false;
        f4 = motionevent.getX();
        f5 = motionevent.getY();
        mInitialMotionX = f4;
        mInitialMotionY = f5;
        if (!mDragHelper.isViewUnder(mSlideableView, (int)f4, (int)f5) || !isDimmed(mSlideableView)) goto _L3; else goto _L8
_L8:
        flag1 = true;
          goto _L9
_L5:
        float f = motionevent.getX();
        float f1 = motionevent.getY();
        float f2 = Math.abs(f - mInitialMotionX);
        float f3 = Math.abs(f1 - mInitialMotionY);
        if (f2 > (float)mDragHelper.getTouchSlop() && f3 > f2)
        {
            mDragHelper.cancel();
            mIsUnableToDrag = true;
            return false;
        }
          goto _L3
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = k - i;
        int j1 = getPaddingLeft();
        int k1 = getPaddingRight();
        int l1 = getPaddingTop();
        int i2 = getChildCount();
        int k2;
        if (mFirstLayout)
        {
            int j2;
            float f;
            if (mCanSlide && mPreservedOpenState)
            {
                f = 1.0F;
            } else
            {
                f = 0.0F;
            }
            mSlideOffset = f;
        }
        j2 = 0;
        k2 = j1;
        while (j2 < i2) 
        {
            View view = getChildAt(j2);
            int j3;
            if (view.getVisibility() == 8)
            {
                j3 = k2;
            } else
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                int i3 = view.getMeasuredWidth();
                int k3;
                if (layoutparams.slideable)
                {
                    int i4 = layoutparams.leftMargin + layoutparams.rightMargin;
                    int j4 = Math.min(j1, i1 - k1 - mOverhangSize) - k2 - i4;
                    mSlideRange = j4;
                    int l3;
                    boolean flag1;
                    int k4;
                    int l4;
                    if (j4 + (k2 + layoutparams.leftMargin) + i3 / 2 > i1 - k1)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    layoutparams.dimWhenOffset = flag1;
                    k4 = (int)((float)j4 * mSlideOffset);
                    l4 = k2 + (k4 + layoutparams.leftMargin);
                    mSlideOffset = (float)k4 / (float)mSlideRange;
                    j3 = l4;
                    k3 = 0;
                } else
                if (mCanSlide && mParallaxBy != 0)
                {
                    k3 = (int)((1.0F - mSlideOffset) * (float)mParallaxBy);
                    j3 = j1;
                } else
                {
                    j3 = j1;
                    k3 = 0;
                }
                l3 = j3 - k3;
                view.layout(l3, l1, l3 + i3, l1 + view.getMeasuredHeight());
                j1 += view.getWidth();
            }
            j2++;
            k2 = j3;
        }
        if (mFirstLayout)
        {
            if (mCanSlide)
            {
                if (mParallaxBy != 0)
                {
                    parallaxOtherViews(mSlideOffset);
                }
                if (((LayoutParams)mSlideableView.getLayoutParams()).dimWhenOffset)
                {
                    dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
                }
            } else
            {
                int l2 = 0;
                while (l2 < i2) 
                {
                    dimChildView(getChildAt(l2), 0.0F, mSliderFadeColor);
                    l2++;
                }
            }
            updateObscuredViewsVisibility(mSlideableView);
        }
        mFirstLayout = false;
    }

    protected void onMeasure(int i, int j)
    {
        int k;
        int l;
        int i1;
        int j1;
        k = android.view.View.MeasureSpec.getMode(i);
        l = android.view.View.MeasureSpec.getSize(i);
        i1 = android.view.View.MeasureSpec.getMode(j);
        j1 = android.view.View.MeasureSpec.getSize(j);
        if (k == 0x40000000) goto _L2; else goto _L1
_L1:
        if (!isInEditMode()) goto _L4; else goto _L3
_L3:
        if (k != 0x80000000) goto _L6; else goto _L5
_L5:
        int k1;
        int l1;
        int i2;
        k1 = i1;
        l1 = l;
        i2 = j1;
_L16:
        k1;
        JVM INSTR lookupswitch 2: default 84
    //                   -2147483648: 319
    //                   1073741824: 298;
           goto _L7 _L8 _L9
_L7:
        int j2;
        int k2;
        k2 = 0;
        j2 = -1;
_L13:
        boolean flag;
        int l2;
        int i3;
        int j3;
        int k3;
        float f;
        flag = false;
        l2 = l1 - getPaddingLeft() - getPaddingRight();
        i3 = getChildCount();
        if (i3 > 2)
        {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        mSlideableView = null;
        j3 = 0;
        k3 = k2;
        f = 0.0F;
_L11:
        View view1;
        LayoutParams layoutparams1;
        int j7;
        int k7;
        boolean flag4;
        float f2;
        if (j3 >= i3)
        {
            break; /* Loop/switch isn't completed */
        }
        view1 = getChildAt(j3);
        layoutparams1 = (LayoutParams)view1.getLayoutParams();
        if (view1.getVisibility() == 8)
        {
            layoutparams1.dimWhenOffset = false;
            j7 = l2;
            f2 = f;
            k7 = k3;
            flag4 = flag;
        } else
        {
label0:
            {
                if (layoutparams1.weight <= 0.0F)
                {
                    break label0;
                }
                f += layoutparams1.weight;
                if (layoutparams1.width != 0)
                {
                    break label0;
                }
                j7 = l2;
                f2 = f;
                k7 = k3;
                flag4 = flag;
            }
        }
_L14:
        j3++;
        flag = flag4;
        k3 = k7;
        f = f2;
        l2 = j7;
        if (true) goto _L11; else goto _L10
_L6:
        if (k == 0)
        {
            k1 = i1;
            l1 = 300;
            i2 = j1;
            continue; /* Loop/switch isn't completed */
        }
          goto _L12
_L4:
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
_L2:
        if (i1 == 0)
        {
            if (isInEditMode())
            {
                if (i1 == 0)
                {
                    k1 = 0x80000000;
                    l1 = l;
                    i2 = 300;
                    continue; /* Loop/switch isn't completed */
                }
            } else
            {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
        }
          goto _L12
_L9:
        k2 = i2 - getPaddingTop() - getPaddingBottom();
        j2 = k2;
          goto _L13
_L8:
        j2 = i2 - getPaddingTop() - getPaddingBottom();
        k2 = 0;
          goto _L13
        int l5 = layoutparams1.leftMargin + layoutparams1.rightMargin;
        int i6;
        int j6;
        int k6;
        int l6;
        int i7;
        boolean flag2;
        boolean flag3;
        float f1;
        if (layoutparams1.width == -2)
        {
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(l1 - l5, 0x80000000);
        } else
        if (layoutparams1.width == -1)
        {
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(l1 - l5, 0x40000000);
        } else
        {
            i6 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.width, 0x40000000);
        }
        if (layoutparams1.height == -2)
        {
            j6 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x80000000);
        } else
        if (layoutparams1.height == -1)
        {
            j6 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000);
        } else
        {
            j6 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.height, 0x40000000);
        }
        view1.measure(i6, j6);
        k6 = view1.getMeasuredWidth();
        l6 = view1.getMeasuredHeight();
        if (k1 == 0x80000000 && l6 > k3)
        {
            k3 = Math.min(l6, j2);
        }
        i7 = l2 - k6;
        if (i7 < 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        layoutparams1.slideable = flag2;
        flag3 = flag2 | flag;
        if (layoutparams1.slideable)
        {
            mSlideableView = view1;
        }
        j7 = i7;
        k7 = k3;
        f1 = f;
        flag4 = flag3;
        f2 = f1;
          goto _L14
_L10:
        if (flag || f > 0.0F)
        {
            int l3 = l1 - mOverhangSize;
            int i4 = 0;
            while (i4 < i3) 
            {
                View view = getChildAt(i4);
                if (view.getVisibility() != 8)
                {
                    LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                    if (view.getVisibility() != 8)
                    {
                        boolean flag1;
                        int j4;
                        if (layoutparams.width == 0 && layoutparams.weight > 0.0F)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        if (flag1)
                        {
                            j4 = 0;
                        } else
                        {
                            j4 = view.getMeasuredWidth();
                        }
                        if (flag && view != mSlideableView)
                        {
                            if (layoutparams.width < 0 && (j4 > l3 || layoutparams.weight > 0.0F))
                            {
                                int k5;
                                if (flag1)
                                {
                                    if (layoutparams.height == -2)
                                    {
                                        k5 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x80000000);
                                    } else
                                    if (layoutparams.height == -1)
                                    {
                                        k5 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000);
                                    } else
                                    {
                                        k5 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
                                    }
                                } else
                                {
                                    k5 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                                }
                                view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l3, 0x40000000), k5);
                            }
                        } else
                        if (layoutparams.weight > 0.0F)
                        {
                            int k4;
                            if (layoutparams.width == 0)
                            {
                                if (layoutparams.height == -2)
                                {
                                    k4 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x80000000);
                                } else
                                if (layoutparams.height == -1)
                                {
                                    k4 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000);
                                } else
                                {
                                    k4 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
                                }
                            } else
                            {
                                k4 = android.view.View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0x40000000);
                            }
                            if (flag)
                            {
                                int i5 = l1 - (layoutparams.leftMargin + layoutparams.rightMargin);
                                int j5 = android.view.View.MeasureSpec.makeMeasureSpec(i5, 0x40000000);
                                if (j4 != i5)
                                {
                                    view.measure(j5, k4);
                                }
                            } else
                            {
                                int l4 = Math.max(0, l2);
                                view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j4 + (int)((layoutparams.weight * (float)l4) / f), 0x40000000), k4);
                            }
                        }
                    }
                }
                i4++;
            }
        }
        setMeasuredDimension(l1, k3);
        mCanSlide = flag;
        if (mDragHelper.getViewDragState() != 0 && !flag)
        {
            mDragHelper.abort();
        }
        return;
_L12:
        k1 = i1;
        l1 = l;
        i2 = j1;
        if (true) goto _L16; else goto _L15
_L15:
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (savedstate.isOpen)
        {
            openPane();
        } else
        {
            closePane();
        }
        mPreservedOpenState = savedstate.isOpen;
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        boolean flag;
        if (isSlideable())
        {
            flag = isOpen();
        } else
        {
            flag = mPreservedOpenState;
        }
        savedstate.isOpen = flag;
        return savedstate;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (i != k)
        {
            mFirstLayout = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        if (!mCanSlide)
        {
            flag = super.onTouchEvent(motionevent);
        } else
        {
            mDragHelper.processTouchEvent(motionevent);
            int i = motionevent.getAction();
            flag = true;
            switch (i & 0xff)
            {
            default:
                return flag;

            case 0: // '\0'
                float f4 = motionevent.getX();
                float f5 = motionevent.getY();
                mInitialMotionX = f4;
                mInitialMotionY = f5;
                return flag;

            case 1: // '\001'
                break;
            }
            if (isDimmed(mSlideableView))
            {
                float f = motionevent.getX();
                float f1 = motionevent.getY();
                float f2 = f - mInitialMotionX;
                float f3 = f1 - mInitialMotionY;
                int j = mDragHelper.getTouchSlop();
                if (f2 * f2 + f3 * f3 < (float)(j * j) && mDragHelper.isViewUnder(mSlideableView, (int)f, (int)f1))
                {
                    closePane(mSlideableView, 0);
                    return flag;
                }
            }
        }
        return flag;
    }

    public boolean openPane()
    {
        return openPane(mSlideableView, 0);
    }

    public void requestChildFocus(View view, View view1)
    {
        super.requestChildFocus(view, view1);
        if (!isInTouchMode() && !mCanSlide)
        {
            boolean flag;
            if (view == mSlideableView)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mPreservedOpenState = flag;
        }
    }

    void setAllChildrenVisible()
    {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            View view = getChildAt(j);
            if (view.getVisibility() == 4)
            {
                view.setVisibility(0);
            }
        }

    }

    public void setCoveredFadeColor(int i)
    {
        mCoveredFadeColor = i;
    }

    public void setPanelSlideListener(PanelSlideListener panelslidelistener)
    {
        mPanelSlideListener = panelslidelistener;
    }

    public void setParallaxDistance(int i)
    {
        mParallaxBy = i;
        requestLayout();
    }

    public void setShadowDrawable(Drawable drawable)
    {
        mShadowDrawable = drawable;
    }

    public void setShadowResource(int i)
    {
        setShadowDrawable(getResources().getDrawable(i));
    }

    public void setSliderFadeColor(int i)
    {
        mSliderFadeColor = i;
    }

    public void smoothSlideClosed()
    {
        closePane();
    }

    public void smoothSlideOpen()
    {
        openPane();
    }

    boolean smoothSlideTo(float f, int i)
    {
        if (!mCanSlide)
        {
            return false;
        }
        LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
        int j = (int)((float)(getPaddingLeft() + layoutparams.leftMargin) + f * (float)mSlideRange);
        if (mDragHelper.smoothSlideViewTo(mSlideableView, j, mSlideableView.getTop()))
        {
            setAllChildrenVisible();
            ViewCompat.postInvalidateOnAnimation(this);
            return true;
        } else
        {
            return false;
        }
    }

    void updateObscuredViewsVisibility(View view)
    {
        int i = getPaddingLeft();
        int j = getWidth() - getPaddingRight();
        int k = getPaddingTop();
        int l = getHeight() - getPaddingBottom();
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        if (view != null && viewIsOpaque(view))
        {
            l1 = view.getLeft();
            k1 = view.getRight();
            j1 = view.getTop();
            i1 = view.getBottom();
        } else
        {
            i1 = 0;
            j1 = 0;
            k1 = 0;
            l1 = 0;
        }
        i2 = getChildCount();
        j2 = 0;
        do
        {
            View view1;
label0:
            {
                if (j2 < i2)
                {
                    view1 = getChildAt(j2);
                    if (view1 != view)
                    {
                        break label0;
                    }
                }
                return;
            }
            int k2 = Math.max(i, view1.getLeft());
            int l2 = Math.max(k, view1.getTop());
            int i3 = Math.min(j, view1.getRight());
            int j3 = Math.min(l, view1.getBottom());
            byte byte0;
            if (k2 >= l1 && l2 >= j1 && i3 <= k1 && j3 <= i1)
            {
                byte0 = 4;
            } else
            {
                byte0 = 0;
            }
            view1.setVisibility(byte0);
            j2++;
        } while (true);
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 17)
        {
            IMPL = new SlidingPanelLayoutImplJBMR1();
        } else
        if (i >= 16)
        {
            IMPL = new SlidingPanelLayoutImplJB();
        } else
        {
            IMPL = new SlidingPanelLayoutImplBase();
        }
    }







/*
    static boolean access$502(SlidingPaneLayout slidingpanelayout, boolean flag)
    {
        slidingpanelayout.mPreservedOpenState = flag;
        return flag;
    }

*/




    private class AccessibilityDelegate extends AccessibilityDelegateCompat
    {

        private final Rect mTmpRect = new Rect();
        final SlidingPaneLayout this$0;

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilitynodeinfocompat, AccessibilityNodeInfoCompat accessibilitynodeinfocompat1)
        {
            Rect rect = mTmpRect;
            accessibilitynodeinfocompat1.getBoundsInParent(rect);
            accessibilitynodeinfocompat.setBoundsInParent(rect);
            accessibilitynodeinfocompat1.getBoundsInScreen(rect);
            accessibilitynodeinfocompat.setBoundsInScreen(rect);
            accessibilitynodeinfocompat.setVisibleToUser(accessibilitynodeinfocompat1.isVisibleToUser());
            accessibilitynodeinfocompat.setPackageName(accessibilitynodeinfocompat1.getPackageName());
            accessibilitynodeinfocompat.setClassName(accessibilitynodeinfocompat1.getClassName());
            accessibilitynodeinfocompat.setContentDescription(accessibilitynodeinfocompat1.getContentDescription());
            accessibilitynodeinfocompat.setEnabled(accessibilitynodeinfocompat1.isEnabled());
            accessibilitynodeinfocompat.setClickable(accessibilitynodeinfocompat1.isClickable());
            accessibilitynodeinfocompat.setFocusable(accessibilitynodeinfocompat1.isFocusable());
            accessibilitynodeinfocompat.setFocused(accessibilitynodeinfocompat1.isFocused());
            accessibilitynodeinfocompat.setAccessibilityFocused(accessibilitynodeinfocompat1.isAccessibilityFocused());
            accessibilitynodeinfocompat.setSelected(accessibilitynodeinfocompat1.isSelected());
            accessibilitynodeinfocompat.setLongClickable(accessibilitynodeinfocompat1.isLongClickable());
            accessibilitynodeinfocompat.addAction(accessibilitynodeinfocompat1.getActions());
            accessibilitynodeinfocompat.setMovementGranularities(accessibilitynodeinfocompat1.getMovementGranularities());
        }

        public boolean filter(View view)
        {
            return isDimmed(view);
        }

        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(view, accessibilityevent);
            accessibilityevent.setClassName(android/support/v4/widget/SlidingPaneLayout.getName());
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
        {
            AccessibilityNodeInfoCompat accessibilitynodeinfocompat1 = AccessibilityNodeInfoCompat.obtain(accessibilitynodeinfocompat);
            super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat1);
            copyNodeInfoNoChildren(accessibilitynodeinfocompat, accessibilitynodeinfocompat1);
            accessibilitynodeinfocompat1.recycle();
            accessibilitynodeinfocompat.setClassName(android/support/v4/widget/SlidingPaneLayout.getName());
            accessibilitynodeinfocompat.setSource(view);
            android.view.ViewParent viewparent = ViewCompat.getParentForAccessibility(view);
            if (viewparent instanceof View)
            {
                accessibilitynodeinfocompat.setParent((View)viewparent);
            }
            int i = getChildCount();
            for (int j = 0; j < i; j++)
            {
                View view1 = getChildAt(j);
                if (!filter(view1) && view1.getVisibility() == 0)
                {
                    ViewCompat.setImportantForAccessibility(view1, 1);
                    accessibilitynodeinfocompat.addChild(view1);
                }
            }

        }

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            if (!filter(view))
            {
                return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
            } else
            {
                return false;
            }
        }

        AccessibilityDelegate()
        {
            this$0 = SlidingPaneLayout.this;
            super();
        }
    }


    private class DragHelperCallback extends ViewDragHelper.Callback
    {

        final SlidingPaneLayout this$0;

        public int clampViewPositionHorizontal(View view, int i, int j)
        {
            LayoutParams layoutparams = (LayoutParams)mSlideableView.getLayoutParams();
            int k = getPaddingLeft() + layoutparams.leftMargin;
            int l = k + mSlideRange;
            return Math.min(Math.max(i, k), l);
        }

        public int getViewHorizontalDragRange(View view)
        {
            return mSlideRange;
        }

        public void onEdgeDragStarted(int i, int j)
        {
            mDragHelper.captureChildView(mSlideableView, j);
        }

        public void onViewCaptured(View view, int i)
        {
            setAllChildrenVisible();
        }

        public void onViewDragStateChanged(int i)
        {
label0:
            {
                if (mDragHelper.getViewDragState() == 0)
                {
                    if (mSlideOffset != 0.0F)
                    {
                        break label0;
                    }
                    updateObscuredViewsVisibility(mSlideableView);
                    dispatchOnPanelClosed(mSlideableView);
                    mPreservedOpenState = false;
                }
                return;
            }
            dispatchOnPanelOpened(mSlideableView);
            mPreservedOpenState = true;
        }

        public void onViewPositionChanged(View view, int i, int j, int k, int l)
        {
            onPanelDragged(i);
            invalidate();
        }

        public void onViewReleased(View view, float f, float f1)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            int i = getPaddingLeft() + layoutparams.leftMargin;
            if (f > 0.0F || f == 0.0F && mSlideOffset > 0.5F)
            {
                i += mSlideRange;
            }
            mDragHelper.settleCapturedViewAt(i, view.getTop());
            invalidate();
        }

        public boolean tryCaptureView(View view, int i)
        {
            if (mIsUnableToDrag)
            {
                return false;
            } else
            {
                return ((LayoutParams)view.getLayoutParams()).slideable;
            }
        }

        private DragHelperCallback()
        {
            this$0 = SlidingPaneLayout.this;
            super();
        }

    }


    private class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        private static final int ATTRS[] = {
            0x1010181
        };
        Paint dimPaint;
        boolean dimWhenOffset;
        boolean slideable;
        public float weight;


        public LayoutParams()
        {
            super(-1, -1);
            weight = 0.0F;
        }

        public LayoutParams(int i, int j)
        {
            super(i, j);
            weight = 0.0F;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            weight = 0.0F;
            TypedArray typedarray = context.obtainStyledAttributes(attributeset, ATTRS);
            weight = typedarray.getFloat(0, 0.0F);
            typedarray.recycle();
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            weight = 0.0F;
            weight = layoutparams.weight;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            weight = 0.0F;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            weight = 0.0F;
        }
    }


    private class DisableLayerRunnable
        implements Runnable
    {

        final View mChildView;
        final SlidingPaneLayout this$0;

        public void run()
        {
            if (mChildView.getParent() == SlidingPaneLayout.this)
            {
                ViewCompat.setLayerType(mChildView, 0, null);
                invalidateChildRegion(mChildView);
            }
            mPostedRunnables.remove(this);
        }

        DisableLayerRunnable(View view)
        {
            this$0 = SlidingPaneLayout.this;
            super();
            mChildView = view;
        }
    }


    private class SlidingPanelLayoutImpl
    {

        public abstract void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view);
    }


    private class PanelSlideListener
    {

        public abstract void onPanelClosed(View view);

        public abstract void onPanelOpened(View view);

        public abstract void onPanelSlide(View view, float f);
    }


    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public SavedState[] newArray(int i)
            {
                return new SavedState[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        boolean isOpen;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            int j;
            if (isOpen)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            isOpen = flag;
        }


        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }


    private class SlidingPanelLayoutImplJBMR1 extends SlidingPanelLayoutImplBase
    {
        private class SlidingPanelLayoutImplBase
            implements SlidingPanelLayoutImpl
        {

            public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
            {
                ViewCompat.postInvalidateOnAnimation(slidingpanelayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }

            SlidingPanelLayoutImplBase()
            {
            }
        }


        public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
        {
            ViewCompat.setLayerPaint(view, ((LayoutParams)view.getLayoutParams()).dimPaint);
        }

        SlidingPanelLayoutImplJBMR1()
        {
        }
    }


    private class SlidingPanelLayoutImplJB extends SlidingPanelLayoutImplBase
    {

        private Method mGetDisplayList;
        private Field mRecreateDisplayList;

        public void invalidateChildRegion(SlidingPaneLayout slidingpanelayout, View view)
        {
            if (mGetDisplayList != null && mRecreateDisplayList != null)
            {
                try
                {
                    mRecreateDisplayList.setBoolean(view, true);
                    mGetDisplayList.invoke(view, (Object[])null);
                }
                catch (Exception exception)
                {
                    Log.e("SlidingPaneLayout", "Error refreshing display list state", exception);
                }
                super.invalidateChildRegion(slidingpanelayout, view);
                return;
            } else
            {
                view.invalidate();
                return;
            }
        }

        SlidingPanelLayoutImplJB()
        {
            try
            {
                mGetDisplayList = android/view/View.getDeclaredMethod("getDisplayList", (Class[])null);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", nosuchmethodexception);
            }
            try
            {
                mRecreateDisplayList = android/view/View.getDeclaredField("mRecreateDisplayList");
                mRecreateDisplayList.setAccessible(true);
                return;
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", nosuchfieldexception);
            }
        }
    }

}
