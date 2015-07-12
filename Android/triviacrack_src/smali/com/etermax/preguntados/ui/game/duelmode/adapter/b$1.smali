.class Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/view/View;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

.field final synthetic b:Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

.field final synthetic c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;->c:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;->b:Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$1;->b:Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;->a(Ljava/lang/Long;)V

    .line 234
    return-void
.end method
