.class public Lcom/smartadserver/android/library/controller/mraid/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field final b:I

.field private c:Lcom/smartadserver/android/library/ui/SASAdView;

.field private d:Lcom/smartadserver/android/library/controller/mraid/a/a;

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "mraidsensor"

    sput-object v0, Lcom/smartadserver/android/library/controller/mraid/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->b:I

    .line 26
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    .line 27
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    .line 28
    iput v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    .line 30
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 31
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 32
    iput-boolean v2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 42
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 43
    new-instance v0, Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a/a;-><init>(Landroid/content/Context;Lcom/smartadserver/android/library/controller/mraid/e;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    .line 44
    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/e;->a()V

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->h()V

    .line 49
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 50
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 51
    iput-boolean v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 52
    return-void
.end method

.method public a(F)V
    .locals 5
    .parameter

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireHeadingChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-double v1, p1

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public a(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    .line 143
    iput p2, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    .line 144
    iput p3, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraid.fireTiltChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/smartadserver/android/library/controller/mraid/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->c:Lcom/smartadserver/android/library/ui/SASAdView;

    const-string v1, "mraid.fireShakeEvent()"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ x : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", y : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", z : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartadserver/android/library/controller/mraid/e;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->h()V

    .line 186
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->c()V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a()V

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->e()V

    .line 193
    :cond_2
    return-void
.end method

.method public startHeadingListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 99
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startHeadingListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->e()V

    .line 102
    return-void
.end method

.method public startShakeListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 69
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startShakeListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 71
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->c()V

    .line 72
    return-void
.end method

.method public startTiltListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "startTiltListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 61
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->a()V

    .line 62
    return-void
.end method

.method public stopHeadingListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopHeadingListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->j:Z

    .line 111
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->f()V

    .line 112
    return-void
.end method

.method public stopShakeListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 89
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopShakeListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->h:Z

    .line 91
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->d()V

    .line 92
    return-void
.end method

.method public stopTiltListener()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 79
    const-string v0, "SASMRAIDSensorController"

    const-string v1, "stopTiltListener"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->i:Z

    .line 81
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/e;->d:Lcom/smartadserver/android/library/controller/mraid/a/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a/a;->b()V

    .line 82
    return-void
.end method
