.class Lcom/etermax/gamescommon/g/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/g/c;->a(ZLjava/util/List;Lcom/etermax/gamescommon/g/h;)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/etermax/gamescommon/g/h;

.field final synthetic e:Lcom/etermax/gamescommon/g/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/g/c;ZLjava/util/List;Landroid/os/Handler;Lcom/etermax/gamescommon/g/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$2;->e:Lcom/etermax/gamescommon/g/c;

    iput-boolean p2, p0, Lcom/etermax/gamescommon/g/c$2;->a:Z

    iput-object p3, p0, Lcom/etermax/gamescommon/g/c$2;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/etermax/gamescommon/g/c$2;->c:Landroid/os/Handler;

    iput-object p5, p0, Lcom/etermax/gamescommon/g/c$2;->d:Lcom/etermax/gamescommon/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 619
    new-instance v1, Lcom/etermax/gamescommon/g/i;

    const/4 v0, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    .line 620
    const/4 v0, 0x0

    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c$2;->e:Lcom/etermax/gamescommon/g/c;

    iget-boolean v3, p0, Lcom/etermax/gamescommon/g/c$2;->a:Z

    iget-object v4, p0, Lcom/etermax/gamescommon/g/c$2;->b:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/etermax/gamescommon/g/c;->a(ZLjava/util/List;)Lcom/etermax/gamescommon/g/a;
    :try_end_0
    .catch Lcom/etermax/gamescommon/g/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 627
    :goto_0
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c$2;->e:Lcom/etermax/gamescommon/g/c;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/g/c;->b()V

    .line 631
    iget-object v2, p0, Lcom/etermax/gamescommon/g/c$2;->c:Landroid/os/Handler;

    new-instance v3, Lcom/etermax/gamescommon/g/c$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/etermax/gamescommon/g/c$2$1;-><init>(Lcom/etermax/gamescommon/g/c$2;Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void

    .line 623
    :catch_0
    move-exception v1

    .line 624
    invoke-virtual {v1}, Lcom/etermax/gamescommon/g/b;->a()Lcom/etermax/gamescommon/g/i;

    move-result-object v1

    goto :goto_0
.end method
