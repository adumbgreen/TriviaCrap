.class public Lcom/etermax/gamescommon/menu/a/b/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setMessage(I)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
