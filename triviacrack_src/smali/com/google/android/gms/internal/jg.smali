.class public final Lcom/google/android/gms/internal/jg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/jh;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/google/android/gms/internal/aj;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ja;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/jh;

    sget-object v1, Lcom/google/android/gms/internal/fw;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/jh;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/jg;-><init>(Lcom/google/android/gms/internal/ja;Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ja;Lcom/google/android/gms/internal/jh;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jg;->f:J

    iput-object p2, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jh;

    new-instance v0, Lcom/google/android/gms/internal/jg$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/jg$1;-><init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/internal/ja;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jg;)Lcom/google/android/gms/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->c:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/jg;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jh;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/aj;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;J)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/aj;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/jg;->c:Lcom/google/android/gms/internal/aj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/jg;->f:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jg;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fx;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jh;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/jh;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->a:Lcom/google/android/gms/internal/jh;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jh;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jg;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jg;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jg;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->c:Lcom/google/android/gms/internal/aj;

    iget-wide v1, p0, Lcom/google/android/gms/internal/jg;->f:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/aj;J)V

    :cond_0
    return-void
.end method
