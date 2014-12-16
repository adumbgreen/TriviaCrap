.class Lcom/etermax/preguntados/ui/rankings/e$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/e$4;->a(Lcom/etermax/preguntados/ui/rankings/e;[Lcom/etermax/tools/social/a/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/rankings/e$4;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/e$4;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/rankings/e$4;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e;->d(Lcom/etermax/preguntados/ui/rankings/e;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/rankings/e$4;->a:Lcom/etermax/preguntados/ui/rankings/e;

    sget v2, Lcom/etermax/o;->not_enough_friends_2:I

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    iget-object v5, v5, Lcom/etermax/preguntados/ui/rankings/e$4;->a:Lcom/etermax/preguntados/ui/rankings/e;

    sget v6, Lcom/etermax/o;->weekly_ranking:I

    invoke-virtual {v5, v6}, Lcom/etermax/preguntados/ui/rankings/e;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/etermax/preguntados/ui/rankings/e;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e$4;->d(Lcom/etermax/preguntados/ui/rankings/e$4;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 172
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e$4;->a(Lcom/etermax/preguntados/ui/rankings/e$4;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e$4;->b(Lcom/etermax/preguntados/ui/rankings/e$4;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->facebook_invite_failure:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e$4;->c(Lcom/etermax/preguntados/ui/rankings/e$4;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 167
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$4$1;->a:Lcom/etermax/preguntados/ui/rankings/e$4;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e$4;->e(Lcom/etermax/preguntados/ui/rankings/e$4;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 176
    return-void
.end method
