.class Lcom/etermax/preguntados/datasource/d$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->A()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$22;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;
    .locals 6

    .prologue
    .line 669
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;-><init>()V

    .line 670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$22;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->g:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->k()[Lcom/etermax/tools/social/a/c;

    move-result-object v3

    .line 675
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 676
    new-instance v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    .line 677
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/etermax/tools/social/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setUsername(Ljava/lang/String;)V

    .line 678
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/etermax/tools/social/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFacebook_id(Ljava/lang/String;)V

    .line 680
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/etermax/tools/social/a/c;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setIs_app_user(Z)V

    .line 681
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setFb_show_picture(Z)V

    .line 682
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;->setFriends(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_1
    return-object v1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$22;->a()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    move-result-object v0

    return-object v0
.end method
