.class public final enum Lcom/inmobi/commons/HasChildren;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/HasChildren;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FALSE:Lcom/inmobi/commons/HasChildren;

.field public static final enum TRUE:Lcom/inmobi/commons/HasChildren;

.field public static final enum UNKNOWN:Lcom/inmobi/commons/HasChildren;

.field private static final synthetic a:[Lcom/inmobi/commons/HasChildren;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/inmobi/commons/HasChildren;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/HasChildren;->TRUE:Lcom/inmobi/commons/HasChildren;

    new-instance v0, Lcom/inmobi/commons/HasChildren;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/HasChildren;->FALSE:Lcom/inmobi/commons/HasChildren;

    new-instance v0, Lcom/inmobi/commons/HasChildren;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/HasChildren;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/HasChildren;->UNKNOWN:Lcom/inmobi/commons/HasChildren;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/commons/HasChildren;

    sget-object v1, Lcom/inmobi/commons/HasChildren;->TRUE:Lcom/inmobi/commons/HasChildren;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/HasChildren;->FALSE:Lcom/inmobi/commons/HasChildren;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/HasChildren;->UNKNOWN:Lcom/inmobi/commons/HasChildren;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/HasChildren;->a:[Lcom/inmobi/commons/HasChildren;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/HasChildren;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/inmobi/commons/HasChildren;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/HasChildren;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/inmobi/commons/HasChildren;->a:[Lcom/inmobi/commons/HasChildren;

    invoke-virtual {v0}, [Lcom/inmobi/commons/HasChildren;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/HasChildren;

    return-object v0
.end method
