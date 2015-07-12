.class public final Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;
.super Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final i:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;-><init>()V

    .line 27
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i:Lorg/a/a/b/c;

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/tvshow/f;
    .locals 1
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/f;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i()V

    .line 40
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->c:Lcom/etermax/gamescommon/login/datasource/a;

    .line 41
    invoke-static {p0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->b:Lcom/etermax/preguntados/datasource/d;

    .line 42
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->b(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->b()V

    .line 44
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "mQuestionReceivedTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->d:J

    .line 107
    const-string v0, "mQuestionTimeSeconds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->e:I

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "mPollingIntervalSeconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "mPollingIntervalSeconds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->a:I

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->a(Landroid/os/Bundle;)V

    .line 34
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 36
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->onBackPressed()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "mQuestionReceivedTime"

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    const-string v0, "mQuestionTimeSeconds"

    iget v1, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 50
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 56
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity_;->i()V

    .line 93
    return-void
.end method
