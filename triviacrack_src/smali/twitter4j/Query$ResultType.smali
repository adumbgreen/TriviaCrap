.class public final enum Ltwitter4j/Query$ResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltwitter4j/Query$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltwitter4j/Query$ResultType;

.field public static final enum mixed:Ltwitter4j/Query$ResultType;

.field public static final enum popular:Ltwitter4j/Query$ResultType;

.field public static final enum recent:Ltwitter4j/Query$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    new-instance v0, Ltwitter4j/Query$ResultType;

    const-string v1, "popular"

    invoke-direct {v0, v1, v2}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    new-instance v0, Ltwitter4j/Query$ResultType;

    const-string v1, "mixed"

    invoke-direct {v0, v1, v3}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    new-instance v0, Ltwitter4j/Query$ResultType;

    const-string v1, "recent"

    invoke-direct {v0, v1, v4}, Ltwitter4j/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    .line 380
    const/4 v0, 0x3

    new-array v0, v0, [Ltwitter4j/Query$ResultType;

    sget-object v1, Ltwitter4j/Query$ResultType;->popular:Ltwitter4j/Query$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Ltwitter4j/Query$ResultType;->mixed:Ltwitter4j/Query$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Ltwitter4j/Query$ResultType;->recent:Ltwitter4j/Query$ResultType;

    aput-object v1, v0, v4

    sput-object v0, Ltwitter4j/Query$ResultType;->$VALUES:[Ltwitter4j/Query$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltwitter4j/Query$ResultType;
    .locals 1
    .parameter

    .prologue
    .line 380
    const-class v0, Ltwitter4j/Query$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltwitter4j/Query$ResultType;

    return-object v0
.end method

.method public static values()[Ltwitter4j/Query$ResultType;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Ltwitter4j/Query$ResultType;->$VALUES:[Ltwitter4j/Query$ResultType;

    invoke-virtual {v0}, [Ltwitter4j/Query$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/Query$ResultType;

    return-object v0
.end method
