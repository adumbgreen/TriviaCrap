.class public Lcom/etermax/preguntados/sharing/q;
.super Lcom/etermax/preguntados/sharing/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/sharing/k;-><init>(Landroid/content/Context;Lcom/etermax/preguntados/sharing/p;Lcom/etermax/preguntados/c/a/b;)V

    .line 18
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/etermax/preguntados/sharing/k;->b()V

    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/sharing/q;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    return-void
.end method

.method public getShareText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/q;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->user_suggest_question:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/sharing/q;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/etermax/o;->landing_url:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
