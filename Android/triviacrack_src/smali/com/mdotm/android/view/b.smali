.class public Lcom/mdotm/android/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mdotm/android/c/a;
.implements Lcom/mdotm/android/c/e;


# instance fields
.field public a:Lcom/mdotm/android/c/d;

.field public b:Z

.field c:Landroid/content/Context;

.field private d:J

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/mdotm/android/d/b;

.field private j:Lcom/mdotm/android/vast/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    .line 34
    iput v0, p0, Lcom/mdotm/android/view/b;->e:I

    .line 35
    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->f:Z

    .line 39
    iput-object v1, p0, Lcom/mdotm/android/view/b;->i:Lcom/mdotm/android/d/b;

    .line 41
    iput-object v1, p0, Lcom/mdotm/android/view/b;->j:Lcom/mdotm/android/vast/e;

    .line 45
    iput-object p1, p0, Lcom/mdotm/android/view/b;->c:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onInterstitialDismiss()V

    .line 143
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 144
    iget-wide v1, p0, Lcom/mdotm/android/view/b;->d:J

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/mdotm/android/e/f;->b(J)V

    .line 147
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->willShowInterstitial()V

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 97
    iget-object v0, p0, Lcom/mdotm/android/view/b;->j:Lcom/mdotm/android/vast/e;

    if-eqz v0, :cond_2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/b;->j:Lcom/mdotm/android/vast/e;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    :goto_0
    const-string v2, "InterstitialActionListenerId"

    iget-wide v3, p0, Lcom/mdotm/android/view/b;->d:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string v2, "ScreenOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->didShowInterstitial()V

    .line 115
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    .line 119
    :goto_1
    return-void

    .line 101
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/mdotm/android/view/MdotMActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v2, "response"

    iget-object v3, p0, Lcom/mdotm/android/view/b;->i:Lcom/mdotm/android/d/b;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    const-string v2, "style"

    iget v3, p0, Lcom/mdotm/android/view/b;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "frame"

    iget-boolean v3, p0, Lcom/mdotm/android/view/b;->f:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v2, "frame_id"

    iget v3, p0, Lcom/mdotm/android/view/b;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v2, "close_btn_id"

    iget v3, p0, Lcom/mdotm/android/view/b;->h:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 117
    :cond_3
    const-string v0, "Interstitial is not ready"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/mdotm/android/c/d;Lcom/mdotm/android/d/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mdotm/android/view/b;->d:J

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listener id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mdotm/android/view/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    .line 65
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/mdotm/android/view/b;->d:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/mdotm/android/e/f;->a(JLcom/mdotm/android/c/a;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/a;->b(Z)V

    .line 70
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/mdotm/android/view/b;->c:Landroid/content/Context;

    .line 70
    invoke-virtual {v0, v1}, Lcom/mdotm/android/e/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/d/a;->c(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/b;->i:Lcom/mdotm/android/d/b;

    .line 74
    iget-object v0, p0, Lcom/mdotm/android/view/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mdotm/android/b/e;->a(Landroid/content/Context;)Lcom/mdotm/android/b/e;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/mdotm/android/b/e;->a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;)V

    .line 77
    return-void
.end method

.method public a(Lcom/mdotm/android/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdotm/android/view/b;->j:Lcom/mdotm/android/vast/e;

    .line 123
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->l()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/mdotm/android/d/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    iput-object p1, p0, Lcom/mdotm/android/view/b;->i:Lcom/mdotm/android/d/b;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    .line 127
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onReceiveInterstitialAd()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveInterstitialAd()V

    goto :goto_0
.end method

.method public a(Lcom/mdotm/android/vast/e;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    const-string v1, "finishedAdParsing"

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mdotm/android/view/b;->i:Lcom/mdotm/android/d/b;

    .line 180
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/mdotm/android/vast/e;->d()I

    move-result v1

    if-eqz v1, :cond_7

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finishedAdParsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/vast/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/mdotm/android/vast/e;->c()Ljava/util/ArrayList;

    move-result-object v3

    .line 183
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v0

    move v2, v0

    .line 185
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 191
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 192
    iput-object p1, p0, Lcom/mdotm/android/view/b;->j:Lcom/mdotm/android/vast/e;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/b;->b:Z

    .line 194
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onReceiveInterstitialAd()V

    .line 221
    :cond_0
    :goto_1
    return-void

    .line 186
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/c;

    .line 187
    invoke-virtual {v0}, Lcom/mdotm/android/vast/c;->d()Lcom/mdotm/android/vast/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 188
    add-int/lit8 v2, v2, 0x1

    .line 185
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveInterstitialAd()V

    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {p1}, Lcom/mdotm/android/vast/e;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v0

    .line 205
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveInterstitialAd()V

    goto :goto_1

    .line 206
    :cond_6
    invoke-static {}, Lcom/mdotm/android/e/f;->a()Lcom/mdotm/android/e/f;

    move-result-object v3

    .line 207
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/mdotm/android/view/b;->c:Landroid/content/Context;

    .line 206
    invoke-virtual {v3, v0, v4}, Lcom/mdotm/android/e/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveInterstitialAd()V

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onLeaveApplicationFromInterstitial()V

    .line 156
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onFailedToReceiveInterstitialAd()V

    .line 165
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "Adclicked"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mdotm/android/view/b;->a:Lcom/mdotm/android/c/d;

    invoke-interface {v0}, Lcom/mdotm/android/c/d;->onInterstitialAdClick()V

    .line 174
    :cond_0
    return-void
.end method
