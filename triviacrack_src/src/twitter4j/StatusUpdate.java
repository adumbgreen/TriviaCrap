// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package twitter4j:
//            HttpParameter, GeoLocation

public final class StatusUpdate
    implements Serializable
{

    private static final long serialVersionUID = 0x670093d787091b13L;
    private boolean displayCoordinates;
    private long inReplyToStatusId;
    private GeoLocation location;
    private transient InputStream mediaBody;
    private File mediaFile;
    private String mediaName;
    private String placeId;
    private boolean possiblySensitive;
    private final String status;

    public StatusUpdate(String s)
    {
        inReplyToStatusId = -1L;
        location = null;
        placeId = null;
        displayCoordinates = true;
        status = s;
    }

    private void appendParameter(String s, double d, List list)
    {
        list.add(new HttpParameter(s, String.valueOf(d)));
    }

    private void appendParameter(String s, long l, List list)
    {
        list.add(new HttpParameter(s, String.valueOf(l)));
    }

    private void appendParameter(String s, String s1, List list)
    {
        if (s1 != null)
        {
            list.add(new HttpParameter(s, s1));
        }
    }

    HttpParameter[] asHttpParameterArray()
    {
        ArrayList arraylist;
        arraylist = new ArrayList();
        appendParameter("status", status, arraylist);
        if (-1L != inReplyToStatusId)
        {
            appendParameter("in_reply_to_status_id", inReplyToStatusId, arraylist);
        }
        if (location != null)
        {
            appendParameter("lat", location.getLatitude(), arraylist);
            appendParameter("long", location.getLongitude(), arraylist);
        }
        appendParameter("place_id", placeId, arraylist);
        if (!displayCoordinates)
        {
            appendParameter("display_coordinates", "false", arraylist);
        }
        if (mediaFile == null) goto _L2; else goto _L1
_L1:
        arraylist.add(new HttpParameter("media[]", mediaFile));
        arraylist.add(new HttpParameter("possibly_sensitive", possiblySensitive));
_L4:
        return (HttpParameter[])arraylist.toArray(new HttpParameter[arraylist.size()]);
_L2:
        if (mediaName != null && mediaBody != null)
        {
            arraylist.add(new HttpParameter("media[]", mediaName, mediaBody));
            arraylist.add(new HttpParameter("possibly_sensitive", possiblySensitive));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public StatusUpdate displayCoordinates(boolean flag)
    {
        setDisplayCoordinates(flag);
        return this;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            StatusUpdate statusupdate = (StatusUpdate)obj;
            if (displayCoordinates != statusupdate.displayCoordinates)
            {
                return false;
            }
            if (inReplyToStatusId != statusupdate.inReplyToStatusId)
            {
                return false;
            }
            if (possiblySensitive != statusupdate.possiblySensitive)
            {
                return false;
            }
            if (location == null ? statusupdate.location != null : !location.equals(statusupdate.location))
            {
                return false;
            }
            if (mediaBody == null ? statusupdate.mediaBody != null : !mediaBody.equals(statusupdate.mediaBody))
            {
                return false;
            }
            if (mediaFile == null ? statusupdate.mediaFile != null : !mediaFile.equals(statusupdate.mediaFile))
            {
                return false;
            }
            if (mediaName == null ? statusupdate.mediaName != null : !mediaName.equals(statusupdate.mediaName))
            {
                return false;
            }
            if (placeId == null ? statusupdate.placeId != null : !placeId.equals(statusupdate.placeId))
            {
                return false;
            }
            if (status == null ? statusupdate.status != null : !status.equals(statusupdate.status))
            {
                return false;
            }
        }
        return true;
    }

    public long getInReplyToStatusId()
    {
        return inReplyToStatusId;
    }

    public GeoLocation getLocation()
    {
        return location;
    }

    public String getPlaceId()
    {
        return placeId;
    }

    public String getStatus()
    {
        return status;
    }

    public int hashCode()
    {
        int i = 1;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        File file;
        int k3;
        if (status != null)
        {
            j = status.hashCode();
        } else
        {
            j = 0;
        }
        k = 31 * (j * 31 + (int)(inReplyToStatusId ^ inReplyToStatusId >>> 32));
        if (location != null)
        {
            l = location.hashCode();
        } else
        {
            l = 0;
        }
        i1 = 31 * (l + k);
        if (placeId != null)
        {
            j1 = placeId.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (j1 + i1);
        if (displayCoordinates)
        {
            l1 = i;
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (l1 + k1);
        if (!possiblySensitive)
        {
            i = 0;
        }
        j2 = 31 * (i2 + i);
        if (mediaName != null)
        {
            k2 = mediaName.hashCode();
        } else
        {
            k2 = 0;
        }
        l2 = 31 * (k2 + j2);
        if (mediaBody != null)
        {
            i3 = mediaBody.hashCode();
        } else
        {
            i3 = 0;
        }
        j3 = 31 * (i3 + l2);
        file = mediaFile;
        k3 = 0;
        if (file != null)
        {
            k3 = mediaFile.hashCode();
        }
        return j3 + k3;
    }

    public StatusUpdate inReplyToStatusId(long l)
    {
        setInReplyToStatusId(l);
        return this;
    }

    public boolean isDisplayCoordinates()
    {
        return displayCoordinates;
    }

    public boolean isPossiblySensitive()
    {
        return possiblySensitive;
    }

    boolean isWithMedia()
    {
        return mediaFile != null || mediaName != null;
    }

    public StatusUpdate location(GeoLocation geolocation)
    {
        setLocation(geolocation);
        return this;
    }

    public StatusUpdate media(File file)
    {
        setMedia(file);
        return this;
    }

    public StatusUpdate media(String s, InputStream inputstream)
    {
        setMedia(s, inputstream);
        return this;
    }

    public StatusUpdate placeId(String s)
    {
        setPlaceId(s);
        return this;
    }

    public StatusUpdate possiblySensitive(boolean flag)
    {
        setPossiblySensitive(flag);
        return this;
    }

    public void setDisplayCoordinates(boolean flag)
    {
        displayCoordinates = flag;
    }

    public void setInReplyToStatusId(long l)
    {
        inReplyToStatusId = l;
    }

    public void setLocation(GeoLocation geolocation)
    {
        location = geolocation;
    }

    public void setMedia(File file)
    {
        mediaFile = file;
    }

    public void setMedia(String s, InputStream inputstream)
    {
        mediaName = s;
        mediaBody = inputstream;
    }

    public void setPlaceId(String s)
    {
        placeId = s;
    }

    public void setPossiblySensitive(boolean flag)
    {
        possiblySensitive = flag;
    }

    public String toString()
    {
        return (new StringBuilder()).append("StatusUpdate{status='").append(status).append('\'').append(", inReplyToStatusId=").append(inReplyToStatusId).append(", location=").append(location).append(", placeId='").append(placeId).append('\'').append(", displayCoordinates=").append(displayCoordinates).append(", possiblySensitive=").append(possiblySensitive).append(", mediaName='").append(mediaName).append('\'').append(", mediaBody=").append(mediaBody).append(", mediaFile=").append(mediaFile).append('}').toString();
    }
}
