.class Lcom/etermax/gamescommon/l$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/g/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/l;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    const-string v1, "Query inventory finished."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->e(Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    const-string v1, "Query inventory was successful."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Lcom/etermax/gamescommon/g/a;->b()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/g/j;

    .line 287
    iget-object v2, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    iget-object v3, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v3}, Lcom/etermax/gamescommon/l;->b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/etermax/gamescommon/l;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l$3;->a:Lcom/etermax/gamescommon/l;

    const-string v1, "Initial inventory query finished; enabling main UI."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
