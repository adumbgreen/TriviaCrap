.class public Lcom/etermax/gamescommon/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/etermax/gamescommon/c/a;->b:J

    .line 23
    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/etermax/gamescommon/c/a;->c:J

    .line 24
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/etermax/gamescommon/c/a;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/etermax/gamescommon/c/a;->a:Landroid/content/Context;

    const-string v1, "apprater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    const-string v1, "app_launched_counter"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    const-string v3, "app_launched_counter"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public a(JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/etermax/gamescommon/c/a;->b:J

    .line 28
    iput-wide p3, p0, Lcom/etermax/gamescommon/c/a;->c:J

    .line 29
    iput-wide p5, p0, Lcom/etermax/gamescommon/c/a;->d:J

    .line 30
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 64
    const-string v1, "apprater"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    const-string v2, "app_launched_counter"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/etermax/gamescommon/c/a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string v2, "turns_played_counter"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/etermax/gamescommon/c/a;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "last_reminder_time"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/etermax/gamescommon/c/a;->d:J

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string v2, "no_rate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :cond_0
    return v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/c/a;->a:Landroid/content/Context;

    const-string v1, "apprater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    const-string v1, "turns_played_counter"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    const-string v3, "turns_played_counter"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/gamescommon/c/a;->a:Landroid/content/Context;

    const-string v1, "apprater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "last_reminder_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/c/a;->a:Landroid/content/Context;

    const-string v1, "apprater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    const-string v1, "no_rate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method
