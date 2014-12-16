.class Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    new-instance v0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->a:I

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 580
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 589
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 590
    iget v0, p0, Lcom/etermax/tools/widget/pageindicator/CirclePageIndicator$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    return-void
.end method
