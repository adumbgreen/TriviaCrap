.class Lcom/etermax/gamescommon/menu/a/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/b/a;->a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/a$2;->b:Lcom/etermax/gamescommon/menu/a/b/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/b/a$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a$2;->b:Lcom/etermax/gamescommon/menu/a/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/a;->j:Lcom/etermax/gamescommon/menu/a/c;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a$2;->b:Lcom/etermax/gamescommon/menu/a/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/a;->j:Lcom/etermax/gamescommon/menu/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/b/a$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/menu/a/c;->c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 110
    :cond_0
    return-void
.end method
