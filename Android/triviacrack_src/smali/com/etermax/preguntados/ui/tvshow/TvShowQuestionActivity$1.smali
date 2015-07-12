.class Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/ui/tvshow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_participation"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;Landroid/support/v4/app/Fragment;)V

    .line 116
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_tv_question"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/tvshow/g;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/g;->e()V

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget-wide v2, v2, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->d:J

    sub-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget v2, v2, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    invoke-virtual {v2, v0, v1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(J)V

    .line 124
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity$1;->a:Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;

    iget v2, v2, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sub-long v0, v2, v0

    goto :goto_0
.end method
