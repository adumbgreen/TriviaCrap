.class final Lcom/millennialmedia/android/AdViewOverlayView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/android/AdViewOverlayView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcel;Lcom/millennialmedia/android/AdViewOverlayView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 265
    new-array v0, p1, [Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState$1;->newArray(I)[Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    move-result-object v0

    return-object v0
.end method
