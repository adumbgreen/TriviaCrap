.class final Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
    .locals 2
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;-><init>(Landroid/os/Parcel;Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;
    .locals 1
    .parameter

    .prologue
    .line 112
    new-array v0, p1, [Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;->a(Landroid/os/Parcel;)Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig$1;->a(I)[Lcom/smartadserver/android/library/controller/mraid/SASMRAIDVideoConfig;

    move-result-object v0

    return-object v0
.end method
