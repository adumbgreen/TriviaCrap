.class final Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 221
    new-instance v0, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 225
    new-array v0, p1, [Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState$1;->a(Landroid/os/Parcel;)Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState$1;->a(I)[Lcom/etermax/widget/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
