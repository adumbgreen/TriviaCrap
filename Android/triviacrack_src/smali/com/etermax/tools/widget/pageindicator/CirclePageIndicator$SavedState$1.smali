.class final Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 596
    new-instance v0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 601
    new-array v0, p1, [Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState$1;->a(I)[Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
