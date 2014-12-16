.class Lcom/etermax/gamescommon/profile/image/a$5;
.super Lcom/etermax/gamescommon/j/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/c",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/etermax/gamescommon/j/c;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/a;Lcom/etermax/tools/f/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 251
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->c(Z)V

    .line 252
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/image/c;->a(Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Lcom/etermax/gamescommon/j/c;->b()V

    .line 261
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->c(Z)V

    .line 262
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$5;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/image/c;->a(Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method
