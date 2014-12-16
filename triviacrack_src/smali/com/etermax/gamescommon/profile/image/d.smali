.class Lcom/etermax/gamescommon/profile/image/d;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/etermax/gamescommon/profile/image/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/profile/image/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/d;->a:Lcom/etermax/gamescommon/profile/image/a;

    .line 400
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 401
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 407
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 409
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/profile/image/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/profile/image/b;

    .line 413
    const/high16 v3, 0x4200

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/image/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 414
    iget-object v4, v1, Lcom/etermax/gamescommon/profile/image/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7, v7, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    iget-object v1, v1, Lcom/etermax/gamescommon/profile/image/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 419
    const/high16 v1, 0x40a0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/image/d;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 422
    return-object v2
.end method
