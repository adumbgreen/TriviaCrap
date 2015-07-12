.class Lcom/etermax/gamescommon/g/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/g/c;->a(Ljava/util/List;Lcom/etermax/gamescommon/g/d;Lcom/etermax/gamescommon/g/e;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/etermax/gamescommon/g/d;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/etermax/gamescommon/g/e;

.field final synthetic e:Lcom/etermax/gamescommon/g/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/g/c;Ljava/util/List;Lcom/etermax/gamescommon/g/d;Landroid/os/Handler;Lcom/etermax/gamescommon/g/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$3;->e:Lcom/etermax/gamescommon/g/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/g/c$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/etermax/gamescommon/g/c$3;->b:Lcom/etermax/gamescommon/g/d;

    iput-object p4, p0, Lcom/etermax/gamescommon/g/c$3;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/etermax/gamescommon/g/c$3;->d:Lcom/etermax/gamescommon/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 929
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 930
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/g/j;

    .line 932
    :try_start_0
    iget-object v3, p0, Lcom/etermax/gamescommon/g/c$3;->e:Lcom/etermax/gamescommon/g/c;

    invoke-virtual {v3, v0}, Lcom/etermax/gamescommon/g/c;->a(Lcom/etermax/gamescommon/g/j;)V

    .line 933
    new-instance v3, Lcom/etermax/gamescommon/g/i;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/etermax/gamescommon/g/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/b;->a()Lcom/etermax/gamescommon/g/i;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->e:Lcom/etermax/gamescommon/g/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/c;->b()V

    .line 940
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->b:Lcom/etermax/gamescommon/g/d;

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/etermax/gamescommon/g/c$3$1;

    invoke-direct {v2, p0, v1}, Lcom/etermax/gamescommon/g/c$3$1;-><init>(Lcom/etermax/gamescommon/g/c$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->d:Lcom/etermax/gamescommon/g/e;

    if-eqz v0, :cond_2

    .line 948
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$3;->c:Landroid/os/Handler;

    new-instance v2, Lcom/etermax/gamescommon/g/c$3$2;

    invoke-direct {v2, p0, v1}, Lcom/etermax/gamescommon/g/c$3$2;-><init>(Lcom/etermax/gamescommon/g/c$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 954
    :cond_2
    return-void
.end method
