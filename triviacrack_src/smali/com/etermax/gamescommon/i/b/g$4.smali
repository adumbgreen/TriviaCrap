.class Lcom/etermax/gamescommon/i/b/g$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$4;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$4;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->d(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$4;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->e(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$4;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/b;

    invoke-interface {v0}, Lcom/etermax/tools/b;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$4;->a:Lcom/etermax/gamescommon/i/b/g;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/i/b/g;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
