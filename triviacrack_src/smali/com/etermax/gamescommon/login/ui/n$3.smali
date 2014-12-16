.class Lcom/etermax/gamescommon/login/ui/n$3;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/n;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/a",
        "<",
        "Lcom/etermax/gamescommon/login/ui/n;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/login/ui/n;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/n;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    iput-object p4, p0, Lcom/etermax/gamescommon/login/ui/n$3;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/etermax/gamescommon/login/ui/n$3;->b:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/login/ui/n;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/n;->a(Lcom/etermax/gamescommon/login/ui/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/o;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/o;->a_()V

    .line 134
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ad;-><init>()V

    .line 135
    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/ad;->b(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/login/ui/n;->a(Lcom/etermax/gamescommon/login/ui/n;Lcom/etermax/gamescommon/b/l;)V

    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    new-instance v1, Lcom/etermax/gamescommon/b/ah;

    const-string v2, "linked_existing_fb_ok"

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/b/ah;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/ui/n;->a(Lcom/etermax/gamescommon/login/ui/n;Lcom/etermax/gamescommon/b/l;)V

    .line 138
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    const-string v2, "fb_account_already_linked"

    const-string v3, "login"

    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/n;->e:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "guest"

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/etermax/gamescommon/login/ui/n;->a(Lcom/etermax/gamescommon/login/ui/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 138
    :cond_0
    const-string v0, "email"

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    check-cast p1, Lcom/etermax/gamescommon/login/ui/n;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/n$3;->a(Lcom/etermax/gamescommon/login/ui/n;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method protected b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n$3;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/n$3;->c:Lcom/etermax/gamescommon/login/ui/n;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/n;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v1, "Facebook"

    iget-object v3, p0, Lcom/etermax/gamescommon/login/ui/n$3;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v3}, Lcom/etermax/tools/social/a/b;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/n$3;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/etermax/gamescommon/login/ui/n$3;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/n$3;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
