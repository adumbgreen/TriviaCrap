.class final Lcom/millennialmedia/android/InterstitialAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/InterstitialAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/InterstitialAd;
    .locals 1
    .parameter

    .prologue
    .line 143
    new-instance v0, Lcom/millennialmedia/android/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/InterstitialAd;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/InterstitialAd$1;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/InterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/android/InterstitialAd;
    .locals 1
    .parameter

    .prologue
    .line 149
    new-array v0, p1, [Lcom/millennialmedia/android/InterstitialAd;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/InterstitialAd$1;->newArray(I)[Lcom/millennialmedia/android/InterstitialAd;

    move-result-object v0

    return-object v0
.end method
