.class public Lcom/etermax/gamescommon/user/UserGridView;
.super Landroid/widget/GridView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/etermax/gamescommon/user/a/b;

.field private b:Lcom/etermax/gamescommon/user/a;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->c:Z

    .line 34
    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/user/UserGridView;->a(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->c:Z

    .line 29
    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/user/UserGridView;->a(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p0}, Lcom/etermax/gamescommon/user/UserGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/etermax/q;->NonScrollableGrid:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/etermax/gamescommon/user/UserGridView;->c:Z

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->a:Lcom/etermax/gamescommon/user/a/b;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/user/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->a:Lcom/etermax/gamescommon/user/a/b;

    .line 53
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->a:Lcom/etermax/gamescommon/user/a/b;

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/user/UserGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->c:Z

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getAdapter()Lcom/etermax/gamescommon/user/a/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getAdapter()Lcom/etermax/gamescommon/user/a/b;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/etermax/gamescommon/user/a/b;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->a:Lcom/etermax/gamescommon/user/a/b;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->b:Lcom/etermax/gamescommon/user/a;

    .line 83
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 84
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->b:Lcom/etermax/gamescommon/user/a;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserGridView;->b:Lcom/etermax/gamescommon/user/a;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/user/a;->a(Ljava/lang/Long;)V

    .line 78
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const v0, 0x1fffffff

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 91
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 92
    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/user/UserGridView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setListener(Lcom/etermax/gamescommon/user/a;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/etermax/gamescommon/user/UserGridView;->b:Lcom/etermax/gamescommon/user/a;

    .line 59
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/etermax/gamescommon/user/UserGridView;->c:Z

    .line 63
    return-void
.end method
