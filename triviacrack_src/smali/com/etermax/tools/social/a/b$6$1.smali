.class Lcom/etermax/tools/social/a/b$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b$6;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/b$6;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b$6;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 621
    if-nez p2, :cond_1

    .line 622
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    iget-object v1, v1, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/e;->a([Ljava/lang/String;)V

    .line 632
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    goto :goto_0

    .line 627
    :cond_1
    instance-of v0, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6$1;->a:Lcom/etermax/tools/social/a/b$6;

    iget-object v0, v0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    invoke-virtual {p2}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/social/a/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
