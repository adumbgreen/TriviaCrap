.class Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/a;->a(Z)V

    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c$3;->a:Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;

    iput-boolean v1, v0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a/c;->b:Z

    .line 101
    return-void
.end method
