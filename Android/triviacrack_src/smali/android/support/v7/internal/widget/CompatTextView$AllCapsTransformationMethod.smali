.class Landroid/support/v7/internal/widget/CompatTextView$AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/support/v7/internal/widget/CompatTextView$AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    .line 70
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/CompatTextView$AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    return-void
.end method
