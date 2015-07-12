.class Lcom/etermax/tools/social/a/b$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b$5;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/b$5;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b$5;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$5$1;->a:Lcom/etermax/tools/social/a/b$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 547
    if-nez p2, :cond_3

    .line 548
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 553
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    const-string v3, "FACEBOOK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vlaue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v3, "to["

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5$1;->a:Lcom/etermax/tools/social/a/b$5;

    iget-object v2, v0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/etermax/tools/social/a/e;->a([Ljava/lang/String;)V

    .line 570
    :goto_1
    return-void

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5$1;->a:Lcom/etermax/tools/social/a/b$5;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    goto :goto_1

    .line 565
    :cond_3
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5$1;->a:Lcom/etermax/tools/social/a/b$5;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    goto :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5$1;->a:Lcom/etermax/tools/social/a/b$5;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/e;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
