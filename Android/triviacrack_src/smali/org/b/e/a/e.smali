.class public abstract Lorg/b/e/a/e;
.super Lorg/b/e/a/j;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lorg/b/c/i;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/b/e/a/e;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Lorg/b/c/i;Ljava/lang/String;[BLjava/nio/charset/Charset;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/b/c/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/b/e/a/j;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/b/e/a/e;->b:Lorg/b/c/i;

    .line 79
    iput-object p2, p0, Lorg/b/e/a/e;->c:Ljava/lang/String;

    .line 80
    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lorg/b/e/a/e;->d:[B

    .line 81
    if-eqz p4, :cond_1

    :goto_1
    iput-object p4, p0, Lorg/b/e/a/e;->e:Ljava/nio/charset/Charset;

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    new-array p3, v0, [B

    goto :goto_0

    .line 81
    :cond_1
    sget-object p4, Lorg/b/e/a/e;->a:Ljava/nio/charset/Charset;

    goto :goto_1
.end method


# virtual methods
.method public a()Lorg/b/c/i;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/b/e/a/e;->b:Lorg/b/c/i;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/b/e/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/b/e/a/e;->d:[B

    iget-object v2, p0, Lorg/b/e/a/e;->e:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
