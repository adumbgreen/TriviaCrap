// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.ActionProvider;
import android.support.v7.internal.view.ActionBarPolicy;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.internal.view.menu:
//            BaseMenuPresenter, ActionMenuView, ActionMenuItemView, MenuBuilder, 
//            MenuItemImpl, MenuPopupHelper, SubMenuBuilder, MenuView

public class ActionMenuPresenter extends BaseMenuPresenter
    implements android.support.v4.view.ActionProvider.SubUiVisibilityListener
{

    private static final String TAG = "ActionMenuPresenter";
    private final SparseBooleanArray mActionButtonGroups = new SparseBooleanArray();
    private ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    private View mOverflowButton;
    private OverflowPopup mOverflowPopup;
    final PopupPresenterCallback mPopupPresenterCallback = new PopupPresenterCallback();
    private OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    public ActionMenuPresenter(Context context)
    {
        super(context, android.support.v7.appcompat.R.layout.abc_action_menu_layout, android.support.v7.appcompat.R.layout.abc_action_menu_item_layout);
    }

    private View findViewForItem(MenuItem menuitem)
    {
        ViewGroup viewgroup = (ViewGroup)mMenuView;
        if (viewgroup != null) goto _L2; else goto _L1
_L1:
        View view = null;
_L4:
        return view;
_L2:
        int i = viewgroup.getChildCount();
        int j = 0;
label0:
        do
        {
label1:
            {
                if (j >= i)
                {
                    break label1;
                }
                view = viewgroup.getChildAt(j);
                if ((view instanceof MenuView.ItemView) && ((MenuView.ItemView)view).getItemData() == menuitem)
                {
                    break label0;
                }
                j++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return null;
    }

    public void bindItemView(MenuItemImpl menuitemimpl, MenuView.ItemView itemview)
    {
        itemview.initialize(menuitemimpl, 0);
        ActionMenuView actionmenuview = (ActionMenuView)mMenuView;
        ((ActionMenuItemView)itemview).setItemInvoker(actionmenuview);
    }

    public boolean dismissPopupMenus()
    {
        return hideOverflowMenu() | hideSubMenus();
    }

    public boolean filterLeftoverView(ViewGroup viewgroup, int i)
    {
        if (viewgroup.getChildAt(i) == mOverflowButton)
        {
            return false;
        } else
        {
            return super.filterLeftoverView(viewgroup, i);
        }
    }

    public boolean flagActionItems()
    {
        if (!menuitemimpl.requestsActionButton())
        {
            break MISSING_BLOCK_LABEL_793;
        }
        int i4 = menuitemimpl.getGroupId();
        boolean flag1 = sparsebooleanarray.get(i4);
        boolean flag2;
        boolean flag3;
        int j4;
        int k4;
        if ((l1 > 0 || flag1) && k > 0 && (!mStrictWidthLimit || i3 > 0))
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag2)
        {
            View view = getItemView(menuitemimpl, mScrapActionButtonView, viewgroup);
            if (mScrapActionButtonView == null)
            {
                mScrapActionButtonView = view;
            }
            if (mStrictWidthLimit)
            {
                int j6 = ActionMenuView.measureChildForCells(view, j2, i3, l, 0);
                int k6 = i3 - j6;
                int l4;
                int i5;
                int j5;
                int k5;
                MenuItemImpl menuitemimpl1;
                boolean flag4;
                int l5;
                boolean flag5;
                int i6;
                boolean flag6;
                boolean flag7;
                if (j6 == 0)
                {
                    flag5 = false;
                } else
                {
                    flag5 = flag2;
                }
                l5 = k6;
            } else
            {
                view.measure(l, l);
                flag4 = flag2;
                l5 = i3;
                flag5 = flag4;
            }
            i6 = view.getMeasuredWidth();
            k -= i6;
            if (l2 == 0)
            {
                l2 = i6;
            }
            if (mStrictWidthLimit)
            {
                if (k >= 0)
                {
                    flag7 = true;
                } else
                {
                    flag7 = false;
                }
                flag3 = flag5 & flag7;
                j4 = l2;
                k4 = l5;
            } else
            {
                if (k + l2 > 0)
                {
                    flag6 = true;
                } else
                {
                    flag6 = false;
                }
                flag3 = flag5 & flag6;
                j4 = l2;
                k4 = l5;
            }
        } else
        {
            flag3 = flag2;
            j4 = l2;
            k4 = i3;
        }
        if (!flag3 || i4 == 0) goto _L2; else goto _L1
_L1:
        sparsebooleanarray.put(i4, true);
        l4 = l1;
_L4:
        if (flag3)
        {
            l4--;
        }
        menuitemimpl.setIsActionButton(flag3);
        j3 = j4;
        k3 = k;
        i5 = k4;
        l3 = l4;
        i3 = i5;
        break MISSING_BLOCK_LABEL_344;
        ArrayList arraylist = mMenu.getVisibleItems();
        int i = arraylist.size();
        int j = mMaxItems;
        int k = mActionItemWidthLimit;
        int l = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewgroup = (ViewGroup)mMenuView;
        int i1 = 0;
        int j1 = 0;
        boolean flag = false;
        int k1 = 0;
        while (k1 < i) 
        {
            MenuItemImpl menuitemimpl2 = (MenuItemImpl)arraylist.get(k1);
            int k7;
            if (menuitemimpl2.requiresActionButton())
            {
                i1++;
            } else
            if (menuitemimpl2.requestsActionButton())
            {
                j1++;
            } else
            {
                flag = true;
            }
            int l1;
            SparseBooleanArray sparsebooleanarray;
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            MenuItemImpl menuitemimpl;
            int j3;
            int k3;
            int l3;
            View view1;
            int l6;
            int i7;
            int j7;
            if (mExpandedActionViewsExclusive && menuitemimpl2.isActionViewExpanded())
            {
                k7 = 0;
            } else
            {
                k7 = j;
            }
            k1++;
            j = k7;
        }
        if (mReserveOverflow && (flag || i1 + j1 > j))
        {
            j--;
        }
        l1 = j - i1;
        sparsebooleanarray = mActionButtonGroups;
        sparsebooleanarray.clear();
        if (mStrictWidthLimit)
        {
            i2 = k / mMinCellSize;
            j7 = k % mMinCellSize;
            j2 = mMinCellSize + j7 / i2;
        } else
        {
            i2 = 0;
            j2 = 0;
        }
        k2 = 0;
        l2 = 0;
        i3 = i2;
        while (k2 < i) 
        {
label0:
            {
                {
                    menuitemimpl = (MenuItemImpl)arraylist.get(k2);
                    if (!menuitemimpl.requiresActionButton())
                    {
                        break label0;
                    }
                    view1 = getItemView(menuitemimpl, mScrapActionButtonView, viewgroup);
                    if (mScrapActionButtonView == null)
                    {
                        mScrapActionButtonView = view1;
                    }
                    if (mStrictWidthLimit)
                    {
                        i3 -= ActionMenuView.measureChildForCells(view1, j2, i3, l, 0);
                    } else
                    {
                        view1.measure(l, l);
                    }
                    j3 = view1.getMeasuredWidth();
                    l6 = k - j3;
                    if (l2 != 0)
                    {
                        j3 = l2;
                    }
                    i7 = menuitemimpl.getGroupId();
                    if (i7 != 0)
                    {
                        sparsebooleanarray.put(i7, true);
                    }
                    menuitemimpl.setIsActionButton(true);
                    k3 = l6;
                    l3 = l1;
                }
                k2++;
                k = k3;
                l1 = l3;
                l2 = j3;
            }
        }
        return true;
_L2:
        if (flag1)
        {
            sparsebooleanarray.put(i4, false);
            j5 = l1;
            for (k5 = 0; k5 < k2; k5++)
            {
                menuitemimpl1 = (MenuItemImpl)arraylist.get(k5);
                if (menuitemimpl1.getGroupId() == i4)
                {
                    if (menuitemimpl1.isActionButton())
                    {
                        j5++;
                    }
                    menuitemimpl1.setIsActionButton(false);
                }
            }

            l4 = j5;
            continue; /* Loop/switch isn't completed */
        }
        l4 = l1;
        if (true) goto _L4; else goto _L3
_L3:
        j3 = l2;
        k3 = k;
        l3 = l1;
        break MISSING_BLOCK_LABEL_344;
    }

    public View getItemView(MenuItemImpl menuitemimpl, View view, ViewGroup viewgroup)
    {
        View view1 = menuitemimpl.getActionView();
        if (view1 == null || menuitemimpl.hasCollapsibleActionView())
        {
            if (!(view instanceof ActionMenuItemView))
            {
                view = null;
            }
            view1 = super.getItemView(menuitemimpl, view, viewgroup);
        }
        byte byte0;
        ActionMenuView actionmenuview;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (menuitemimpl.isActionViewExpanded())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
        actionmenuview = (ActionMenuView)viewgroup;
        layoutparams = view1.getLayoutParams();
        if (!actionmenuview.checkLayoutParams(layoutparams))
        {
            view1.setLayoutParams(actionmenuview.generateLayoutParams(layoutparams));
        }
        return view1;
    }

    public MenuView getMenuView(ViewGroup viewgroup)
    {
        MenuView menuview = super.getMenuView(viewgroup);
        ((ActionMenuView)menuview).setPresenter(this);
        return menuview;
    }

    public boolean hideOverflowMenu()
    {
        if (mPostedOpenRunnable != null && mMenuView != null)
        {
            ((View)mMenuView).removeCallbacks(mPostedOpenRunnable);
            mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowpopup = mOverflowPopup;
        if (overflowpopup != null)
        {
            overflowpopup.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean hideSubMenus()
    {
        if (mActionButtonPopup != null)
        {
            mActionButtonPopup.dismiss();
            return true;
        } else
        {
            return false;
        }
    }

    public void initForMenu(Context context, MenuBuilder menubuilder)
    {
        super.initForMenu(context, menubuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionbarpolicy = ActionBarPolicy.get(context);
        if (!mReserveOverflowSet)
        {
            mReserveOverflow = actionbarpolicy.showsOverflowMenuButton();
        }
        if (!mWidthLimitSet)
        {
            mWidthLimit = actionbarpolicy.getEmbeddedMenuWidthLimit();
        }
        if (!mMaxItemsSet)
        {
            mMaxItems = actionbarpolicy.getMaxActionButtons();
        }
        int i = mWidthLimit;
        if (mReserveOverflow)
        {
            if (mOverflowButton == null)
            {
                mOverflowButton = new OverflowMenuButton(mSystemContext);
                int j = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                mOverflowButton.measure(j, j);
            }
            i -= mOverflowButton.getMeasuredWidth();
        } else
        {
            mOverflowButton = null;
        }
        mActionItemWidthLimit = i;
        mMinCellSize = (int)(56F * resources.getDisplayMetrics().density);
        mScrapActionButtonView = null;
    }

    public boolean isOverflowMenuShowing()
    {
        return mOverflowPopup != null && mOverflowPopup.isShowing();
    }

    public boolean isOverflowReserved()
    {
        return mReserveOverflow;
    }

    public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
    {
        dismissPopupMenus();
        super.onCloseMenu(menubuilder, flag);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (!mMaxItemsSet)
        {
            mMaxItems = mContext.getResources().getInteger(android.support.v7.appcompat.R.integer.abc_max_action_buttons);
        }
        if (mMenu != null)
        {
            mMenu.onItemsChanged(true);
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        if (savedstate.openSubMenuId > 0)
        {
            MenuItem menuitem = mMenu.findItem(savedstate.openSubMenuId);
            if (menuitem != null)
            {
                onSubMenuSelected((SubMenuBuilder)menuitem.getSubMenu());
            }
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState();
        savedstate.openSubMenuId = mOpenSubMenuId;
        return savedstate;
    }

    public boolean onSubMenuSelected(SubMenuBuilder submenubuilder)
    {
        if (!submenubuilder.hasVisibleItems())
        {
            return false;
        }
        SubMenuBuilder submenubuilder1;
        for (submenubuilder1 = submenubuilder; submenubuilder1.getParentMenu() != mMenu; submenubuilder1 = (SubMenuBuilder)submenubuilder1.getParentMenu()) { }
        if (findViewForItem(submenubuilder1.getItem()) == null)
        {
            if (mOverflowButton == null)
            {
                return false;
            }
            View _tmp = mOverflowButton;
        }
        mOpenSubMenuId = submenubuilder.getItem().getItemId();
        mActionButtonPopup = new ActionButtonSubmenu(submenubuilder);
        mActionButtonPopup.show(null);
        super.onSubMenuSelected(submenubuilder);
        return true;
    }

    public void onSubUiVisibilityChanged(boolean flag)
    {
        if (flag)
        {
            super.onSubMenuSelected(null);
            return;
        } else
        {
            mMenu.close(false);
            return;
        }
    }

    public void setExpandedActionViewsExclusive(boolean flag)
    {
        mExpandedActionViewsExclusive = flag;
    }

    public void setItemLimit(int i)
    {
        mMaxItems = i;
        mMaxItemsSet = true;
    }

    public void setReserveOverflow(boolean flag)
    {
        mReserveOverflow = flag;
        mReserveOverflowSet = true;
    }

    public void setWidthLimit(int i, boolean flag)
    {
        mWidthLimit = i;
        mStrictWidthLimit = flag;
        mWidthLimitSet = true;
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuitemimpl)
    {
        return menuitemimpl.isActionButton();
    }

    public boolean showOverflowMenu()
    {
        if (mReserveOverflow && !isOverflowMenuShowing() && mMenu != null && mMenuView != null && mPostedOpenRunnable == null)
        {
            mPostedOpenRunnable = new OpenOverflowRunnable(new OverflowPopup(mContext, mMenu, mOverflowButton, true));
            ((View)mMenuView).post(mPostedOpenRunnable);
            super.onSubMenuSelected(null);
            return true;
        } else
        {
            return false;
        }
    }

    public void updateMenuView(boolean flag)
    {
        int i = 1;
        super.updateMenuView(flag);
        if (mMenuView == null)
        {
            return;
        }
        if (mMenu != null)
        {
            ArrayList arraylist1 = mMenu.getActionItems();
            int i1 = arraylist1.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                ActionProvider actionprovider = ((MenuItemImpl)arraylist1.get(j1)).getSupportActionProvider();
                if (actionprovider != null)
                {
                    actionprovider.setSubUiVisibilityListener(this);
                }
            }

        }
        ArrayList arraylist;
        boolean flag1;
        int j;
        if (mMenu != null)
        {
            arraylist = mMenu.getNonActionItems();
        } else
        {
            arraylist = null;
        }
        flag1 = mReserveOverflow;
        j = 0;
        if (flag1)
        {
            j = 0;
            if (arraylist != null)
            {
                int k = arraylist.size();
                if (k == i)
                {
                    ViewGroup viewgroup;
                    ActionMenuView actionmenuview;
                    int l;
                    if (!((MenuItemImpl)arraylist.get(0)).isActionViewExpanded())
                    {
                        l = i;
                    } else
                    {
                        l = 0;
                    }
                    j = l;
                } else
                {
                    if (k <= 0)
                    {
                        i = 0;
                    }
                    j = i;
                }
            }
        }
        if (j == 0) goto _L2; else goto _L1
_L1:
        if (mOverflowButton == null)
        {
            mOverflowButton = new OverflowMenuButton(mSystemContext);
        }
        viewgroup = (ViewGroup)mOverflowButton.getParent();
        if (viewgroup != mMenuView)
        {
            if (viewgroup != null)
            {
                viewgroup.removeView(mOverflowButton);
            }
            actionmenuview = (ActionMenuView)mMenuView;
            actionmenuview.addView(mOverflowButton, actionmenuview.generateOverflowButtonLayoutParams());
        }
_L4:
        ((ActionMenuView)mMenuView).setOverflowReserved(mReserveOverflow);
        return;
_L2:
        if (mOverflowButton != null && mOverflowButton.getParent() == mMenuView)
        {
            ((ViewGroup)mMenuView).removeView(mOverflowButton);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }


/*
    static OverflowPopup access$102(ActionMenuPresenter actionmenupresenter, OverflowPopup overflowpopup)
    {
        actionmenupresenter.mOverflowPopup = overflowpopup;
        return overflowpopup;
    }

*/


/*
    static ActionButtonSubmenu access$202(ActionMenuPresenter actionmenupresenter, ActionButtonSubmenu actionbuttonsubmenu)
    {
        actionmenupresenter.mActionButtonPopup = actionbuttonsubmenu;
        return actionbuttonsubmenu;
    }

*/


/*
    static OpenOverflowRunnable access$302(ActionMenuPresenter actionmenupresenter, OpenOverflowRunnable openoverflowrunnable)
    {
        actionmenupresenter.mPostedOpenRunnable = openoverflowrunnable;
        return openoverflowrunnable;
    }

*/

    private class PopupPresenterCallback
        implements MenuPresenter.Callback
    {

        final ActionMenuPresenter this$0;

        public void onCloseMenu(MenuBuilder menubuilder, boolean flag)
        {
            if (menubuilder instanceof SubMenuBuilder)
            {
                ((SubMenuBuilder)menubuilder).getRootMenu().close(false);
            }
        }

        public boolean onOpenSubMenu(MenuBuilder menubuilder)
        {
            if (menubuilder == null)
            {
                return false;
            } else
            {
                mOpenSubMenuId = ((SubMenuBuilder)menubuilder).getItem().getItemId();
                return false;
            }
        }

        private PopupPresenterCallback()
        {
            this$0 = ActionMenuPresenter.this;
            super();
        }

    }


    private class ActionButtonSubmenu extends MenuDialogHelper
    {

        final ActionMenuPresenter this$0;

        public void onDismiss(DialogInterface dialoginterface)
        {
            super.onDismiss(dialoginterface);
            mActionButtonPopup = null;
            mOpenSubMenuId = 0;
        }

        public ActionButtonSubmenu(SubMenuBuilder submenubuilder)
        {
            this$0 = ActionMenuPresenter.this;
            super(submenubuilder);
            setCallback(mPopupPresenterCallback);
        }
    }


    private class OverflowMenuButton extends ImageButton
        implements ActionMenuView.ActionMenuChildView
    {

        final ActionMenuPresenter this$0;

        public boolean needsDividerAfter()
        {
            return false;
        }

        public boolean needsDividerBefore()
        {
            return false;
        }

        public boolean performClick()
        {
            if (super.performClick())
            {
                return true;
            } else
            {
                playSoundEffect(0);
                showOverflowMenu();
                return true;
            }
        }

        public OverflowMenuButton(Context context)
        {
            this$0 = ActionMenuPresenter.this;
            super(context, null, android.support.v7.appcompat.R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
        }
    }


    private class OverflowPopup extends MenuPopupHelper
    {

        final ActionMenuPresenter this$0;

        public void onDismiss()
        {
            super.onDismiss();
            mMenu.close();
            mOverflowPopup = null;
        }

        public OverflowPopup(Context context, MenuBuilder menubuilder, View view, boolean flag)
        {
            this$0 = ActionMenuPresenter.this;
            super(context, menubuilder, view, flag);
            setCallback(mPopupPresenterCallback);
        }
    }


    private class SavedState
        implements Parcelable
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
        public int openSubMenuId;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(openSubMenuId);
        }


        SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            openSubMenuId = parcel.readInt();
        }
    }


    private class OpenOverflowRunnable
        implements Runnable
    {

        private OverflowPopup mPopup;
        final ActionMenuPresenter this$0;

        public void run()
        {
            mMenu.changeMenuMode();
            View view = (View)mMenuView;
            if (view != null && view.getWindowToken() != null && mPopup.tryShow())
            {
                mOverflowPopup = mPopup;
            }
            mPostedOpenRunnable = null;
        }

        public OpenOverflowRunnable(OverflowPopup overflowpopup)
        {
            this$0 = ActionMenuPresenter.this;
            super();
            mPopup = overflowpopup;
        }
    }

}
