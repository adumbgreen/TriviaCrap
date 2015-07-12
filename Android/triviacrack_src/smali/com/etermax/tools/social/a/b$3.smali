.class Lcom/etermax/tools/social/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/etermax/tools/social/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/g;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$3;->d:Lcom/etermax/tools/social/a/b;

    iput-object p2, p0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    iput-object p3, p0, Lcom/etermax/tools/social/a/b$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/tools/social/a/b$3;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    const-string v1, "filters"

    const-string v2, "[\'app_non_users\']"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "message"

    iget-object v2, p0, Lcom/etermax/tools/social/a/b$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v1, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v2, p0, Lcom/etermax/tools/social/a/b$3;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 435
    new-instance v0, Lcom/etermax/tools/social/a/b$3$1;

    invoke-direct {v0, p0}, Lcom/etermax/tools/social/a/b$3$1;-><init>(Lcom/etermax/tools/social/a/b$3;)V

    invoke-virtual {v1, v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 452
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 454
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0, p1}, Lcom/etermax/tools/social/a/g;->a(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$3;->a:Lcom/etermax/tools/social/a/g;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/g;->b()V

    .line 459
    return-void
.end method
