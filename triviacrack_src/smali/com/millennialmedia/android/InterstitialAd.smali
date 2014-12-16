.class Lcom/millennialmedia/android/InterstitialAd;
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
            "Lcom/millennialmedia/android/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/String;


# instance fields
.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lcom/millennialmedia/android/HttpMMHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/millennialmedia/android/InterstitialAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->j:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/millennialmedia/android/InterstitialAd$1;

    invoke-direct {v0}, Lcom/millennialmedia/android/InterstitialAd$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/InterstitialAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedAd;-><init>()V

    .line 30
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedAd;-><init>(Landroid/os/Parcel;)V

    .line 38
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lcom/millennialmedia/android/InterstitialAd;->j:Ljava/lang/String;

    const-string v2, "Interstitial problem reading parcel: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    new-instance v1, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 104
    iput-wide p2, v1, Lcom/millennialmedia/android/OverlaySettings;->n:J

    .line 105
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/OverlaySettings;->a(Lcom/millennialmedia/android/HttpMMHeaders;)V

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/millennialmedia/android/OverlaySettings;->m:Z

    .line 109
    const-string v2, "settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string v1, "internalId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/InterstitialAd;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
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

    .line 83
    if-eqz p3, :cond_2

    .line 84
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->a(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-object v3, p2, Lcom/millennialmedia/android/MMAdImpl;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcom/millennialmedia/android/InterstitialAd;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->a(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Interstitial"

    return-object v0
.end method

.method d(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->readExternal(Ljava/io/ObjectInput;)V

    .line 158
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    .line 160
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpMMHeaders;

    iput-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 161
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/millennialmedia/android/CachedAd;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 167
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/CachedAd;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/millennialmedia/android/InterstitialAd;->i:Lcom/millennialmedia/android/HttpMMHeaders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    return-void
.end method
