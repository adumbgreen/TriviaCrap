.class Lcom/etermax/gamescommon/g/c$3$2;
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
    .line 948
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$3$2;->b:Lcom/etermax/gamescommon/g/c$3;

    iput-object p2, p0, Lcom/etermax/gamescommon/g/c$3$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 950
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3$2;->b:Lcom/etermax/gamescommon/g/c$3;

    iget-object v0, v0, Lcom/etermax/gamescommon/g/c$3;->d:Lcom/etermax/gamescommon/g/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$3$2;->b:Lcom/etermax/gamescommon/g/c$3;

    iget-object v1, v1, Lcom/etermax/gamescommon/g/c$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/etermax/gamescommon/g/c$3$2;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/g/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 951
    return-void
.end method
