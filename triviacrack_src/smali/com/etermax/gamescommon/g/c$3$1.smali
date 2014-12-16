.class Lcom/etermax/gamescommon/g/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/g/c$3;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/etermax/gamescommon/g/c$3;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/g/c$3;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$3$1;->b:Lcom/etermax/gamescommon/g/c$3;

    iput-object p2, p0, Lcom/etermax/gamescommon/g/c$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 943
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3$1;->b:Lcom/etermax/gamescommon/g/c$3;

    iget-object v2, v0, Lcom/etermax/gamescommon/g/c$3;->b:Lcom/etermax/gamescommon/g/d;

    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3$1;->b:Lcom/etermax/gamescommon/g/c$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/g/c$3;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/g/j;

    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$3$1;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/g/i;

    invoke-interface {v2, v0, v1}, Lcom/etermax/gamescommon/g/d;->a(Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/g/i;)V

    .line 944
    return-void
.end method
