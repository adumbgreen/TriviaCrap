.class Lcom/etermax/gamescommon/h/a/a$5;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/h/a/a;",
        "[",
        "Lcom/etermax/tools/social/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/etermax/gamescommon/h/a/a$5;->b()[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/h/a/a;[Lcom/etermax/tools/social/a/c;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 288
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;Ljava/util/List;)Ljava/util/List;

    .line 290
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 291
    new-instance v3, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v3}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    .line 292
    invoke-virtual {v2}, Lcom/etermax/tools/social/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setId(Ljava/lang/Long;)V

    .line 293
    invoke-virtual {v2}, Lcom/etermax/tools/social/a/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_id(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Lcom/etermax/tools/social/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_name(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Lcom/etermax/tools/social/a/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setUsername(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Lcom/etermax/tools/social/a/c;->c()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setIs_app_user(Z)V

    .line 297
    invoke-virtual {v3, v6}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFb_show_picture(Z)V

    .line 298
    invoke-virtual {v3, v6}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFb_show_name(Z)V

    .line 299
    iget-object v2, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v2}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/h/a/a;->c(Ljava/lang/Object;)V

    .line 304
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    check-cast p1, Lcom/etermax/gamescommon/h/a/a;

    check-cast p2, [Lcom/etermax/tools/social/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/h/a/a$5;->a(Lcom/etermax/gamescommon/h/a/a;[Lcom/etermax/tools/social/a/c;)V

    return-void
.end method

.method public b()[Lcom/etermax/tools/social/a/c;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$5;->a:Lcom/etermax/gamescommon/h/a/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/a;->b:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->k()[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    return-object v0
.end method
