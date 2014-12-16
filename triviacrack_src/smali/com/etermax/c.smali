.class public final Lcom/etermax/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static jira_priorities:I

.field public static jira_priorities_ids:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x7f0e

    sput v0, Lcom/etermax/c;->jira_priorities:I

    .line 25
    const v0, 0x7f0e0001

    sput v0, Lcom/etermax/c;->jira_priorities_ids:I

    return-void
.end method
