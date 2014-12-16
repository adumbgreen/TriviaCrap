.class public Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;
.super Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->g:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->a(Landroid/content/Context;Landroid/widget/AbsListView;)V

    .line 81
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->g:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->g:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 83
    iget-object v0, p0, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->g:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method protected final c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/etermax/tools/widget/pulltorefresh/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/tools/widget/pulltorefresh/g;-><init>(Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 105
    return-object v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/etermax/tools/widget/pulltorefresh/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/o;->last_updated:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/etermax/tools/widget/pulltorefresh/b;

    move-result-object v0

    sget v2, Lcom/etermax/i;->pull_to_refresh_last_updated_text:I

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/pulltorefresh/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshAdapterViewBase;->d()V

    .line 99
    return-void
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/etermax/tools/widget/pulltorefresh/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/pulltorefresh/g;

    invoke-virtual {v0}, Lcom/etermax/tools/widget/pulltorefresh/g;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
