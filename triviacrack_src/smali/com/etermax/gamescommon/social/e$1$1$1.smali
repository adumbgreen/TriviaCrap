.class Lcom/etermax/gamescommon/social/e$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/e$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/social/e$1$1;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/e$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/gamescommon/social/e$1$1$1;->a:Lcom/etermax/gamescommon/social/e$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1$1$1;->a:Lcom/etermax/gamescommon/social/e$1$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1$1;->b:Lcom/etermax/gamescommon/social/e$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1;->a:Lcom/etermax/gamescommon/social/e;

    invoke-static {v0}, Lcom/etermax/gamescommon/social/e;->a(Lcom/etermax/gamescommon/social/e;)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1$1$1;->a:Lcom/etermax/gamescommon/social/e$1$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1$1$1;->a:Lcom/etermax/gamescommon/social/e$1$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    sget v1, Lcom/etermax/o;->facebook_invite_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e$1$1$1;->a:Lcom/etermax/gamescommon/social/e$1$1;

    iget-object v0, v0, Lcom/etermax/gamescommon/social/e$1$1;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
