// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Parcelable;
import android.view.ViewGroup;

// Referenced classes of package android.support.v7.internal.view.menu:
//            MenuBuilder, MenuItemImpl, MenuView, SubMenuBuilder

public interface MenuPresenter
{

    public abstract boolean collapseItemActionView(MenuBuilder menubuilder, MenuItemImpl menuitemimpl);

    public abstract boolean expandItemActionView(MenuBuilder menubuilder, MenuItemImpl menuitemimpl);

    public abstract boolean flagActionItems();

    public abstract int getId();

    public abstract MenuView getMenuView(ViewGroup viewgroup);

    public abstract void initForMenu(Context context, MenuBuilder menubuilder);

    public abstract void onCloseMenu(MenuBuilder menubuilder, boolean flag);

    public abstract void onRestoreInstanceState(Parcelable parcelable);

    public abstract Parcelable onSaveInstanceState();

    public abstract boolean onSubMenuSelected(SubMenuBuilder submenubuilder);

    public abstract void setCallback(Callback callback);

    public abstract void updateMenuView(boolean flag);
}
