.class Lcom/etermax/preguntados/ui/newgame/duelmode/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/widget/a/g;

.field final synthetic b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;Lcom/etermax/tools/widget/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c$1;->a:Lcom/etermax/tools/widget/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c$1;->b:Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;->a(Lcom/etermax/preguntados/ui/newgame/duelmode/a/c;)Lcom/etermax/preguntados/ui/newgame/duelmode/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/duelmode/a/c$1;->a:Lcom/etermax/tools/widget/a/g;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/newgame/duelmode/a/a;->a(Lcom/etermax/tools/widget/a/g;)V

    .line 101
    return-void
.end method
