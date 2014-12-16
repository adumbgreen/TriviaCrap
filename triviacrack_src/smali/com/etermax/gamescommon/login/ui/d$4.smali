.class Lcom/etermax/gamescommon/login/ui/d$4;
.super Lcom/etermax/tools/i/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/c",
        "<",
        "Lcom/etermax/gamescommon/login/ui/d;",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/etermax/gamescommon/login/ui/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/d$4;->c:Lcom/etermax/gamescommon/login/ui/d;

    iput-object p3, p0, Lcom/etermax/gamescommon/login/ui/d$4;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/gamescommon/login/ui/d$4;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/ui/d$4;->b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/login/ui/d;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/d;->b(Lcom/etermax/gamescommon/login/ui/d;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "god_mode"

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/d$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    invoke-static {p1}, Lcom/etermax/gamescommon/login/ui/d;->c(Lcom/etermax/gamescommon/login/ui/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/ui/e;

    invoke-interface {v0}, Lcom/etermax/gamescommon/login/ui/e;->a_()V

    .line 189
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    check-cast p1, Lcom/etermax/gamescommon/login/ui/d;

    check-cast p2, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/login/ui/d$4;->a(Lcom/etermax/gamescommon/login/ui/d;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/d$4;->c:Lcom/etermax/gamescommon/login/ui/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/d;->a:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/d$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/etermax/gamescommon/login/ui/d$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
