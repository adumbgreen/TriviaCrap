// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;

class AmazonDeviceLauncher
{

    private static AmazonDeviceLauncherExecutor executor = new AmazonDeviceLauncherExecutor();

    AmazonDeviceLauncher()
    {
    }

    public static boolean isWindowshopPresent(Context context)
    {
        return executor.isWindowshopPresent(context);
    }

    public static void launchWindowshopDetailPage(Context context, String s)
    {
        executor.launchWindowshopDetailPage(context, s);
    }

    static void launchWindowshopSearchPage(Context context, String s)
    {
        executor.launchWindowshopSearchPage(context, s);
    }


    private class AmazonDeviceLauncherExecutor
    {

        boolean isWindowshopPresent(Context context)
        {
            return context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop") != null;
        }

        void launchWindowshopDetailPage(Context context, String s)
        {
            Intent intent = context.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop");
            if (intent != null)
            {
                intent.putExtra("com.amazon.windowshop.refinement.asin", s);
                context.startActivity(intent);
            }
        }

        void launchWindowshopSearchPage(Context context, String s)
        {
            Intent intent = new Intent("android.intent.action.SEARCH");
            intent.setComponent(new ComponentName("com.amazon.windowshop", "com.amazon.windowshop.search.SearchResultsGridActivity"));
            intent.putExtra("query", s);
            try
            {
                context.startActivity(intent);
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                return;
            }
        }

        AmazonDeviceLauncherExecutor()
        {
        }
    }

}
