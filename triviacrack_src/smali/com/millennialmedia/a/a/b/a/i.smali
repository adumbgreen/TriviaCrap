.class public final Lcom/millennialmedia/a/a/b/a/i;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/millennialmedia/a/a/t;


# instance fields
.field private final b:Lcom/millennialmedia/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/millennialmedia/a/a/b/a/i$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/i$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/i;->a:Lcom/millennialmedia/a/a/t;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/i;->b:Lcom/millennialmedia/a/a/e;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/b/a/i$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;-><init>(Lcom/millennialmedia/a/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/i;->b:Lcom/millennialmedia/a/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/e;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    .line 111
    instance-of v1, v0, Lcom/millennialmedia/a/a/b/a/i;

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->d()Lcom/millennialmedia/a/a/d/c;

    .line 113
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->e()Lcom/millennialmedia/a/a/d/c;

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/millennialmedia/a/a/b/a/i$2;->a:[I

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 65
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    .line 93
    :goto_1
    return-object v0

    .line 74
    :pswitch_1
    new-instance v0, Lcom/millennialmedia/a/a/b/j;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/j;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    .line 76
    :goto_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/i;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    goto :goto_1

    .line 83
    :pswitch_2
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :pswitch_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 89
    :pswitch_4
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 92
    :pswitch_5
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 93
    const/4 v0, 0x0

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
