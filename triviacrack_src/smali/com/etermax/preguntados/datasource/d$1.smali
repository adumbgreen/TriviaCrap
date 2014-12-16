.class Lcom/etermax/preguntados/datasource/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/datasource/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;->getIncrement_quantity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->setQuantity(I)V

    .line 133
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getQuantity()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;->getIncrement_interval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->setNextIncrement(I)V

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DASHBOARD_RECEIVED_TIME"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NEXT_INCREMENT_INTERVAL"

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v2}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, v1, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, v1, Lcom/etermax/preguntados/datasource/d;->r:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/etermax/preguntados/datasource/d$1;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v2}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/LivesDTO;->getNextIncrement()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :cond_0
    return-void
.end method
