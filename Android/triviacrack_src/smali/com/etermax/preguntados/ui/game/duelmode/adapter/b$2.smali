.class Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;->a(Landroid/view/View;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;->b:Lcom/etermax/preguntados/ui/game/duelmode/adapter/b;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/duelmode/adapter/b$2;->a:Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/game/duelmode/adapter/g;->f()V

    .line 245
    return-void
.end method
