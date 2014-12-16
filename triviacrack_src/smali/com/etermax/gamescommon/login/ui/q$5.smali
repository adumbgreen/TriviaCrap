.class Lcom/etermax/gamescommon/login/ui/q$5;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Lcom/etermax/gamescommon/login/ui/q;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/login/ui/q;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/ui/q$5;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/gamescommon/login/ui/q$5;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q$5;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/q;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/q;->b(Lcom/etermax/gamescommon/login/ui/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->a_()V

    .line 154
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ad;-><init>()V

    .line 155
    const-string v1, "user_pass"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/ad;->b(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 157
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_enter_password"

    const-string v3, "result"

    const-string v4, "password_OK"

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_email_ok"

    const-string v3, "domain"

    iget-object v4, p0, Lcom/etermax/gamescommon/login/ui/q$5;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 159
    return-void
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 162
    instance-of v0, p2, Lcom/etermax/gamescommon/login/datasource/b/b;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "login_enter_password"

    const-string v3, "result"

    const-string v4, "other resason"

    invoke-direct {v1, v2, v3, v4}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 164
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 182
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 168
    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    .line 169
    const/16 v1, 0x25c

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v2, Lcom/etermax/gamescommon/b/ad;

    const-string v3, "login_enter_password"

    const-string v4, "result"

    const-string v5, "wrong_password"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 175
    :goto_1
    const/16 v1, 0x266

    if-ne v0, v1, :cond_2

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/login/ui/q$5;->b(Z)V

    .line 177
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 178
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/q$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    new-instance v2, Lcom/etermax/gamescommon/b/ad;

    const-string v3, "login_enter_password"

    const-string v4, "result"

    const-string v5, "other resason"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/login/ui/q;->a(Lcom/etermax/gamescommon/b/l;)V

    goto :goto_1

    .line 180
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    check-cast p1, Lcom/etermax/gamescommon/login/ui/q;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/q$5;->a(Lcom/etermax/gamescommon/login/ui/q;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    check-cast p1, Lcom/etermax/gamescommon/login/ui/q;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/q$5;->a(Lcom/etermax/gamescommon/login/ui/q;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/q$5;->c:Lcom/etermax/gamescommon/login/ui/q;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/q;->f:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/q$5;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/q$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
