.class public abstract Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.super Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:Landroid/widget/AbsListView$OnScrollListener;

.field private i:Lcom/etermax/tools/widget/pulltorefresh/d;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->g:I

    .line 35
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 36
    return-void
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 142
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 144
    if-nez v3, :cond_0

    .line 156
    :goto_0
    return v1

    .line 146
    :cond_0
    add-int/lit8 v0, v3, -0x1

    if-ne v4, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    .line 149
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 156
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p2, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Landroid/content/Context;Landroid/widget/AbsListView;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 111
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k:Landroid/widget/FrameLayout;

    .line 112
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 114
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->g()Z

    move-result v0

    return v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h()Z

    move-result v0

    return v0
.end method

.method public abstract getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->i:Lcom/etermax/tools/widget/pulltorefresh/d;

    if-eqz v0, :cond_0

    .line 45
    if-lez p3, :cond_0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 47
    iget v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->g:I

    if-eq p2, v0, :cond_0

    .line 48
    iput p2, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->g:I

    .line 49
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->i:Lcom/etermax/tools/widget/pulltorefresh/d;

    invoke-interface {v0}, Lcom/etermax/tools/widget/pulltorefresh/d;->a()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 57
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 81
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 88
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    instance-of v0, v0, Lcom/etermax/tools/widget/pulltorefresh/a;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Lcom/etermax/tools/widget/pulltorefresh/a;

    invoke-interface {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/a;->a(Landroid/view/View;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setOnLastItemVisibleListener(Lcom/etermax/tools/widget/pulltorefresh/d;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->i:Lcom/etermax/tools/widget/pulltorefresh/d;

    .line 104
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->h:Landroid/widget/AbsListView$OnScrollListener;

    .line 108
    return-void
.end method
