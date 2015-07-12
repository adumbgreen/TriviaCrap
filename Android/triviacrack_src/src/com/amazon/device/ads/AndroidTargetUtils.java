// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.Display;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import android.widget.ImageButton;

// Referenced classes of package com.amazon.device.ads:
//            StringUtils

class AndroidTargetUtils
{

    private static boolean isWebViewCheckedAndOk = false;

    private AndroidTargetUtils()
    {
    }

    public static final void disableHardwareAcceleration(View view)
    {
        HoneycombTargetUtils.disableHardwareAcceleration(view);
    }

    public static void editorApply(android.content.SharedPreferences.Editor editor)
    {
        GingerbreadTargetUtils.editorApply(editor);
    }

    public static void enableWebViewDebugging(boolean flag)
    {
        if (isAtLeastAndroidAPI(19))
        {
            KitKatTargetUtils.enableWebViewDebugging(flag);
        }
    }

    public static transient void executeAsyncTask(AsyncTask asynctask, Object aobj[])
    {
        if (isAtLeastAndroidAPI(11))
        {
            HoneycombTargetUtils.executeAsyncTaskWithThreadPooling(asynctask, aobj);
            return;
        } else
        {
            asynctask.execute(aobj);
            return;
        }
    }

    public static BitmapDrawable getNewBitmapDrawable(Resources resources, String s)
    {
        if (isAtLeastAndroidAPI(5))
        {
            return EclairTargetUtils.getNewBitmapDrawable(resources, s);
        } else
        {
            return new BitmapDrawable(s);
        }
    }

    public static int getOrientation(Display display)
    {
        if (isAtLeastAndroidAPI(8))
        {
            return FroyoTargetUtils.getRotation(display);
        } else
        {
            return display.getOrientation();
        }
    }

    public static String getPackageCodePath(Context context)
    {
        return FroyoTargetUtils.getPackageCodePath(context);
    }

    public static void hideActionAndStatusBars(Activity activity)
    {
        if (isAtLeastAndroidAPI(11))
        {
            HoneycombTargetUtils.hideActionBar(activity);
        }
        if (isAtLeastAndroidAPI(16))
        {
            JellyBeanTargetUtils.hideStatusBar(activity);
        }
    }

    public static boolean isAtLeastAndroidAPI(int i)
    {
        return android.os.Build.VERSION.SDK_INT >= i;
    }

    public static boolean isAtOrBelowAndroidAPI(int i)
    {
        return android.os.Build.VERSION.SDK_INT <= i;
    }

    protected static boolean isDatabaseLocked(SQLiteException sqliteexception)
    {
        if (isAtLeastAndroidAPI(11))
        {
            return isInstanceOfSQLiteDatabaseLockedException(sqliteexception);
        } else
        {
            return StringUtils.doesExceptionContainLockedDatabaseMessage(sqliteexception);
        }
    }

    public static boolean isInstanceOfSQLiteDatabaseLockedException(SQLiteException sqliteexception)
    {
        return HoneycombTargetUtils.isInstanceOfSQLiteDatabaseLockedException(sqliteexception);
    }

    public static boolean isWebViewOk(Context context)
    {
        if (!isAtOrBelowAndroidAPI(8) || isWebViewCheckedAndOk) goto _L2; else goto _L1
_L1:
        WebViewDatabase webviewdatabase;
        boolean flag;
        webviewdatabase = WebViewDatabase.getInstance(context);
        flag = false;
        if (webviewdatabase != null) goto _L4; else goto _L3
_L3:
        return flag;
_L4:
        SQLiteDatabase sqlitedatabase = context.openOrCreateDatabase("webviewCache.db", 0, null);
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
        isWebViewCheckedAndOk = true;
_L2:
        return true;
        SQLiteException sqliteexception;
        sqliteexception;
        boolean flag1 = isDatabaseLocked(sqliteexception);
        flag = flag1;
        if (true) goto _L3; else goto _L5
_L5:
        null.close();
        return flag;
        Exception exception;
        exception;
        if (false)
        {
            null.close();
        }
        throw exception;
    }

    public static void removeJavascriptInterface(WebView webview, String s)
    {
        HoneycombTargetUtils.removeJavascriptInterface(webview, s);
    }

    public static void setBackgroundDrawable(View view, Drawable drawable)
    {
        if (isAtLeastAndroidAPI(16))
        {
            JellyBeanTargetUtils.setBackgroundForLinerLayout(view, drawable);
            return;
        } else
        {
            view.setBackgroundDrawable(drawable);
            return;
        }
    }

    public static void setImageButtonAlpha(ImageButton imagebutton, int i)
    {
        if (isAtLeastAndroidAPI(16))
        {
            JellyBeanTargetUtils.setImageButtonAlpha(imagebutton, i);
            return;
        } else
        {
            imagebutton.setAlpha(i);
            return;
        }
    }


    private class HoneycombTargetUtils
    {

        public static final void disableHardwareAcceleration(View view)
        {
            view.setLayerType(1, null);
        }

        protected static final transient void executeAsyncTaskWithThreadPooling(AsyncTask asynctask, Object aobj[])
        {
            asynctask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, aobj);
        }

        protected static void hideActionBar(Activity activity)
        {
            ActionBar actionbar = activity.getActionBar();
            if (actionbar != null)
            {
                actionbar.hide();
            }
        }

        public static boolean isInstanceOfSQLiteDatabaseLockedException(SQLiteException sqliteexception)
        {
            return sqliteexception instanceof SQLiteDatabaseLockedException;
        }

        protected static void removeJavascriptInterface(WebView webview, String s)
        {
            webview.removeJavascriptInterface(s);
        }

        private HoneycombTargetUtils()
        {
        }
    }


    private class GingerbreadTargetUtils
    {

        protected static void editorApply(android.content.SharedPreferences.Editor editor)
        {
            editor.apply();
        }

        private GingerbreadTargetUtils()
        {
        }
    }


    private class KitKatTargetUtils
    {

        public static void enableWebViewDebugging(final boolean enable)
        {
            ThreadUtils.executeOnMainThread(new Runnable() {

                final boolean val$enable;

                public void run()
                {
                    WebView.setWebContentsDebuggingEnabled(enable);
                }

                
                {
                    enable = flag;
                    super();
                }
            });
        }

        private KitKatTargetUtils()
        {
        }
    }


    private class EclairTargetUtils
    {

        protected static BitmapDrawable getNewBitmapDrawable(Resources resources, String s)
        {
            return new BitmapDrawable(resources, s);
        }

        private EclairTargetUtils()
        {
        }
    }


    private class FroyoTargetUtils
    {

        protected static String getPackageCodePath(Context context)
        {
            return context.getPackageCodePath();
        }

        protected static int getRotation(Display display)
        {
            return display.getRotation();
        }

        private FroyoTargetUtils()
        {
        }
    }


    private class JellyBeanTargetUtils
    {

        public static void hideStatusBar(Activity activity)
        {
            activity.getWindow().getDecorView().setSystemUiVisibility(4);
        }

        public static void setBackgroundForLinerLayout(View view, Drawable drawable)
        {
            view.setBackground(drawable);
        }

        protected static void setImageButtonAlpha(ImageButton imagebutton, int i)
        {
            imagebutton.setImageAlpha(i);
        }

        private JellyBeanTargetUtils()
        {
        }
    }

}
