.class public final enum Lcom/etermax/chat/ui/adapter/item/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/chat/ui/adapter/item/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/chat/ui/adapter/item/a;

.field public static final enum b:Lcom/etermax/chat/ui/adapter/item/a;

.field public static final enum c:Lcom/etermax/chat/ui/adapter/item/a;

.field private static final synthetic d:[Lcom/etermax/chat/ui/adapter/item/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/etermax/chat/ui/adapter/item/a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/ui/adapter/item/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/ui/adapter/item/a;->a:Lcom/etermax/chat/ui/adapter/item/a;

    .line 106
    new-instance v0, Lcom/etermax/chat/ui/adapter/item/a;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v3}, Lcom/etermax/chat/ui/adapter/item/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/ui/adapter/item/a;->b:Lcom/etermax/chat/ui/adapter/item/a;

    .line 107
    new-instance v0, Lcom/etermax/chat/ui/adapter/item/a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/chat/ui/adapter/item/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/ui/adapter/item/a;->c:Lcom/etermax/chat/ui/adapter/item/a;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/chat/ui/adapter/item/a;

    sget-object v1, Lcom/etermax/chat/ui/adapter/item/a;->a:Lcom/etermax/chat/ui/adapter/item/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/chat/ui/adapter/item/a;->b:Lcom/etermax/chat/ui/adapter/item/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/chat/ui/adapter/item/a;->c:Lcom/etermax/chat/ui/adapter/item/a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/chat/ui/adapter/item/a;->d:[Lcom/etermax/chat/ui/adapter/item/a;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/chat/ui/adapter/item/a;
    .locals 1
    .parameter

    .prologue
    .line 104
    const-class v0, Lcom/etermax/chat/ui/adapter/item/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/ui/adapter/item/a;

    return-object v0
.end method

.method public static values()[Lcom/etermax/chat/ui/adapter/item/a;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/etermax/chat/ui/adapter/item/a;->d:[Lcom/etermax/chat/ui/adapter/item/a;

    invoke-virtual {v0}, [Lcom/etermax/chat/ui/adapter/item/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/chat/ui/adapter/item/a;

    return-object v0
.end method
