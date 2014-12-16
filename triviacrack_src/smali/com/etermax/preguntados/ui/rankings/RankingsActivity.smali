.class public Lcom/etermax/preguntados/ui/rankings/RankingsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/rankings/f;
.implements Lcom/etermax/preguntados/ui/rankings/j;


# instance fields
.field a:Lcom/etermax/tools/social/a/b;

.field b:Lcom/etermax/preguntados/sharing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity_;->b(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/etermax/preguntados/ui/rankings/e;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->b:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lcom/etermax/gamescommon/b/an;->l:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->a:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 39
    return-void
.end method
