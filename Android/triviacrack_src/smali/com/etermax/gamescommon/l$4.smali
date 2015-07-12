.class Lcom/etermax/gamescommon/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/g/f;


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
    .line 294
    iput-object p1, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/g/i;Ljava/lang/String;Lcom/etermax/gamescommon/g/j;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/l;->a(Lcom/etermax/gamescommon/l;)Lcom/etermax/gamescommon/g/c;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/gamescommon/m;

    iget-object v3, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    invoke-direct {v2, v3, p2}, Lcom/etermax/gamescommon/m;-><init>(Lcom/etermax/gamescommon/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/g/c;->a(ZLcom/etermax/gamescommon/g/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    iget-object v1, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/g/i;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/l;->c(Lcom/etermax/gamescommon/l;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 308
    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/i;->onPurchaseError(Lcom/etermax/gamescommon/g/i;)V

    goto :goto_1

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/l$4;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v1}, Lcom/etermax/gamescommon/l;->b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/etermax/gamescommon/l;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V

    goto :goto_0
.end method
