.class public Lcom/etermax/preguntados/ui/d/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/d/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/ui/d/i;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/etermax/preguntados/ui/d/g;->e()Lcom/etermax/preguntados/ui/d/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/d/h;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/d/h;->a()Lcom/etermax/preguntados/ui/d/e;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/d/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/d/e;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/d/f;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/etermax/preguntados/ui/d/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/d/e$1;-><init>(Lcom/etermax/preguntados/ui/d/e;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->d()V

    .line 122
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/d/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/d/f;->h()V

    .line 126
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->a()Lcom/etermax/preguntados/ui/d/f;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e;->b:Ljava/lang/String;

    const-string v1, "tutorial_start"

    if-ne v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->arrow_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/etermax/i;->tutorial_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/etermax/i;->spin_button_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/etermax/i;->wheel_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 63
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    const/high16 v5, -0x3dcc

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 65
    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 67
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    new-instance v4, Lcom/etermax/preguntados/ui/d/e$2;

    invoke-direct {v4, p0}, Lcom/etermax/preguntados/ui/d/e$2;-><init>(Lcom/etermax/preguntados/ui/d/e;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v3, Lcom/etermax/preguntados/ui/d/e$3;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/d/e$3;-><init>(Lcom/etermax/preguntados/ui/d/e;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tutorialcategoryFragmentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 91
    new-instance v1, Lcom/etermax/preguntados/ui/d/e$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/e$4;-><init>(Lcom/etermax/preguntados/ui/d/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/d/e;->b:Ljava/lang/String;

    const-string v1, "tutorial_charges"

    if-ne v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->charges_tutorial:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->charges_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/d/e;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/etermax/i;->tutorialcategoryFragmentLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 109
    new-instance v1, Lcom/etermax/preguntados/ui/d/e$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/d/e$5;-><init>(Lcom/etermax/preguntados/ui/d/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_1
    invoke-super {p0}, Lcom/etermax/tools/navigation/b;->onResume()V

    .line 117
    return-void
.end method
