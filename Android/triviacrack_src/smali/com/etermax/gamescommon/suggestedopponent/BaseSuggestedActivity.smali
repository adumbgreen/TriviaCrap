.class public abstract Lcom/etermax/gamescommon/suggestedopponent/BaseSuggestedActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/e;

.field protected b:Lcom/etermax/tools/social/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/BaseSuggestedActivity;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/suggestedopponent/BaseSuggestedActivity;->a:Lcom/etermax/gamescommon/e;

    const-string v1, "SHOW_SHOP_NEW_TEXT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method
