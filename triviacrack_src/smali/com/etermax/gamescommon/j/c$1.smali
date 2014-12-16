.class Lcom/etermax/gamescommon/j/c$1;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/c;

.field final synthetic b:Lcom/etermax/tools/social/a/b;

.field final synthetic c:Z

.field final synthetic f:Lcom/etermax/gamescommon/j/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/j/c;Ljava/lang/String;Lcom/etermax/tools/social/a/b;Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/tools/social/a/b;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    iput-object p4, p0, Lcom/etermax/gamescommon/j/c$1;->a:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p5, p0, Lcom/etermax/gamescommon/j/c$1;->b:Lcom/etermax/tools/social/a/b;

    iput-boolean p6, p0, Lcom/etermax/gamescommon/j/c$1;->c:Z

    invoke-direct {p0, p2, p3}, Lcom/etermax/gamescommon/j/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/social/a/b;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 208
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    iget-boolean v1, p0, Lcom/etermax/gamescommon/j/c$1;->c:Z

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/j/c;->a(Z)V

    .line 210
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 211
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    invoke-static {v0}, Lcom/etermax/gamescommon/j/c;->a(Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/a;->b(Z)V

    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    invoke-static {v0}, Lcom/etermax/gamescommon/j/c;->a(Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/login/datasource/a;->c(Z)V

    .line 213
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/j/c$1;->b(Z)V

    .line 203
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 204
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->f:Lcom/etermax/gamescommon/j/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/j/c$1;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p1, v1}, Lcom/etermax/gamescommon/j/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/tools/social/a/b;)V

    .line 205
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/j/c$1;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/j/c$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method protected b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6

    .prologue
    .line 198
    iget-object v0, p0, Lcom/etermax/gamescommon/j/c$1;->a:Lcom/etermax/gamescommon/login/datasource/c;

    const-string v1, "Facebook"

    iget-object v2, p0, Lcom/etermax/gamescommon/j/c$1;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v2}, Lcom/etermax/tools/social/a/b;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/j/c$1;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v3}, Lcom/etermax/tools/social/a/b;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/etermax/gamescommon/j/c$1;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v4}, Lcom/etermax/tools/social/a/b;->f()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/etermax/gamescommon/j/c$1;->c:Z

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/c$1;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
