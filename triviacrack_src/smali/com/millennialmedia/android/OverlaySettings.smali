.class Lcom/millennialmedia/android/OverlaySettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/millennialmedia/android/OverlaySettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Lcom/millennialmedia/android/HttpMMHeaders;

.field l:Z

.field m:Z

.field n:J

.field private o:Z

.field private p:Z
    .annotation runtime Lcom/millennialmedia/a/a/a/b;
        a = "transparent"
    .end annotation
.end field

.field private q:J
    .annotation runtime Lcom/millennialmedia/a/a/a/b;
        a = "transitionDuration"
    .end annotation
.end field

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/OverlaySettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->l:Z

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    .line 36
    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 37
    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    .line 41
    iput-boolean v4, p0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 42
    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    .line 43
    const-string v2, ""

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    .line 47
    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->l:Z

    .line 66
    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [Z

    .line 67
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 68
    const/4 v3, 0x0

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->a:Z

    .line 69
    const/4 v3, 0x1

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->p:Z

    .line 70
    const/4 v3, 0x2

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->o:Z

    .line 71
    const/4 v3, 0x3

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->g:Z

    .line 72
    const/4 v3, 0x4

    aget-boolean v3, v2, v3

    iput-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->m:Z

    .line 73
    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/millennialmedia/android/OverlaySettings;->b:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    .line 77
    iget-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->n:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/OverlaySettings;->e:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/OverlaySettings;->f:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    .line 86
    const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 91
    :goto_1
    return-void

    .line 77
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "OverlaySettings"

    const-string v2, "Exception Overlaysettings creationg from parcel: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "OverlaySettings"

    invoke-virtual {p0}, Lcom/millennialmedia/android/OverlaySettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method a(J)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    .line 206
    return-void
.end method

.method a(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 189
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    .line 229
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/millennialmedia/android/OverlaySettings;->o:Z

    .line 239
    return-void
.end method

.method b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/millennialmedia/android/OverlaySettings;->p:Z

    .line 249
    return-void
.end method

.method b()Z
    .locals 4

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->m:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 4

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->m:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-boolean v1, p0, Lcom/millennialmedia/android/OverlaySettings;->l:Z

    if-nez v1, :cond_0

    .line 180
    iput-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->l:Z

    .line 181
    const/4 v0, 0x0

    .line 183
    :cond_0
    return v0
.end method

.method f()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 195
    iget-wide v2, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 196
    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    .line 200
    :cond_0
    :goto_0
    return-wide v0

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-wide v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->b:J

    goto :goto_0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->c:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_1
    const-string v0, "none"

    goto :goto_0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/millennialmedia/android/OverlaySettings;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-boolean v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-string v0, "height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/millennialmedia/android/OverlaySettings;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/millennialmedia/android/OverlaySettings;->o:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->a:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->p:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->o:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    aput-boolean v2, v0, v1

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 130
    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-wide v0, p0, Lcom/millennialmedia/android/OverlaySettings;->n:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Lcom/millennialmedia/android/OverlaySettings;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/millennialmedia/android/OverlaySettings;->k:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    return-void
.end method
