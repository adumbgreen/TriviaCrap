.class public Lcom/etermax/widget/HeaderGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/widget/d;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/widget/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/HeaderGridView;->b:Ljava/util/ArrayList;

    .line 80
    invoke-direct {p0}, Lcom/etermax/widget/HeaderGridView;->a()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/widget/HeaderGridView;->b:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0}, Lcom/etermax/widget/HeaderGridView;->a()V

    .line 86
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 71
    return-void
.end method

.method private getNumColumnsCompat()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 478
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 479
    invoke-direct {p0}, Lcom/etermax/widget/HeaderGridView;->getNumColumnsCompat11()I

    move-result v0

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/widget/HeaderGridView;->getChildCount()I

    move-result v1

    .line 484
    if-lez v1, :cond_2

    .line 485
    invoke-virtual {p0, v0}, Lcom/etermax/widget/HeaderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 486
    if-lez v1, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/etermax/widget/HeaderGridView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    .line 490
    :cond_2
    if-gtz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getNumColumnsCompat11()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/etermax/widget/HeaderGridView;->getNumColumns()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/etermax/widget/HeaderGridView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 91
    invoke-virtual {p0}, Lcom/etermax/widget/HeaderGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/etermax/widget/f;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Lcom/etermax/widget/f;

    invoke-direct {p0}, Lcom/etermax/widget/HeaderGridView;->getNumColumnsCompat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/widget/f;->a(I)V

    .line 95
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onScrollChanged(IIII)V

    .line 502
    iget-object v0, p0, Lcom/etermax/widget/HeaderGridView;->a:Lcom/etermax/widget/d;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/etermax/widget/HeaderGridView;->a:Lcom/etermax/widget/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/etermax/widget/d;->a(IIII)V

    .line 505
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/etermax/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/etermax/widget/HeaderGridView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    new-instance v0, Lcom/etermax/widget/f;

    iget-object v1, p0, Lcom/etermax/widget/HeaderGridView;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/etermax/widget/f;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 191
    invoke-direct {p0}, Lcom/etermax/widget/HeaderGridView;->getNumColumnsCompat()I

    move-result v1

    .line 192
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Lcom/etermax/widget/f;->a(I)V

    .line 195
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/etermax/widget/d;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/etermax/widget/HeaderGridView;->a:Lcom/etermax/widget/d;

    .line 509
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    return-void
.end method
