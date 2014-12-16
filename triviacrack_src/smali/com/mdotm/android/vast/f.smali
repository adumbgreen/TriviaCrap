.class public Lcom/mdotm/android/vast/f;
.super Landroid/widget/VideoView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field a:Z

.field b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/app/ProgressDialog;

.field private e:Z

.field private f:Lcom/mdotm/android/vast/c;

.field private g:Lcom/mdotm/android/vast/d;

.field private h:Lcom/mdotm/android/c/c;

.field private i:Lcom/mdotm/android/c/b;

.field private j:Ljava/util/Timer;

.field private k:Lcom/mdotm/android/vast/i;

.field private l:Lcom/mdotm/android/vast/g;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mdotm/android/vast/c;Lcom/mdotm/android/c/c;Lcom/mdotm/android/c/b;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/mdotm/android/vast/f;->e:Z

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/vast/f;->a:Z

    .line 36
    iput-boolean v0, p0, Lcom/mdotm/android/vast/f;->b:Z

    .line 55
    iput-object p1, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/mdotm/android/vast/f;->f:Lcom/mdotm/android/vast/c;

    .line 57
    iput-object p5, p0, Lcom/mdotm/android/vast/f;->m:Landroid/os/Handler;

    .line 58
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->f:Lcom/mdotm/android/vast/c;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/c;->b()Lcom/mdotm/android/vast/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    .line 59
    iput-object p3, p0, Lcom/mdotm/android/vast/f;->h:Lcom/mdotm/android/c/c;

    .line 60
    iput-object p4, p0, Lcom/mdotm/android/vast/f;->i:Lcom/mdotm/android/c/b;

    .line 61
    invoke-direct {p0}, Lcom/mdotm/android/vast/f;->e()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/g;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    return-object v0
.end method

.method static synthetic a(Lcom/mdotm/android/vast/f;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mdotm/android/vast/f;->j:Ljava/util/Timer;

    return-void
.end method

.method static synthetic b(Lcom/mdotm/android/vast/f;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->j:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/c/b;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->i:Lcom/mdotm/android/c/b;

    return-object v0
.end method

.method static synthetic d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    return-object v0
.end method

.method static synthetic e(Lcom/mdotm/android/vast/f;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iput-boolean v2, p0, Lcom/mdotm/android/vast/f;->a:Z

    .line 66
    iput-boolean v2, p0, Lcom/mdotm/android/vast/f;->b:Z

    .line 67
    iput-boolean v2, p0, Lcom/mdotm/android/vast/f;->e:Z

    .line 68
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    .line 69
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/mdotm/android/vast/f$1;

    invoke-direct {v1, p0}, Lcom/mdotm/android/vast/f$1;-><init>(Lcom/mdotm/android/vast/f;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 81
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->f:Lcom/mdotm/android/vast/c;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/c;->d()Lcom/mdotm/android/vast/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video path :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mdotm/android/vast/f;->setZOrderOnTop(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/mdotm/android/vast/f;->setVideoPath(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->requestFocus()Z

    .line 86
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/f;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/f;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/mdotm/android/vast/f;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 89
    new-instance v0, Lcom/mdotm/android/vast/g;

    invoke-direct {v0, p0}, Lcom/mdotm/android/vast/g;-><init>(Lcom/mdotm/android/vast/f;)V

    iput-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    .line 90
    return-void
.end method

.method static synthetic f(Lcom/mdotm/android/vast/f;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->k:Lcom/mdotm/android/vast/i;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/mdotm/android/vast/f;->k:Lcom/mdotm/android/vast/i;

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/c/c;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->h:Lcom/mdotm/android/c/c;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mdotm/android/vast/f;->a:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    iget-boolean v0, v0, Lcom/mdotm/android/vast/g;->h:Z

    if-nez v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->start()V

    .line 160
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Resume impression"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v0, "Play called after one complete play"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/mdotm/android/vast/f;->e()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->pause()V

    .line 174
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "Pause impression event"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->i:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 186
    const-string v0, "Stop video playback"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->stopPlayback()V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/mdotm/android/vast/f;->f()V

    .line 192
    iget-boolean v0, p0, Lcom/mdotm/android/vast/f;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mdotm/android/vast/f;->e:Z

    if-nez v0, :cond_1

    .line 193
    const-string v0, "Call report impression video resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/vast/f;->e:Z

    .line 199
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    const-string v0, "On completion of video"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mdotm/android/vast/g;->h:Z

    .line 112
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->h:Lcom/mdotm/android/c/c;

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->e()V

    .line 116
    invoke-direct {p0}, Lcom/mdotm/android/vast/f;->f()V

    .line 117
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On error playing  video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-boolean v2, p0, Lcom/mdotm/android/vast/f;->b:Z

    .line 98
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 103
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->h:Lcom/mdotm/android/c/c;

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->f()V

    .line 104
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;I)V

    .line 132
    iput-boolean v5, p0, Lcom/mdotm/android/vast/f;->a:Z

    .line 133
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 134
    invoke-virtual {p0}, Lcom/mdotm/android/vast/f;->start()V

    .line 136
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->i:Lcom/mdotm/android/c/b;

    invoke-interface {v0}, Lcom/mdotm/android/c/b;->b()V

    .line 139
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "Start playing video"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->l:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    if-eqz v0, :cond_1

    .line 144
    new-instance v0, Lcom/mdotm/android/vast/i;

    iget-object v1, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mdotm/android/vast/f;->m:Landroid/os/Handler;

    .line 145
    iget-object v3, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v3, v3, Lcom/mdotm/android/vast/d;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mdotm/android/vast/f;->g:Lcom/mdotm/android/vast/d;

    iget-object v4, v4, Lcom/mdotm/android/vast/d;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mdotm/android/vast/i;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 144
    iput-object v0, p0, Lcom/mdotm/android/vast/f;->k:Lcom/mdotm/android/vast/i;

    .line 146
    iget-object v0, p0, Lcom/mdotm/android/vast/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    iget-object v2, p0, Lcom/mdotm/android/vast/f;->k:Lcom/mdotm/android/vast/i;

    .line 146
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    :cond_1
    return-void
.end method
