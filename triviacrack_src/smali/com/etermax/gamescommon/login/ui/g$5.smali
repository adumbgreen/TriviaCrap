.class Lcom/etermax/gamescommon/login/ui/g$5;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/g;->onAccept(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Lcom/etermax/gamescommon/login/ui/g;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/login/ui/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/g$5;->b:Lcom/etermax/gamescommon/login/ui/g;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/ui/g$5;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$5;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/g;->e(Lcom/etermax/gamescommon/login/ui/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/h;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/h;->a_()V

    .line 226
    iget-object v0, p1, Lcom/etermax/gamescommon/login/ui/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v0

    .line 228
    iget-object v1, p1, Lcom/etermax/gamescommon/login/ui/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->d(Ljava/lang/String;)V

    .line 229
    iget-object v1, p1, Lcom/etermax/gamescommon/login/ui/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->f(Ljava/lang/String;)V

    .line 230
    iget-object v1, p1, Lcom/etermax/gamescommon/login/ui/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->e(Ljava/lang/String;)V

    .line 231
    iget-object v1, p1, Lcom/etermax/gamescommon/login/ui/g;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->c(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$5;->b:Lcom/etermax/gamescommon/login/ui/g;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "register_email_ok"

    const-string v3, "domain"

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/g$5;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/ui/g;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/b/l;)V

    .line 236
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 239
    move-object v0, p2

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    .line 241
    const/16 v1, 0x266

    if-ne v0, v1, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/g$5;->b(Z)V

    .line 243
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 244
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/g$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    check-cast p1, Lcom/etermax/gamescommon/login/ui/g;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/g$5;->a(Lcom/etermax/gamescommon/login/ui/g;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    check-cast p1, Lcom/etermax/gamescommon/login/ui/g;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/g$5;->a(Lcom/etermax/gamescommon/login/ui/g;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/g$5;->b:Lcom/etermax/gamescommon/login/ui/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/g;->a:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/g$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/c;->c(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
