.class public Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "IMAdMLtvpRuleCache"

    sput-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->c:Ljava/lang/String;

    .line 17
    const-string v0, "IMAdMLtvpRuleId"

    sput-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->d:Ljava/lang/String;

    .line 18
    const-string v0, "IMAdMLtvpHardExpiry"

    sput-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->e:Ljava/lang/String;

    .line 19
    const-string v0, "IMAdMLtvpSoftExpiry"

    sput-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    .line 32
    sget-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 68
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "[InMobi]-[Analytics]-4.3.0"

    const-string v2, "Exception saving rule map"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :goto_1
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;
    .locals 2
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a:Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a:Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a:Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a:Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearLtvpRuleCache()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public getHardExpiryForLtvpRule()J
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->e:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtvpRule(J)I
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLtvpRuleId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftExpiryForLtvpRule()J
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->f:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setLtvpRuleConfig(Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getRuleId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getHardExpiry()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getTimeStamp()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a(J)V

    .line 45
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getSoftExpiry()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getTimeStamp()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->b(J)V

    .line 46
    invoke-virtual {p1}, Lcom/inmobi/monetization/internal/GetLtvpRulesResponse;->getRules()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/internal/objects/LtvpRuleCache;->a(Ljava/util/HashMap;)V

    .line 47
    return-void
.end method
