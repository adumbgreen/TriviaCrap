.class final Lcom/millennialmedia/android/VideoImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoImage;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/VideoImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoImage;
    .locals 1
    .parameter

    .prologue
    .line 215
    new-instance v0, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {v0, p1}, Lcom/millennialmedia/android/VideoImage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoImage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/VideoImage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/android/VideoImage;
    .locals 1
    .parameter

    .prologue
    .line 221
    new-array v0, p1, [Lcom/millennialmedia/android/VideoImage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/VideoImage$1;->newArray(I)[Lcom/millennialmedia/android/VideoImage;

    move-result-object v0

    return-object v0
.end method
