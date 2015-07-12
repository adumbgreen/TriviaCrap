.class public Lcom/etermax/preguntados/notification/a/d;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->b:Landroid/os/Bundle;

    const-string v1, "data.DN"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/notification/a/d;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/notification/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->j:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->j:Ljava/lang/String;

    const-string v1, "random"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget v0, Lcom/etermax/o;->random_challenge:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->j:Ljava/lang/String;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public d()Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/d;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_group_challenge_won:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/d;->j:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method
