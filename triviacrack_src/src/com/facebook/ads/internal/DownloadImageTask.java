// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import java.net.URL;

public class DownloadImageTask extends AsyncTask
{

    private static final String TAG = com/facebook/ads/internal/DownloadImageTask.getSimpleName();
    private final ImageView imageView;

    public DownloadImageTask(ImageView imageview)
    {
        imageView = imageview;
    }

    protected transient Bitmap doInBackground(String as[])
    {
        String s = as[0];
        Bitmap bitmap;
        try
        {
            bitmap = BitmapFactory.decodeStream((new URL(s)).openStream());
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Error downloading image: ").append(s).toString(), exception);
            return null;
        }
        return bitmap;
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        imageView.setImageBitmap(bitmap);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

}
