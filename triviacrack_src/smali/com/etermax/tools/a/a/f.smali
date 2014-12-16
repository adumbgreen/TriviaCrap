.class public interface abstract Lcom/etermax/tools/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "api.%s.com/api"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stg.%s.com/api"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "%s.test.etermax.com:8080/api"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "%s.dev.etermax.com:8080/api"

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/tools/a/a/f;->l:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract n()V
.end method

.method public abstract p()Ljava/lang/String;
.end method
