.class Lcom/amazon/device/ads/Settings$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Settings;->writeCacheToSharedPreferences(Landroid/content/SharedPreferences;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$2;->this$0:Lcom/amazon/device/ads/Settings;

    iput-object p2, p0, Lcom/amazon/device/ads/Settings$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$2;->this$0:Lcom/amazon/device/ads/Settings;

    #getter for: Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/amazon/device/ads/Settings;->access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 216
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$2;->this$0:Lcom/amazon/device/ads/Settings;

    #getter for: Lcom/amazon/device/ads/Settings;->cache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/amazon/device/ads/Settings;->access$100(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/Settings$Value;

    .line 223
    iget-boolean v4, v1, Lcom/amazon/device/ads/Settings$Value;->isTransientData:Z

    if-nez v4, :cond_0

    .line 228
    iget-object v4, v1, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_1

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 232
    :cond_1
    iget-object v4, v1, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    if-ne v4, v5, :cond_2

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 236
    :cond_2
    iget-object v4, v1, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_3

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 240
    :cond_3
    iget-object v4, v1, Lcom/amazon/device/ads/Settings$Value;->clazz:Ljava/lang/Class;

    const-class v5, Ljava/lang/Boolean;

    if-ne v4, v5, :cond_0

    .line 242
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/amazon/device/ads/Settings$Value;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$2;->this$0:Lcom/amazon/device/ads/Settings;

    #calls: Lcom/amazon/device/ads/Settings;->commit(Landroid/content/SharedPreferences$Editor;)V
    invoke-static {v0, v2}, Lcom/amazon/device/ads/Settings;->access$200(Lcom/amazon/device/ads/Settings;Landroid/content/SharedPreferences$Editor;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$2;->this$0:Lcom/amazon/device/ads/Settings;

    #getter for: Lcom/amazon/device/ads/Settings;->writeToSharedPreferencesLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/amazon/device/ads/Settings;->access$000(Lcom/amazon/device/ads/Settings;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    return-void
.end method
