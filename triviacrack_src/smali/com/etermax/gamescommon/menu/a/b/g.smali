.class public Lcom/etermax/gamescommon/menu/a/b/g;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/etermax/h;->navigation_panel_item_states:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/b/g;->setBackgroundResource(I)V

    .line 29
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/g;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/g;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/g;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/g;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 39
    return-void
.end method
