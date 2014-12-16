// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v7.internal.widget.LinearLayoutICS;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v7.internal.view.menu:
//            MenuView, ActionMenuItemView, MenuBuilder, ActionMenuPresenter, 
//            MenuItemImpl

public class ActionMenuView extends LinearLayoutICS
    implements MenuBuilder.ItemInvoker, MenuView
{

    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private int mMaxItemHeight;
    private int mMeasuredExtraWidth;
    private MenuBuilder mMenu;
    private int mMinCellSize;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public ActionMenuView(Context context)
    {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        mMinCellSize = (int)(56F * f);
        mGeneratedItemPadding = (int)(f * 4F);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v7.appcompat.R.styleable.ActionBar, android.support.v7.appcompat.R.attr.actionBarStyle, 0);
        mMaxItemHeight = typedarray.getDimensionPixelSize(1, 0);
        typedarray.recycle();
    }

    static int measureChildForCells(View view, int i, int j, int k, int l)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int i1 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(k) - l, android.view.View.MeasureSpec.getMode(k));
        ActionMenuItemView actionmenuitemview;
        boolean flag;
        int j1;
        boolean flag1;
        boolean flag2;
        if (view instanceof ActionMenuItemView)
        {
            actionmenuitemview = (ActionMenuItemView)view;
        } else
        {
            actionmenuitemview = null;
        }
        if (actionmenuitemview != null && actionmenuitemview.hasText())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j > 0 && (!flag || j >= 2))
        {
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i * j, 0x80000000), i1);
            int k1 = view.getMeasuredWidth();
            j1 = k1 / i;
            if (k1 % i != 0)
            {
                j1++;
            }
            if (flag && j1 < 2)
            {
                j1 = 2;
            }
        } else
        {
            j1 = 0;
        }
        flag1 = layoutparams.isOverflowButton;
        flag2 = false;
        if (!flag1)
        {
            flag2 = false;
            if (flag)
            {
                flag2 = true;
            }
        }
        layoutparams.expandable = flag2;
        layoutparams.cellsUsed = j1;
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j1 * i, 0x40000000), i1);
        return j1;
    }

    private void onMeasureExactFormat(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(j);
        int l = android.view.View.MeasureSpec.getSize(i);
        int i1 = android.view.View.MeasureSpec.getSize(j);
        int j1 = getPaddingLeft() + getPaddingRight();
        int k1 = getPaddingTop() + getPaddingBottom();
        int l1;
        int i2;
        int j2;
        int k2;
        if (k == 0x40000000)
        {
            l1 = android.view.View.MeasureSpec.makeMeasureSpec(i1 - k1, 0x40000000);
        } else
        {
            l1 = android.view.View.MeasureSpec.makeMeasureSpec(Math.min(mMaxItemHeight, i1 - k1), 0x80000000);
        }
        i2 = l - j1;
        j2 = i2 / mMinCellSize;
        k2 = i2 % mMinCellSize;
        if (j2 == 0)
        {
            setMeasuredDimension(i2, 0);
            return;
        }
        int l2 = mMinCellSize + k2 / j2;
        int i3 = 0;
        int j3 = 0;
        int k3 = 0;
        int l3 = 0;
        boolean flag = false;
        long l4 = 0L;
        int i4 = getChildCount();
        int j4 = 0;
        while (j4 < i4) 
        {
            View view3 = getChildAt(j4);
            int l11;
            int i12;
            int j12;
            int k12;
            long l13;
            if (view3.getVisibility() == 8)
            {
                k12 = l3;
                l13 = l4;
                i12 = i3;
                j12 = j2;
                l11 = j3;
            } else
            {
                boolean flag6 = view3 instanceof ActionMenuItemView;
                int k9 = l3 + 1;
                if (flag6)
                {
                    view3.setPadding(mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
                }
                LayoutParams layoutparams4 = (LayoutParams)view3.getLayoutParams();
                layoutparams4.expanded = false;
                layoutparams4.extraPixels = 0;
                layoutparams4.cellsUsed = 0;
                layoutparams4.expandable = false;
                layoutparams4.leftMargin = 0;
                layoutparams4.rightMargin = 0;
                boolean flag7;
                int i10;
                int j10;
                int k10;
                int l10;
                boolean flag8;
                int i11;
                int j11;
                int k11;
                if (flag6 && ((ActionMenuItemView)view3).hasText())
                {
                    flag7 = true;
                } else
                {
                    flag7 = false;
                }
                layoutparams4.preventEdgeOffset = flag7;
                if (layoutparams4.isOverflowButton)
                {
                    i10 = 1;
                } else
                {
                    i10 = j2;
                }
                j10 = measureChildForCells(view3, l2, i10, l1, k1);
                k10 = Math.max(j3, j10);
                boolean flag1;
                boolean flag2;
                long l5;
                int k4;
                long l6;
                boolean flag3;
                boolean flag4;
                int i5;
                int j5;
                View view;
                LayoutParams layoutparams;
                int k5;
                float f;
                float f1;
                int i6;
                int j6;
                View view1;
                LayoutParams layoutparams1;
                boolean flag5;
                int k6;
                long l7;
                int i7;
                int j7;
                long l8;
                int k7;
                int i8;
                int j8;
                long l9;
                View view2;
                LayoutParams layoutparams2;
                int k8;
                LayoutParams layoutparams3;
                int i9;
                int j9;
                if (layoutparams4.expandable)
                {
                    l10 = k3 + 1;
                } else
                {
                    l10 = k3;
                }
                if (layoutparams4.isOverflowButton)
                {
                    flag8 = true;
                } else
                {
                    flag8 = flag;
                }
                i11 = j2 - j10;
                j11 = view3.getMeasuredHeight();
                k11 = Math.max(i3, j11);
                if (j10 == 1)
                {
                    long l14 = l4 | (long)(1 << j4);
                    i12 = k11;
                    j12 = i11;
                    k12 = k9;
                    flag = flag8;
                    l11 = k10;
                    k3 = l10;
                    l13 = l14;
                } else
                {
                    k3 = l10;
                    l11 = k10;
                    long l12 = l4;
                    i12 = k11;
                    j12 = i11;
                    flag = flag8;
                    k12 = k9;
                    l13 = l12;
                }
            }
            j4++;
            j3 = l11;
            i3 = i12;
            j2 = j12;
            l4 = l13;
            l3 = k12;
        }
        if (flag && l3 == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        flag2 = false;
        l5 = l4;
        k4 = j2;
        if (k3 <= 0 || k4 <= 0)
        {
            break MISSING_BLOCK_LABEL_1328;
        }
        k6 = 0x7fffffff;
        l7 = 0L;
        i7 = 0;
        j7 = 0;
        while (j7 < i4) 
        {
            layoutparams3 = (LayoutParams)getChildAt(j7).getLayoutParams();
            if (!layoutparams3.expandable)
            {
                i9 = i7;
                j9 = k6;
            } else
            if (layoutparams3.cellsUsed < k6)
            {
                j9 = layoutparams3.cellsUsed;
                l7 = 1 << j7;
                i9 = 1;
            } else
            if (layoutparams3.cellsUsed == k6)
            {
                l7 |= 1 << j7;
                i9 = i7 + 1;
                j9 = k6;
            } else
            {
                i9 = i7;
                j9 = k6;
            }
            j7++;
            k6 = j9;
            i7 = i9;
        }
        l8 = l5 | l7;
        if (i7 <= k4) goto _L2; else goto _L1
_L1:
        l6 = l8;
_L7:
        if (!flag && l3 == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (k4 > 0 && l6 != 0L)
        {
            k5 = l3 - 1;
            if (k4 < k5 || flag3 || j3 > 1)
            {
                break MISSING_BLOCK_LABEL_711;
            }
        }
        flag4 = flag2;
        i5 = k4;
          goto _L3
_L2:
        k7 = k6 + 1;
        i8 = 0;
        j8 = k4;
        l9 = l8;
        while (i8 < i4) 
        {
            view2 = getChildAt(i8);
            layoutparams2 = (LayoutParams)view2.getLayoutParams();
            if ((l7 & (long)(1 << i8)) == 0L)
            {
                if (layoutparams2.cellsUsed == k7)
                {
                    l9 |= 1 << i8;
                    k8 = j8;
                } else
                {
                    k8 = j8;
                }
            } else
            {
                if (flag1 && layoutparams2.preventEdgeOffset && j8 == 1)
                {
                    view2.setPadding(l2 + mGeneratedItemPadding, 0, mGeneratedItemPadding, 0);
                }
                layoutparams2.cellsUsed = 1 + layoutparams2.cellsUsed;
                layoutparams2.expanded = true;
                k8 = j8 - 1;
            }
            i8++;
            j8 = k8;
        }
        l5 = l9;
        flag2 = true;
        k4 = j8;
        break MISSING_BLOCK_LABEL_500;
        f = Long.bitCount(l6);
        if (!flag3)
        {
label0:
            {
                if ((1L & l6) != 0L && !((LayoutParams)getChildAt(0).getLayoutParams()).preventEdgeOffset)
                {
                    f -= 0.5F;
                }
                if ((l6 & (long)(1 << i4 - 1)) != 0L && !((LayoutParams)getChildAt(i4 - 1).getLayoutParams()).preventEdgeOffset)
                {
                    f1 = f - 0.5F;
                    break label0;
                }
            }
        }
        f1 = f;
        if (f1 > 0.0F)
        {
            i6 = (int)((float)(k4 * l2) / f1);
        } else
        {
            i6 = 0;
        }
        j6 = 0;
        flag4 = flag2;
        while (j6 < i4) 
        {
            if ((l6 & (long)(1 << j6)) == 0L)
            {
                flag5 = flag4;
            } else
            {
                view1 = getChildAt(j6);
                layoutparams1 = (LayoutParams)view1.getLayoutParams();
                if (view1 instanceof ActionMenuItemView)
                {
                    layoutparams1.extraPixels = i6;
                    layoutparams1.expanded = true;
                    if (j6 == 0 && !layoutparams1.preventEdgeOffset)
                    {
                        layoutparams1.leftMargin = -i6 / 2;
                    }
                    flag5 = true;
                } else
                if (layoutparams1.isOverflowButton)
                {
                    layoutparams1.extraPixels = i6;
                    layoutparams1.expanded = true;
                    layoutparams1.rightMargin = -i6 / 2;
                    flag5 = true;
                } else
                {
                    if (j6 != 0)
                    {
                        layoutparams1.leftMargin = i6 / 2;
                    }
                    if (j6 != i4 - 1)
                    {
                        layoutparams1.rightMargin = i6 / 2;
                    }
                    flag5 = flag4;
                }
            }
            j6++;
            flag4 = flag5;
        }
        i5 = 0;
_L5:
        if (flag4)
        {
            j5 = 0;
            while (j5 < i4) 
            {
                view = getChildAt(j5);
                layoutparams = (LayoutParams)view.getLayoutParams();
                if (layoutparams.expanded)
                {
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l2 * layoutparams.cellsUsed + layoutparams.extraPixels, 0x40000000), l1);
                }
                j5++;
            }
        }
        if (k == 0x40000000)
        {
            i3 = i1;
        }
        setMeasuredDimension(i2, i3);
        mMeasuredExtraWidth = i5 * l2;
        return;
_L3:
        if (true) goto _L5; else goto _L4
_L4:
        l6 = l5;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams != null && (layoutparams instanceof LayoutParams);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams()
    {
        LayoutParams layoutparams = new LayoutParams(-2, -2);
        layoutparams.gravity = 16;
        return layoutparams;
    }

    protected volatile android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    protected volatile android.widget.LinearLayout.LayoutParams generateDefaultLayoutParams()
    {
        return generateDefaultLayoutParams();
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof LayoutParams)
        {
            LayoutParams layoutparams1 = new LayoutParams((LayoutParams)layoutparams);
            if (layoutparams1.gravity <= 0)
            {
                layoutparams1.gravity = 16;
            }
            return layoutparams1;
        } else
        {
            return generateDefaultLayoutParams();
        }
    }

    public volatile android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public volatile android.widget.LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return generateLayoutParams(attributeset);
    }

    protected volatile android.widget.LinearLayout.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return generateLayoutParams(layoutparams);
    }

    public LayoutParams generateOverflowButtonLayoutParams()
    {
        LayoutParams layoutparams = generateDefaultLayoutParams();
        layoutparams.isOverflowButton = true;
        return layoutparams;
    }

    public int getWindowAnimations()
    {
        return 0;
    }

    protected boolean hasSupportDividerBeforeChildAt(int i)
    {
        View view = getChildAt(i - 1);
        View view1 = getChildAt(i);
        int j = getChildCount();
        boolean flag = false;
        if (i < j)
        {
            boolean flag1 = view instanceof ActionMenuChildView;
            flag = false;
            if (flag1)
            {
                flag = false | ((ActionMenuChildView)view).needsDividerAfter();
            }
        }
        if (i > 0 && (view1 instanceof ActionMenuChildView))
        {
            return flag | ((ActionMenuChildView)view1).needsDividerBefore();
        } else
        {
            return flag;
        }
    }

    public void initialize(MenuBuilder menubuilder)
    {
        mMenu = menubuilder;
    }

    public boolean invokeItem(MenuItemImpl menuitemimpl)
    {
        return mMenu.performItemAction(menuitemimpl, 0);
    }

    public boolean isExpandedFormat()
    {
        return mFormatItems;
    }

    public boolean isOverflowReserved()
    {
        return mReserveOverflow;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        mPresenter.updateMenuView(false);
        if (mPresenter != null && mPresenter.isOverflowMenuShowing())
        {
            mPresenter.hideOverflowMenu();
            mPresenter.showOverflowMenu();
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        mPresenter.dismissPopupMenus();
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        if (!mFormatItems)
        {
            super.onLayout(flag, i, j, k, l);
        } else
        {
            int i1 = getChildCount();
            int j1 = (j + l) / 2;
            int k1 = getSupportDividerWidth();
            int l1 = 0;
            int i2 = 0;
            int j2 = k - i - getPaddingRight() - getPaddingLeft();
            boolean flag1 = false;
            int k2 = 0;
            while (k2 < i1) 
            {
                View view2 = getChildAt(k2);
                int k7;
                int l7;
                int i8;
                boolean flag3;
                if (view2.getVisibility() == 8)
                {
                    flag3 = flag1;
                    k7 = j2;
                    l7 = i2;
                    i8 = l1;
                } else
                {
                    LayoutParams layoutparams1 = (LayoutParams)view2.getLayoutParams();
                    if (layoutparams1.isOverflowButton)
                    {
                        int j8 = view2.getMeasuredWidth();
                        if (hasSupportDividerBeforeChildAt(k2))
                        {
                            j8 += k1;
                        }
                        int k8 = view2.getMeasuredHeight();
                        int l8 = getWidth() - getPaddingRight() - layoutparams1.rightMargin;
                        int i9 = l8 - j8;
                        int j9 = j1 - k8 / 2;
                        view2.layout(i9, j9, l8, k8 + j9);
                        k7 = j2 - j8;
                        flag3 = true;
                        l7 = i2;
                        i8 = l1;
                    } else
                    {
                        int k6 = view2.getMeasuredWidth() + layoutparams1.leftMargin + layoutparams1.rightMargin;
                        int l6 = l1 + k6;
                        int i7 = j2 - k6;
                        if (hasSupportDividerBeforeChildAt(k2))
                        {
                            l6 += k1;
                        }
                        int j7 = i2 + 1;
                        boolean flag2 = flag1;
                        k7 = i7;
                        l7 = j7;
                        i8 = l6;
                        flag3 = flag2;
                    }
                }
                k2++;
                l1 = i8;
                i2 = l7;
                j2 = k7;
                flag1 = flag3;
            }
            if (i1 == 1 && !flag1)
            {
                View view1 = getChildAt(0);
                int k5 = view1.getMeasuredWidth();
                int l5 = view1.getMeasuredHeight();
                int i6 = (k - i) / 2 - k5 / 2;
                int j6 = j1 - l5 / 2;
                view1.layout(i6, j6, k5 + i6, l5 + j6);
                return;
            }
            int l2;
            int i3;
            int j3;
            int k3;
            int l3;
            int i4;
            if (flag1)
            {
                l2 = 0;
            } else
            {
                l2 = 1;
            }
            i3 = i2 - l2;
            if (i3 > 0)
            {
                j3 = j2 / i3;
            } else
            {
                j3 = 0;
            }
            k3 = Math.max(0, j3);
            l3 = getPaddingLeft();
            i4 = 0;
            while (i4 < i1) 
            {
                View view = getChildAt(i4);
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                int j4;
                if (view.getVisibility() != 8)
                {
                    if (layoutparams.isOverflowButton)
                    {
                        j4 = l3;
                    } else
                    {
                        int k4 = l3 + layoutparams.leftMargin;
                        int l4 = view.getMeasuredWidth();
                        int i5 = view.getMeasuredHeight();
                        int j5 = j1 - i5 / 2;
                        view.layout(k4, j5, k4 + l4, i5 + j5);
                        j4 = k4 + (k3 + (l4 + layoutparams.rightMargin));
                    }
                } else
                {
                    j4 = l3;
                }
                i4++;
                l3 = j4;
            }
        }
    }

    protected void onMeasure(int i, int j)
    {
        boolean flag = mFormatItems;
        boolean flag1;
        int k;
        if (android.view.View.MeasureSpec.getMode(i) == 0x40000000)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mFormatItems = flag1;
        if (flag != mFormatItems)
        {
            mFormatItemsWidth = 0;
        }
        k = android.view.View.MeasureSpec.getMode(i);
        if (mFormatItems && mMenu != null && k != mFormatItemsWidth)
        {
            mFormatItemsWidth = k;
            mMenu.onItemsChanged(true);
        }
        if (mFormatItems)
        {
            onMeasureExactFormat(i, j);
            return;
        }
        int l = getChildCount();
        for (int i1 = 0; i1 < l; i1++)
        {
            LayoutParams layoutparams = (LayoutParams)getChildAt(i1).getLayoutParams();
            layoutparams.rightMargin = 0;
            layoutparams.leftMargin = 0;
        }

        super.onMeasure(i, j);
    }

    public void setOverflowReserved(boolean flag)
    {
        mReserveOverflow = flag;
    }

    public void setPresenter(ActionMenuPresenter actionmenupresenter)
    {
        mPresenter = actionmenupresenter;
    }

    private class LayoutParams extends android.widget.LinearLayout.LayoutParams
    {

        public int cellsUsed;
        public boolean expandable;
        public boolean expanded;
        public int extraPixels;
        public boolean isOverflowButton;
        public boolean preventEdgeOffset;

        public LayoutParams(int i, int j)
        {
            super(i, j);
            isOverflowButton = false;
        }

        public LayoutParams(int i, int j, boolean flag)
        {
            super(i, j);
            isOverflowButton = flag;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            isOverflowButton = layoutparams.isOverflowButton;
        }
    }


    private class ActionMenuChildView
    {

        public abstract boolean needsDividerAfter();

        public abstract boolean needsDividerBefore();
    }

}
