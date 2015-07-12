.class Lcom/etermax/gamescommon/login/ui/j$2;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/login/ui/j;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/a",
        "<",
        "Lcom/etermax/gamescommon/login/ui/j;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/j;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/gamescommon/login/ui/j;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/ui/j;->g()Lcom/etermax/gamescommon/b/z;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/b/z;->c:Lcom/etermax/gamescommon/b/z;

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    new-instance v1, Lcom/etermax/gamescommon/b/af;

    const-string v2, "login_fb_autolink_existing_user"

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/b/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/ui/j;->h()Lcom/etermax/gamescommon/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 148
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    const-string v2, "fb_account_no_linked"

    const-string v3, "login"

    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/j;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "guest"

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/j;->c(Lcom/etermax/gamescommon/login/ui/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/m;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/m;->a_()V

    .line 152
    invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->d(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->f(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->e(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->c(Ljava/lang/String;)V

    .line 157
    const-string v1, "registration"

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;)V

    .line 158
    return-void

    .line 148
    :cond_1
    const-string v0, "email"

    goto :goto_0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    move-object v0, p2

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b/b;->c()I

    move-result v0

    const/16 v1, 0x266

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$2;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/ui/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/login/ui/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$2;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/etermax/gamescommon/login/ui/j;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/j$2;->a(Lcom/etermax/gamescommon/login/ui/j;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/etermax/gamescommon/login/ui/j;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/j$2;->a(Lcom/etermax/gamescommon/login/ui/j;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method protected b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$2;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/ui/j;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v2, "Facebook"

    iget-object v3, p0, Lcom/etermax/gamescommon/login/ui/j$2;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v3}, Lcom/etermax/tools/social/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/j$2;->a:Lcom/etermax/gamescommon/login/ui/j;

    new-instance v1, Lcom/etermax/gamescommon/b/ae;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/ae;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/ui/j;->a(Lcom/etermax/gamescommon/b/l;)V

    .line 163
    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/j$2;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
