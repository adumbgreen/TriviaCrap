.class Lcom/etermax/gamescommon/menu/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a$1;->a(Lcom/etermax/gamescommon/menu/a/a/a;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/a/a/a;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a$1;Lcom/etermax/gamescommon/menu/a/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$1$1;->b:Lcom/etermax/gamescommon/menu/a$1;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$1$1;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/etermax/gamescommon/menu/a$4;->b:[I

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$1$1;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$1$1;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/b;

    .line 209
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$1$1;->b:Lcom/etermax/gamescommon/menu/a$1;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a$1;->a:Lcom/etermax/gamescommon/menu/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/b;->c()Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/b;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$1$1;->a:Lcom/etermax/gamescommon/menu/a/a/a;

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/h;

    .line 213
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$1$1;->b:Lcom/etermax/gamescommon/menu/a$1;

    iget-object v1, v1, Lcom/etermax/gamescommon/menu/a$1;->a:Lcom/etermax/gamescommon/menu/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/h;->c()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/etermax/gamescommon/menu/b;->c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
