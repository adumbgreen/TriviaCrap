.class public Lcom/mdotm/android/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/mdotm/android/b/e;

.field private static d:Landroid/os/Handler;


# instance fields
.field a:Lcom/mdotm/android/b/c;

.field b:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/c/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/mdotm/android/b/e;->c:Lcom/mdotm/android/b/e;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/b/e;->e:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/b/e;->f:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/b/e;->g:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/b/e;->h:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/mdotm/android/b/e;->b:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/mdotm/android/b/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 38
    const-string v0, "Creating new handler"

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/mdotm/android/b/e$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/b/e$1;-><init>(Lcom/mdotm/android/b/e;)V

    sput-object v0, Lcom/mdotm/android/b/e;->d:Landroid/os/Handler;

    .line 115
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mdotm/android/b/e;
    .locals 1
    .parameter

    .prologue
    .line 29
    sget-object v0, Lcom/mdotm/android/b/e;->c:Lcom/mdotm/android/b/e;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/mdotm/android/b/e;

    invoke-direct {v0, p0}, Lcom/mdotm/android/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mdotm/android/b/e;->c:Lcom/mdotm/android/b/e;

    .line 32
    :cond_0
    sget-object v0, Lcom/mdotm/android/b/e;->c:Lcom/mdotm/android/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mdotm/android/b/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mdotm/android/b/e;->h:Ljava/util/List;

    return-object v0
.end method

.method private b()J
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/mdotm/android/b/e;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mdotm/android/b/e;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mdotm/android/b/e;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mdotm/android/b/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/mdotm/android/b/e;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/b/e;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mdotm/android/b/e;->b()J

    move-result-wide v0

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "** added to queue "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/mdotm/android/b/e;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/mdotm/android/b/e;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, p0, Lcom/mdotm/android/b/e;->f:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/mdotm/android/b/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mdotm/android/b/e;->a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;J)V

    .line 137
    :cond_0
    return-void
.end method

.method protected a(Lcom/mdotm/android/d/a;Lcom/mdotm/android/c/e;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "** sending req for  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/b/e;->b:Landroid/content/Context;

    sget-object v1, Lcom/mdotm/android/b/e;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/mdotm/android/b/c;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/mdotm/android/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/b/e;->a:Lcom/mdotm/android/b/c;

    .line 121
    iget-object v0, p0, Lcom/mdotm/android/b/e;->a:Lcom/mdotm/android/b/c;

    invoke-virtual {v0, p2}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/c/e;)V

    .line 122
    iget-object v0, p0, Lcom/mdotm/android/b/e;->a:Lcom/mdotm/android/b/c;

    invoke-virtual {v0, p1, p3, p4}, Lcom/mdotm/android/b/c;->a(Lcom/mdotm/android/d/a;J)V

    .line 123
    iget-object v0, p0, Lcom/mdotm/android/b/e;->h:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/mdotm/android/b/e;->i:Z

    .line 149
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/mdotm/android/b/e;->i:Z

    return v0
.end method
