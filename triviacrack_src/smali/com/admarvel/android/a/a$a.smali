.class Lcom/admarvel/android/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admarvel/android/a/a;


# direct methods
.method private constructor <init>(Lcom/admarvel/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/a/a$a;->a:Lcom/admarvel/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/admarvel/android/a/a;Lcom/admarvel/android/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admarvel/android/a/a$a;-><init>(Lcom/admarvel/android/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/admarvel/android/a/c;

    invoke-direct {v1}, Lcom/admarvel/android/a/c;-><init>()V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/admarvel/android/a/c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
