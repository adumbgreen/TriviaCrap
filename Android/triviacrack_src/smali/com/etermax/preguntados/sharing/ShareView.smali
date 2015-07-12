.class public abstract Lcom/etermax/preguntados/sharing/ShareView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected l:Lcom/etermax/gamescommon/dashboard/b;

.field protected m:Lcom/etermax/gamescommon/login/datasource/a;

.field protected n:Lcom/etermax/tools/social/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->d()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->d()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->d()V

    .line 31
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/sharing/ShareView;->l:Lcom/etermax/gamescommon/dashboard/b;

    .line 45
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/high16 v2, 0x4000

    const/16 v4, 0x280

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/sharing/ShareView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/sharing/ShareView;->measure(II)V

    .line 52
    const/16 v0, 0xa

    const/16 v1, 0x64

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->getMeasuredWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/ShareView;->getMeasuredHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/etermax/preguntados/sharing/ShareView;->layout(IIII)V

    .line 53
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/sharing/ShareView;->draw(Landroid/graphics/Canvas;)V

    .line 56
    return-object v0
.end method

.method public abstract getShareText()Ljava/lang/String;
.end method
