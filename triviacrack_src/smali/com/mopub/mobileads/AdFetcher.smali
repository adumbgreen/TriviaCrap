.class public Lcom/mopub/mobileads/AdFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AD_CONFIGURATION_KEY:Ljava/lang/String; = "Ad-Configuration"

.field public static final CLICKTHROUGH_URL_KEY:Ljava/lang/String; = "Clickthrough-Url"

.field public static final HTML_RESPONSE_BODY_KEY:Ljava/lang/String; = "Html-Response-Body"

.field public static final REDIRECT_URL_KEY:Ljava/lang/String; = "Redirect-Url"

.field public static final SCROLLABLE_KEY:Ljava/lang/String; = "Scrollable"


# instance fields
.field private a:I

.field private b:Lcom/mopub/mobileads/AdViewController;

.field private c:Lcom/mopub/mobileads/AdFetchTask;

.field private d:Ljava/lang/String;

.field private final e:Lcom/mopub/mobileads/TaskTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mopub/mobileads/AdFetcher;->a:I

    .line 39
    iput-object p1, p0, Lcom/mopub/mobileads/AdFetcher;->b:Lcom/mopub/mobileads/AdViewController;

    .line 40
    iput-object p2, p0, Lcom/mopub/mobileads/AdFetcher;->d:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/mopub/mobileads/TaskTracker;

    invoke-direct {v0}, Lcom/mopub/mobileads/TaskTracker;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->e:Lcom/mopub/mobileads/TaskTracker;

    .line 42
    return-void
.end method

.method private b()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->e:Lcom/mopub/mobileads/TaskTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/TaskTracker;->getCurrentTaskId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdFetcher;->cancelFetch()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->b:Lcom/mopub/mobileads/AdViewController;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->d:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/mopub/mobileads/AdFetcher;->a:I

    .line 77
    return-void
.end method

.method public cancelFetch()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Canceling fetch ad for task #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdFetchTask;->cancel(Z)Z

    .line 66
    :cond_0
    return-void
.end method

.method public fetchAdForUrl(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->e:Lcom/mopub/mobileads/TaskTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/TaskTracker;->newTaskStarted()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching ad for task #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/AdFetchTask;->cancel(Z)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->e:Lcom/mopub/mobileads/TaskTracker;

    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher;->b:Lcom/mopub/mobileads/AdViewController;

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher;->d:Ljava/lang/String;

    iget v3, p0, Lcom/mopub/mobileads/AdFetcher;->a:I

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/factories/AdFetchTaskFactory;->create(Lcom/mopub/mobileads/TaskTracker;Lcom/mopub/mobileads/AdViewController;Ljava/lang/String;I)Lcom/mopub/mobileads/AdFetchTask;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher;->c:Lcom/mopub/mobileads/AdFetchTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v1, "Error executing AdFetchTask"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
