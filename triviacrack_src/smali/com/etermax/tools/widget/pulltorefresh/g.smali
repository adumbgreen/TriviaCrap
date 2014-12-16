.class Lcom/etermax/tools/widget/pulltorefresh/g;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/pulltorefresh/a;


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    .line 23
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 44
    iget-object v2, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    iget-boolean v2, v2, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->b:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->b:Z

    .line 46
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->a:F

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    iget-boolean v0, v0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->b:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/g;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 51
    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/g;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    invoke-static {v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->a(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 54
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :goto_1
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/g;->a:Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 29
    return-void
.end method
