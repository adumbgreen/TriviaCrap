.class Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/view/ResponsiveScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->getScrollY()I

    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-static {v0}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->a(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)Lcom/etermax/gamescommon/view/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-static {v0}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->a(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)Lcom/etermax/gamescommon/view/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/view/g;->a()V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    iget-object v1, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-static {v1}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->b(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/view/ResponsiveScrollView$1;->a:Lcom/etermax/gamescommon/view/ResponsiveScrollView;

    invoke-static {v2}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->c(Lcom/etermax/gamescommon/view/ResponsiveScrollView;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/view/ResponsiveScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
