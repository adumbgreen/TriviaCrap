// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import com.admarvel.android.util.Logging;
import java.net.URL;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a extends AsyncTask
{

    ImageView a;
    final AdMarvelVideoActivity b;

    protected transient Bitmap a(String as[])
    {
        String s = as[0];
        Bitmap bitmap;
        try
        {
            bitmap = BitmapFactory.decodeStream((new URL(s)).openStream());
        }
        catch (Exception exception)
        {
            Logging.log(Log.getStackTraceString(exception));
            return null;
        }
        return bitmap;
    }

    protected void a(Bitmap bitmap)
    {
        a.setImageBitmap(bitmap);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    public (AdMarvelVideoActivity admarvelvideoactivity, ImageView imageview)
    {
        b = admarvelvideoactivity;
        super();
        a = imageview;
    }
}
