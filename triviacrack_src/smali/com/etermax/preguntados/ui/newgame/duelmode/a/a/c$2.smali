.class Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/view/View;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 84
    return-void
.end method
