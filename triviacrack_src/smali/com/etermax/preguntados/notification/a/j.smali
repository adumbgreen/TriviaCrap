.class public Lcom/etermax/preguntados/notification/a/j;
.super Lcom/etermax/preguntados/notification/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/notification/a/b;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 14
    return-void
.end method


# virtual methods
.method public d()Landroid/text/SpannableString;
    .locals 6

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/preguntados/notification/a/j;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->notification_game_to_expire:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/preguntados/notification/a/j;->b:Landroid/os/Bundle;

    const-string v5, "data.OPP"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/notification/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method
