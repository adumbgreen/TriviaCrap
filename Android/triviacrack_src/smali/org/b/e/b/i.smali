.class Lorg/b/e/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/b/j;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/b/e/b/i;->a:Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/b/e/b/h$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lorg/b/e/b/i;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/b/e/b/d;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lorg/b/e/b/b;

    iget-object v1, p0, Lorg/b/e/b/i;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/b/e/b/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/b/e/b/j;
    .locals 1
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lorg/b/e/b/i;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    return-object p0
.end method
