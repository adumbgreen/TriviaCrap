.class Lcom/etermax/gamescommon/i/b/g$5;
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
    .line 208
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->f(Lcom/etermax/gamescommon/i/b/g;)V

    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->g(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/i/b/h;->a(I)V

    .line 213
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->h(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/i/b/h;->b()V

    .line 214
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->i(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/i/b/h;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v2, v2, Lcom/etermax/gamescommon/i/b/g;->b:Lcom/etermax/tools/social/a/b;

    iget-object v3, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v3, v3, Lcom/etermax/gamescommon/i/b/g;->d:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v4, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v4, v4, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    iget-object v5, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v5, v5, Lcom/etermax/gamescommon/i/b/g;->h:Lcom/etermax/tools/f/a;

    invoke-static/range {v0 .. v5}, Lcom/etermax/gamescommon/i/b/i;->a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;)Lcom/etermax/gamescommon/i/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/i/b/g;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/i;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/g;->a()V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->j(Lcom/etermax/gamescommon/i/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i/b/h;

    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v2, v2, Lcom/etermax/gamescommon/i/b/g;->g:Lcom/etermax/gamescommon/i/a/a;

    invoke-static {v1, v0, v2}, Lcom/etermax/gamescommon/i/b/l;->a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Lcom/etermax/gamescommon/i/a/a;)Lcom/etermax/gamescommon/i/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/g$5;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/i/b/g;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/l;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method
