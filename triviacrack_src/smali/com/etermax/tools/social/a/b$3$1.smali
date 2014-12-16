.class Lcom/etermax/tools/social/a/b$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b$3;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/b$3;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b$3;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$3$1;->a:Lcom/etermax/tools/social/a/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 439
    if-nez p2, :cond_1

    .line 440
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3$1;->a:Lcom/etermax/tools/social/a/b$3;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->a()V

    .line 450
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3$1;->a:Lcom/etermax/tools/social/a/b$3;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    goto :goto_0

    .line 445
    :cond_1
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3$1;->a:Lcom/etermax/tools/social/a/b$3;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    goto :goto_0

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3$1;->a:Lcom/etermax/tools/social/a/b$3;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
