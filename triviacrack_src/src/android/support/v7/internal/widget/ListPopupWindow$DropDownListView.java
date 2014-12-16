// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

class setCacheColorHint extends ListView
{

    public static final int INVALID_POSITION = -1;
    static final int NO_POSITION = -1;
    private static final String TAG = "ListPopupWindow.DropDownListView";
    private boolean mHijackFocus;
    private boolean mListSelectionHidden;

    private int lookForSelectablePosition(int i, boolean flag)
    {
        ListAdapter listadapter = getAdapter();
        if (listadapter != null && !isInTouchMode()) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        int j;
        j = listadapter.getCount();
        if (getAdapter().areAllItemsEnabled())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            for (i = Math.max(0, i); i < j && !listadapter.isEnabled(i); i++) { }
        } else
        {
            for (i = Math.min(i, j - 1); i >= 0 && !listadapter.isEnabled(i); i--) { }
        }
        if (i >= 0 && i < j) goto _L4; else goto _L3
_L3:
        return -1;
        if (i >= 0 && i < j) goto _L4; else goto _L5
_L5:
        return -1;
    }

    public boolean hasFocus()
    {
        return mHijackFocus || super.hasFocus();
    }

    public boolean hasWindowFocus()
    {
        return mHijackFocus || super.hasWindowFocus();
    }

    public boolean isFocused()
    {
        return mHijackFocus || super.isFocused();
    }

    public boolean isInTouchMode()
    {
        return mHijackFocus && mListSelectionHidden || super.isInTouchMode();
    }

    final int measureHeightOfChildrenCompat(int i, int j, int k, int l, int i1)
    {
        int j1;
        int k1;
        int l1;
        android.graphics.drawable.Drawable drawable;
        ListAdapter listadapter;
        j1 = getListPaddingTop();
        k1 = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        l1 = getDividerHeight();
        drawable = getDivider();
        listadapter = getAdapter();
        if (listadapter != null) goto _L2; else goto _L1
_L1:
        l = j1 + k1;
_L4:
        return l;
_L2:
        int i2 = k1 + j1;
        int j2;
        View view;
        int k2;
        int l2;
        int i3;
        if (l1 <= 0 || drawable == null)
        {
            l1 = 0;
        }
        j2 = 0;
        view = null;
        k2 = 0;
        l2 = listadapter.getCount();
        i3 = 0;
        while (i3 < l2) 
        {
            int j3 = listadapter.getItemViewType(i3);
            View view1;
            android.view.ndow.DropDownListView dropdownlistview;
            int k3;
            int l3;
            int i4;
            if (j3 != k2)
            {
                view1 = null;
                k2 = j3;
            } else
            {
                view1 = view;
            }
            view = listadapter.getView(i3, view1, this);
            dropdownlistview = view.getLayoutParams();
            if (dropdownlistview != null && dropdownlistview.getAdapter > 0)
            {
                k3 = android.view.ndow.DropDownListView.getAdapter(dropdownlistview.getAdapter, 0x40000000);
            } else
            {
                k3 = android.view.ndow.DropDownListView.getAdapter(0, 0);
            }
            view.measure(i, k3);
            if (i3 > 0)
            {
                l3 = i2 + l1;
            } else
            {
                l3 = i2;
            }
            i4 = l3 + view.getMeasuredHeight();
            if (i4 >= l)
            {
                if (i1 >= 0 && i3 > i1 && j2 > 0 && i4 != l)
                {
                    return j2;
                }
                continue; /* Loop/switch isn't completed */
            }
            if (i1 >= 0 && i3 >= i1)
            {
                j2 = i4;
            }
            i3++;
            i2 = i4;
        }
        return i2;
        if (true) goto _L4; else goto _L3
_L3:
    }


/*
    static boolean access$502(I i, boolean flag)
    {
        i.mListSelectionHidden = flag;
        return flag;
    }

*/


    public mListSelectionHidden(Context context, boolean flag)
    {
        super(context, null, android.support.v7.appcompat.tView);
        mHijackFocus = flag;
        setCacheColorHint(0);
    }
}
