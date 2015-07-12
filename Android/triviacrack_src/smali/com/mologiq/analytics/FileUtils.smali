.class Lcom/mologiq/analytics/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/mologiq/analytics/FileUtils;->a:Ljava/util/regex/Pattern;

    .line 74
    return-void
.end method

.method static native setPermissions(Ljava/lang/String;III)I
.end method
