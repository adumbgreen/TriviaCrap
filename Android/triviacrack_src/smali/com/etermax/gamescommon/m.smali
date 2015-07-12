.class public Lcom/etermax/gamescommon/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/g/h;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/etermax/gamescommon/l;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/l;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/gamescommon/m;->b:I

    .line 324
    iput-object p2, p0, Lcom/etermax/gamescommon/m;->a:Ljava/lang/String;

    .line 325
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    const-string v1, "Query inventory finished."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

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

    .line 363
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    const-string v1, "Query inventory was successful."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Lcom/etermax/gamescommon/g/a;->b()Ljava/util/List;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/g/j;

    .line 344
    invoke-virtual {v0}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    iget-object v3, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    invoke-static {v3}, Lcom/etermax/gamescommon/l;->b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/etermax/gamescommon/m$1;

    invoke-direct {v4, p0}, Lcom/etermax/gamescommon/m$1;-><init>(Lcom/etermax/gamescommon/m;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/etermax/gamescommon/l;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    goto :goto_1

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    iget-object v3, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    invoke-static {v3}, Lcom/etermax/gamescommon/l;->b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/etermax/gamescommon/l;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/m;->c:Lcom/etermax/gamescommon/l;

    const-string v1, "Initial inventory query finished; enabling main UI."

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/l;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
