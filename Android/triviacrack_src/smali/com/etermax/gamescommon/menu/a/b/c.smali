.class public Lcom/etermax/gamescommon/menu/a/b/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    sget v0, Lcom/etermax/f;->grayBlue_darkest:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/b/c;->setBackgroundResource(I)V

    .line 16
    return-void
.end method
