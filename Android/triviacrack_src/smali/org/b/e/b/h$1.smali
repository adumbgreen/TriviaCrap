.class final Lorg/b/e/b/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/e/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/b/e/b/h;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/b/e/b/d;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lorg/b/e/b/a;->a:Lorg/b/e/b/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lorg/b/e/b/j;
    .locals 2
    .parameter

    .prologue
    .line 584
    new-instance v0, Lorg/b/e/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/b/e/b/i;-><init>(Ljava/lang/String;Lorg/b/e/b/h$1;)V

    return-object v0
.end method
