.class Lcom/etermax/tools/social/a/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/social/a/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/etermax/tools/social/a/b;


# direct methods
.method constructor <init>(Lcom/etermax/tools/social/a/b;Lcom/etermax/tools/social/a/e;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$5;->e:Lcom/etermax/tools/social/a/b;

    iput-object p2, p0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    iput-object p3, p0, Lcom/etermax/tools/social/a/b$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/etermax/tools/social/a/b$5;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 528
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 529
    const-string v0, "message"

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$5;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "frictionless"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 532
    const-string v1, ""

    .line 533
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 534
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/etermax/tools/social/a/b$5;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_1
    const-string v0, "exclude_ids"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$5;->d:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 543
    new-instance v1, Lcom/etermax/tools/social/a/b$5$1;

    invoke-direct {v1, p0}, Lcom/etermax/tools/social/a/b$5$1;-><init>(Lcom/etermax/tools/social/a/b$5;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 572
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 574
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/tools/social/a/e;->a(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$5;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    .line 579
    return-void
.end method
