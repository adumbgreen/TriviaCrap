.class Lcom/etermax/gamescommon/menu/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/menu/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a;->a(Lcom/etermax/gamescommon/menu/b;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/b;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a;Lcom/etermax/gamescommon/menu/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$2;->a:Lcom/etermax/gamescommon/menu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    invoke-interface {v0}, Lcom/etermax/tools/navigation/f;->g()V

    .line 227
    new-instance v1, Lcom/etermax/gamescommon/b/am;

    sget-object v0, Lcom/etermax/gamescommon/b/an;->j:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/etermax/gamescommon/b/ao;->b:Lcom/etermax/gamescommon/b/ao;

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/etermax/gamescommon/b/am;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/b/ao;)V

    .line 229
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 230
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$2$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$2$1;-><init>(Lcom/etermax/gamescommon/menu/a$2;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/etermax/gamescommon/b/ao;->c:Lcom/etermax/gamescommon/b/ao;

    goto :goto_0
.end method

.method public b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    invoke-interface {v0}, Lcom/etermax/tools/navigation/f;->g()V

    .line 241
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$2$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$2$2;-><init>(Lcom/etermax/gamescommon/menu/a$2;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    return-void
.end method

.method public c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->a:Lcom/etermax/gamescommon/menu/b;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/menu/b;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 252
    return-void
.end method

.method public d(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->a:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/etermax/tools/navigation/f;

    invoke-interface {v0}, Lcom/etermax/tools/navigation/f;->g()V

    .line 257
    new-instance v0, Lcom/etermax/gamescommon/b/e;

    sget-object v1, Lcom/etermax/gamescommon/b/h;->b:Lcom/etermax/gamescommon/b/h;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/b/e;-><init>(Lcom/etermax/gamescommon/b/h;)V

    .line 258
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->isFavorite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lcom/etermax/gamescommon/b/i;->a:Lcom/etermax/gamescommon/b/i;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/i;)V

    .line 263
    :goto_0
    sget-object v1, Lcom/etermax/gamescommon/b/g;->g:Lcom/etermax/gamescommon/b/g;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/g;)V

    .line 264
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a;->e:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 265
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/etermax/gamescommon/menu/a$2$3;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a$2$3;-><init>(Lcom/etermax/gamescommon/menu/a$2;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    return-void

    .line 261
    :cond_0
    sget-object v1, Lcom/etermax/gamescommon/b/i;->b:Lcom/etermax/gamescommon/b/i;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Lcom/etermax/gamescommon/b/i;)V

    goto :goto_0
.end method
