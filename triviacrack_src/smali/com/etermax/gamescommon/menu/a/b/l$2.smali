.class Lcom/etermax/gamescommon/menu/a/b/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/menu/a/b/l;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/gamescommon/menu/a/b/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/menu/a/b/l;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/b/l$2;->b:Lcom/etermax/gamescommon/menu/a/b/l;

    iput-object p2, p0, Lcom/etermax/gamescommon/menu/a/b/l$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l$2;->b:Lcom/etermax/gamescommon/menu/a/b/l;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/l;->j:Lcom/etermax/gamescommon/menu/a/c;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l$2;->b:Lcom/etermax/gamescommon/menu/a/b/l;

    iget-object v0, v0, Lcom/etermax/gamescommon/menu/a/b/l;->j:Lcom/etermax/gamescommon/menu/a/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/b/l$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/menu/a/c;->b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 90
    :cond_0
    return-void
.end method
