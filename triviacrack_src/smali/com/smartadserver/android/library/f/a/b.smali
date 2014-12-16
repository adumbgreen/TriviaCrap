.class public Lcom/smartadserver/android/library/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/smartadserver/android/library/f/a/a;

.field private c:Lorg/apache/http/client/HttpClient;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/smartadserver/android/library/f/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartadserver/android/library/f/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/smartadserver/android/library/f/a/b;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/smartadserver/android/library/f/a/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/smartadserver/android/library/f/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/smartadserver/android/library/f/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->b:Lcom/smartadserver/android/library/f/a/a;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/f/a/a;->a(ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/smartadserver/android/library/f/a/b;->b:Lcom/smartadserver/android/library/f/a/a;

    invoke-virtual {v1, v0, p8}, Lcom/smartadserver/android/library/f/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    .line 82
    new-instance v2, Lcom/smartadserver/android/library/b/a;

    iget-object v3, p0, Lcom/smartadserver/android/library/f/a/b;->d:Ljava/lang/String;

    invoke-direct {v2, v3, p7}, Lcom/smartadserver/android/library/b/a;-><init>(Ljava/lang/String;I)V

    .line 84
    iget-object v3, p0, Lcom/smartadserver/android/library/f/a/b;->c:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/smartadserver/android/library/f/a/b;->c:Lorg/apache/http/client/HttpClient;

    invoke-virtual {v2, v3}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/HttpClient;)V

    .line 90
    :cond_0
    sget-object v3, Lcom/smartadserver/android/library/f/a/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will load ad at URL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 94
    new-instance v3, Lcom/smartadserver/android/library/f/a/b$1;

    invoke-direct {v3, p0, p6, v0}, Lcom/smartadserver/android/library/f/a/b$1;-><init>(Lcom/smartadserver/android/library/f/a/b;Lcom/smartadserver/android/library/ui/a;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/smartadserver/android/library/b/a;->a(Lorg/apache/http/client/methods/HttpPost;Lcom/smartadserver/android/library/b/d;)V

    .line 123
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/smartadserver/android/library/f/a/b;->e:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/smartadserver/android/library/h/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->d:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/smartadserver/android/library/f/a/c;

    invoke-static {p1}, Lcom/smartadserver/android/library/h/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/smartadserver/android/library/h/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smartadserver/android/library/f/a/b;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartadserver/android/library/h/c;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartadserver/android/library/f/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->b:Lcom/smartadserver/android/library/f/a/a;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/f/a/b;->b:Lcom/smartadserver/android/library/f/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartadserver/android/library/f/a/a;->d:Landroid/net/ConnectivityManager;

    goto :goto_0
.end method
