// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.content.IntentCompat;

public class NavUtils
{

    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    private NavUtils()
    {
    }

    public static Intent getParentActivityIntent(Activity activity)
    {
        return IMPL.getParentActivityIntent(activity);
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentname)
    {
        String s = getParentActivityName(context, componentname);
        if (s == null)
        {
            return null;
        }
        ComponentName componentname1 = new ComponentName(componentname.getPackageName(), s);
        if (getParentActivityName(context, componentname1) == null)
        {
            return IntentCompat.makeMainActivity(componentname1);
        } else
        {
            return (new Intent()).setComponent(componentname1);
        }
    }

    public static Intent getParentActivityIntent(Context context, Class class1)
    {
        String s = getParentActivityName(context, new ComponentName(context, class1));
        if (s == null)
        {
            return null;
        }
        ComponentName componentname = new ComponentName(context, s);
        if (getParentActivityName(context, componentname) == null)
        {
            return IntentCompat.makeMainActivity(componentname);
        } else
        {
            return (new Intent()).setComponent(componentname);
        }
    }

    public static String getParentActivityName(Activity activity)
    {
        String s;
        try
        {
            s = getParentActivityName(((Context) (activity)), activity.getComponentName());
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new IllegalArgumentException(namenotfoundexception);
        }
        return s;
    }

    public static String getParentActivityName(Context context, ComponentName componentname)
    {
        ActivityInfo activityinfo = context.getPackageManager().getActivityInfo(componentname, 128);
        return IMPL.getParentActivityName(context, activityinfo);
    }

    public static void navigateUpFromSameTask(Activity activity)
    {
        Intent intent = getParentActivityIntent(activity);
        if (intent == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Activity ").append(activity.getClass().getSimpleName()).append(" does not have a parent activity name specified.").append(" (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> ").append(" element in your manifest?)").toString());
        } else
        {
            navigateUpTo(activity, intent);
            return;
        }
    }

    public static void navigateUpTo(Activity activity, Intent intent)
    {
        IMPL.navigateUpTo(activity, intent);
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent)
    {
        return IMPL.shouldUpRecreateTask(activity, intent);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            IMPL = new NavUtilsImplJB();
        } else
        {
            IMPL = new NavUtilsImplBase();
        }
    }

    private class NavUtilsImpl
    {

        public abstract Intent getParentActivityIntent(Activity activity);

        public abstract String getParentActivityName(Context context, ActivityInfo activityinfo);

        public abstract void navigateUpTo(Activity activity, Intent intent);

        public abstract boolean shouldUpRecreateTask(Activity activity, Intent intent);
    }


    private class NavUtilsImplJB extends NavUtilsImplBase
    {
        private class NavUtilsImplBase
            implements NavUtilsImpl
        {

            public Intent getParentActivityIntent(Activity activity)
            {
                String s = NavUtils.getParentActivityName(activity);
                if (s == null)
                {
                    return null;
                }
                ComponentName componentname = new ComponentName(activity, s);
                Intent intent;
                try
                {
                    if (NavUtils.getParentActivityName(activity, componentname) == null)
                    {
                        return IntentCompat.makeMainActivity(componentname);
                    }
                    intent = (new Intent()).setComponent(componentname);
                }
                catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
                {
                    Log.e("NavUtils", (new StringBuilder()).append("getParentActivityIntent: bad parentActivityName '").append(s).append("' in manifest").toString());
                    return null;
                }
                return intent;
            }

            public String getParentActivityName(Context context, ActivityInfo activityinfo)
            {
                String s;
                if (activityinfo.metaData == null)
                {
                    s = null;
                } else
                {
                    s = activityinfo.metaData.getString("android.support.PARENT_ACTIVITY");
                    if (s == null)
                    {
                        return null;
                    }
                    if (s.charAt(0) == '.')
                    {
                        return (new StringBuilder()).append(context.getPackageName()).append(s).toString();
                    }
                }
                return s;
            }

            public void navigateUpTo(Activity activity, Intent intent)
            {
                intent.addFlags(0x4000000);
                activity.startActivity(intent);
                activity.finish();
            }

            public boolean shouldUpRecreateTask(Activity activity, Intent intent)
            {
                String s = activity.getIntent().getAction();
                return s != null && !s.equals("android.intent.action.MAIN");
            }

            NavUtilsImplBase()
            {
            }
        }


        public Intent getParentActivityIntent(Activity activity)
        {
            Intent intent = NavUtilsJB.getParentActivityIntent(activity);
            if (intent == null)
            {
                intent = superGetParentActivityIntent(activity);
            }
            return intent;
        }

        public String getParentActivityName(Context context, ActivityInfo activityinfo)
        {
            String s = NavUtilsJB.getParentActivityName(activityinfo);
            if (s == null)
            {
                s = super.getParentActivityName(context, activityinfo);
            }
            return s;
        }

        public void navigateUpTo(Activity activity, Intent intent)
        {
            NavUtilsJB.navigateUpTo(activity, intent);
        }

        public boolean shouldUpRecreateTask(Activity activity, Intent intent)
        {
            return NavUtilsJB.shouldUpRecreateTask(activity, intent);
        }

        Intent superGetParentActivityIntent(Activity activity)
        {
            return super.getParentActivityIntent(activity);
        }

        NavUtilsImplJB()
        {
        }
    }

}
