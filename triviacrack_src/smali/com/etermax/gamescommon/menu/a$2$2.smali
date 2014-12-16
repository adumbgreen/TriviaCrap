.class Lcom/etermax/gamescommon/menu/a$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a$2;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a$2;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a$2$2;->b:Lcom/etermax/gamescommon/menu/a$2;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a$2$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a$2$2;->b:Lcom/etermax/gamescommon/menu/a$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a$2;->a:Lcom/etermax/gamescommon/menu/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a$2$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/menu/b;->d(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 245
    return-void
.end method
