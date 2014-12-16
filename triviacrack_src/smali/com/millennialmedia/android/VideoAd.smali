.class Lcom/millennialmedia/android/VideoAd;
.super Lcom/millennialmedia/android/CachedAd;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z

.field n:Z

.field o:[Ljava/lang/String;

.field p:[Ljava/lang/String;

.field q:J

.field r:J

.field s:J

.field t:[Ljava/lang/String;

.field u:[Ljava/lang/String;

.field v:[Ljava/lang/String;

.field w:Z

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoImage;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/VideoLogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 535
    new-instance v0, Lcom/millennialmedia/android/VideoAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/VideoAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/VideoAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    .line 84
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 92
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->g:Z

    .line 93
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->m:Z

    .line 94
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->n:Z

    .line 95
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->w:Z

    .line 96
    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->h:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->q:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->r:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->s:J

    .line 105
    const-class v0, Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    .line 106
    const-class v0, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "VideoAd"

    const-string v2, "Exception with videoad parcel creation: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    .line 130
    if-eqz p1, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    if-eqz v0, :cond_0

    .line 142
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoAd;->a(Lorg/json/JSONObject;)V

    .line 147
    :cond_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v2, "VideoAd"

    const-string v3, "VideoAd json exception: "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 681
    if-eqz p1, :cond_0

    .line 682
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 683
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v4}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {p2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->updateLastVideoViewedTime()V

    .line 685
    const-string v1, "VideoAd"

    const-string v2, "mmvideo: attempting to play video %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-wide v1, p2, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->e:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;J)V

    .line 688
    invoke-virtual {p2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingVideo()V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const-string v0, "VideoAd"

    const-string v1, "mmvideo: Ad %s cannot be shown at this time."

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Lcom/millennialmedia/android/AdCache;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 265
    const-string v1, "VideoAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching completed successfully ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")? %b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x2

    new-instance v1, Lcom/millennialmedia/android/VideoAd$VideoIterator;

    invoke-direct {v1, p1, p0}, Lcom/millennialmedia/android/VideoAd$VideoIterator;-><init>(Landroid/content/Context;Lcom/millennialmedia/android/VideoAd;)V

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 339
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoAd;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 481
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->a(Lorg/json/JSONObject;)V

    .line 162
    const-string v0, "startActivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 163
    const-string v0, "overlayURL"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    .line 164
    const-string v0, "endURL"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    .line 165
    const-string v0, "cacheMissURL"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    .line 166
    const-string v0, "videoFileId"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    .line 167
    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    move v0, v1

    .line 169
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    .line 174
    :cond_1
    const-string v0, "endActivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 175
    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    move v0, v1

    .line 177
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    .line 182
    :cond_3
    const-string v0, "cacheComplete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_4

    .line 184
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    move v0, v1

    .line 185
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 186
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 188
    :cond_4
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    .line 190
    :cond_5
    const-string v0, "cacheFailed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_6

    .line 192
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    move v0, v1

    .line 193
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 194
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 196
    :cond_6
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    .line 198
    :cond_7
    const-string v0, "videoError"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_8

    .line 200
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    move v0, v1

    .line 201
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 202
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 204
    :cond_8
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    .line 206
    :cond_9
    const-string v0, "showVideoPlayerControls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->g:Z

    .line 207
    const-string v0, "showCountdownHUD"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->n:Z

    .line 208
    const-string v0, "reloadOverlayOnRestart"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->w:Z

    .line 210
    const-string v0, "onCompletion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_a

    .line 212
    const-string v2, "url"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    .line 213
    const-string v2, "stayInPlayer"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->m:Z

    .line 215
    :cond_a
    const-string v0, "duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->q:J

    .line 216
    const-string v0, "contentLength"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->r:J

    .line 217
    const-string v0, "closeAfterDelay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->s:J

    .line 218
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_c

    move v0, v1

    .line 220
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 221
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_b

    .line 223
    new-instance v4, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v4, v3}, Lcom/millennialmedia/android/VideoImage;-><init>(Lorg/json/JSONObject;)V

    .line 224
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 228
    :cond_c
    const-string v0, "log"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_e

    .line 230
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 231
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_d

    .line 233
    new-instance v3, Lcom/millennialmedia/android/VideoLogEvent;

    invoke-direct {v3, v2}, Lcom/millennialmedia/android/VideoLogEvent;-><init>(Lorg/json/JSONObject;)V

    .line 234
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 238
    :cond_e
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 468
    if-eqz p3, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p2, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcom/millennialmedia/android/VideoAd;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 469
    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->a()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method b(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    const-string v1, "videoId"

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "internalId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 489
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 492
    return-object v0
.end method

.method b(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 291
    .line 294
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "video.dat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/millennialmedia/android/AdCache;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 297
    if-eqz v0, :cond_0

    move v1, v2

    .line 299
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 300
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 301
    iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Lcom/millennialmedia/android/AdCache;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 303
    if-nez v3, :cond_3

    move v0, v3

    .line 308
    :cond_0
    if-nez v0, :cond_4

    .line 309
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->f:Z

    if-eqz v1, :cond_1

    .line 310
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoAd;->c(Landroid/content/Context;)V

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->a([Ljava/lang/String;)V

    .line 321
    :cond_2
    :goto_1
    const-string v1, "VideoAd"

    const-string v3, "Caching completed successfully? %b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return v0

    .line 299
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 312
    :cond_4
    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 316
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/millennialmedia/android/AdCache;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/HttpGetRequest;->a([Ljava/lang/String;)V

    goto :goto_1
.end method

.method c()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method c(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 329
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->c(Landroid/content/Context;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoAd;->e(Landroid/content/Context;)V

    .line 331
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/millennialmedia/android/AdCache;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    const-string v0, "VideoAd"

    const-string v1, "Ad %s was deleted."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "Video"

    return-object v0
.end method

.method d(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 403
    .line 404
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 407
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 410
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 413
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 414
    new-instance v2, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;-><init>(Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    if-eqz v2, :cond_3

    array-length v2, v2

    if-lt v2, v0, :cond_3

    .line 420
    const/4 v2, 0x1

    .line 421
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 422
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "video.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 438
    :goto_1
    return v0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 428
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoImage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 432
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return v0
.end method

.method f()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 657
    const-string v0, "VideoAd"

    const-string v1, "Cached video begin event logged"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "VideoAd"

    const-string v1, "Cached video end event logged"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->a(Ljava/lang/String;)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_0
    return-void
.end method

.method h()Z
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 706
    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoImage;->s:Z

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 710
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 558
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    .line 559
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->g:Z

    .line 560
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    .line 561
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    .line 562
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    .line 563
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    .line 564
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    .line 565
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->m:Z

    .line 566
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->n:Z

    .line 567
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->w:Z

    .line 568
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 569
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    move v2, v1

    .line 570
    :goto_0
    if-ge v2, v3, :cond_0

    .line 571
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 570
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 573
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    move v2, v1

    .line 574
    :goto_1
    if-ge v2, v3, :cond_1

    .line 575
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 574
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 576
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->q:J

    .line 577
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd;->h:Z

    .line 578
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->r:J

    .line 579
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/VideoAd;->s:J

    .line 580
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 581
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    move v2, v1

    .line 582
    :goto_2
    if-ge v2, v3, :cond_2

    .line 583
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 582
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 584
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 585
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    move v2, v1

    .line 586
    :goto_3
    if-ge v2, v3, :cond_3

    .line 587
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 586
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 588
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    .line 589
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    move v2, v1

    .line 590
    :goto_4
    if-ge v2, v3, :cond_4

    .line 591
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    .line 590
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 594
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    move v2, v1

    .line 595
    :goto_5
    if-ge v2, v3, :cond_5

    .line 596
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 597
    iget-object v4, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 601
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 602
    :goto_6
    if-ge v1, v2, :cond_6

    .line 603
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;

    .line 604
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 606
    :cond_6
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 612
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->g:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 613
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 614
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 615
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 616
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 617
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 618
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->m:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 619
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->n:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 620
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->w:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 621
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 622
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 623
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 625
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 626
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 627
    :cond_1
    iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->q:J

    invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 628
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd;->h:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 629
    iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->r:J

    invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 630
    iget-wide v1, p0, Lcom/millennialmedia/android/VideoAd;->s:J

    invoke-interface {p1, v1, v2}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 631
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 632
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 633
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 635
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 636
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 637
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 638
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 639
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 640
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 641
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 642
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_5

    .line 643
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 644
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;

    .line 645
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_6

    .line 646
    :cond_6
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->o:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->p:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x5

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->n:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->w:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/millennialmedia/android/VideoAd;->h:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 513
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 519
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 520
    iget-wide v0, p0, Lcom/millennialmedia/android/VideoAd;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 521
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->y:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 523
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->t:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->u:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v0, p0, Lcom/millennialmedia/android/VideoAd;->v:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 529
    return-void
.end method
