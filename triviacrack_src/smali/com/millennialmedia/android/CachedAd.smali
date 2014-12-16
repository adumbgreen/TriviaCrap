.class abstract Lcom/millennialmedia/android/CachedAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Date;

.field c:J

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->f:Z

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->c:J

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->f:Z

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->c:J

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 67
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedAd;->f:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/CachedAd;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 6
    .parameter

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 193
    sget v0, Lcom/millennialmedia/android/MMSDK;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 194
    const-string v0, "CachedAd"

    const-string v1, "Received cached ad."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 196
    const/16 v0, 0x3e8

    if-le v3, v0, :cond_1

    .line 197
    const/16 v0, 0x3e7

    .line 198
    const/4 v1, 0x0

    .line 199
    :goto_0
    if-ge v0, v3, :cond_4

    .line 200
    const-string v4, "CachedAd"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    add-int/lit16 v1, v0, 0x3e8

    .line 203
    if-le v1, v3, :cond_3

    .line 204
    add-int/lit8 v1, v3, -0x1

    .line 208
    :goto_1
    const-string v3, "CachedAd"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V

    .line 216
    :goto_3
    return-object v0

    .line 210
    :cond_1
    const-string v0, "CachedAd"

    invoke-static {v0, p0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_3

    :cond_3
    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_4
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1
.end method

.method static synthetic a(Lcom/millennialmedia/android/CachedAd;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/content/Context;J)V
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 100
    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    .line 101
    const-string v0, "vid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    .line 102
    const-string v0, "content-url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    .line 103
    const-string v0, "expiration"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss ZZZZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "CachedAd"

    const-string v2, "Exception deserializing cached ad: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a()Z
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Landroid/content/Context;)Z
.end method

.method abstract a(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z
.end method

.method b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    .line 248
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract b(Landroid/content/Context;)Z
.end method

.method abstract c()I
.end method

.method c(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/CachedAd$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/CachedAd$1;-><init>(Lcom/millennialmedia/android/CachedAd;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 173
    const-string v2, "CachedAd"

    const-string v3, "Deleting %d files for %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 175
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "CachedAd"

    const-string v2, "Exception deleting cached ad: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :cond_0
    return-void
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract d(Landroid/content/Context;)Z
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/millennialmedia/android/CachedAd;

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_1
    check-cast p1, Lcom/millennialmedia/android/CachedAd;

    .line 94
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    .line 224
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    .line 225
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    .line 226
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->c:J

    .line 227
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 236
    iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 237
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->b:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    iget-wide v0, p0, Lcom/millennialmedia/android/CachedAd;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/CachedAd;->f:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 82
    iget-object v0, p0, Lcom/millennialmedia/android/CachedAd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/millennialmedia/android/CachedAd;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return-void
.end method
