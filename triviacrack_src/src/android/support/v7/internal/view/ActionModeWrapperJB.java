// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.view;

import android.content.Context;
import android.view.ActionMode;

// Referenced classes of package android.support.v7.internal.view:
//            ActionModeWrapper

public class ActionModeWrapperJB extends ActionModeWrapper
{

    public ActionModeWrapperJB(Context context, ActionMode actionmode)
    {
        super(context, actionmode);
    }

    public boolean getTitleOptionalHint()
    {
        return mWrappedObject.getTitleOptionalHint();
    }

    public boolean isTitleOptional()
    {
        return mWrappedObject.isTitleOptional();
    }

    public void setTitleOptionalHint(boolean flag)
    {
        mWrappedObject.setTitleOptionalHint(flag);
    }
}
