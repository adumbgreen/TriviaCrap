.class public Lcom/etermax/gamescommon/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

.field b:J

.field c:I

.field d:Lcom/etermax/gamescommon/login/datasource/c;

.field e:Lcom/etermax/gamescommon/datasource/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/etermax/gamescommon/e/a;->b:J

    return-wide v0
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;Ljava/lang/Class;)Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/e/a;->e:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.common.appConfig"

    invoke-virtual {v0, v1, p2}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    iput-object v0, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-object p1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/etermax/gamescommon/e/a;->c:I

    .line 68
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/etermax/gamescommon/e/a;->b:J

    .line 56
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-static {p1}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/etermax/gamescommon/e/a;->d:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/etermax/gamescommon/e/a;->a:Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/e/a;->e:Lcom/etermax/gamescommon/datasource/j;

    const-string v1, "com.etermax.common.appConfig"

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/datasource/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method
