.class Lcom/etermax/tools/social/a/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/social/a/b;->b(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/tools/social/a/e;)V
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
    .line 593
    iput-object p1, p0, Lcom/etermax/tools/social/a/b$6;->e:Lcom/etermax/tools/social/a/b;

    iput-object p2, p0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    iput-object p3, p0, Lcom/etermax/tools/social/a/b$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/etermax/tools/social/a/b$6;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 603
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 604
    const-string v0, "message"

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$6;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "frictionless"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 608
    const-string v1, ""

    .line 609
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/etermax/tools/social/a/b$6;->c:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    const-string v1, "to"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v1, p0, Lcom/etermax/tools/social/a/b$6;->d:Landroid/app/Activity;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 617
    new-instance v1, Lcom/etermax/tools/social/a/b$6$1;

    invoke-direct {v1, p0}, Lcom/etermax/tools/social/a/b$6$1;-><init>(Lcom/etermax/tools/social/a/b$6;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 634
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 636
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0, p1}, Lcom/etermax/tools/social/a/e;->a(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/etermax/tools/social/a/b$6;->a:Lcom/etermax/tools/social/a/e;

    invoke-interface {v0}, Lcom/etermax/tools/social/a/e;->a()V

    .line 641
    return-void
.end method
